import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/variables.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';

class FlutterVariablesExporter {
  String export(FlutterExportContext context) {
    final buffer = DartBuffer();

    buffer.writeln("import 'dart:ui' as ui;");
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();

    final exporter = VariablesDartExporter();
    exporter.serialize(context, buffer);

    return buffer.toString();
  }
}
