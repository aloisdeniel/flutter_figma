import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';
import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

/// Generates a method which draws vector graphics using Flutter's Canvas API.
class FlutterVectorCanvasExporter {
  String export(FlutterExportContext context) {
    final buffer = DartBuffer();

    buffer.writeln("import 'dart:math' as math;");
    buffer.writeln("import 'dart:ui' as ui;");
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();

    for (final vectorGraphics in context.vectorGraphics.vectorGraphics) {
      final widgetName = Naming.typeName(vectorGraphics.name);
      final styles = _collectBoundVariableStyles([vectorGraphics]);
      final stylesClassName = styles.isNotEmpty ? '${widgetName}Styles' : null;
      if (stylesClassName != null) {
        _writeStylesClass(buffer, context, styles, stylesClassName);
      }
      _writeCustomPainter(
        buffer,
        vectorGraphics,
        context,
        stylesClassName: stylesClassName,
      );
    }

    buffer.writeln();

    return buffer.toString();
  }
}

Map<String, Set<String>> _collectBoundVariableStyles(
  List<VectorGraphics> vectorGraphics,
) {
  final styles = <String, Set<String>>{};
  for (final graphic in vectorGraphics) {
    _collectNodeBoundVariables(styles, graphic.root);
  }
  return styles;
}

void _collectNodeBoundVariables(
  Map<String, Set<String>> styles,
  VectorNode node,
) {
  switch (node.whichType()) {
    case VectorNode_Type.network:
      _collectGeometryBoundVariables(styles, node.network.geometry);
      for (final region in node.network.regions) {
        for (final fill in region.fills) {
          _collectPaintBoundVariables(styles, fill);
        }
      }
    case VectorNode_Type.rectangle:
      _collectGeometryBoundVariables(styles, node.rectangle.geometry);
    case VectorNode_Type.ellipse:
      _collectGeometryBoundVariables(styles, node.ellipse.geometry);
    case VectorNode_Type.polygon:
      _collectGeometryBoundVariables(styles, node.polygon.geometry);
    case VectorNode_Type.frame:
      _collectGeometryBoundVariables(styles, node.frame.geometry);
      for (final child in node.frame.children) {
        _collectNodeBoundVariables(styles, child);
      }
    case VectorNode_Type.group:
      for (final child in node.group.children) {
        _collectNodeBoundVariables(styles, child);
      }
    case VectorNode_Type.notSet:
      break;
  }
}

void _collectGeometryBoundVariables(
  Map<String, Set<String>> styles,
  GeometryProperty geometry,
) {
  for (final paint in geometry.fills) {
    _collectPaintBoundVariables(styles, paint);
  }
  for (final paint in geometry.strokes) {
    _collectPaintBoundVariables(styles, paint);
  }
}

void _collectPaintBoundVariables(Map<String, Set<String>> styles, Paint paint) {
  switch (paint.whichType()) {
    case Paint_Type.solid:
      final solid = paint.solid;
      if (solid.whichColor() == SolidPaint_Color.bound) {
        final bound = solid.bound;
        _addBoundVariable(styles, bound);
      }
    case Paint_Type.gradient:
      for (final stop in paint.gradient.gradientStops) {
        if (stop.whichColor() == ColorStop_Color.bound) {
          final bound = stop.bound;
          _addBoundVariable(styles, bound);
        }
      }
    case Paint_Type.notSet:
      break;
  }
}

void _addBoundVariable(Map<String, Set<String>> styles, BoundVariable bound) {
  final collectionName = bound.collectionName;
  final variableName = bound.variableName;
  if (collectionName.isEmpty || variableName.isEmpty) {
    return;
  }

  final collection = styles.putIfAbsent(collectionName, () => {});
  collection.add(variableName);
}

