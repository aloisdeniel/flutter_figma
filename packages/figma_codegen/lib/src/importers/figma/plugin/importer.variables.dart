import 'dart:js_interop';
import 'dart:js_interop_unsafe';
import 'dart:math' as math;

import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart'
    as figma_api;
import 'package:figma_codegen/src/utils/dart/naming.dart';

class FigmaVariablesImporter {
  const FigmaVariablesImporter();

  Future<List<VariableCollection>> import(
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
              colorSpace: ColorSpace.COLOR_SPACE_EXTENDED_SRGB,
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

/// Imports Figma styles (paint, text, effect) as a styles variable collection.
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
      for (var i = 0; i < paints.length; i++) {
        final paint = paints[i];
        final value = await _convertPaintToValue(style, paint, context);
        if (value != null) {
          entries.add(
            VariableCollectionEntry(
              id: context.identifiers.get('style/${style.id}/$i'),
              name: style.name + (i == 0 ? '' : i.toString()),
              documentation: style.description,
            ),
          );
          values.add(value);
        }
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
    name: Naming.typeName(context.options.naming.stylesCollection),
    variables: entries,
    variants: [VariableCollectionVariant(name: 'default', values: values)],
  );
}

Future<Alias?> _resolveBoundAlias(
  dynamic boundVariables,
  String field,
  ImportContext<FigmaImportOptions> context,
) async {
  if (boundVariables is Map) {
    final aliasValue = boundVariables[field];
    if (aliasValue is Map) {
      return _convertVariableAlias(aliasValue, context);
    }
  }
  return null;
}

ColorValue? _colorValueFromComponents({
  required num red,
  required num green,
  required num blue,
  required num alpha,
  Alias? alias,
}) {
  if (alias != null) {
    return ColorValue(alias: alias);
  }

  return ColorValue(
    value: Color(
      red: red.toDouble(),
      green: green.toDouble(),
      blue: blue.toDouble(),
      alpha: alpha.toDouble(),
      colorSpace: ColorSpace.COLOR_SPACE_SRGB,
    ),
  );
}

ColorValue? _colorValueFromPaintColor(
  dynamic color,
  double opacity,
  Alias? alias,
) {
  if (color is figma_api.RGB) {
    return _colorValueFromComponents(
      red: color.r,
      green: color.g,
      blue: color.b,
      alpha: opacity,
      alias: alias,
    );
  }

  if (color is figma_api.RGBA) {
    return _colorValueFromComponents(
      red: color.r,
      green: color.g,
      blue: color.b,
      alpha: color.a * opacity,
      alias: alias,
    );
  }

  if (color is Map) {
    final red = color['r'] as num?;
    final green = color['g'] as num?;
    final blue = color['b'] as num?;
    final alpha = (color['a'] as num?) ?? 1.0;

    if (red != null && green != null && blue != null) {
      return _colorValueFromComponents(
        red: red,
        green: green,
        blue: blue,
        alpha: alpha * opacity,
        alias: alias,
      );
    }
  }

  return alias != null ? ColorValue(alias: alias) : null;
}

List<List<double>>? _parseTransform(dynamic transformValue) {
  if (transformValue == null) {
    return null;
  }

  final dartValue = transformValue is JSAny
      ? transformValue.dartify()
      : transformValue;
  if (dartValue is! List || dartValue.length < 2) {
    return null;
  }

  final row0 = dartValue[0];
  final row1 = dartValue[1];
  if (row0 is! List || row1 is! List || row0.length < 3 || row1.length < 3) {
    return null;
  }

  return [
    [
      (row0[0] as num).toDouble(),
      (row0[1] as num).toDouble(),
      (row0[2] as num).toDouble(),
    ],
    [
      (row1[0] as num).toDouble(),
      (row1[1] as num).toDouble(),
      (row1[2] as num).toDouble(),
    ],
  ];
}

Offset _transformPoint(List<List<double>> transform, double x, double y) {
  final transformedX =
      transform[0][0] * x + transform[0][1] * y + transform[0][2];
  final transformedY =
      transform[1][0] * x + transform[1][1] * y + transform[1][2];
  return Offset(x: transformedX, y: transformedY);
}

Offset _alignmentOffset(Offset point) {
  return Offset(x: point.x * 2 - 1, y: point.y * 2 - 1);
}

LinearGradient _linearGradientFromStops(
  List<GradientStop> stops,
  List<List<double>>? transform,
) {
  if (transform == null) {
    return LinearGradient(
      stops: stops,
      begin: Offset(x: -1.0, y: 0.0),
      end: Offset(x: 1.0, y: 0.0),
    );
  }

  final rawBegin = _transformPoint(transform, 0.0, 0.0);
  final rawEnd = _transformPoint(transform, 1.0, 0.0);

  return LinearGradient(
    stops: stops,
    begin: _alignmentOffset(rawBegin),
    end: _alignmentOffset(rawEnd),
  );
}

RadialGradient _radialGradientFromStops(
  List<GradientStop> stops,
  List<List<double>>? transform,
) {
  if (transform == null) {
    return RadialGradient(
      stops: stops,
      center: Offset(x: 0.0, y: 0.0),
      radius: 0.5,
    );
  }

  final rawCenter = _transformPoint(transform, 0.5, 0.5);
  final radiusPoint = _transformPoint(transform, 1.0, 0.5);
  final dx = radiusPoint.x - rawCenter.x;
  final dy = radiusPoint.y - rawCenter.y;
  final radius = math.sqrt(dx * dx + dy * dy);

  return RadialGradient(
    stops: stops,
    center: _alignmentOffset(rawCenter),
    radius: radius,
  );
}

Future<List<GradientStop>> _convertGradientStops(
  figma_api.Paint paint,
  ImportContext<FigmaImportOptions> context,
) async {
  final gradientStopsValue = paint.getProperty('gradientStops'.jsify()!);
  if (gradientStopsValue == null) {
    return [];
  }

  final stopsValue = gradientStopsValue.dartify();
  if (stopsValue is! List) {
    return [];
  }

  final opacity = (paint.opacity ?? 1.0).toDouble();
  final stops = <GradientStop>[];

  for (final stopValue in stopsValue) {
    if (stopValue is! Map) {
      continue;
    }

    final positionValue = stopValue['position'];
    if (positionValue is! num) {
      continue;
    }

    final alias = await _resolveBoundAlias(
      stopValue['boundVariables'],
      'color',
      context,
    );
    final colorValue = _colorValueFromPaintColor(
      stopValue['color'],
      opacity,
      alias,
    );

    if (colorValue != null) {
      stops.add(
        GradientStop(offset: positionValue.toDouble(), color: colorValue),
      );
    }
  }

  return stops;
}

Future<Value?> _convertPaintToValue(
  figma_api.PaintStyle paintStyle,
  figma_api.Paint paint,
  ImportContext<FigmaImportOptions> context,
) async {
  final type = paint.type;

  if (type == 'SOLID') {
    final boundVariablesValue = paintStyle.getProperty(
      'boundVariables'.jsify()!,
    );
    final boundVariables = boundVariablesValue == null
        ? null
        : boundVariablesValue.dartify();
    final alias = await _resolveBoundAlias(boundVariables, 'color', context);
    final colorValue = _colorValueFromPaintColor(
      paint.color,
      (paint.opacity ?? 1.0).toDouble(),
      alias,
    );

    if (colorValue != null) {
      return Value(color: colorValue);
    }
  }

  if (type == 'GRADIENT_LINEAR' || type == 'GRADIENT_RADIAL') {
    final stops = await _convertGradientStops(paint, context);
    if (stops.isEmpty) {
      return null;
    }

    final transformValue = paint.getProperty('gradientTransform'.jsify()!);
    final transform = _parseTransform(transformValue);

    if (type == 'GRADIENT_LINEAR') {
      return Value(
        gradient: Gradient(linear: _linearGradientFromStops(stops, transform)),
      );
    }

    return Value(
      gradient: Gradient(radial: _radialGradientFromStops(stops, transform)),
    );
  }

  return null;
}
