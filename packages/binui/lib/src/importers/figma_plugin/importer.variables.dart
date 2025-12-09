part of 'importer.dart';

Future<List<VariableCollection>> _importVariableCollections() async {
  final collections = <VariableCollection>[];
  final figmaCollections = await figma_api.figma.variables
      .getLocalVariableCollectionsAsync()
      .toDart;

  for (var i = 0; i < figmaCollections.length; i++) {
    final collection = figmaCollections[i];
    final collectionName = collection.name;
    final modes = collection.modes;
    final variants = <VariableCollectionVariant>[];

    for (var j = 0; j < modes.length; j++) {
      final mode = modes[j];
      final modeMap = mode.dartify() as Map;
      final modeName = modeMap['name'] as String;
      final modeId = modeMap['modeId'] as String;
      final values = <Value>[];

      final variableIds = collection.variableIds;
      for (var k = 0; k < variableIds.length; k++) {
        final variableId = variableIds[k].toDart;
        final variable = await figma_api.figma.variables
            .getVariableByIdAsync(variableId)
            .toDart;

        if (variable != null) {
          final valuesByMode = variable.valuesByMode.dartify() as Map;
          final value = valuesByMode[modeId];

          if (value != null) {
            values.add(_convertVariableValue(value, variable.resolvedType));
          }
        }
      }

      variants.add(VariableCollectionVariant(name: modeName, values: values));
    }

    // Create variable entries
    final variableEntries = <VariableCollectionEntry>[];
    final variableIds = collection.variableIds;
    for (var k = 0; k < variableIds.length; k++) {
      final variableId = variableIds[k].toDart;
      final variable = await figma_api.figma.variables
          .getVariableByIdAsync(variableId)
          .toDart;

      if (variable != null) {
        variableEntries.add(
          VariableCollectionEntry(
            name: variable.name,
            documentation: variable.description.isNotEmpty
                ? variable.description
                : '',
          ),
        );
      }
    }

    collections.add(
      VariableCollection(
        name: collectionName,
        variants: variants,
        variables: variableEntries,
      ),
    );
  }

  return collections;
}

Value _convertVariableValue(JSAny value, String resolvedType) {
  switch (resolvedType) {
    case 'COLOR':
      final rgba = value.jsify() as figma_api.RGBA;
      return Value(
        color: Color(
          red: rgba.r.toDouble(),
          green: rgba.g.toDouble(),
          blue: rgba.b.toDouble(),
          alpha: rgba.a.toDouble(),
        ),
      );
    case 'FLOAT':
      return Value(doubleValue: (value as JSNumber).toDartDouble);
    case 'STRING':
      return Value(stringValue: value.toString());
    case 'BOOLEAN':
      return Value(boolean: (value as JSBoolean).toDart);
    default:
      return Value(stringValue: 'unsupported');
  }
}
