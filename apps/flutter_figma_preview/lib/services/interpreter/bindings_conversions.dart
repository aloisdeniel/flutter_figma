import 'bindings.dart';

import 'package:flutter/widgets.dart' as flu;
import 'package:flutter_figma/widgets.dart' as fig;

extension FigmaTransformBuild on FigmaTransform {
  fig.FigmaTransform build() =>
      fig.FigmaTransform(m00, m01, m02, m10, m11, m12);
}

extension FigmaRectangleShapeBuild on FigmaRectangleShape {
  fig.FigmaRectangleShape build() => fig.FigmaRectangleShape(
    topLeftRadius: topLeftRadius,
    topRightRadius: topRightRadius,
    bottomLeftRadius: bottomLeftRadius,
    bottomRightRadius: bottomRightRadius,
    smoothing: smoothing,
  );
}

extension FigmaStrokeAlignmentBuild on FigmaStrokeAlignment {
  fig.FigmaStrokeAlignment build() => switch (this) {
    FigmaStrokeAlignment.inside => fig.FigmaStrokeAlignment.inside,
    FigmaStrokeAlignment.center => fig.FigmaStrokeAlignment.center,
    FigmaStrokeAlignment.outside => fig.FigmaStrokeAlignment.outside,
  };
}

extension FigmaTextStyleBuild on FigmaTextStyle {
  fig.FigmaTextStyle build() => fig.FigmaTextStyle(
    fontName: fontName.build(),
    fontSize: fontSize,
    letterSpacing: letterSpacing.build(),
    lineHeight: lineHeight.build(),
  );
}

extension FigmaPaintBuild on FigmaPaint {
  fig.FigmaPaint build() => switch (type) {
    FigmaPaintType.solid => fig.SolidPaint(
      color: solidColor!.build(),
      visible: visible,
      opacity: opacity,
      blendMode: blendMode.build(),
    ),
    FigmaPaintType.linearGradient => fig.LinearGradientPaint(
      gradientStops: gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: gradientTransform!.build(),
      visible: visible,
      opacity: opacity,
      blendMode: blendMode.build(),
    ),
    FigmaPaintType.radialGradient => fig.RadialGradientPaint(
      gradientStops: gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: gradientTransform!.build(),
      visible: visible,
      opacity: opacity,
      blendMode: blendMode.build(),
    ),
    FigmaPaintType.angularGradient => fig.AngularGradientPaint(
      gradientStops: gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: gradientTransform!.build(),
      visible: visible,
      opacity: opacity,
      blendMode: blendMode.build(),
    ),
    FigmaPaintType.diamondGradient => fig.DiamondGradientPaint(
      gradientStops: gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: gradientTransform!.build(),
      visible: visible,
      opacity: opacity,
      blendMode: blendMode.build(),
    ),
  };
}

extension FontWeightBuild on FontWeight {
  flu.FontWeight build() => switch (this) {
    FontWeight.w100 => flu.FontWeight.w100,
    FontWeight.w200 => flu.FontWeight.w200,
    FontWeight.w300 => flu.FontWeight.w300,
    FontWeight.w400 => flu.FontWeight.w400,
    FontWeight.w500 => flu.FontWeight.w500,
    FontWeight.w600 => flu.FontWeight.w600,
    FontWeight.w700 => flu.FontWeight.w700,
    FontWeight.w800 => flu.FontWeight.w800,
    FontWeight.w900 => flu.FontWeight.w900,
  };
}

extension LineHeightBuild on LineHeight {
  fig.LineHeight build() => switch (type) {
    LineHeightType.pixels => fig.LineHeight.pixels(value!),
    LineHeightType.percent => fig.LineHeight.percent(value!),
    LineHeightType.auto => fig.LineHeight.auto(),
  };
}

extension FigmaTextSpanBuild on FigmaTextSpan {
  fig.FigmaTextSpan build() =>
      fig.FigmaTextSpan(text: text, style: style?.build());
}

extension FigmaStrokeJoinBuild on FigmaStrokeJoin {
  fig.FigmaStrokeJoin build() => switch (this) {
    FigmaStrokeJoin.miter => fig.FigmaStrokeJoin.miter,
    FigmaStrokeJoin.bevel => fig.FigmaStrokeJoin.bevel,
    FigmaStrokeJoin.round => fig.FigmaStrokeJoin.round,
  };
}

