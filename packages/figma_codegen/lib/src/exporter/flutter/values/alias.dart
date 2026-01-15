import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

class AliasDartExporter {
  const AliasDartExporter();

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
      _ => switch (expectedType) {
        Value_Type.color => 'fl.Color(0xFF000000)',
        Value_Type.boolean => 'false',
        Value_Type.doubleValue => '0.0',
        Value_Type.stringValue => "''",
        Value_Type.cornerRadius => 'fl.borderRadius.zero',
        // TODO others
        _ => 'null',
      },
    };
  }

  String _serializeVariableAlias(
    FlutterExportContext context,
    VariableAlias value,
    Value_Type expectedType,
  ) {
    final collection = context.collections.findVariableCollection(
      value.collectionId,
    );

    if (collection == null) {
      // Fallback to default value if collection not found
      throw Exception('Variable collection not found');
    }
    final collectionFieldName = Naming.fieldName(collection.name);

    final variable = collection.findEntry(value.variableId);

    if (variable == null) {
      // Fallback to default value if variable not found
      throw Exception('Variable not found');
    }
    final variableFieldName = Naming.fieldName(variable.name);

    // Use the local `variables` variable declared at the beginning of build()
    // variables.<collectionFieldName>.<variableFieldName>
    return 'variables.$collectionFieldName.$variableFieldName';
  }
}
