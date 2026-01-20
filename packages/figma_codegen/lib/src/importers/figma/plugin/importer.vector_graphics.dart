import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart'
    as figma_api;

class FigmaVectorNetworksImporter {
  const FigmaVectorNetworksImporter();

  Future<List<VectorGraphics>> import(
    ImportContext<FigmaImportOptions> context,
  ) async {
    final selection = figma_api.figma.currentPage.selection.toDart;
    if (selection.isEmpty) {
      return const [];
    }

    final componentNodes = selection
        .where((node) => node.type == 'COMPONENT')
        .toList(growable: false);

    final targets = componentNodes.isNotEmpty ? componentNodes : selection;
    print('Found ${targets.length} target nodes for vector network import.');

    final result = <VectorGraphics>[];

    for (final node in targets) {
      final root = await _vectorNode(node, context);
      if (root != null) {
        print('Imported vector graphics for node: ${node.name}');
        final offset = Vector(x: node.x.toDouble(), y: node.y.toDouble());
        print('Node offset: ($offset)');
        final size = Vector(
          x: node.width.toDouble(),
          y: node.height.toDouble(),
        );
        print('Node size: ($size)');
        result.add(
          VectorGraphics(
            name: node.name,
            offset: offset,
            size: size,
            root: root,
          ),
        );
      }
    }

    return result;
  }
}

String nodeType(figma_api.SceneNode node) {
  return node.getProperty('type'.jsify()!).dartify() as String;
}

bool isGroup(figma_api.SceneNode node) {
  return nodeType(node) == 'GROUP';
}

double nodeOpacity(figma_api.SceneNode node) {
  final hasOpacity = node.hasProperty('opacity'.jsify()!).dartify() as bool;
  if (!hasOpacity) {
    return 1.0;
  }
  final opacity = node.getProperty('opacity'.jsify()!);
  print('Node opacity: $opacity');
  return opacity.dartify() as double;
}

Future<List<VectorNode>> childrenNodes(
  figma_api.SceneNode node,
  ImportContext<FigmaImportOptions> context,
) async {
  final children = node.getProperty('children'.jsify()!);
  if (children is! JSArray) {
    return [];
  }

  final dartChildren = children.toDart;
  final result = <VectorNode>[];
  for (final child in dartChildren) {
    final node = await _vectorNode(child as figma_api.SceneNode, context);

    if (node != null) {
      result.add(node);
    }
  }
  return result;
}

GeometryProperty _geometryNode(
  figma_api.SceneNode node,
  ImportContext<FigmaImportOptions> context,
) {
  final fills = _convertNodeFills('fills', node, context);
  final strokes = _convertNodeFills('strokes', node, context);
  final strokeWeight = node.getProperty('strokeWeight'.jsify()!);
  return GeometryProperty(
    fills: fills,
    strokes: strokes,
    strokeWeight: (strokeWeight.dartify() as num?)?.toDouble() ?? 1.0,
  );
}

