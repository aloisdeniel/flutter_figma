import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/collection.flat_data.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/collection.tree_data.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';

class VariableCollectionDartExporter {
  const VariableCollectionDartExporter();

  void serialize(
    FlutterExportContext context,
    DartBuffer buffer,
    VariableCollection value,
  ) {
    final collectionContext = context.withCurrentCollectionId(value.id);
    if (context.collectionStructure == VariableCollectionDataStructure.flat) {
      writeFlatCollectionDataClass(collectionContext, buffer, value);
    } else {
      writeTreeCollectionDataClasse(collectionContext, buffer, value);
    }
  }
}
