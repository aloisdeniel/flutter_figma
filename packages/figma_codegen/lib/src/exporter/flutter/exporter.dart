import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/components/components.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/options.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/exporter.canvas.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/options.dart';

class FlutterExportContext {
  FlutterExportContext({
    required this.variables,
    required this.vectorGraphics,
    this.components = const FlutterComponentsExportOptions(),
  });

  final FlutterVectorGraphicsExportOptions vectorGraphics;
  final FlutterVariablesExportOptions variables;
  final FlutterComponentsExportOptions components;
}

class FlutterExporter {
  String exportVariableCollections(FlutterExportContext context) {
    return FlutterVariablesExporter().export(context);
  }

  String exportVectorGraphics(FlutterExportContext context) {
    return FlutterVectorCanvasExporter().export(context);
  }

  String exportComponents(FlutterExportContext context) {
    return ComponentsDartExporter().export(context);
  }
}

class FlutterComponentsExportOptions {
  const FlutterComponentsExportOptions({this.components = const []});

  final List<Component> components;
}