void _writeStylesClass(
  DartBuffer buffer,
  FlutterExportContext context,
  Map<String, Set<String>> styles,
  String stylesClassName,
) {
  final entries = styles.entries.toList()
    ..sort((a, b) => a.key.compareTo(b.key));
  final collections = <String, VariableCollection>{
    for (final collection in context.variables.collections)
      collection.name: collection,
  };

  final resolvedEntries = <String, _StyleCollection>{
    for (final entry in entries)
      if (collections[entry.key] != null)
        entry.key: _StyleCollection(
          collection: collections[entry.key]!,
          variableNames: entry.value,
        ),
  };

  if (resolvedEntries.isEmpty) {
    return;
  }

  final baseName = stylesClassName.replaceAll('Styles', '');
  buffer.writeln('class $stylesClassName {');
  buffer.indent();
  buffer.writeln('const $stylesClassName({');
  buffer.indent();
  for (final entry in resolvedEntries.entries) {
    final className = '${baseName}${Naming.typeName(entry.key)}Styles';
    final fieldName = Naming.fieldName(entry.key);
    buffer.writeln('this.$fieldName = const $className(),');
  }
  buffer.unindent();
  buffer.writeln('});');
  buffer.writeln();

  for (final entry in resolvedEntries.entries) {
    final className = '${baseName}${Naming.typeName(entry.key)}Styles';
    final fieldName = Naming.fieldName(entry.key);
    buffer.writeln('final $className $fieldName;');
  }

  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  for (final entry in resolvedEntries.entries) {
    final className = '${baseName}${Naming.typeName(entry.key)}Styles';
    final collection = entry.value.collection;
    buffer.writeln('class $className {');
    buffer.indent();

    final properties = <({String fieldName, String value})>[];
    if (collection.variants.isNotEmpty) {
      final variant = collection.variants.first;
      for (var i = 0; i < collection.variables.length; i++) {
        final variable = collection.variables[i];
        if (!entry.value.variableNames.contains(variable.name)) {
          continue;
        }
        if (i >= variant.values.length) {
          continue;
        }
        final value = variant.values[i];
        final resolved =
            context.variables.collections.resolveValue(value) ?? value;
        if (resolved.whichType() != Value_Type.color) {
          continue;
        }
        final fieldName = Naming.fieldName(variable.name);
        final serialized = const FlutterValueExporter().serialize(
          context,
          resolved,
          Value_Type.color,
        );
        properties.add((fieldName: fieldName, value: serialized));
      }
    }

    buffer.writeln('const $className({');
    buffer.indent();
    for (final property in properties) {
      buffer.writeln('this.${property.fieldName} = ${property.value},');
    }
    buffer.unindent();
    buffer.writeln('});');
    buffer.writeln();

    for (final property in properties) {
      buffer.writeln('final fl.Color ${property.fieldName};');
    }

    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();
  }
}

class _StyleCollection {
  const _StyleCollection({
    required this.collection,
    required this.variableNames,
  });

  final VariableCollection collection;
  final Set<String> variableNames;
}

void _writeCustomPainter(
  DartBuffer buffer,
  VectorGraphics vectorGraphics,
  FlutterExportContext context, {
  String? stylesClassName,
}) {
  final widgetName = Naming.typeName(vectorGraphics.name);
  final className = '${widgetName}Painter';
  final size = vectorGraphics.hasSize() ? vectorGraphics.size : Vector();

  buffer.writeln('class $widgetName extends fl.StatelessWidget {');
  buffer.indent();
  if (stylesClassName != null) {
    buffer.writeln(
      'const $widgetName({super.key, this.styles = const $stylesClassName()});',
    );
    buffer.writeln();
    buffer.writeln('final $stylesClassName styles;');
  } else {
    buffer.writeln('const $widgetName({super.key});');
  }
  buffer.writeln();
  buffer.writeln('@override');
  buffer.writeln('fl.Widget build(fl.BuildContext context) {');
  buffer.indent();
  if (stylesClassName != null) {
    buffer.writeln(
      'return fl.CustomPaint(size: const fl.Size(${_formatDouble(size.x)}, ${_formatDouble(size.y)}), painter: $className(styles));',
    );
  } else {
    buffer.writeln(
      'return fl.CustomPaint(size: const fl.Size(${_formatDouble(size.x)}, ${_formatDouble(size.y)}), painter: const $className());',
    );
  }
  buffer.unindent();
  buffer.writeln('}');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  buffer.writeln('class $className extends fl.CustomPainter {');
  buffer.indent();
  if (stylesClassName != null) {
    buffer.writeln('const $className(this.styles);');
    buffer.writeln('final $stylesClassName styles;');
  } else {
    buffer.writeln('const $className();');
  }
  buffer.writeln();

  final methodNames = <VectorNode, String>{};
  var methodIndex = 0;
  String methodNameFor(VectorNode node) =>
      methodNames.putIfAbsent(node, () => '_drawNode${methodIndex++}');
  final rootMethodName = methodNameFor(vectorGraphics.root);

  buffer.writeln('@override');
  buffer.writeln('void paint(ui.Canvas canvas, fl.Size size) {');
  buffer.indent();
  buffer.writeln('final paint = ui.Paint();');
  buffer.writeln('final bounds = fl.Offset.zero & size;');
  buffer.writeln();
  buffer.writeln('$rootMethodName(canvas, bounds, paint);');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  _writeNodeMethods(
    buffer,
    vectorGraphics.root,
    context,
    stylesClassName == null ? null : 'styles',
    stylesClassName,
    methodNameFor,
  );

  buffer.writeln('@override');
  buffer.writeln(
    'bool shouldRepaint(covariant $className oldDelegate) => false;',
  );

  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();
}

