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

    for (final vectorGraphics in context.vectorGraphics.vectorGraphics) {
      _writeCustomPainter(buffer, vectorGraphics, context);
    }

    buffer.writeln();

    return buffer.toString();
  }
}

void _writeCustomPainter(
  DartBuffer buffer,
  VectorGraphics vectorGraphics,
  FlutterExportContext context,
) {
  // TODO: Implement the actual drawing logic based on vectorGraphics data.
  // It should generate a CustomPainter class that uses the Canvas API to draw the various operations from the vector networks.
  // All networks are drawn in the same order as they appear in the vectorGraphics.
}
