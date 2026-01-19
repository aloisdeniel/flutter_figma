import 'package:figma_codegen/src/exporter/flutter/variables/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/options.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/exporter.canvas.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/options.dart';

class FlutterExportContext {
  FlutterExportContext({required this.variables, required this.vectorGraphics});

  final FlutterVectorGraphicsExportOptions vectorGraphics;
  final FlutterVariablesExportOptions variables;
}

class FlutterExporter {
  String exportVariableCollections(FlutterExportContext context) {
    return FlutterVariablesExporter().export(context);
  }

  String exportVectorGraphics(FlutterExportContext context) {
    return FlutterVectorCanvasExporter().export(context);
  }
}