void _writeNodeMethods(
  DartBuffer buffer,
  VectorNode node,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
  String Function(VectorNode) methodNameFor,
) {
  final methodName = methodNameFor(node);
  buffer.writeln('@pragma(\'vm:prefer-inline\')');
  buffer.writeln(
    'void $methodName(ui.Canvas canvas, fl.Rect bounds, ui.Paint paint) {',
  );
  buffer.indent();
  buffer.writeln('// ${node.whichType().name.toUpperCase()} "${node.name}"');
  buffer.writeln('canvas.save();');
  _writeNodeTransform(buffer, node);
  _writeNodeOpacity(buffer, node);

  switch (node.whichType()) {
    case VectorNode_Type.network:
      if (node.network.regions.isEmpty) {
        _writeNetworkFillFromSegments(
          buffer,
          node.network,
          context,
          stylesReference,
          stylesClassName,
        );
      } else {
        for (final region in node.network.regions) {
          _writeRegion(
            buffer,
            node.network,
            region,
            context,
            stylesReference,
            stylesClassName,
          );
        }
      }
      _writeNetworkStrokesFromSegments(
        buffer,
        node.network,
        context,
        stylesReference,
        stylesClassName,
      );
    case VectorNode_Type.group:
      for (final child in node.group.children) {
        buffer.writeln('${methodNameFor(child)}(canvas, bounds, paint);');
      }
    case VectorNode_Type.frame:
      if (node.frame.isClipping) {
        _writeFrameClip(buffer, node.frame);
      }
      for (final child in node.frame.children) {
        buffer.writeln('${methodNameFor(child)}(canvas, bounds, paint);');
      }
    case VectorNode_Type.rectangle:
      _writeRectangle(
        buffer,
        node.rectangle,
        context,
        stylesReference,
        stylesClassName,
      );
    case VectorNode_Type.ellipse:
      _writeEllipse(
        buffer,
        node.ellipse,
        context,
        stylesReference,
        stylesClassName,
      );
    case VectorNode_Type.polygon:
      _writePolygon(
        buffer,
        node.polygon,
        context,
        stylesReference,
        stylesClassName,
      );
    case VectorNode_Type.notSet:
      buffer.writeln('// Unsupported');
  }

  if (node.hasOpacity() && node.opacity < 1.0) {
    buffer.writeln('canvas.restore();');
    buffer.writeln();
  }
  buffer.writeln('canvas.restore();');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  switch (node.whichType()) {
    case VectorNode_Type.frame:
      for (final child in node.frame.children) {
        _writeNodeMethods(
          buffer,
          child,
          context,
          stylesReference,
          stylesClassName,
          methodNameFor,
        );
      }
    case VectorNode_Type.group:
      for (final child in node.group.children) {
        _writeNodeMethods(
          buffer,
          child,
          context,
          stylesReference,
          stylesClassName,
          methodNameFor,
        );
      }
    case VectorNode_Type.network:
    case VectorNode_Type.rectangle:
    case VectorNode_Type.ellipse:
    case VectorNode_Type.polygon:
    case VectorNode_Type.notSet:
      break;
  }
}

void _writeNodeOpacity(DartBuffer buffer, VectorNode node) {
  if (!node.hasOpacity()) {
    return;
  }
  final opacity = node.opacity;
  if (opacity < 1.0) {
    buffer.writeln(
      'canvas.saveLayer(bounds, ui.Paint()..color = ui.Color.fromRGBO(255, 255, 255, ${opacity.toStringAsFixed(6)}));',
    );
    buffer.writeln();
  }
}

void _writeNodeTransform(DartBuffer buffer, VectorNode node) {
  if (!node.hasTransform()) {
    return;
  }
  // We ignore group transforms
  if (node.whichType() == VectorNode_Type.group) {
    return;
  }
  final transform = node.transform;
  // TODO generate  binary data
  buffer.writeln(
    'canvas.transform(Float64List.fromList(const <double>['
    '${_formatDouble(transform.m00)}, ${_formatDouble(transform.m10)}, 0, 0, '
    '${_formatDouble(transform.m01)}, ${_formatDouble(transform.m11)}, 0, 0, '
    '0, 0, 1, 0, '
    '${_formatDouble(transform.m02)}, ${_formatDouble(transform.m12)}, 0, 1'
    ']));',
  );
}

void _writeRectangle(
  DartBuffer buffer,
  VectorRectangle rectangle,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  final width = rectangle.hasSize() ? rectangle.size.x : 0.0;
  final height = rectangle.hasSize() ? rectangle.size.y : 0.0;
  if (width <= 0 ||
      height <= 0 ||
      (rectangle.geometry.fills.isEmpty &&
          rectangle.geometry.strokes.isEmpty)) {
    return;
  }
  buffer.writeln(
    'final rect = fl.Rect.fromLTWH(0, 0, ${_formatDouble(width)}, ${_formatDouble(height)});',
  );
  if (rectangle.geometry.fills.isNotEmpty) {
    buffer.writeln('paint.style = ui.PaintingStyle.fill;');
    for (final fill in rectangle.geometry.fills) {
      _writePaintAssignment(
        buffer,
        fill,
        context,
        stylesReference,
        stylesClassName,
      );
      buffer.writeln('canvas.drawRect(rect, paint);');
    }
  }
  _writeRectangleStrokes(
    buffer,
    rectangle,
    context,
    stylesReference,
    stylesClassName,
  );
}

