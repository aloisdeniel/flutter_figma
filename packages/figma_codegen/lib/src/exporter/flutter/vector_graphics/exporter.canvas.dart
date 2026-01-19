import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';

/// Generates a method which draws vector graphics using Flutter's Canvas API.
class FlutterVectorCanvasExporter {
  String export(FlutterExportContext context) {
    final buffer = DartBuffer();

    buffer.writeln("import 'dart:ui' as ui;");
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();

    buffer.writeln('enum VectorNetwork {');
    buffer.indented(() {
      for (final network in context.vectorNetworks) {
        buffer.writeln(
          '${_networkIdentifier(network, context.vectorNetworks)},',
        );
      }
    });
    buffer.writeln('}');
    buffer.writeln();

    buffer.writeln('class VectorNetworkPainter extends fl.CustomPainter {');
    buffer.indented(() {
      buffer.writeln('const VectorNetworkPainter(this.network);');
      buffer.writeln('final VectorNetwork network;');
      buffer.writeln();
      buffer.writeln('@override');
      buffer.writeln('void paint(fl.Canvas canvas, fl.Size size) {');
      buffer.indented(() {
        buffer.writeln('switch (network) {');
        buffer.indented(() {
          for (final network in context.vectorNetworks) {
            final name = _networkIdentifier(network, context.vectorNetworks);
            buffer.writeln('case VectorNetwork.$name:');
            buffer.indented(() {
              buffer.writeln('_draw$name(canvas, size);');
              buffer.writeln('break;');
            });
          }
          buffer.writeln('default:');
          buffer.indented(() {
            buffer.writeln('break;');
          });
        });
        buffer.writeln('}');
      });
      buffer.writeln('}');

      buffer.writeln();
      buffer.writeln('@override');
      buffer.writeln(
        'bool shouldRepaint(covariant VectorNetworkPainter oldDelegate) {',
      );
      buffer.indented(() {
        buffer.writeln('return oldDelegate.network != network;');
      });
      buffer.writeln('}');
    });
    buffer.writeln('}');
    buffer.writeln();

    for (final network in context.vectorNetworks) {
      _writeNetworkDrawer(buffer, network, context);
    }

    _writeSegmentBuilder(buffer);

    buffer.writeln();

    return buffer.toString();
  }
}

void _writeNetworkDrawer(
  DartBuffer buffer,
  VectorNetwork network,
  FlutterExportContext context,
) {
  final name = _networkIdentifier(network, context.vectorNetworks);
  buffer.writeln('void _draw$name(fl.Canvas canvas, fl.Size size) {');
  buffer.indented(() {
    buffer.writeln('final paint = fl.Paint();');
    buffer.writeln();

    if (network.regions.isEmpty) {
      buffer.writeln('final path = ui.Path();');
      buffer.writeln('for (final segment in network.segments) {');
      buffer.indented(() {
        buffer.writeln('final start = network.vertices[segment.start];');
        buffer.writeln('final end = network.vertices[segment.end];');
        buffer.writeln('path.moveTo(start.x, start.y);');
        buffer.writeln('_writeSegment(path, segment, start, end);');
      });
      buffer.writeln('}');
      buffer.writeln('canvas.drawPath(path, paint);');
      return;
    }

    for (var i = 0; i < network.regions.length; i++) {
      final region = network.regions[i];
      buffer.writeln('// Region $i');
      buffer.writeln('final regionPath$i = ui.Path();');
      buffer.writeln(
        'regionPath$i.fillType = ${_fillTypeExpression(region.windingRule)};',
      );

      for (final loop in region.loops) {
        _writeLoopPath(
          buffer,
          network,
          loop.segments,
          'regionPath$i',
          closePath: true,
        );
      }

      buffer.writeln('final bounds$i = regionPath$i.getBounds();');
      buffer.writeln('paint.style = fl.PaintingStyle.fill;');

      final fillCalls = _paintCallsForRegion(
        region,
        context,
        'paint',
        'bounds$i',
      );
      for (final fillCall in fillCalls) {
        buffer.writeln(fillCall);
        buffer.writeln('canvas.drawPath(regionPath$i, paint);');
      }

      buffer.writeln();
    }
  });
  buffer.writeln('}');
  buffer.writeln();
}

void _writeLoopPath(
  DartBuffer buffer,
  VectorNetwork network,
  List<int> segmentIndices,
  String pathVar, {
  required bool closePath,
}) {
  if (segmentIndices.isEmpty || network.vertices.isEmpty) {
    return;
  }

  VectorVertex? lastEnd;
  for (var i = 0; i < segmentIndices.length; i++) {
    final segment = network.segments[segmentIndices[i]];
    final start = network.vertices[segment.start];
    final end = network.vertices[segment.end];

    if (i == 0 || lastEnd == null || !_sameVertex(lastEnd, start)) {
      buffer.writeln('$pathVar.moveTo(${start.x}, ${start.y});');
    }

    buffer.writeln('_writeSegment($pathVar, segment, start, end);');
    lastEnd = end;
  }

  if (closePath) {
    buffer.writeln('$pathVar.close();');
  }
}

