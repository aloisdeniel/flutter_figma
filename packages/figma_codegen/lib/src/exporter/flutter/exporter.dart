import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/collection.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';

class FlutterExportContext {
  const FlutterExportContext({required this.collections});
  final List<VariableCollection> collections;
}

class FlutterExporter {
  String exportVariableCollections(FlutterExportContext context) {
    final buffer = DartBuffer();

    buffer.writeln("import 'dart:ui' as ui;");
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();

    for (var collection in context.collections) {
      final exporter = VariableCollectionDartExporter();
      exporter.serialize(context, buffer, collection);
    }

    return buffer.toString();
  }
}