void _writeEllipse(
  DartBuffer buffer,
  VectorEllipse ellipse,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  final width = ellipse.hasSize() ? ellipse.size.x : 0.0;
  final height = ellipse.hasSize() ? ellipse.size.y : 0.0;
  if (width <= 0 ||
      height <= 0 ||
      (ellipse.geometry.fills.isEmpty && ellipse.geometry.strokes.isEmpty)) {
    return;
  }
  buffer.writeln(
    'final rect = fl.Rect.fromLTWH(0, 0, ${_formatDouble(width)}, ${_formatDouble(height)});',
  );
  const twoPi = 6.283185307179586;
  final arcStart = ellipse.hasArcData() ? ellipse.arcData.startingAngle : 0.0;
  final arcEnd = ellipse.hasArcData() ? ellipse.arcData.endingAngle : twoPi;
  final innerRadius = ellipse.hasArcData() ? ellipse.arcData.innerRadius : 0.0;
  final sweep = arcEnd - arcStart;
  final isFullCircle = (sweep - twoPi).abs() < 0.0001;
  final hasInnerRadius = innerRadius > 0.0;

  if (isFullCircle && !hasInnerRadius) {
    if (ellipse.geometry.fills.isNotEmpty) {
      buffer.writeln('paint.style = ui.PaintingStyle.fill;');
      for (final fill in ellipse.geometry.fills) {
        _writePaintAssignment(
          buffer,
          fill,
          context,
          stylesReference,
          stylesClassName,
        );
        buffer.writeln('canvas.drawOval(rect, paint);');
      }
    }
    _writeEllipseStrokes(
      buffer,
      ellipse,
      context,
      stylesReference,
      stylesClassName,
      'rect',
    );
    return;
  }

  if (!hasInnerRadius) {
    if (ellipse.geometry.fills.isNotEmpty) {
      buffer.writeln('paint.style = ui.PaintingStyle.fill;');
      for (final fill in ellipse.geometry.fills) {
        _writePaintAssignment(
          buffer,
          fill,
          context,
          stylesReference,
          stylesClassName,
        );
        buffer.writeln(
          'canvas.drawArc(rect, ${_formatDouble(arcStart)}, ${_formatDouble(sweep)}, true, paint);',
        );
      }
    }
    _writeEllipseStrokes(
      buffer,
      ellipse,
      context,
      stylesReference,
      stylesClassName,
      'rect',
      arcStart: arcStart,
      sweep: sweep,
    );
    return;
  }

  buffer.writeln('final path = ui.Path();');
  buffer.writeln(
    'final center = fl.Offset(${_formatDouble(width)} / 2, ${_formatDouble(height)} / 2);',
  );
  buffer.writeln(
    'final radius = fl.Size(${_formatDouble(width)} / 2, ${_formatDouble(height)} / 2);',
  );
  if (isFullCircle) {
    buffer.writeln('path.fillType = ui.PathFillType.evenOdd;');
    buffer.writeln('path.addOval(rect);');
    buffer.writeln(
      'final innerRect = fl.Rect.fromCenter(center: center, width: radius.width * ${_formatDouble(innerRadius)} * 2, height: radius.height * ${_formatDouble(innerRadius)} * 2);',
    );
    buffer.writeln('path.addOval(innerRect);');
  } else {
    buffer.writeln(
      'path.addArc(rect, ${_formatDouble(arcStart)}, ${_formatDouble(sweep)});',
    );
    buffer.writeln(
      'final innerRect = fl.Rect.fromCenter(center: center, width: radius.width * ${_formatDouble(innerRadius)} * 2, height: radius.height * ${_formatDouble(innerRadius)} * 2);',
    );
    buffer.writeln(
      'path.arcTo(innerRect, ${_formatDouble(arcStart + sweep)}, ${_formatDouble(-sweep)}, false);',
    );
    buffer.writeln('path.close();');
  }
  if (ellipse.geometry.fills.isNotEmpty) {
    buffer.writeln('paint.style = ui.PaintingStyle.fill;');
    for (final fill in ellipse.geometry.fills) {
      _writePaintAssignment(
        buffer,
        fill,
        context,
        stylesReference,
        stylesClassName,
      );
      buffer.writeln('canvas.drawPath(path, paint);');
    }
  }
  _writePathStrokes(
    buffer,
    ellipse.geometry,
    context,
    stylesReference,
    stylesClassName,
    'path',
  );
}

