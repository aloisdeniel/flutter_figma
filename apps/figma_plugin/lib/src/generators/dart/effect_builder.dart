import 'package:figma_plugin/src/figma.dart';

import 'code_buffer.dart';

/// Handles building effect code
class EffectBuilder {
  final CodeBuffer buffer;

  EffectBuilder(this.buffer);

  void buildEffect(Effect effect) {
    switch (effect.type) {
      case 'DROP_SHADOW':
        _buildDropShadow(effect);
      case 'INNER_SHADOW':
        _buildInnerShadow(effect);
      case 'LAYER_BLUR':
        _buildLayerBlur(effect);
      case 'BACKGROUND_BLUR':
        _buildBackgroundBlur(effect);
      default:
        buffer.write('// Unsupported effect type: ${effect.type}');
    }
  }

  void _buildDropShadow(Effect effect) {
    buffer.writeLine('DropShadowEffect(');
    buffer.indent();
    final color = effect.color;
    if (color != null) {
      buffer.writeLine(
          'color: Color.from(alpha: ${color.a}, red: ${color.r}, green: ${color.g}, blue: ${color.b}),');
    }
    buffer.writeLine('offset: Offset(0, ${effect.radius ?? 4}),');
    buffer.writeLine('radius: ${effect.radius ?? 4},');
    buffer.writeLine('visible: ${effect.visible},');
    buffer.writeLine('blendMode: BlendMode.normal,');
    buffer.unindent();
    buffer.write(')');
  }

  void _buildInnerShadow(Effect effect) {
    buffer.writeLine('InnerShadowEffect(');
    buffer.indent();
    final color = effect.color;
    if (color != null) {
      buffer.writeLine(
          'color: Color.from(alpha: ${color.a}, red: ${color.r}, green: ${color.g}, blue: ${color.b}),');
    }
    buffer.writeLine('offset: Offset(0, ${effect.radius ?? 4}),');
    buffer.writeLine('radius: ${effect.radius ?? 4},');
    buffer.writeLine('visible: ${effect.visible},');
    buffer.writeLine('blendMode: BlendMode.normal,');
    buffer.unindent();
    buffer.write(')');
  }

  void _buildLayerBlur(Effect effect) {
    buffer.writeLine('LayerBlurEffect(');
    buffer.indent();
    buffer.writeLine('radius: ${effect.radius ?? 4},');
    buffer.writeLine('visible: ${effect.visible},');
    buffer.unindent();
    buffer.write(')');
  }

  void _buildBackgroundBlur(Effect effect) {
    buffer.writeLine('BackgroundBlurEffect(');
    buffer.indent();
    buffer.writeLine('radius: ${effect.radius ?? 4},');
    buffer.writeLine('visible: ${effect.visible},');
    buffer.unindent();
    buffer.write(')');
  }
}
