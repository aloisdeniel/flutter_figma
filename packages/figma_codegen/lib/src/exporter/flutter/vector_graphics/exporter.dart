import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/exporter.canvas.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/options.dart';

class FlutterVariablesExporter {
  String export(FlutterExportContext context) {
    return switch (context.vectorGraphics.format) {
      FlutterVectorGraphicsFormat.canvas =>
        FlutterVectorCanvasExporter().export(context),
      FlutterVectorGraphicsFormat.vectorGraphicsBase64 =>
        FlutterVectorCanvasExporter().export(context),
    };
  }
}
