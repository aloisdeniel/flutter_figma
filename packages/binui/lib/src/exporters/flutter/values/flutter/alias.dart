import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';
import 'package:binui/src/utils/naming.dart';

class AliasDartExporter {
  const AliasDartExporter({
    this.alwaysFallback = true,
    required this.valueSerializer,
  });

  final bool alwaysFallback;
  final FlutterValueExporter valueSerializer;

  String serialize(Library library, Alias value) {
    return switch (value.whichType()) {
      Alias_Type.variable => _serializeVariableAlias(library, value.variable),
      Alias_Type.property => _serializePropertyAlias(library, value.property),
      Alias_Type.constant => _serializeConstantAlias(library, value.constant),
      _ => throw UnimplementedError(),
    };
  }

  String _serializeVariableAlias(Library library, VariableAlias value) {
    final fallbackValue = valueSerializer.serialize(
      library,
      value.defaultValue,
    );
    if (!alwaysFallback) return fallbackValue;

    final collection = library.findVariableCollection(value.collectionId);

    if (collection == null) return fallbackValue;
    final collectionTypeName = Naming.typeName(collection.name);

    final variable = collection.findEntry(value.variableId);

    if (variable == null) return fallbackValue;
    final variableName = Naming.fieldName(variable.name);

    return '$collectionTypeName.maybeOf(context)?.$variableName ?? $fallbackValue';
  }

  String _serializePropertyAlias(Library library, PropertyAlias value) {
    final fallbackValue = valueSerializer.serialize(
      library,
      value.defaultValue,
    );
    if (!alwaysFallback) return fallbackValue;

    final component = library.findComponent(value.componentId);
    if (component == null) return fallbackValue;

    final property = component.findProperty(value.propertyId);
    if (property == null) return fallbackValue;

    final propertyName = Naming.fieldName(property.name);

    return '$propertyName ?? $fallbackValue';
  }

  String _serializeConstantAlias(Library library, ConstantAlias value) {
    return valueSerializer.serialize(library, value.value);
  }
}