void _writePolygon(
  DartBuffer buffer,
  VectorPolygon polygon,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  final width = polygon.hasSize() ? polygon.size.x : 0.0;
  final height = polygon.hasSize() ? polygon.size.y : 0.0;
  if (width <= 0 || height <= 0 || polygon.pointCount < 3) {
    return;
  }
  buffer.writeln('final path = ui.Path();');
  buffer.writeln(
    'final center = fl.Offset(${_formatDouble(width)} / 2, ${_formatDouble(height)} / 2);',
  );
  buffer.writeln(
    'final radius = fl.Offset(${_formatDouble(width)} / 2, ${_formatDouble(height)} / 2);',
  );
  buffer.writeln('final pointCount = ${polygon.pointCount};');
  buffer.writeln('for (var i = 0; i < pointCount; i++) {');
  buffer.indent();
  buffer.writeln('final angle = (i * 2 * math.pi) / pointCount;');
  buffer.writeln(
    'final point = fl.Offset(center.dx + radius.dx * math.cos(angle), center.dy + radius.dy * math.sin(angle));',
  );
  buffer.writeln('if (i == 0) {');
  buffer.indent();
  buffer.writeln('path.moveTo(point.dx, point.dy);');
  buffer.unindent();
  buffer.writeln('} else {');
  buffer.indent();
  buffer.writeln('path.lineTo(point.dx, point.dy);');
  buffer.unindent();
  buffer.writeln('}');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln('path.close();');
  if (polygon.geometry.fills.isNotEmpty) {
    buffer.writeln('paint.style = ui.PaintingStyle.fill;');
    for (final fill in polygon.geometry.fills) {
      _writePaintAssignment(
        buffer,
        fill,
        context,
        stylesReference,
        stylesClassName,
      );
      buffer.writeln('canvas.drawPath(path, paint);');
    }
  }
  _writePathStrokes(
    buffer,
    polygon.geometry,
    context,
    stylesReference,
    stylesClassName,
    'path',
  );
}

void _writeFrameClip(DartBuffer buffer, VectorFrame frame) {
  buffer.writeln('{');
  buffer.indent();
  final width = frame.hasSize() ? frame.size.x : 0.0;
  final height = frame.hasSize() ? frame.size.y : 0.0;
  if (width <= 0 || height <= 0) {
    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();
    return;
  }
  buffer.writeln(
    'final rect = fl.Rect.fromLTWH(0, 0, ${_formatDouble(width)}, ${_formatDouble(height)});',
  );
  if (frame.hasCornerRadius()) {
    buffer.writeln(
      'final rrect = fl.RRect.fromRectAndCorners(' //
      'rect, ' //
      'topLeft: fl.Radius.circular(${_formatDouble(frame.cornerRadius.topLeft)}), ' //
      'topRight: fl.Radius.circular(${_formatDouble(frame.cornerRadius.topRight)}), ' //
      'bottomLeft: fl.Radius.circular(${_formatDouble(frame.cornerRadius.bottomLeft)}), ' //
      'bottomRight: fl.Radius.circular(${_formatDouble(frame.cornerRadius.bottomRight)}));',
    );
    buffer.writeln('canvas.clipRRect(rrect);');
  } else {
    buffer.writeln('canvas.clipRect(rect);');
  }
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();
}

void _writeRegion(
  DartBuffer buffer,
  VectorNetwork network,
  VectorRegion region,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  if (region.loops.isEmpty || region.fills.isEmpty) {
    return;
  }

  buffer.writeln('{');
  buffer.indent();
  buffer.writeln('final path = ui.Path();');
  buffer.writeln('path.fillType = ${_pathFillType(region.windingRule)};');

  for (final loop in region.loops) {
    _writeLoop(buffer, network, loop);
  }

  buffer.writeln('paint.style = ui.PaintingStyle.fill;');
  for (final fill in region.fills) {
    _writePaintAssignment(
      buffer,
      fill,
      context,
      stylesReference,
      stylesClassName,
    );
    buffer.writeln('canvas.drawPath(path, paint);');
  }

  buffer.unindent();
  buffer.writeln('}');
}

void _writeNetworkFillFromSegments(
  DartBuffer buffer,
  VectorNetwork network,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  if (network.segments.isEmpty || network.geometry.fills.isEmpty) {
    return;
  }

  final loops = _networkLoops(network);
  if (loops.isEmpty) {
    return;
  }

  buffer.writeln('{');
  buffer.indent();
  buffer.writeln('final path = ui.Path();');
  for (final loop in loops) {
    _writeLoop(buffer, network, loop);
  }
  buffer.writeln('paint.style = ui.PaintingStyle.fill;');
  for (final fill in network.geometry.fills) {
    _writePaintAssignment(
      buffer,
      fill,
      context,
      stylesReference,
      stylesClassName,
    );
    buffer.writeln('canvas.drawPath(path, paint);');
  }
  buffer.unindent();
  buffer.writeln('}');
}