Future<VectorNode?> _vectorNode(
  figma_api.SceneNode node,
  ImportContext<FigmaImportOptions> context,
) async {
  switch (nodeType(node)) {
    case 'LINE':
      print('Parsing line node: ${node.name}');
      final lineNode = node as figma_api.LineNode;
      final width = lineNode.width.toDouble();
      return VectorNode(
        name: lineNode.name,
        opacity: nodeOpacity(lineNode),
        transform: _nodeTransform(lineNode),
        network: VectorNetwork(
          vertices: [
            VectorVertex(x: 0.0, y: 0.0),
            VectorVertex(x: width, y: 0.0),
          ],
          segments: [VectorSegment(start: 0, end: 1)],
        ),
      );
    case 'VECTOR':
      print('Parsing vector node: ${node.name}');
      final network = await _vectorNetworkFromVectorNode(
        node as figma_api.VectorNode,
        node.name,
        context,
      );
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        transform: _nodeTransform(node),
        network: network,
      );
    case 'ELLIPSE':
      print('Parsing ellipse node: ${node.name}');
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        transform: _nodeTransform(node),
        ellipse: _vectorEllipseFromNode(node as figma_api.EllipseNode, context),
      );
    case 'RECTANGLE':
      print('Parsing rectangle node: ${node.name}');
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        rectangle: _vectorRectangleFromNode(
          node as figma_api.RectangleNode,
          context,
        ),
        transform: _nodeTransform(node),
      );
    case 'POLYGON':
      print('Parsing polygon node: ${node.name}');
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        transform: _nodeTransform(node),
        polygon: _vectorPolygonFromNode(node as figma_api.PolygonNode, context),
      );

    case 'FRAME':
      print('Parsing frame node: ${node.name}');
      final frameNode = node as figma_api.FrameNode;
      final children = await childrenNodes(node, context);
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        transform: _nodeTransform(node),
        frame: VectorFrame(
          offset: Vector(x: node.x.toDouble(), y: node.y.toDouble()),
          size: Vector(x: node.width.toDouble(), y: node.height.toDouble()),
          name: node.name,
          opacity: nodeOpacity(node),
          isClipping: frameNode.clipsContent,
          cornerRadius: _cornerRadiusFromFrame(frameNode),
          geometry: _geometryNode(node, context),
          children: children,
        ),
      );
    case 'GROUP':
      print('Parsing group node: ${node.name}');
      final children = await childrenNodes(node, context);
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        transform: _nodeTransform(node),
        group: VectorGroup(
          name: node.name,
          opacity: nodeOpacity(node),
          children: children,
        ),
      );
    default:
      print('Parsing other node as group: ${node.name}');
      final children = await childrenNodes(node, context);
      return VectorNode(
        name: node.name,
        opacity: nodeOpacity(node),
        transform: _nodeTransform(node),
        group: VectorGroup(
          name: node.name,
          opacity: nodeOpacity(node),
          children: children,
        ),
      );
  }
}

Future<VectorNetwork?> _vectorNetworkFromVectorNode(
  figma_api.VectorNode node,
  String name,
  ImportContext<FigmaImportOptions> context,
) async {
  print('Parsing vector network for node: ${node.name}');
  final vectorNetwork = node.vectorNetwork;
  final vertices = vectorNetwork.vertices.toDart
      .map((vertex) => _vectorVertexFromFigma(vertex, node))
      .toList(growable: false);
  final segments = vectorNetwork.segments.toDart
      .map(_vectorSegmentFromFigma)
      .toList(growable: false);

  final regions = <VectorRegion>[];
  final rawRegions = vectorNetwork.regions?.toDart;
  if (rawRegions != null) {
    for (final region in rawRegions) {
      final converted = _vectorRegionFromFigma(region, node, context);
      if (converted != null) {
        regions.add(converted);
      }
    }
  }

  print(
    'Parsed vector network with ${vertices.length} vertices, '
    '${segments.length} segments, and ${regions.length} regions.',
  );
  final x = node.x.toDouble();
  final y = node.y.toDouble();
  print('Vector network offset: ($x, $y)');
  return VectorNetwork(
    offset: Vector(x: x, y: y),
    geometry: _geometryNode(node, context),
    vertices: vertices,
    segments: segments,
    regions: regions,
  );
}

VectorVertex _vectorVertexFromFigma(
  figma_api.VectorVertex vertex,
  figma_api.VectorNode node,
) {
  final strokeCaps = _parseStrokeCaps(node);
  final strokeJoins = _parseStrokeJoins(node);
  final cornerRadii = _parseCornerRadii(node);
  final handleMirroring = _parseHandleMirroringValues(node);

  return VectorVertex(
    x: vertex.x.toDouble(),
    y: vertex.y.toDouble(),
    strokeCap: strokeCaps != null && strokeCaps.length > 1
        ? strokeCaps[1]
        : strokeCaps?.first,
    strokeJoin: strokeJoins != null && strokeJoins.length > 1
        ? strokeJoins[1]
        : strokeJoins?.first,
    cornerRadius: cornerRadii != null && cornerRadii.length > 1
        ? cornerRadii[1]
        : cornerRadii?.first,
    handleMirroring: handleMirroring != null && handleMirroring.length > 1
        ? handleMirroring[1]
        : handleMirroring?.first,
  );
}

