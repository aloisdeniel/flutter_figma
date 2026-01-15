import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

import 'collection.dart';

part 'variables.widget.dart';

class VariablesDartExporter {
  const VariablesDartExporter();

  void serialize(FlutterExportContext context, DartBuffer buffer) {
    _generateInheritedWidget(buffer, context);

    for (var collection in context.collections) {
      final exporter = VariableCollectionDartExporter();
      exporter.serialize(context, buffer, collection);
    }
  }
}