void _writeNetworkStrokesFromSegments(
  DartBuffer buffer,
  VectorNetwork network,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  if (network.segments.isEmpty || network.geometry.strokes.isEmpty) {
    return;
  }

  buffer.writeln('{');
  buffer.indent();
  buffer.writeln('final path = ui.Path();');
  _writeNetworkStrokePath(buffer, network);
  _writePathStrokes(
    buffer,
    network.geometry,
    context,
    stylesReference,
    stylesClassName,
    'path',
  );
  buffer.unindent();
  buffer.writeln('}');
}

void _writeNetworkStrokePath(DartBuffer buffer, VectorNetwork network) {
  var currentVertexIndex = -1;
  for (final segment in network.segments) {
    if (currentVertexIndex != segment.start) {
      final startVertex = network.vertices[segment.start];
      buffer.writeln(
        'path.moveTo(${_formatDouble(startVertex.x)}, ${_formatDouble(startVertex.y)});',
      );
    }
    final startVertex = network.vertices[segment.start];
    final endVertex = network.vertices[segment.end];
    if (segment.hasTangentStart() || segment.hasTangentEnd()) {
      final tangentStart = segment.hasTangentStart()
          ? Vector(
              x: startVertex.x + segment.tangentStart.x,
              y: startVertex.y + segment.tangentStart.y,
            )
          : Vector(x: startVertex.x, y: startVertex.y);
      final tangentEnd = segment.hasTangentEnd()
          ? Vector(
              x: endVertex.x + segment.tangentEnd.x,
              y: endVertex.y + segment.tangentEnd.y,
            )
          : Vector(x: endVertex.x, y: endVertex.y);
      buffer.writeln(
        'path.cubicTo(${_formatDouble(tangentStart.x)}, ${_formatDouble(tangentStart.y)}, ${_formatDouble(tangentEnd.x)}, ${_formatDouble(tangentEnd.y)}, ${_formatDouble(endVertex.x)}, ${_formatDouble(endVertex.y)});',
      );
    } else {
      buffer.writeln(
        'path.lineTo(${_formatDouble(endVertex.x)}, ${_formatDouble(endVertex.y)});',
      );
    }
    currentVertexIndex = segment.end;
  }
}

void _writeRectangleStrokes(
  DartBuffer buffer,
  VectorRectangle rectangle,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  if (rectangle.geometry.strokes.isEmpty ||
      rectangle.geometry.strokeWeight <= 0) {
    return;
  }

  buffer.writeln('paint.style = ui.PaintingStyle.stroke;');
  buffer.writeln(
    'paint.strokeWidth = ${_formatDouble(rectangle.geometry.strokeWeight)};',
  );
  for (final stroke in rectangle.geometry.strokes) {
    _writePaintAssignment(
      buffer,
      stroke,
      context,
      stylesReference,
      stylesClassName,
    );
    buffer.writeln('canvas.drawRect(rect, paint);');
  }
}

void _writeEllipseStrokes(
  DartBuffer buffer,
  VectorEllipse ellipse,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
  String rectName, {
  double? arcStart,
  double? sweep,
}) {
  if (ellipse.geometry.strokes.isEmpty || ellipse.geometry.strokeWeight <= 0) {
    return;
  }

  buffer.writeln('paint.style = ui.PaintingStyle.stroke;');
  buffer.writeln(
    'paint.strokeWidth = ${_formatDouble(ellipse.geometry.strokeWeight)};',
  );
  for (final stroke in ellipse.geometry.strokes) {
    _writePaintAssignment(
      buffer,
      stroke,
      context,
      stylesReference,
      stylesClassName,
    );
    if (arcStart == null || sweep == null) {
      buffer.writeln('canvas.drawOval($rectName, paint);');
    } else {
      buffer.writeln(
        'canvas.drawArc($rectName, ${_formatDouble(arcStart)}, ${_formatDouble(sweep)}, false, paint);',
      );
    }
  }
}

void _writePathStrokes(
  DartBuffer buffer,
  GeometryProperty geometry,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
  String pathName,
) {
  if (geometry.strokes.isEmpty || geometry.strokeWeight <= 0) {
    return;
  }

  buffer.writeln('paint.style = ui.PaintingStyle.stroke;');
  buffer.writeln(
    'paint.strokeWidth = ${_formatDouble(geometry.strokeWeight)};',
  );
  for (final stroke in geometry.strokes) {
    _writePaintAssignment(
      buffer,
      stroke,
      context,
      stylesReference,
      stylesClassName,
    );
    buffer.writeln('canvas.drawPath($pathName, paint);');
  }
}

