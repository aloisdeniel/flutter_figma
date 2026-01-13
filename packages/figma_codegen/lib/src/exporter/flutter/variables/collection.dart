import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';
import 'package:figma_codegen/src/utils/dart/dart.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

part 'collection.data.dart';

class VariableCollectionDartExporter {
  const VariableCollectionDartExporter();

  void serialize(
    FlutterExportContext context,
    DartBuffer buffer,
    VariableCollection value,
  ) {
    // Choose generation strategy based on number of variants
    if (value.variants.length == 1) {
      _writeSingleModeClass(context, buffer, value);
    } else {
      _writeMultiModeClasses(context, buffer, value);
    }
  }
}