extension FigmaStrokeBuild on FigmaStroke {
  fig.FigmaStroke build() => fig.FigmaStroke(
    topWeight: topWeight,
    bottomWeight: bottomWeight,
    leftWeight: leftWeight,
    rightWeight: rightWeight,
    join: join.build(),
    alignment: alignment.build(),
  );
}

extension ColorStopBuild on ColorStop {
  fig.ColorStop build() =>
      fig.ColorStop(position: position, color: color.build());
}

extension FigmaDecorationBuild on FigmaDecoration {
  fig.FigmaDecoration build() => fig.FigmaDecoration(
    fills: fills.map((x) => x.build()).toList(),
    strokes: strokes.map((x) => x.build()).toList(),
  );
}

extension AxisBuild on Axis {
  flu.Axis build() => switch (this) {
    Axis.vertical => flu.Axis.vertical,
    Axis.horizontal => flu.Axis.horizontal,
  };
}

extension OverflowDirectionBuild on OverflowDirection {
  fig.OverflowDirection build() => switch (this) {
    OverflowDirection.none => fig.OverflowDirection.none,
    OverflowDirection.horizontal => fig.OverflowDirection.horizontal,
    OverflowDirection.vertical => fig.OverflowDirection.vertical,
    OverflowDirection.both => fig.OverflowDirection.both,
  };
}

extension LayoutModeBuild on LayoutMode {
  fig.LayoutMode build() => switch (this) {
    LayoutMode.freeform => fig.LayoutMode.freeform,
    LayoutMode.horizontal => fig.LayoutMode.horizontal,
    LayoutMode.vertical => fig.LayoutMode.vertical,
    LayoutMode.grid => fig.LayoutMode.grid,
  };
}

extension PrimaryAxisSizingModeBuild on PrimaryAxisSizingMode {
  fig.PrimaryAxisSizingMode build() => switch (this) {
    PrimaryAxisSizingMode.fixed => fig.PrimaryAxisSizingMode.fixed,
    PrimaryAxisSizingMode.auto => fig.PrimaryAxisSizingMode.auto,
  };
}

extension CounterAxisSizingModeBuild on CounterAxisSizingMode {
  fig.CounterAxisSizingMode build() => switch (this) {
    CounterAxisSizingMode.fixed => fig.CounterAxisSizingMode.fixed,
    CounterAxisSizingMode.auto => fig.CounterAxisSizingMode.auto,
  };
}

extension LayoutWrapBuild on LayoutWrap {
  fig.LayoutWrap build() => switch (this) {
    LayoutWrap.noWrap => fig.LayoutWrap.noWrap,
    LayoutWrap.wrap => fig.LayoutWrap.wrap,
  };
}

extension LayoutAlignBuild on LayoutAlign {
  fig.LayoutAlign build() => switch (this) {
    LayoutAlign.min => fig.LayoutAlign.min,
    LayoutAlign.center => fig.LayoutAlign.center,
    LayoutAlign.max => fig.LayoutAlign.max,
    LayoutAlign.stretch => fig.LayoutAlign.stretch,
    LayoutAlign.spaceBetween => fig.LayoutAlign.spaceBetween,
  };
}

extension ChildSizingModeBuild on ChildSizingMode {
  fig.ChildSizingMode build() => switch (this) {
    ChildSizingMode.fixed => fig.ChildSizingMode.fixed,
    ChildSizingMode.hug => fig.ChildSizingMode.hug,
  };
}

extension EdgeInsetsBuild on EdgeInsets {
  flu.EdgeInsets build() =>
      flu.EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
}

extension ColorBuild on Color {
  flu.Color build() =>
      flu.Color.from(alpha: alpha, red: red, green: green, blue: blue);
}

extension OffsetBuild on Offset {
  flu.Offset build() => flu.Offset(dx, dy);
}