VectorSegment _vectorSegmentFromFigma(figma_api.VectorSegment segment) {
  return VectorSegment(
    start: segment.start,
    end: segment.end,
    tangentStart: _vectorFromFigma(segment.tangentStart),
    tangentEnd: _vectorFromFigma(segment.tangentEnd),
  );
}

VectorRectangle _vectorRectangleFromNode(
  figma_api.RectangleNode node,
  ImportContext<FigmaImportOptions> context,
) {
  print('Parsing rectangle node: ${node.name}');
  return VectorRectangle(
    offset: Vector(x: node.x.toDouble(), y: node.y.toDouble()),
    size: Vector(x: node.width.toDouble(), y: node.height.toDouble()),
    geometry: _geometryNode(node, context),
  );
}

VectorEllipse _vectorEllipseFromNode(
  figma_api.EllipseNode node,
  ImportContext<FigmaImportOptions> context,
) {
  return VectorEllipse(
    offset: Vector(x: node.x.toDouble(), y: node.y.toDouble()),
    size: Vector(x: node.width.toDouble(), y: node.height.toDouble()),
    arcData: _arcDataFromEllipse(node),
    geometry: _geometryNode(node, context),
  );
}

ArcData _arcDataFromEllipse(figma_api.EllipseNode node) {
  print('Parsing arc data for ellipse: ${node.name}');
  final arcData = node.arcData;
  return ArcData(
    startingAngle: arcData.startingAngle.toDouble(),
    endingAngle: arcData.endingAngle.toDouble(),
    innerRadius: arcData.innerRadius.toDouble(),
  );
}

VectorPolygon _vectorPolygonFromNode(
  figma_api.PolygonNode node,
  ImportContext<FigmaImportOptions> context,
) {
  print('Parsing polygon node: ${node.name}');
  return VectorPolygon(
    offset: Vector(x: node.x.toDouble(), y: node.y.toDouble()),
    size: Vector(x: node.width.toDouble(), y: node.height.toDouble()),
    geometry: _geometryNode(node, context),
    pointCount: node.pointCount,
  );
}

CornerRadius _cornerRadiusFromFrame(figma_api.FrameNode node) {
  print('Parsing corner radius for frame: ${node.name}');
  final cornerRadius = node.cornerRadius.toDouble();
  final topLeft = node.topLeftRadius.toDouble();
  final topRight = node.topRightRadius.toDouble();
  final bottomLeft = node.bottomLeftRadius.toDouble();
  final bottomRight = node.bottomRightRadius.toDouble();
  print(
    'Corner radii: $cornerRadius, $topLeft, $topRight, $bottomLeft, $bottomRight',
  );

  if (topLeft == 0 && topRight == 0 && bottomLeft == 0 && bottomRight == 0) {
    return CornerRadius(
      topLeft: cornerRadius,
      topRight: cornerRadius,
      bottomLeft: cornerRadius,
      bottomRight: cornerRadius,
    );
  }

  return CornerRadius(
    topLeft: topLeft,
    topRight: topRight,
    bottomLeft: bottomLeft,
    bottomRight: bottomRight,
  );
}

Transform _nodeTransform(figma_api.SceneNode node) {
  print('Parsing transform for node: ${node.name} : ${node.relativeTransform}');
  final transform = node.relativeTransform.toDart;
  if (transform.length < 2) {
    print('Invalid transform length: ${transform.length}');
    return Transform();
  }
  print('transform: $transform');
  final row0 = transform[0];
  final row1 = transform[1];
  if (row0.length < 3 || row1.length < 3) {
    return Transform();
  }
  print('row0: ${row0[0]}');
  return Transform(
    m00: (row0[0].dartify() as num).toDouble(),
    m01: (row0[1].dartify() as num).toDouble(),
    m10: (row1[0].dartify() as num).toDouble(),
    m11: (row1[1].dartify() as num).toDouble(),
    m02: (row0[2].dartify() as num).toDouble(),
    m12: (row1[2].dartify() as num).toDouble(),
  );
}

Vector? _vectorFromFigma(figma_api.Vector? vector) {
  if (vector == null) {
    return null;
  }

  return Vector(x: vector.x.toDouble(), y: vector.y.toDouble());
}

