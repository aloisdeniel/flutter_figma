import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart'
    as figma_api;

class FigmaImporter extends FigmaImporterBase {
  const FigmaImporter();

  @override
  Future<List<VariableCollection>> importVariableCollections(
    ImportContext<FigmaImportOptions> context,
  ) async {
    final fromVariables = await _importVariableCollections(context);
    final fromStyles = await _importStyles(context);
    return [...fromVariables, if (fromStyles != null) fromStyles];
  }
}

Future<List<VariableCollection>> _importVariableCollections(
  ImportContext<FigmaImportOptions> context,
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

Future<Alias> _convertVariableAlias(
  dynamic value,
  ImportContext<FigmaImportOptions> context,
) async {
  final figmaVariableId = value['id'] as String;

  // Look up the variable to find its collection
  final variable = await figma_api.figma.variables
      .getVariableByIdAsync(figmaVariableId)
      .toDart;

  if (variable == null) {
    print('WARNING: Variable alias target not found: $figmaVariableId');
    throw Exception('Variable alias target not found: $figmaVariableId');
  }

  // Use consistent key format for collection and variable IDs
  final collectionKey = 'variable_collection/${variable.variableCollectionId}';
  final variableKey = 'variable/$figmaVariableId';

  print('Resolving alias:');
  print('  figmaVariableId: $figmaVariableId');
  print('  variable.variableCollectionId: ${variable.variableCollectionId}');

  final collectionId = context.identifiers.get(collectionKey);
  final variableId = context.identifiers.get(variableKey);

  print('  -> collectionId: $collectionId');
  print('  -> variableId: $variableId');

  return Alias(
    variable: VariableAlias(collectionId: collectionId, variableId: variableId),
  );
}

Future<Value> _convertVariableValue(
  dynamic value,
  String resolvedType,
  ImportContext<FigmaImportOptions> context,
) async {
  // Check if the value is a variable alias
  Alias? alias;
  if (value is Map) {
    final type = value['type'];
    if (type == 'VARIABLE_ALIAS') {
      alias = await _convertVariableAlias(value, context);
    }
  }

  // Handle direct values
  switch (resolvedType) {
    case 'COLOR':
      if (alias != null) {
        return Value(color: ColorValue(alias: alias));
      }
      if (value is Map) {
        return Value(
          color: ColorValue(
            value: Color(
              red: (value['r'] as num).toDouble(),
              green: (value['g'] as num).toDouble(),
              blue: (value['b'] as num).toDouble(),
              alpha: (value['a'] as num).toDouble(),
              colorSpace: ColorSpace.COLOR_SPACE_DISPLAY_P3,
            ),
          ),
        );
      }
      return Value(stringValue: StringValue(value: 'invalid color'));
    case 'FLOAT':
      if (alias != null) {
        return Value(doubleValue: NumberValue(alias: alias));
      }
      if (value is num) {
        return Value(doubleValue: NumberValue(value: value.toDouble()));
      }
      return Value(
        doubleValue: NumberValue(value: (value as JSNumber).toDartDouble),
      );
    case 'STRING':
      if (alias != null) {
        return Value(stringValue: StringValue(alias: alias));
      }
      return Value(stringValue: StringValue(value: value.toString()));
    case 'BOOLEAN':
      if (alias != null) {
        return Value(boolean: BooleanValue(alias: alias));
      }
      if (value is bool) {
        return Value(boolean: BooleanValue(value: value));
      }
      return Value(boolean: BooleanValue(value: (value as JSBoolean).toDart));
    default:
      return Value(stringValue: StringValue(value: 'unsupported'));
  }
}

/// Imports Figma styles (paint, text, effect) as a "Styles" variable collection.
Future<VariableCollection?> _importStyles(
  ImportContext<FigmaImportOptions> context,
) async {
  final entries = <VariableCollectionEntry>[];
  final values = <Value>[];

  // Import paint styles (colors and gradients)
  final paintStylesJS = await figma_api.figma.getLocalPaintStylesAsync().toDart;
  final paintStyles = paintStylesJS.toDart;
  for (final style in paintStyles) {
    final paints = style.paints.toDart;
    if (paints.isNotEmpty) {
      final paint = paints[0];
      final value = _convertPaintToValue(paint);
      if (value != null) {
        entries.add(
          VariableCollectionEntry(
            id: context.identifiers.get('style/${style.id}'),
            name: style.name,
            documentation: style.description,
          ),
        );
        values.add(value);
      }
    }
  }

  // Import text styles
  final textStylesJS = await figma_api.figma.getLocalTextStylesAsync().toDart;
  final textStyles = textStylesJS.toDart;
  for (final style in textStyles) {
    entries.add(
      VariableCollectionEntry(
        id: context.identifiers.get('style/${style.id}'),
        name: style.name,
        documentation: style.description,
      ),
    );
    final boundVariables =
        style.getProperty('boundVariables'.jsify()!).dartify() as Map;

    Future<Alias?> getBoundAlias(String name) async {
      final variableInfo = boundVariables[name];
      if (variableInfo is Map) {
        final figmaVariableId = variableInfo['id'] as String;

        final variable = await figma_api.figma.variables
            .getVariableByIdAsync(figmaVariableId)
            .toDart;
        if (variable == null) {
          throw Exception(
            'Variable for text style fontFamily not found: $figmaVariableId',
          );
        }
        return Alias(
          variable: VariableAlias(
            collectionId: context.identifiers.get(
              'variable_collection/${variable.variableCollectionId}',
            ),
            variableId: context.identifiers.get('variable/$figmaVariableId'),
          ),
        );
      }
      return null;
    }

    final fontFamily = switch (await getBoundAlias('fontFamily')) {
      Alias alias => StringValue(alias: alias),
      null => StringValue(value: style.fontName.family),
    };

    final fontSize = switch (await getBoundAlias('fontSize')) {
      Alias alias => NumberValue(alias: alias),
      null => NumberValue(value: style.fontSize.toDouble()),
    };

    final fontWeight = switch (await getBoundAlias('fontWeight')) {
      Alias alias => NumberValue(alias: alias),
      null => NumberValue(
        value: switch (style.fontName.style) {
          "Normal" => 400.0,
          "Bold" => 700.0,
          "Black" => 900.0,
          "Light" => 300.0,
          "Thin" => 100.0,
          "Extra Bold" => 800.0,
          "Semi Bold" => 600.0,
          "Medium" => 500.0,
          "Extra Light" => 200.0,
          _ => 400.0,
        },
      ),
    };

    values.add(
      Value(
        textStyle: TextStyle(
          fontName: FontName(family: fontFamily, weight: fontWeight),
          fontSize: fontSize,
        ),
      ),
    );
  }

  if (entries.isEmpty) {
    return null;
  }

  return VariableCollection(
    id: context.identifiers.get('variable_collection/styles'),
    name: 'Styles',
    variables: entries,
    variants: [VariableCollectionVariant(name: 'default', values: values)],
  );
}

Value? _convertPaintToValue(figma_api.Paint paint) {
  final type = paint.type;

  if (type == 'SOLID') {
    final color = paint.color;
    if (color != null) {
      final opacity = paint.opacity ?? 1.0;
      return Value(
        color: ColorValue(
          value: Color(
            red: color.r.toDouble(),
            green: color.g.toDouble(),
            blue: color.b.toDouble(),
            alpha: opacity.toDouble(),
            colorSpace: ColorSpace.COLOR_SPACE_SRGB,
          ),
        ),
      );
    }
  }

  // TODO: Add gradient support when needed
  // if (type == 'GRADIENT_LINEAR' || type == 'GRADIENT_RADIAL' || type == 'GRADIENT_ANGULAR') {
  //   ...
  // }

  return null;
}
