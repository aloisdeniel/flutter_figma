import 'package:figma_codegen/src/exporter/flutter/variables/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/options.dart';

class FlutterExportContext {
  FlutterExportContext({required this.variables});

  final FlutterVariablesExportOptions variables;
}

class FlutterExporter {
  String exportVariableCollections(FlutterExportContext context) {
    return FlutterVariablesExporter().export(context);
  }
}