VectorRegion? _vectorRegionFromFigma(
  figma_api.VectorRegion region,
  figma_api.VectorNode node,
  ImportContext<FigmaImportOptions> context,
) {
  final loops = region.loops.toDart
      .map(
        (loop) => loop.toDart
            .map((entry) => (entry as JSNumber?)?.toDartInt ?? 0)
            .toList(growable: false),
      )
      .toList(growable: false);
  if (loops.isEmpty) {
    return null;
  }

  return VectorRegion(
    windingRule: _parseWindingRule(region.windingRule),
    loops: loops
        .map((loop) => VectorRegionLoop(segments: loop))
        .toList(growable: false),
    fills: _convertNodeFills('fills', node, context),
  );
}

List<Paint> _convertNodeFills(
  String property,
  figma_api.SceneNode node,
  ImportContext<FigmaImportOptions> context,
) {
  final fills = node.getProperty(property.jsify()!);
  if (fills is! JSArray) {
    return const [];
  }

  return fills.toDart
      .map((paint) => _paintFromFigma(paint, context))
      .whereType<Paint>()
      .toList(growable: false);
}

Paint? _paintFromFigma(
  dynamic paint,
  ImportContext<FigmaImportOptions> context,
) {
  if (paint is! figma_api.Paint) {
    return null;
  }

  print('Parsing paint of type: ${paint.type}');
  final opacity = (paint.opacity ?? 1.0).toDouble();
  final blendMode = _parseBlendMode(paint.blendMode);
  final type = paint.type;

  if (type == 'SOLID') {
    return Paint(
      opacity: opacity,
      blendMode: blendMode,
      solid: _solidPaintFromFigma(paint, context),
    );
  }

  if (type.startsWith('GRADIENT_')) {
    return Paint(
      opacity: opacity,
      blendMode: blendMode,
      gradient: _gradientPaintFromFigma(paint, context),
    );
  }

  return Paint(opacity: opacity, blendMode: blendMode);
}

SolidPaint _solidPaintFromFigma(
  figma_api.Paint paint,
  ImportContext<FigmaImportOptions> context,
) {
  final alias = _resolvePaintAlias(paint, context);
  if (alias != null) {
    return SolidPaint(bound: alias);
  }

  final color = paint.color;
  if (color == null) {
    return SolidPaint();
  }

  final colorValue = _rgbFromColor(color, (paint.opacity ?? 1.0).toDouble());
  return SolidPaint(value: colorValue);
}

GradientPaint _gradientPaintFromFigma(
  figma_api.Paint paint,
  ImportContext<FigmaImportOptions> context,
) {
  return GradientPaint(
    type: _parseGradientType(paint.type),
    gradientTransform: _parseGradientTransform(
      paint.getProperty('gradientTransform'.jsify()!),
    ),
    gradientStops: _parseGradientStops(paint, context),
  );
}

RGBA _rgbFromColor(dynamic color, double opacity) {
  if (color is figma_api.RGB) {
    return RGBA(
      r: color.r.toDouble(),
      g: color.g.toDouble(),
      b: color.b.toDouble(),
      a: opacity,
    );
  }

  return RGBA(a: opacity);
}

RGBA _rgbaFromColor(dynamic color, double opacity) {
  if (color is figma_api.RGBA) {
    return RGBA(
      r: color.r.toDouble(),
      g: color.g.toDouble(),
      b: color.b.toDouble(),
      a: color.a.toDouble() * opacity,
    );
  }

  return RGBA(a: opacity);
}

BoundVariable? _resolvePaintAlias(
  figma_api.Paint paint,
  ImportContext<FigmaImportOptions> context,
) {
  final boundVariables = paint.getProperty('boundVariables'.jsify()!);
  if (boundVariables is! JSObject) {
    return null;
  }

  final colorValue = boundVariables.getProperty('color'.jsify()!);
  if (colorValue is! JSObject) {
    return null;
  }

  final typeValue = colorValue.getProperty('type'.jsify()!);
  final type = typeValue.dartify();
  if (type != 'VARIABLE_ALIAS') {
    return null;
  }

  final idValue = colorValue.getProperty('id'.jsify()!);
  final figmaVariableId = idValue.dartify();
  if (figmaVariableId is! String) {
    return null;
  }

  return _boundVariableInfo(figmaVariableId, context);
}

