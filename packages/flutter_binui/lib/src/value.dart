import 'dart:ui' show ColorSpace;

import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart' as f;
import 'package:flutter_binui/src/widgets/visual_node.dart';
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
          return visualNode.toFlutter() as T;
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
        b.ColorSpace.displayP3 => ColorSpace.displayP3,
        b.ColorSpace.srgb => ColorSpace.sRGB,
        b.ColorSpace.extendedSrgb => ColorSpace.extendedSRGB,
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

extension BorderRadiusConversionExtension on b.BorderRadius {
  BorderRadius toFlutter() {
    return BorderRadius.only(
      topLeft: topLeft.toFlutter(),
      topRight: topRight.toFlutter(),
      bottomLeft: bottomLeft.toFlutter(),
      bottomRight: bottomRight.toFlutter(),
    );
  }

  CornerRadius toFigmaFlutter() {
    return CornerRadius(
      topLeft: topLeft.x,
      topRight: topRight.x,
      bottomLeft: bottomLeft.x,
      bottomRight: bottomRight.x,
    );
  }
}

extension TextStyleConversionExtension on b.TextStyle {
  TextStyle toFlutter() {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.values.firstWhere((fw) => fw.index == fontWeight),
    );
  }

  FigmaTextStyle toFigmaFlutter() {
    return FigmaTextStyle(
      fontSize: fontSize,
      fontName: FontName(family: fontFamily),
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
  Widget toFlutter() {
    return VisualNodeWidget(node: this);
  }

  Widget toFigmaFlutter() {
    return FigmaVisualNodeWidget(node: this);
  }
}

extension BlendModeConversionExtension on b.BlendMode {
  f.BlendMode toFlutter() {
    return switch (this) {
      b.BlendMode.screen => f.BlendMode.screen,
      b.BlendMode.overlay => f.BlendMode.overlay,
      b.BlendMode.darken => f.BlendMode.darken,
      b.BlendMode.lighten => f.BlendMode.lighten,
      b.BlendMode.colorDodge => f.BlendMode.colorDodge,
      b.BlendMode.colorBurn => f.BlendMode.colorBurn,
      b.BlendMode.hardLight => f.BlendMode.hardLight,
      b.BlendMode.softLight => f.BlendMode.softLight,
      b.BlendMode.difference => f.BlendMode.difference,
      b.BlendMode.exclusion => f.BlendMode.exclusion,
      b.BlendMode.multiply => f.BlendMode.multiply,
      b.BlendMode.hue => f.BlendMode.hue,
      b.BlendMode.saturation => f.BlendMode.saturation,
      b.BlendMode.color => f.BlendMode.color,
      b.BlendMode.luminosity => f.BlendMode.luminosity,
      _ => f.BlendMode.srcOver,
    };
  }

  BlendMode toFigmaFlutter() {
    return switch (this) {
      b.BlendMode.screen => BlendMode.screen,
      b.BlendMode.overlay => BlendMode.overlay,
      b.BlendMode.darken => BlendMode.darken,
      b.BlendMode.lighten => BlendMode.lighten,
      b.BlendMode.colorDodge => BlendMode.colorDodge,
      b.BlendMode.colorBurn => BlendMode.colorBurn,
      b.BlendMode.hardLight => BlendMode.hardLight,
      b.BlendMode.softLight => BlendMode.softLight,
      b.BlendMode.difference => BlendMode.difference,
      b.BlendMode.exclusion => BlendMode.exclusion,
      b.BlendMode.multiply => BlendMode.multiply,
      b.BlendMode.hue => BlendMode.hue,
      b.BlendMode.saturation => BlendMode.saturation,
      b.BlendMode.color => BlendMode.color,
      b.BlendMode.luminosity => BlendMode.luminosity,
      _ => BlendMode.passThrough,
    };
  }
}
