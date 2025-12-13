part of 'importer.dart';

Future<List<VariableCollection>> _importVariableCollections() async {
  final collections = <VariableCollection>[];
  final figmaCollections = await figma_api.figma.variables
      .getLocalVariableCollectionsAsync()
      .toDart;

  // Build maps for resolving variable aliases
  // Maps Figma collection ID to our collection index
  final collectionIdToIndex = <String, int>{};
  // Maps Figma variable ID to (collectionIndex, variableIndex)
  final variableIdToIndices = <String, (int, int)>{};

  // First pass: build the index maps
  for (var i = 0; i < figmaCollections.length; i++) {
    final collection = figmaCollections[i];
    collectionIdToIndex[collection.id] = i;

    final variableIds = collection.variableIds;
    for (var k = 0; k < variableIds.length; k++) {
      final variableId = variableIds[k].toDart;
      variableIdToIndices[variableId] = (i, k);
    }
  }

  // Second pass: import the collections with alias resolution
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
            values.add(
              _convertVariableValue(
                value,
                variable.resolvedType,
                variableIdToIndices,
              ),
            );
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

Value _convertVariableValue(
  dynamic value,
  String resolvedType,
  Map<String, (int, int)> variableIdToIndices,
) {
  // Check if the value is a variable alias
  if (value is Map) {
    final type = value['type'];
    if (type == 'VARIABLE_ALIAS') {
      final aliasId = value['id'] as String;
      final indices = variableIdToIndices[aliasId];
      if (indices != null) {
        final (collectionIndex, variableIndex) = indices;
        return Value(
          alias: Alias(
            variable: VariableAlias(
              collectionId: collectionIndex,
              variableId: variableIndex,
            ),
          ),
        );
      }
      // Fallback if alias target not found
      return Value(stringValue: 'unresolved alias: $aliasId');
    }
  }

  // Handle direct values
  switch (resolvedType) {
    case 'COLOR':
      // Value is already dartified, so it's a Map with r, g, b, a keys
      if (value is Map) {
        return Value(
          color: Color(
            red: (value['r'] as num).toDouble(),
            green: (value['g'] as num).toDouble(),
            blue: (value['b'] as num).toDouble(),
            alpha: (value['a'] as num).toDouble(),
          ),
        );
      }
      return Value(stringValue: 'invalid color');
    case 'FLOAT':
      if (value is num) {
        return Value(doubleValue: value.toDouble());
      }
      return Value(doubleValue: (value as JSNumber).toDartDouble);
    case 'STRING':
      return Value(stringValue: value.toString());
    case 'BOOLEAN':
      if (value is bool) {
        return Value(boolean: value);
      }
      return Value(boolean: (value as JSBoolean).toDart);
    default:
      return Value(stringValue: 'unsupported');
  }
}