BoundVariable? _boundVariableInfo(
  String figmaVariableId,
  ImportContext<FigmaImportOptions> context,
) {
  final variable = context.boundVariables[figmaVariableId];
  if (variable == null) {
    return null;
  }

  return BoundVariable(
    collectionName: variable.collectionName,
    variableName: variable.variableName,
  );
}

List<ColorStop> _parseGradientStops(
  figma_api.Paint paint,
  ImportContext<FigmaImportOptions> context,
) {
  final stopsValue = paint.getProperty('gradientStops'.jsify()!);
  if (stopsValue == null) {
    return const [];
  }

  final stops = stopsValue.dartify();
  if (stops is! List) {
    return const [];
  }

  final opacity = (paint.opacity ?? 1.0).toDouble();

  return stops
      .map((stop) => _colorStopFromFigma(stop, opacity, context))
      .whereType<ColorStop>()
      .toList(growable: false);
}

ColorStop? _colorStopFromFigma(
  dynamic stop,
  double opacity,
  ImportContext<FigmaImportOptions> context,
) {
  if (stop is! Map) {
    return null;
  }

  final positionValue = stop['position'];
  if (positionValue is! num) {
    return null;
  }

  final alias = _resolveStopAlias(stop, context);
  if (alias != null) {
    return ColorStop(position: positionValue.toDouble(), bound: alias);
  }

  final colorValue = stop['color'];
  if (colorValue is! figma_api.RGB && colorValue is! Map) {
    return null;
  }

  final rgba = _rgbaFromDynamicColor(colorValue, opacity);
  return ColorStop(position: positionValue.toDouble(), value: rgba);
}

BoundVariable? _resolveStopAlias(
  Map stop,
  ImportContext<FigmaImportOptions> context,
) {
  final bound = stop['boundVariables'];
  if (bound is! Map) {
    return null;
  }

  final colorValue = bound['color'];
  if (colorValue is! Map) {
    return null;
  }

  final type = colorValue['type'];
  if (type != 'VARIABLE_ALIAS') {
    return null;
  }

  final figmaVariableId = colorValue['id'];
  if (figmaVariableId is! String) {
    return null;
  }

  return _boundVariableInfo(figmaVariableId, context);
}

RGBA _rgbaFromDynamicColor(dynamic value, double opacity) {
  if (value is figma_api.RGBA) {
    return RGBA(
      r: value.r.toDouble(),
      g: value.g.toDouble(),
      b: value.b.toDouble(),
      a: value.a.toDouble() * opacity,
    );
  }

  if (value is figma_api.RGB) {
    return RGBA(
      r: value.r.toDouble(),
      g: value.g.toDouble(),
      b: value.b.toDouble(),
      a: opacity,
    );
  }

  if (value is Map) {
    final red = value['r'];
    final green = value['g'];
    final blue = value['b'];
    final alpha = value['a'] ?? 1.0;
    if (red is num && green is num && blue is num && alpha is num) {
      return RGBA(
        r: red.toDouble(),
        g: green.toDouble(),
        b: blue.toDouble(),
        a: alpha.toDouble() * opacity,
      );
    }
  }

  return RGBA(a: opacity);
}

List<StrokeCap>? _parseStrokeCaps(figma_api.VectorNode node) {
  final value = node.getProperty('strokeCaps'.jsify()!);
  if (value is! JSArray) {
    return null;
  }

  return value.toDart
      .map((entry) => _parseStrokeCap(entry.toString()))
      .whereType<StrokeCap>()
      .toList(growable: false);
}

StrokeCap? _parseStrokeCap(String value) {
  return switch (value) {
    'ROUND' => StrokeCap.ROUND,
    'SQUARE' => StrokeCap.SQUARE,
    _ => StrokeCap.BUTT,
  };
}

