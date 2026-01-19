import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

class AliasDartExporter {
  const AliasDartExporter({this.variablesInstanceName = 'alias'});

  final String variablesInstanceName;

  String serialize(
    FlutterExportContext context,
    Alias value,
    Value_Type expectedType,
  ) {
    return switch (value.whichType()) {
      Alias_Type.variable => _serializeVariableAlias(
        context,
        value.variable,
        expectedType,
      ),
      _ => throw Exception('Alias type not supported'),
    };
  }

  String _serializeVariableAlias(
    FlutterExportContext context,
    VariableAlias value,
    Value_Type expectedType,
  ) {
    final collection = context.variables.collections.findVariableCollection(
      value.collectionId,
    );

    if (collection == null) {
      // Fallback to default value if collection not found
      throw Exception('Variable collection not found');
    }
    final variable = collection.findEntry(value.variableId);

    if (variable == null) {
      // Fallback to default value if variable not found
      throw Exception('Variable not found');
    }
    final variableFieldName = Naming.fieldName(variable.name);

    if (value.collectionId == context.variables.currentCollectionId) {
      return variableFieldName;
    }

    // Use the local `variables` variable declared at the beginning of build()
    // variables.<collectionFieldName>.<variableFieldName>
    final collectionFieldName = Naming.fieldName(collection.name);
    return '$variablesInstanceName.$collectionFieldName.$variableFieldName';
  }
}