List<VectorRegionLoop> _networkLoops(VectorNetwork network) {
  final loops = <VectorRegionLoop>[];
  final segmentCount = network.segments.length;
  if (segmentCount == 0) {
    return loops;
  }

  final unusedSegments = <int>{for (var i = 0; i < segmentCount; i++) i};
  final startIndexMap = <int, List<int>>{};
  for (var i = 0; i < segmentCount; i++) {
    final start = network.segments[i].start;
    startIndexMap.putIfAbsent(start, () => <int>[]).add(i);
  }

  while (unusedSegments.isNotEmpty) {
    final firstIndex = unusedSegments.first;
    final firstSegment = network.segments[firstIndex];
    final loopSegments = <int>[firstIndex];
    unusedSegments.remove(firstIndex);
    var startVertex = firstSegment.start;
    var currentEnd = firstSegment.end;
    var safetyCounter = 0;

    while (currentEnd != startVertex && safetyCounter < segmentCount) {
      final candidates = startIndexMap[currentEnd];
      if (candidates == null) {
        break;
      }
      final nextIndex = candidates.firstWhere(
        unusedSegments.contains,
        orElse: () => -1,
      );
      if (nextIndex == -1) {
        break;
      }
      loopSegments.add(nextIndex);
      unusedSegments.remove(nextIndex);
      currentEnd = network.segments[nextIndex].end;
      safetyCounter++;
    }

    if (currentEnd == startVertex) {
      loops.add(VectorRegionLoop(segments: loopSegments));
    }
  }

  return loops;
}

void _writeLoop(
  DartBuffer buffer,
  VectorNetwork network,
  VectorRegionLoop loop,
) {
  if (loop.segments.isEmpty) {
    return;
  }

  buffer.writeln('{');
  buffer.indent();

  final firstSegment = network.segments[loop.segments.first];
  final firstVertex = network.vertices[firstSegment.start];
  buffer.writeln(
    'path.moveTo(${_formatDouble(firstVertex.x)}, ${_formatDouble(firstVertex.y)});',
  );

  for (final segmentIndex in loop.segments) {
    final segment = network.segments[segmentIndex];
    final startVertex = network.vertices[segment.start];
    final endVertex = network.vertices[segment.end];
    if (segment.hasTangentStart() || segment.hasTangentEnd()) {
      final tangentStart = segment.hasTangentStart()
          ? Vector(
              x: startVertex.x + segment.tangentStart.x,
              y: startVertex.y + segment.tangentStart.y,
            )
          : Vector(x: startVertex.x, y: startVertex.y);
      final tangentEnd = segment.hasTangentEnd()
          ? Vector(
              x: endVertex.x + segment.tangentEnd.x,
              y: endVertex.y + segment.tangentEnd.y,
            )
          : Vector(x: endVertex.x, y: endVertex.y);
      buffer.writeln(
        'path.cubicTo(${_formatDouble(tangentStart.x)}, ${_formatDouble(tangentStart.y)}, ${_formatDouble(tangentEnd.x)}, ${_formatDouble(tangentEnd.y)}, ${_formatDouble(endVertex.x)}, ${_formatDouble(endVertex.y)});',
      );
    } else {
      buffer.writeln(
        'path.lineTo(${_formatDouble(endVertex.x)}, ${_formatDouble(endVertex.y)});',
      );
    }
  }

  buffer.writeln('path.close();');

  buffer.unindent();
  buffer.writeln('}');
}

void _writePaintAssignment(
  DartBuffer buffer,
  Paint paint,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  buffer.writeln('paint');
  buffer.indent();
  buffer.writeln('..blendMode = ${_blendMode(paint)}');

  switch (paint.whichType()) {
    case Paint_Type.solid:
      buffer.writeln(
        '..color = ${_solidPaintColor(paint.solid, paint.opacity, context, stylesReference, stylesClassName)}',
      );
    case Paint_Type.gradient:
      _writeGradientAssignment(
        buffer,
        paint.gradient,
        paint.opacity,
        context,
        stylesReference,
        stylesClassName,
      );
    case Paint_Type.notSet:
      buffer.writeln('..color = const ui.Color(0x00000000)');
  }

  buffer.unindent();
  buffer.writeln(';');
}

String _blendMode(Paint paint) {
  if (!paint.hasBlendMode()) {
    return 'ui.BlendMode.srcOver';
  }

  return switch (paint.blendMode) {
    BlendMode.NORMAL => 'ui.BlendMode.srcOver',
    BlendMode.DARKEN => 'ui.BlendMode.darken',
    BlendMode.MULTIPLY => 'ui.BlendMode.multiply',
    BlendMode.LINEAR_BURN => 'ui.BlendMode.darken',
    BlendMode.COLOR_BURN => 'ui.BlendMode.colorBurn',
    BlendMode.LIGHTEN => 'ui.BlendMode.lighten',
    BlendMode.SCREEN => 'ui.BlendMode.screen',
    BlendMode.LINEAR_DODGE => 'ui.BlendMode.plus',
    BlendMode.COLOR_DODGE => 'ui.BlendMode.colorDodge',
    BlendMode.OVERLAY => 'ui.BlendMode.overlay',
    BlendMode.SOFT_LIGHT => 'ui.BlendMode.softLight',
    BlendMode.HARD_LIGHT => 'ui.BlendMode.hardLight',
    BlendMode.DIFFERENCE => 'ui.BlendMode.difference',
    BlendMode.EXCLUSION => 'ui.BlendMode.exclusion',
    BlendMode.HUE => 'ui.BlendMode.hue',
    BlendMode.SATURATION => 'ui.BlendMode.saturation',
    BlendMode.COLOR => 'ui.BlendMode.color',
    BlendMode.LUMINOSITY => 'ui.BlendMode.luminosity',
    _ => 'ui.BlendMode.srcOver',
  };
}