List<StrokeJoin>? _parseStrokeJoins(figma_api.VectorNode node) {
  final value = node.getProperty('strokeJoins'.jsify()!);
  if (value is! JSArray) {
    return null;
  }

  return value.toDart
      .map((entry) => _parseStrokeJoin(entry.toString()))
      .whereType<StrokeJoin>()
      .toList(growable: false);
}

StrokeJoin? _parseStrokeJoin(String value) {
  return switch (value) {
    'BEVEL' => StrokeJoin.BEVEL,
    'ROUND' => StrokeJoin.ROUND,
    _ => StrokeJoin.MITER,
  };
}

List<double>? _parseCornerRadii(figma_api.VectorNode node) {
  print('Parsing corner radii for vector node: ${node.name}');
  final value = node.getProperty('cornerRadii'.jsify()!);
  if (value is! JSArray) {
    return null;
  }

  print('Corner radii value: $value');

  return value.toDart
      .map((entry) => (entry as JSNumber?)?.toDartDouble ?? 0.0)
      .toList(growable: false);
}

List<HandleMirroring>? _parseHandleMirroringValues(figma_api.VectorNode node) {
  final value = node.getProperty('handleMirroring'.jsify()!);
  if (value is! JSArray) {
    return null;
  }

  return value.toDart
      .map((entry) => _parseHandleMirroring(entry.toString()))
      .whereType<HandleMirroring>()
      .toList(growable: false);
}

HandleMirroring? _parseHandleMirroring(String value) {
  return switch (value) {
    'MIRROR' => HandleMirroring.MIRROR,
    'AVERAGE' => HandleMirroring.AVERAGE,
    'ALIGN' => HandleMirroring.ALIGN,
    _ => HandleMirroring.NONE,
  };
}

WindingRule _parseWindingRule(String value) {
  return value == 'EVENODD' ? WindingRule.EVENODD : WindingRule.NONZERO;
}

BlendMode? _parseBlendMode(String? value) {
  return switch (value) {
    'NORMAL' => BlendMode.NORMAL,
    'DARKEN' => BlendMode.DARKEN,
    'MULTIPLY' => BlendMode.MULTIPLY,
    'LINEAR_BURN' => BlendMode.LINEAR_BURN,
    'COLOR_BURN' => BlendMode.COLOR_BURN,
    'LIGHTEN' => BlendMode.LIGHTEN,
    'SCREEN' => BlendMode.SCREEN,
    'LINEAR_DODGE' => BlendMode.LINEAR_DODGE,
    'COLOR_DODGE' => BlendMode.COLOR_DODGE,
    'OVERLAY' => BlendMode.OVERLAY,
    'SOFT_LIGHT' => BlendMode.SOFT_LIGHT,
    'HARD_LIGHT' => BlendMode.HARD_LIGHT,
    'DIFFERENCE' => BlendMode.DIFFERENCE,
    'EXCLUSION' => BlendMode.EXCLUSION,
    'HUE' => BlendMode.HUE,
    'SATURATION' => BlendMode.SATURATION,
    'COLOR' => BlendMode.COLOR,
    'LUMINOSITY' => BlendMode.LUMINOSITY,
    _ => null,
  };
}

GradientType _parseGradientType(String value) {
  return switch (value) {
    'GRADIENT_RADIAL' => GradientType.RADIAL,
    'GRADIENT_ANGULAR' => GradientType.ANGULAR,
    'GRADIENT_DIAMOND' => GradientType.DIAMOND,
    _ => GradientType.LINEAR,
  };
}

Transform _parseGradientTransform(dynamic value) {
  final transformValue = value is JSAny ? value.dartify() : value;
  if (transformValue is! List || transformValue.length < 2) {
    return Transform();
  }

  final row0 = transformValue[0];
  final row1 = transformValue[1];
  if (row0 is! List || row1 is! List || row0.length < 3 || row1.length < 3) {
    return Transform();
  }

  return Transform(
    m00: (row0[0] as num).toDouble(),
    m01: (row0[1] as num).toDouble(),
    m10: (row1[0] as num).toDouble(),
    m11: (row1[1] as num).toDouble(),
    m02: (row0[2] as num).toDouble(),
    m12: (row1[2] as num).toDouble(),
  );
}
