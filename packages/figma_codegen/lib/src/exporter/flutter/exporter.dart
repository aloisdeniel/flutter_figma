import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/options.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/exporter.canvas.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/options.dart';

class FlutterExportContext {
  FlutterExportContext({
    required this.variables,
    required this.vectorGraphics,
    required this.vectorNetworks,
  });

  final FlutterVectorGraphicsExportOptions vectorGraphics;
  final FlutterVariablesExportOptions variables;
  final List<VectorNetwork> vectorNetworks;
}

class FlutterExporter {
  String exportVariableCollections(FlutterExportContext context) {
    return FlutterVariablesExporter().export(context);
  }

  String exportVectorGraphics(FlutterExportContext context) {
    return FlutterVectorCanvasExporter().export(context);
  }
}
