import 'dart:ui' as ui;

import 'package:flutter/widgets.dart' hide BlendMode;
import 'package:flutter_figma/widgets.dart';

class FigmaBlend extends StatelessWidget {
  const FigmaBlend({
    super.key,
    required this.mode,
    required this.child,
  });

  final BlendMode mode;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        const Color(0x00000000),
        _convertBlendMode(mode),
      ),
      child: child,
    );
  }
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
