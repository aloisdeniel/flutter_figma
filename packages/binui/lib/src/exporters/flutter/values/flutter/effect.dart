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
      Effect_Type.blur => _serializeBlur(library, effect.blur),
      Effect_Type.notSet => 'null',
    };
  }

  String _serializeDropShadow(Library library, DropShadowEffect dropShadow) {
    final color = AliasDartExporter(
      valueSerializer: valueSerializer,
      alwaysFallback: true,
    ).serialize(library, dropShadow.color);

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
      alwaysFallback: true,
    ).serialize(library, innerShadow.color);

    final offsetX = innerShadow.offset.x;
    final offsetY = innerShadow.offset.y;
    final blurRadius = innerShadow.radius;

    return 'fl.BoxShadow(color: $color, offset: fl.Offset($offsetX, $offsetY), blurRadius: $blurRadius) /* inner shadow - requires custom implementation */';
  }

  String _serializeBlur(Library library, BlurEffect blur) {
    // Blur effects in Flutter typically use BackdropFilter or ImageFilter
    return switch (blur.type) {
      BlurType.layer =>
        'fl.ImageFilter.blur(sigmaX: ${blur.radius}, sigmaY: ${blur.radius})',
      BlurType.background =>
        'fl.ImageFilter.blur(sigmaX: ${blur.radius}, sigmaY: ${blur.radius})',
      _ => 'null',
    };
  }

  /// Generates a list of BoxShadow widgets for effects
  String serializeAsBoxShadowList(Library library, List<Effect> effects) {
    if (effects.isEmpty) return '[]';

    final shadows = effects
        .where((e) => e.visible && e.whichType() != Effect_Type.blur)
        .map((e) => serialize(library, e))
        .where((s) => s != 'null')
        .toList();

    if (shadows.isEmpty) return '[]';

    return '[${shadows.join(', ')}]';
  }
}