extension BlendModeBuild on BlendMode {
  fig.BlendMode build() => switch (this) {
    BlendMode.passThrough => fig.BlendMode.passThrough,
    BlendMode.normal => fig.BlendMode.normal,
    BlendMode.darken => fig.BlendMode.darken,
    BlendMode.multiply => fig.BlendMode.multiply,
    BlendMode.linearBurn => fig.BlendMode.linearBurn,
    BlendMode.colorBurn => fig.BlendMode.colorBurn,
    BlendMode.lighten => fig.BlendMode.lighten,
    BlendMode.screen => fig.BlendMode.screen,
    BlendMode.linearDodge => fig.BlendMode.linearDodge,
    BlendMode.colorDodge => fig.BlendMode.colorDodge,
    BlendMode.overlay => fig.BlendMode.overlay,
    BlendMode.softLight => fig.BlendMode.softLight,
    BlendMode.hardLight => fig.BlendMode.hardLight,
    BlendMode.difference => fig.BlendMode.difference,
    BlendMode.exclusion => fig.BlendMode.exclusion,
    BlendMode.hue => fig.BlendMode.hue,
    BlendMode.saturation => fig.BlendMode.saturation,
    BlendMode.color => fig.BlendMode.color,
    BlendMode.luminosity => fig.BlendMode.luminosity,
  };
}

extension ConstraintTypeBuild on ConstraintType {
  fig.ConstraintType build() => switch (this) {
    ConstraintType.min => fig.ConstraintType.min,
    ConstraintType.center => fig.ConstraintType.center,
    ConstraintType.max => fig.ConstraintType.max,
    ConstraintType.stretch => fig.ConstraintType.stretch,
    ConstraintType.scale => fig.ConstraintType.scale,
  };
}

extension ScaleModeBuild on ScaleMode {
  fig.ScaleMode build() => switch (this) {
    ScaleMode.fill => fig.ScaleMode.fill,
    ScaleMode.fit => fig.ScaleMode.fit,
    ScaleMode.crop => fig.ScaleMode.crop,
    ScaleMode.tile => fig.ScaleMode.tile,
  };
}

extension GridTrackSizingModeBuild on GridTrackSizingMode {
  fig.GridTrackSizingMode build() => switch (this) {
    GridTrackSizingMode.auto => fig.GridTrackSizingMode.auto,
    GridTrackSizingMode.fixed => fig.GridTrackSizingMode.fixed,
  };
}

extension ChildSizeBuild on ChildSize {
  fig.ChildSize build() => fig.ChildSize(
    width: width,
    height: height,
    primaryAxisSizing: primaryAxisSizing?.build(),
    counterAxisSizing: counterAxisSizing?.build(),
  );
}

extension GridTrackBuild on GridTrack {
  fig.GridTrack build() =>
      fig.GridTrack(size: size, sizingMode: sizingMode.build());
}

extension FigmaLayoutPropertiesBuild on FigmaLayoutProperties {
  fig.FigmaLayoutProperties build() => switch (type) {
    FigmaLayoutPropertiesType.auto => fig.FigmaLayoutProperties.auto(
      referenceWidth: autoReferenceWidth!,
      referenceHeight: autoReferenceHeight!,
      axis: autoAxis!.build(),
      primaryAxisSizingMode: autoPrimaryAxisSizingMode!.build(),
      counterAxisSizingMode: autoCounterAxisSizingMode!.build(),
      primaryAxisAlignItems: autoPrimaryAxisAlignItems!.build(),
      counterAxisAlignItems: autoCounterAxisAlignItems!.build(),
      layoutWrap: autoLayoutWrap!.build(),
      padding: autoPadding!.build(),
      itemSpacing: autoItemSpacing!,
      counterAxisSpacing: autoCounterAxisSpacing!,
    ),
    FigmaLayoutPropertiesType.freeform => fig.FigmaLayoutProperties.freeform(
      referenceWidth: freeformReferenceWidth!,
      referenceHeight: freeformReferenceHeight!,
    ),
    FigmaLayoutPropertiesType.grid => fig.FigmaLayoutProperties.grid(
      columnCount: gridColumnCount!,
      rowCount: gridRowCount!,
      columns: gridColumns!.map((x) => x.build()).toList(),
      rows: gridRows!.map((x) => x.build()).toList(),
      columnGap: gridColumnGap!,
      rowGap: gridRowGap!,
      padding: gridPadding!.build(),
    ),
  };
}

