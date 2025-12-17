import 'dart:ui' show ColorSpace;

import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart' as f;
import 'package:flutter_figma/widgets.dart';

import 'widgets/figma_visual_node.dart';

extension ValueConversionExtension on b.Value {
  T toFlutter<T>() {
    switch (<T>[]) {
      case <String>[]:
        if (whichType() == b.Value_Type.stringValue) {
          return stringValue as T;
        }
      case <bool>[]:
        if (whichType() == b.Value_Type.boolean) {
          return boolean as T;
        }
      case <double>[]:
        if (whichType() == b.Value_Type.doubleValue) {
          return doubleValue as T;
        }
      case <int>[]:
        if (whichType() == b.Value_Type.doubleValue) {
          return doubleValue.toInt() as T;
        }
      case <num>[]:
        if (whichType() == b.Value_Type.doubleValue) {
          return doubleValue as T;
        }
      case <Color>[]:
        if (whichType() == b.Value_Type.color) {
          return color.toFlutter() as T;
        }
      case <TextStyle>[]:
        if (whichType() == b.Value_Type.textStyle) {
          return textStyle.toFlutter() as T;
        }
      case <Radius>[]:
        if (whichType() == b.Value_Type.radius) {
          return radius.toFlutter() as T;
        }

      case <Widget>[]:
        if (whichType() == b.Value_Type.visualNode) {
          return visualNode.toFigmaFlutter() as T;
        }
      default:
    }

    throw Exception(
      'Unable to resolve alias of type ${T.runtimeType} for alias: $alias',
    );
  }

  T toFigmaFlutter<T>() {
    switch (<T>[]) {
      case <FigmaTextStyle>[]:
        if (whichType() == b.Value_Type.textStyle) {
          return textStyle.toFigmaFlutter() as T;
        }
      case <CornerRadius>[]:
        if (whichType() == b.Value_Type.borderRadius) {
          return textStyle.toFigmaFlutter() as T;
        }
      case <Widget>[]:
        if (whichType() == b.Value_Type.visualNode) {
          return visualNode.toFigmaFlutter() as T;
        }
      default:
    }
    return toFlutter<T>();
  }
}

extension ColorConversionExtension on b.Color {
  Color toFlutter() {
    return Color.from(
      alpha: alpha,
      blue: blue,
      red: red,
      green: green,
      colorSpace: switch (colorSpace) {
        b.ColorSpace.COLOR_SPACE_DISPLAY_P3 => ColorSpace.displayP3,
        b.ColorSpace.COLOR_SPACE_SRGB => ColorSpace.sRGB,
        b.ColorSpace.COLOR_SPACE_EXTENDED_SRGB => ColorSpace.extendedSRGB,
        _ => throw Exception(),
      },
    );
  }
}

extension RadiusConversionExtension on b.Radius {
  Radius toFlutter() {
    if (x == y) return Radius.circular(x);
    return Radius.elliptical(x, y);
  }
}

extension BorderRadiusConversionExtension on b.CornerRadius {
  BorderRadius toFlutter() {
    return BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomLeft: Radius.circular(bottomLeft),
      bottomRight: Radius.circular(bottomRight),
    );
  }

  CornerRadius toFigmaFlutter() {
    return CornerRadius(
      topLeft: topLeft,
      topRight: topRight,
      bottomLeft: bottomLeft,
      bottomRight: bottomRight,
      smoothing: smoothing,
    );
  }
}

extension TextStyleConversionExtension on b.TextStyle {
  TextStyle toFlutter() {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.values.firstWhere(
        (fw) => fw.value == fontName.weight,
      ),
    );
  }

  FigmaTextStyle toFigmaFlutter() {
    return FigmaTextStyle(
      fontSize: fontSize,
      fontName: FontName(
        family: fontName.family,
        style: switch (fontName.style) {
          b.FontStyle.FONT_STYLE_ITALIC => FigmaFontStyle.italic,
          b.FontStyle.FONT_STYLE_REGULAR => FigmaFontStyle.regular,
          _ => throw UnimplementedError(),
        },
        weight: FontWeight.values.firstWhere(
          (fw) => fw.value == fontName.weight,
        ),
      ),
    );
  }
}

