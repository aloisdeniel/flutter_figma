import 'dart:ui' show ColorSpace;

import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter/widgets.dart' as f;
import 'package:flutter_figma/widgets.dart';

import 'widgets/visual_node.dart';

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
        // Default to sRGB for unset or unknown color spaces
        _ => ColorSpace.sRGB,
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
  FigmaPaint? toFigmaFlutter(
    b.Library library, {
    List<b.VariableCollectionVariantValue> variableCollectionVariants =
        const [],
    List<b.PropertyValue> properties = const [],
  }) {
    switch (whichType()) {
      case b.Paint_Type.solid:
        return solid.toFigmaFlutter(
          library,
          opacity: opacity,
          visible: visible,
          mode: blendMode.toFigmaFlutter(),
          variableCollectionVariants: variableCollectionVariants,
          properties: properties,
        );
      case b.Paint_Type.notSet:
        return null;

      default:
        throw Exception('Unsupported paint type: $runtimeType');
    }
  }
}

extension SolidPaintConversionExtension on b.SolidPaint {
  FigmaPaint toFigmaFlutter(
    b.Library library, {
    required double opacity,
    required bool visible,
    required BlendMode mode,
    List<b.VariableCollectionVariantValue> variableCollectionVariants =
        const [],
    List<b.PropertyValue> properties = const [],
  }) {
    final colorValue = library.resolveAlias(
      this.color,
      variableCollectionVariants: variableCollectionVariants,
      properties: properties,
    );

    final color = colorValue?.whichType() == b.Value_Type.color
        ? colorValue!.color.toFlutter()
        : const Color(0x00000000); // Fallback to transparent
    print('Resolved value: ${color}');
    return SolidPaint(
      color: color,
      opacity: opacity,
      visible: visible,
      blendMode: mode,
    );
  }
}

extension ConstraintTypeConversionExtension on b.ConstraintType {
  ConstraintType toFigmaFlutter() {
    return switch (this) {
      b.ConstraintType.CONSTRAINT_TYPE_MIN => ConstraintType.min,
      b.ConstraintType.CONSTRAINT_TYPE_CENTER => ConstraintType.center,
      b.ConstraintType.CONSTRAINT_TYPE_MAX => ConstraintType.max,
      b.ConstraintType.CONSTRAINT_TYPE_STRETCH => ConstraintType.stretch,
      b.ConstraintType.CONSTRAINT_TYPE_SCALE => ConstraintType.scale,
      _ => ConstraintType.min,
    };
  }
}

extension VisualNodeConversionExtension on b.VisualNode {
  Widget toFigmaFlutter({
    bool isRoot = true,
    b.LayoutProperties_Type parentLayoutType = b.LayoutProperties_Type.notSet,
  }) {
    return BinuiVisualNode(
      node: this,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
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

extension ChildSizingModeConversionExtension on b.ChildSizingMode {
  ChildSizingMode toFigmaFlutter() {
    return switch (this) {
      b.ChildSizingMode.CHILD_SIZING_FILL => ChildSizingMode.fill,
      b.ChildSizingMode.CHILD_SIZING_HUG => ChildSizingMode.hug,
      _ => ChildSizingMode.fixed,
    };
  }
}

extension LayoutPropertiesConversionExtension on b.LayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return switch (whichType()) {
      b.LayoutProperties_Type.autoLayout => autoLayout.toFlutter(),
      b.LayoutProperties_Type.grid => grid.toFlutter(),
      _ => freeform.toFlutter(),
    };
  }
}

extension FreeformLayoutPropertiesConversionExtension
    on b.FreeformLayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return FigmaLayoutProperties.freeform(
      referenceWidth: referenceWidth,
      referenceHeight: referenceHeight,
    );
  }
}

extension AutoLayoutPropertiesConversionExtension on b.AutoLayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return FigmaLayoutProperties.auto(
      axis: isVertical ? Axis.vertical : Axis.horizontal,
      counterAxisSpacing: counterAxisSpacing,
      itemSpacing: itemSpacing,
      padding: EdgeInsets.only(
        left: padding.left,
        right: padding.right,
        top: padding.top,
        bottom: padding.bottom,
      ),
      primaryAxisAlignItems: switch (primaryAxisAlignItems) {
        b.LayoutAlign.LAYOUT_ALIGN_CENTER => LayoutAlign.center,
        b.LayoutAlign.LAYOUT_ALIGN_MAX => LayoutAlign.max,
        b.LayoutAlign.LAYOUT_ALIGN_SPACE_BETWEEN => LayoutAlign.spaceBetween,
        _ => LayoutAlign.min,
      },
      counterAxisAlignItems: switch (counterAxisAlignItems) {
        b.LayoutAlign.LAYOUT_ALIGN_CENTER => LayoutAlign.center,
        b.LayoutAlign.LAYOUT_ALIGN_MAX => LayoutAlign.max,
        b.LayoutAlign.LAYOUT_ALIGN_SPACE_BETWEEN => LayoutAlign.spaceBetween,
        _ => LayoutAlign.min,
      },
      layoutWrap: switch (layoutWrap) {
        b.LayoutWrap.LAYOUT_WRAP_WRAP => LayoutWrap.wrap,
        _ => LayoutWrap.noWrap,
      },
      referenceWidth: referenceWidth,
      referenceHeight: referenceHeight,
    );
  }
}

extension GridLayoutPropertiesConversionExtension on b.GridLayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return FigmaLayoutProperties.grid(
      columnCount: columnCount,
      rowCount: rowCount,
      columns: columns
          .map(
            (c) => GridTrack(
              size: c.size,
              sizingMode: switch (c.sizingMode) {
                b.GridTrackSizingMode.GRID_TRACK_SIZING_FIXED =>
                  GridTrackSizingMode.fixed,
                _ => GridTrackSizingMode.auto,
              },
            ),
          )
          .toList(),

      rows: rows
          .map(
            (c) => GridTrack(
              size: c.size,
              sizingMode: switch (c.sizingMode) {
                b.GridTrackSizingMode.GRID_TRACK_SIZING_FIXED =>
                  GridTrackSizingMode.fixed,
                _ => GridTrackSizingMode.auto,
              },
            ),
          )
          .toList(),
    );
  }
}
