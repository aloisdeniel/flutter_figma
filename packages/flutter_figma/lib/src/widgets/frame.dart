import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/decorated.dart';
import 'package:flutter_figma/src/widgets/filtered.dart';
import 'package:flutter_figma/src/widgets/layout.dart';

class FigmaFrame extends StatelessWidget {
  const FigmaFrame({
    super.key,
    this.layout = const FigmaAutoLayoutProperties(),
    this.decoration,
    this.effects = const [],
    this.opacity = 1.0,
    this.visible = true,
    this.blendMode = BlendMode.passThrough,
    this.clipContent = true,
    this.children = const [],
  });

  final FigmaLayoutProperties layout;
  final FigmaDecoration? decoration;
  final List<FigmaEffect> effects;
  final double opacity;
  final bool visible;
  final BlendMode blendMode;
  final bool clipContent;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return const SizedBox.shrink();
    }

    Widget result = FigmaLayout(
      layout: layout,
      children: children,
    );

    if (decoration != null) {
      result = FigmaDecorated(
        decoration: decoration!,
        child: result,
      );
    }

    if (effects.isNotEmpty && decoration != null) {
      result = FigmaFiltered(
        effects: effects,
        shape: decoration!.shape,
        child: result,
      );
    }

    if (opacity != 1.0) {
      result = Opacity(
        opacity: opacity.clamp(0.0, 1.0),
        child: result,
      );
    }

    if (blendMode != BlendMode.passThrough) {
      result = ColorFiltered(
        colorFilter: ColorFilter.mode(
          const Color(0x00000000),
          _convertBlendMode(blendMode),
        ),
        child: result,
      );
    }

    return result;
  }

  ui.BlendMode _convertBlendMode(BlendMode mode) {
    return switch (mode) {
      BlendMode.normal => ui.BlendMode.srcOver,
      BlendMode.darken => ui.BlendMode.darken,
      BlendMode.multiply => ui.BlendMode.multiply,
      BlendMode.colorBurn => ui.BlendMode.colorBurn,
      BlendMode.lighten => ui.BlendMode.lighten,
      BlendMode.screen => ui.BlendMode.screen,
      BlendMode.colorDodge => ui.BlendMode.colorDodge,
      BlendMode.overlay => ui.BlendMode.overlay,
      BlendMode.softLight => ui.BlendMode.softLight,
      BlendMode.hardLight => ui.BlendMode.hardLight,
      BlendMode.difference => ui.BlendMode.difference,
      BlendMode.exclusion => ui.BlendMode.exclusion,
      BlendMode.hue => ui.BlendMode.hue,
      BlendMode.saturation => ui.BlendMode.saturation,
      BlendMode.color => ui.BlendMode.color,
      BlendMode.luminosity => ui.BlendMode.luminosity,
      BlendMode.passThrough => ui.BlendMode.srcOver,
      BlendMode.linearBurn => ui.BlendMode.darken,
      BlendMode.linearDodge => ui.BlendMode.plus,
    };
  }
}
