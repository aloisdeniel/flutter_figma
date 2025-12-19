import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';
import 'package:binui/src/utils/naming.dart';

class AliasDartExporter {
  const AliasDartExporter({required this.valueSerializer});

  final FlutterValueExporter valueSerializer;

  String serialize(Library library, Alias value, Value_Type expectedType) {
    return switch (value.whichType()) {
      Alias_Type.variable => _serializeVariableAlias(
        library,
        value.variable,
        expectedType,
      ),
      Alias_Type.property => _serializePropertyAlias(
        library,
        value.property,
        expectedType,
      ),
      Alias_Type.constant => _serializeConstantAlias(
        library,
        value.constant,
        expectedType,
      ),
      _ => switch (expectedType) {
        Value_Type.color => 'fl.Color(0xFF000000)',
        Value_Type.boolean => 'false',
        Value_Type.doubleValue => '0.0',
        Value_Type.size => 'fl.Size.zero',
        Value_Type.offset => 'fl.Offset.zero',
        Value_Type.stringValue => "''",
        Value_Type.radius => 'fl.Radius.circular(0.0)',
        Value_Type.borderRadius => 'fl.borderRadius.zero',
        // TODO others
        _ => 'null',
      },
    };
  }

  String _serializeVariableAlias(
    Library library,
    VariableAlias value,
    Value_Type expectedType,
  ) {
    final collection = library.findVariableCollection(value.collectionId);

    if (collection == null) {
      // Fallback to default value if collection not found
      return valueSerializer.serialize(
        library,
        value.defaultValue,
        expectedType,
      );
    }
    final collectionFieldName = Naming.fieldName(collection.name);

    final variable = collection.findEntry(value.variableId);

    if (variable == null) {
      // Fallback to default value if variable not found
      return valueSerializer.serialize(
        library,
        value.defaultValue,
        expectedType,
      );
    }
    final variableFieldName = Naming.fieldName(variable.name);

    // Use the local `variables` variable declared at the beginning of build()
    // variables.<collectionFieldName>.<variableFieldName>
    return 'variables.$collectionFieldName.$variableFieldName';
  }

  String _serializePropertyAlias(
    Library library,
    PropertyAlias value,
    Value_Type expectedType,
  ) {
    final component = library.findComponent(value.componentId);
    if (component == null) {
      // Fallback to default value if component not found
      return valueSerializer.serialize(
        library,
        value.defaultValue,
        expectedType,
      );
    }

    final property = component.findProperty(value.propertyId);
    if (property == null) {
      // Fallback to default value if property not found
      return valueSerializer.serialize(
        library,
        value.defaultValue,
        expectedType,
      );
    }

    final propertyFieldName = Naming.fieldName(property.name);

    // Use the local `properties` variable declared at the beginning of build()
    // properties.<propertyFieldName>
    return 'properties.$propertyFieldName';
  }

  String _serializeConstantAlias(
    Library library,
    ConstantAlias value,
    Value_Type expectedType,
  ) {
    return valueSerializer.serialize(library, value.value, expectedType);
  }
}