String _solidPaintColor(
  SolidPaint paint,
  double opacity,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  if (paint.whichColor() == SolidPaint_Color.bound) {
    return _boundColorReference(
      paint.bound,
      opacity,
      stylesReference,
      stylesClassName ?? 'Styles',
    );
  }
  if (!paint.hasValue()) {
    return 'const ui.Color(0x00000000)';
  }

  final color = paint.value;
  final alpha = (color.a * opacity).clamp(0.0, 1.0).toStringAsFixed(6);
  return 'const ui.Color.from(red: ${_formatDouble(color.r)}, green: ${_formatDouble(color.g)}, blue: ${_formatDouble(color.b)}, alpha: $alpha)';
}

void _writeGradientAssignment(
  DartBuffer buffer,
  GradientPaint gradient,
  double opacity,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  final colorStops = gradient.gradientStops;
  final colors = colorStops
      .map(
        (stop) => _stopColor(
          stop,
          opacity,
          context,
          stylesReference,
          stylesClassName,
        ),
      )
      .join(', ');
  final stops = colorStops.map((stop) => stop.position).join(', ');

  switch (gradient.type) {
    case GradientType.LINEAR:
      buffer.writeln(
        '..shader = ui.Gradient.linear(' //
        'fl.Offset.zero, fl.Offset(bounds.width, 0), ' //
        '[$colors], [$stops])',
      );
      buffer.writeln(
        '..color = const ui.Color.from(red: 1, green: 1, blue: 1, alpha: ${opacity.toStringAsFixed(6)})',
      );
    case GradientType.RADIAL:
      buffer.writeln(
        '..shader = ui.Gradient.radial(' //
        'fl.Offset(bounds.width * 0.5, bounds.height * 0.5), ' //
        '(bounds.width * 0.5), ' //
        '[$colors], [$stops])',
      );
      buffer.writeln(
        '..color = const ui.Color.fromRGBO(255, 255, 255, ${opacity.toStringAsFixed(6)})',
      );
    case GradientType.ANGULAR:
      buffer.writeln(
        '..shader = ui.Gradient.sweep(' //
        'fl.Offset(bounds.width * 0.5, bounds.height * 0.5), ' //
        '[$colors], [$stops])',
      );
      buffer.writeln(
        '..color = const ui.Color.fromRGBO(255, 255, 255, ${opacity.toStringAsFixed(6)})',
      );
    case GradientType.DIAMOND:
      buffer.writeln(
        '..color = const ui.Color.fromRGBO(255, 0, 255, ${opacity.toStringAsFixed(6)})',
      );
  }
}

String _stopColor(
  ColorStop stop,
  double opacity,
  FlutterExportContext context,
  String? stylesReference,
  String? stylesClassName,
) {
  if (stop.whichColor() == ColorStop_Color.bound) {
    return _boundColorReference(
      stop.bound,
      opacity,
      stylesReference,
      stylesClassName ?? 'Styles',
    );
  }
  if (!stop.hasValue()) {
    return 'const ui.Color(0x00000000)';
  }
  final color = stop.value;
  final alpha = (color.a * opacity).clamp(0.0, 1.0).toStringAsFixed(6);
  return 'const ui.Color.from(red: ${_formatDouble(color.r)}, green: ${_formatDouble(color.g)}, blue: ${_formatDouble(color.b)}, alpha: $alpha)';
}

String _boundColorReference(
  BoundVariable bound,
  double opacity,
  String? stylesReference,
  String stylesClassName,
) {
  final collectionField = Naming.fieldName(bound.collectionName);
  final variableField = Naming.fieldName(bound.variableName);
  final styles = stylesReference ?? 'const $stylesClassName()';
  return '$styles.$collectionField.$variableField.withOpacity(${opacity.toStringAsFixed(6)})';
}

String _pathFillType(WindingRule rule) {
  return switch (rule) {
    WindingRule.EVENODD => 'ui.PathFillType.evenOdd',
    WindingRule.NONZERO => 'ui.PathFillType.nonZero',
    _ => 'ui.PathFillType.nonZero',
  };
}

String _formatDouble(double value) {
  var formatted = value.toStringAsFixed(6);
  if (!formatted.contains('.')) {
    formatted = '$formatted.0';
  }
  return formatted;
}