extension FigmaFontStyleBuild on FigmaFontStyle {
  fig.FigmaFontStyle build() => switch (this) {
    FigmaFontStyle.regular => fig.FigmaFontStyle.regular,
    FigmaFontStyle.italic => fig.FigmaFontStyle.italic,
  };
}

extension LetterSpacingUnitBuild on LetterSpacingUnit {
  fig.LetterSpacingUnit build() => switch (this) {
    LetterSpacingUnit.pixels => fig.LetterSpacingUnit.pixels,
    LetterSpacingUnit.percent => fig.LetterSpacingUnit.percent,
  };
}

extension FontNameBuild on FontName {
  fig.FontName build() => fig.FontName(
    family: family,
    style: style.build(),
    weight: weight.build(),
  );
}

extension LetterSpacingBuild on LetterSpacing {
  fig.LetterSpacing build() =>
      fig.LetterSpacing(value: value, unit: unit.build());
}

extension FigmaEffectBuild on FigmaEffect {
  fig.FigmaEffect build() => switch (type) {
    FigmaEffectType.dropShadow => fig.FigmaEffect.dropShadow(
      color: color!.build(),
      offset: offset!.build(),
      radius: radius,
      spread: spread!,
      visible: visible,
      blendMode: blendMode!.build(),
      showShadowBehindNode: showShadowBehindNode!,
    ),
    FigmaEffectType.layerBlur => fig.FigmaEffect.layerBlur(
      radius: radius,
      visible: visible,
    ),
    FigmaEffectType.backgroundBlur => fig.FigmaEffect.backgroundBlur(
      radius: radius,
      visible: visible,
    ),
  };
}

extension WidgetBuild on Widget {
  flu.Widget build() {
    return switch (this) {
      FigmaLayout(:final layout, :final children) => fig.FigmaLayout(
        layout: layout.build(),
        children: children.map((x) => x.build()).toList(),
      ),
      FigmaFrame(
        :final layout,
        :final size,
        :final decoration,
        :final effects,
        :final opacity,
        :final visible,
        :final blendMode,
        :final shape,
        :final stroke,
        :final clipContent,
        :final children,
      ) =>
        fig.FigmaFrame(
          layout: layout.build(),
          size: size?.build(),
          decoration: decoration?.build(),
          effects: effects.map((x) => x.build()).toList(),
          opacity: opacity,
          visible: visible,
          blendMode: blendMode.build(),
          shape: shape.build(),
          stroke: stroke.build(),
          clipContent: clipContent,
          children: children.map((x) => x.build()).toList(),
        ),
      FigmaText(:final text?, :final style, :final fills, :final strokes) =>
        fig.FigmaText(
          text,
          style: style?.build(),
          fills: fills.map((x) => x.build()).toList(),
          strokes: strokes.map((x) => x.build()).toList(),
        ),
      FigmaText(
        :final characters?,
        :final style,
        :final fills,
        :final strokes,
      ) =>
        fig.FigmaText.rich(
          characters: characters.map((x) => x.build()).toList(),
          style: style?.build(),
          fills: fills.map((x) => x.build()).toList(),
          strokes: strokes.map((x) => x.build()).toList(),
        ),
      FigmaDecorated(
        :final decoration,
        :final shape,
        :final stroke,
        :final child,
      ) =>
        fig.FigmaDecorated(
          decoration: decoration.build(),
          shape: shape.build(),
          stroke: stroke.build(),
          child: child.build(),
        ),
      FigmaTransformed(:final transform, :final child) => fig.FigmaTransformed(
        transform: transform.build(),
        child: child.build(),
      ),
      FigmaClip(:final shape, :final child) => fig.FigmaClip(
        shape: shape.build(),
        child: child.build(),
      ),
      FigmaFiltered(:final effects, :final shape, :final child) =>
        fig.FigmaFiltered(
          effects: effects.map((x) => x.build()).toList(),
          shape: shape.build(),
          child: child.build(),
        ),
      _ => throw Exception('Unsupported type $this'),
    };
  }
}
