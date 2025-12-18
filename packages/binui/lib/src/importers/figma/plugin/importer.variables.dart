part of 'importer.dart';

Future<List<VariableCollection>> _importVariableCollections(
  ImporterContext<FigmaImportOptions> context,
) async {
  final collections = <VariableCollection>[];
  final figmaCollections = await figma_api.figma.variables
      .getLocalVariableCollectionsAsync()
      .toDart;

  for (var i = 0; i < figmaCollections.length; i++) {
    final collection = figmaCollections[i];
    final collectionName = collection.name;
    final collectionKey = 'variable_collection/${collection.id}';
    final collectionId = context.identifiers.get(collectionKey);

    print('Creating collection: $collectionName');
    print('  figma id: ${collection.id}');
    print('  collectionKey: $collectionKey');
    print('  -> collectionId: $collectionId');

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
              await _convertVariableValue(
                value,
                variable.resolvedType,
                context,
              ),
            );
          }
        }
      }

      variants.add(
        VariableCollectionVariant(
          id: context.identifiers.get(
            'variable_collection/${collection.id}/mode/$modeId',
          ),
          name: modeName,
          values: values,
        ),
      );
    }

    // Create variable entries
    final variableEntries = <VariableCollectionEntry>[];
    final variableIdsInCollection = collection.variableIds;
    for (var k = 0; k < variableIdsInCollection.length; k++) {
      final figmaId = variableIdsInCollection[k].toDart;
      final variableKey = 'variable/$figmaId';
      final variableId = context.identifiers.get(variableKey);
      final variable = await figma_api.figma.variables
          .getVariableByIdAsync(figmaId)
          .toDart;

      if (variable != null) {
        print('  Creating variable entry: ${variable.name}');
        print('    figmaId: $figmaId');
        print('    variableKey: $variableKey');
        print('    -> variableId: $variableId');

        variableEntries.add(
          VariableCollectionEntry(
            id: variableId,
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
        id: collectionId,
        name: collectionName,
        variants: variants,
        variables: variableEntries,
      ),
    );
  }

  return collections;
}

Future<Value> _convertVariableValue(
  dynamic value,
  String resolvedType,
  ImporterContext<FigmaImportOptions> context,
) async {
  // Check if the value is a variable alias
  if (value is Map) {
    final type = value['type'];
    if (type == 'VARIABLE_ALIAS') {
      final figmaVariableId = value['id'] as String;

      // Look up the variable to find its collection
      final variable = await figma_api.figma.variables
          .getVariableByIdAsync(figmaVariableId)
          .toDart;

      if (variable == null) {
        print('WARNING: Variable alias target not found: $figmaVariableId');
        return Value(stringValue: 'unresolved alias: $figmaVariableId');
      }

      // Use consistent key format for collection and variable IDs
      final collectionKey =
          'variable_collection/${variable.variableCollectionId}';
      final variableKey = 'variable/$figmaVariableId';

      print('Resolving alias:');
      print('  figmaVariableId: $figmaVariableId');
      print(
        '  variable.variableCollectionId: ${variable.variableCollectionId}',
      );
      print('  collectionKey: $collectionKey');
      print('  variableKey: $variableKey');

      final collectionId = context.identifiers.get(collectionKey);
      final variableId = context.identifiers.get(variableKey);

      print('  -> collectionId: $collectionId');
      print('  -> variableId: $variableId');

      return Value(
        alias: Alias(
          variable: VariableAlias(
            collectionId: collectionId,
            variableId: variableId,
          ),
        ),
      );
    }
  }

  // Handle direct values
  switch (resolvedType) {
    case 'COLOR':
      if (value is Map) {
        return Value(
          color: Color(
            red: (value['r'] as num).toDouble(),
            green: (value['g'] as num).toDouble(),
            blue: (value['b'] as num).toDouble(),
            alpha: (value['a'] as num).toDouble(),
            colorSpace: ColorSpace.COLOR_SPACE_DISPLAY_P3,
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
