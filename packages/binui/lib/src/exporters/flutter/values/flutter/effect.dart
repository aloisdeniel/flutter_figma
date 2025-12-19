import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/alias.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';

class EffectDartExporter {
  const EffectDartExporter({required this.valueSerializer});

  final FlutterValueExporter valueSerializer;

  /// Serializes an Effect to Flutter BoxShadow or filter
  String serialize(Library library, Effect effect) {
    if (!effect.visible) return 'null';

    return switch (effect.whichType()) {
      Effect_Type.dropShadow => _serializeDropShadow(
        library,
        effect.dropShadow,
      ),
      Effect_Type.innerShadow => _serializeInnerShadow(
        library,
        effect.innerShadow,
      ),
      Effect_Type.layerBlur => _serializeLayerBlur(effect.layerBlur),
      Effect_Type.backgroundBlur => _serializeBackgroundBlur(
        effect.backgroundBlur,
      ),
      Effect_Type.progressiveBlur ||
      Effect_Type.monotoneNoise ||
      Effect_Type.duotoneNoise ||
      Effect_Type.multitoneNoise ||
      Effect_Type.texture ||
      Effect_Type.glass ||
      Effect_Type.notSet => 'null',
    };
  }

  String _serializeDropShadow(Library library, DropShadowEffect dropShadow) {
    final color = AliasDartExporter(
      valueSerializer: valueSerializer,
    ).serialize(library, dropShadow.color, Value_Type.color);

    final offsetX = dropShadow.offset.x;
    final offsetY = dropShadow.offset.y;
    final blurRadius = dropShadow.radius;
    final spreadRadius = dropShadow.hasSpread() ? dropShadow.spread : 0.0;

    return 'fl.BoxShadow(color: $color, offset: fl.Offset($offsetX, $offsetY), blurRadius: $blurRadius, spreadRadius: $spreadRadius)';
  }

  String _serializeInnerShadow(Library library, InnerShadowEffect innerShadow) {
    // Flutter doesn't have native inner shadow support for BoxShadow
    // This would require custom painting or a workaround
    final color = AliasDartExporter(
      valueSerializer: valueSerializer,
    ).serialize(library, innerShadow.color, Value_Type.color);

    final offsetX = innerShadow.offset.x;
    final offsetY = innerShadow.offset.y;
    final blurRadius = innerShadow.radius;

    return 'fl.BoxShadow(color: $color, offset: fl.Offset($offsetX, $offsetY), blurRadius: $blurRadius) /* inner shadow - requires custom implementation */';
  }

  String _serializeLayerBlur(LayerBlurEffect blur) {
    return 'fl.ImageFilter.blur(sigmaX: ${blur.radius}, sigmaY: ${blur.radius})';
  }

  String _serializeBackgroundBlur(BackgroundBlurEffect blur) {
    return 'fl.ImageFilter.blur(sigmaX: ${blur.radius}, sigmaY: ${blur.radius})';
  }

  /// Generates a list of BoxShadow widgets for effects
  String serializeAsBoxShadowList(Library library, List<Effect> effects) {
    if (effects.isEmpty) return '[]';

    final shadows = effects
        .where(
          (e) =>
              e.visible &&
              e.whichType() != Effect_Type.layerBlur &&
              e.whichType() != Effect_Type.backgroundBlur,
        )
        .map((e) => serialize(library, e))
        .where((s) => s != 'null')
        .toList();

    if (shadows.isEmpty) return '[]';

    return '[${shadows.join(', ')}]';
  }
}
