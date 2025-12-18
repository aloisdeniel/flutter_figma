part of 'importer.dart';

/// Imports Figma styles (paint, text, effect) as a "Styles" variable collection.
Future<VariableCollection?> _importStyles(
  ImporterContext<FigmaImportOptions> context,
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
    values.add(
      Value(
        textStyle: TextStyle(
          fontName: FontName(family: style.fontName.family),
          fontSize: style.fontSize.toDouble(),
        ),
      ),
    );
  }

  // Import effect styles (shadows)
  final effectStylesJS = await figma_api.figma
      .getLocalEffectStylesAsync()
      .toDart;
  final effectStyles = effectStylesJS.toDart;
  for (final style in effectStyles) {
    final effects = style.effects.toDart;
    if (effects.isNotEmpty) {
      final effect = effects[0];
      final value = _convertEffectToValue(effect);
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
        color: Color(
          red: color.r.toDouble(),
          green: color.g.toDouble(),
          blue: color.b.toDouble(),
          alpha: opacity.toDouble(),
          colorSpace: ColorSpace.COLOR_SPACE_SRGB,
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

Value? _convertEffectToValue(figma_api.Effect effect) {
  final type = effect.type;

  // Handle shadow effects
  if (type == 'DROP_SHADOW' || type == 'INNER_SHADOW') {
    final color = effect.color;
    if (color != null) {
      return Value(
        color: Color(
          red: color.r.toDouble(),
          green: color.g.toDouble(),
          blue: color.b.toDouble(),
          alpha: color.a.toDouble(),
          colorSpace: ColorSpace.COLOR_SPACE_SRGB,
        ),
      );
    }
  }

  return null;
}