void _writeSegmentBuilder(DartBuffer buffer) {
  buffer.writeln(
    'void _writeSegment(ui.Path path, VectorSegment segment, VectorVertex start, VectorVertex end) {',
  );
  buffer.indented(() {
    buffer.writeln(
      'if (segment.hasTangentStart() && segment.hasTangentEnd()) {',
    );
    buffer.indented(() {
      buffer.writeln('final controlStart = segment.tangentStart;');
      buffer.writeln('final controlEnd = segment.tangentEnd;');
      buffer.writeln('final controlStartX = start.x + controlStart.x;');
      buffer.writeln('final controlStartY = start.y + controlStart.y;');
      buffer.writeln('final controlEndX = end.x + controlEnd.x;');
      buffer.writeln('final controlEndY = end.y + controlEnd.y;');
      buffer.writeln(
        'path.cubicTo(controlStartX, controlStartY, controlEndX, controlEndY, end.x, end.y);',
      );
      buffer.writeln('return;');
    });
    buffer.writeln('}');

    buffer.writeln('if (segment.hasTangentStart()) {');
    buffer.indented(() {
      buffer.writeln('final controlStart = segment.tangentStart;');
      buffer.writeln('final controlStartX = start.x + controlStart.x;');
      buffer.writeln('final controlStartY = start.y + controlStart.y;');
      buffer.writeln(
        'path.quadraticBezierTo(controlStartX, controlStartY, end.x, end.y);',
      );
      buffer.writeln('return;');
    });
    buffer.writeln('}');

    buffer.writeln('if (segment.hasTangentEnd()) {');
    buffer.indented(() {
      buffer.writeln('final controlEnd = segment.tangentEnd;');
      buffer.writeln('final controlEndX = end.x + controlEnd.x;');
      buffer.writeln('final controlEndY = end.y + controlEnd.y;');
      buffer.writeln(
        'path.quadraticBezierTo(controlEndX, controlEndY, end.x, end.y);',
      );
      buffer.writeln('return;');
    });
    buffer.writeln('}');

    buffer.writeln('path.lineTo(end.x, end.y);');
  });
  buffer.writeln('}');
  buffer.writeln();
}

bool _sameVertex(VectorVertex a, VectorVertex b) {
  return a.x == b.x && a.y == b.y;
}

String _fillTypeExpression(WindingRule rule) {
  return rule == WindingRule.EVENODD
      ? 'ui.PathFillType.evenOdd'
      : 'ui.PathFillType.nonZero';
}

List<String> _paintCallsForRegion(
  VectorRegion region,
  FlutterExportContext context,
  String paintVar,
  String boundsVar,
) {
  final calls = <String>[];
  for (final fill in region.fills) {
    if (fill.hasSolid()) {
      final color = _solidPaintExpression(context, fill.solid);
      calls.add('$paintVar..shader = null..color = $color;');
    } else if (fill.hasGradient()) {
      final gradient = _gradientPaintExpression(context, fill.gradient);
      calls.add('$paintVar..shader = $gradient.createShader($boundsVar);');
    }
  }
  return calls;
}

String _solidPaintExpression(FlutterExportContext context, SolidPaint paint) {
  if (paint.hasBound()) {
    return 'const fl.Color(0xFF000000)';
  }

  final rgba = paint.value;
  final red = (rgba.r * 255).round() & 0xFF;
  final green = (rgba.g * 255).round() & 0xFF;
  final blue = (rgba.b * 255).round() & 0xFF;
  final alpha = (rgba.a * 255).round() & 0xFF;
  final value = (alpha << 24) | (red << 16) | (green << 8) | blue;
  return 'fl.Color(0x${value.toRadixString(16).padLeft(8, "0")})';
}

String _gradientPaintExpression(
  FlutterExportContext context,
  GradientPaint paint,
) {
  final stops = paint.gradientStops.map((stop) => stop.position).join(', ');
  final colors = paint.gradientStops
      .map((stop) => _gradientStopColorExpression(stop))
      .join(', ');

  final begin = 'fl.Alignment(-1.0, 0.0)';
  final end = 'fl.Alignment(1.0, 0.0)';

  if (paint.type == GradientType.RADIAL ||
      paint.type == GradientType.ANGULAR ||
      paint.type == GradientType.DIAMOND) {
    return 'fl.RadialGradient(colors: [$colors], stops: [$stops], center: fl.Alignment(0.0, 0.0), radius: 0.5)';
  }

  return 'fl.LinearGradient(colors: [$colors], stops: [$stops], begin: $begin, end: $end)';
}

String _gradientStopColorExpression(ColorStop stop) {
  if (stop.hasBound()) {
    return 'const fl.Color(0xFF000000)';
  }

  final value = stop.value;
  final red = (value.r * 255).round() & 0xFF;
  final green = (value.g * 255).round() & 0xFF;
  final blue = (value.b * 255).round() & 0xFF;
  final alpha = (value.a * 255).round() & 0xFF;
  final colorValue = (alpha << 24) | (red << 16) | (green << 8) | blue;
  return 'fl.Color(0x${colorValue.toRadixString(16).padLeft(8, "0")})';
}

String _networkIdentifier(VectorNetwork network, List<VectorNetwork> all) {
  final name = network.name.isNotEmpty
      ? network.name
      : 'Network${all.indexOf(network) + 1}';
  return name
      .replaceAll(RegExp(r'[^a-zA-Z0-9_]'), '_')
      .replaceFirst(RegExp(r'^([0-9])'), r'_$1');
}