extension PaintConversionExtension on b.Paint {
  FigmaPaint toFigmaFlutter(b.Library library) {
    switch (whichType()) {
      case b.Paint_Type.solid:
        return solid.toFigmaFlutter(
          library,
          opacity: opacity,
          visible: visible,
          mode: blendMode.toFigmaFlutter(),
        );
      default:
        throw Exception('Unsupported paint type: $runtimeType');
    }
  }
}

extension SolidPaintConversionExtension on b.SolidPaint {
  f.Paint toFlutter(b.Library library) {
    final color = library.resolveAlias(this.color);
    return f.Paint()
      ..color = color!.toFlutter()
      ..style = f.PaintingStyle.fill;
  }

  FigmaPaint toFigmaFlutter(
    b.Library library, {
    required double opacity,
    required bool visible,
    required BlendMode mode,
  }) {
    final color = library.resolveAlias(this.color);
    return SolidPaint(
      color: color!.toFlutter(),
      opacity: opacity,
      visible: visible,
      blendMode: mode,
    );
  }
}

extension VisualNodeConversionExtension on b.VisualNode {
  Widget toFigmaFlutter({bool isRoot = true}) {
    return FigmaVisualNodeWidget(node: this, isRoot: isRoot);
  }
}

extension BlendModeConversionExtension on b.BlendMode {
  f.BlendMode toFlutter() {
    return switch (this) {
      b.BlendMode.BLEND_MODE_SCREEN => f.BlendMode.screen,
      b.BlendMode.BLEND_MODE_OVERLAY => f.BlendMode.overlay,
      b.BlendMode.BLEND_MODE_DARKEN => f.BlendMode.darken,
      b.BlendMode.BLEND_MODE_LIGHTEN => f.BlendMode.lighten,
      b.BlendMode.BLEND_MODE_COLOR_DODGE => f.BlendMode.colorDodge,
      b.BlendMode.BLEND_MODE_COLOR_BURN => f.BlendMode.colorBurn,
      b.BlendMode.BLEND_MODE_HARD_LIGHT => f.BlendMode.hardLight,
      b.BlendMode.BLEND_MODE_SOFT_LIGHT => f.BlendMode.softLight,
      b.BlendMode.BLEND_MODE_DIFFERENCE => f.BlendMode.difference,
      b.BlendMode.BLEND_MODE_EXCLUSION => f.BlendMode.exclusion,
      b.BlendMode.BLEND_MODE_MULTIPLY => f.BlendMode.multiply,
      b.BlendMode.BLEND_MODE_HUE => f.BlendMode.hue,
      b.BlendMode.BLEND_MODE_SATURATION => f.BlendMode.saturation,
      b.BlendMode.BLEND_MODE_COLOR => f.BlendMode.color,
      b.BlendMode.BLEND_MODE_LUMINOSITY => f.BlendMode.luminosity,
      _ => f.BlendMode.srcOver,
    };
  }

  BlendMode toFigmaFlutter() {
    return switch (this) {
      b.BlendMode.BLEND_MODE_SCREEN => BlendMode.screen,
      b.BlendMode.BLEND_MODE_OVERLAY => BlendMode.overlay,
      b.BlendMode.BLEND_MODE_DARKEN => BlendMode.darken,
      b.BlendMode.BLEND_MODE_LIGHTEN => BlendMode.lighten,
      b.BlendMode.BLEND_MODE_COLOR_DODGE => BlendMode.colorDodge,
      b.BlendMode.BLEND_MODE_COLOR_BURN => BlendMode.colorBurn,
      b.BlendMode.BLEND_MODE_HARD_LIGHT => BlendMode.hardLight,
      b.BlendMode.BLEND_MODE_SOFT_LIGHT => BlendMode.softLight,
      b.BlendMode.BLEND_MODE_DIFFERENCE => BlendMode.difference,
      b.BlendMode.BLEND_MODE_EXCLUSION => BlendMode.exclusion,
      b.BlendMode.BLEND_MODE_MULTIPLY => BlendMode.multiply,
      b.BlendMode.BLEND_MODE_HUE => BlendMode.hue,
      b.BlendMode.BLEND_MODE_SATURATION => BlendMode.saturation,
      b.BlendMode.BLEND_MODE_COLOR => BlendMode.color,
      b.BlendMode.BLEND_MODE_LUMINOSITY => BlendMode.luminosity,
      _ => BlendMode.passThrough,
    };
  }
}
