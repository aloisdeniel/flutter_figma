import 'dart:ui' as ui;

import 'package:flutter_figma/src/foundation/foundation.dart' as figma;

extension BlendModeFlutterExtension on figma.BlendMode {
  ui.BlendMode toFlutter() {
    return switch (this) {
      figma.BlendMode.normal => ui.BlendMode.srcOver,
      figma.BlendMode.darken => ui.BlendMode.darken,
      figma.BlendMode.multiply => ui.BlendMode.multiply,
      figma.BlendMode.colorBurn => ui.BlendMode.colorBurn,
      figma.BlendMode.lighten => ui.BlendMode.lighten,
      figma.BlendMode.screen => ui.BlendMode.screen,
      figma.BlendMode.colorDodge => ui.BlendMode.colorDodge,
      figma.BlendMode.overlay => ui.BlendMode.overlay,
      figma.BlendMode.softLight => ui.BlendMode.softLight,
      figma.BlendMode.hardLight => ui.BlendMode.hardLight,
      figma.BlendMode.difference => ui.BlendMode.difference,
      figma.BlendMode.exclusion => ui.BlendMode.exclusion,
      figma.BlendMode.hue => ui.BlendMode.hue,
      figma.BlendMode.saturation => ui.BlendMode.saturation,
      figma.BlendMode.color => ui.BlendMode.color,
      figma.BlendMode.luminosity => ui.BlendMode.luminosity,
      figma.BlendMode.passThrough => ui.BlendMode.srcOver,
      figma.BlendMode.linearBurn => ui.BlendMode.darken,
      figma.BlendMode.linearDodge => ui.BlendMode.plus,
    };
  }
}
