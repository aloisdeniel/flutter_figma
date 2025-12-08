import 'package:eval_annotation/eval_annotation.dart';
import 'package:flutter/widgets.dart' as flu;
import 'package:flutter_figma/widgets.dart' as fig;

// ============================================================================
// Geometry types
// ============================================================================

@Bind()
class FigmaTransform {
  const FigmaTransform(
    this.m00,
    this.m01,
    this.m02,
    this.m10,
    this.m11,
    this.m12,
  );

  final double m00;
  final double m01;
  final double m02;
  final double m10;
  final double m11;
  final double m12;

  static const FigmaTransform identity = FigmaTransform(1, 0, 0, 0, 1, 0);
}

// ============================================================================
// Shape types
// ============================================================================

@Bind()
class FigmaRectangleShape {
  const FigmaRectangleShape({
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.smoothing = 0.0,
  });

  const FigmaRectangleShape.all(double radius, {this.smoothing = 0.0})
    : topLeftRadius = radius,
      topRightRadius = radius,
      bottomLeftRadius = radius,
      bottomRightRadius = radius;

  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double smoothing;
}

// ============================================================================
// Stroke types
// ============================================================================

@Bind()
enum FigmaStrokeAlignment { inside, center, outside }

@Bind()
enum FigmaStrokeJoin {
  miter,
  bevel,
  round;

  fig.FigmaStrokeJoin build() => switch (this) {
    miter => fig.FigmaStrokeJoin.miter,
    bevel => fig.FigmaStrokeJoin.bevel,
    round => fig.FigmaStrokeJoin.round,
  };
}

@Bind()
class FigmaStroke {
  const FigmaStroke({
    this.topWeight = 0.0,
    this.bottomWeight = 0.0,
    this.leftWeight = 0.0,
    this.rightWeight = 0.0,
    this.join = FigmaStrokeJoin.miter,
    this.alignment = FigmaStrokeAlignment.center,
  });

  const FigmaStroke.uniform({
    double weight = 0.0,
    this.join = FigmaStrokeJoin.miter,
    this.alignment = FigmaStrokeAlignment.center,
  }) : topWeight = weight,
       bottomWeight = weight,
       leftWeight = weight,
       rightWeight = weight;

  final double topWeight;
  final double bottomWeight;
  final double rightWeight;
  final double leftWeight;
  final FigmaStrokeJoin join;
  final FigmaStrokeAlignment alignment;

  fig.FigmaStroke build() => fig.FigmaStroke(
    topWeight: topWeight,
    bottomWeight: bottomWeight,
    leftWeight: leftWeight,
    rightWeight: rightWeight,
    join: join.build(),
    alignment: alignment.build(),
  );
}

// ============================================================================
// Paint types
// ============================================================================

enum _FigmaPaint {
  solid,
  linearGradient,
  radialGradient,
  angularGradient,
  diamondGradient,
}

@Bind()
class FigmaPaint {
  const FigmaPaint.solid({
    required Color color,
    bool visible = true,
    double opacity = 1.0,
    BlendMode blendMode = BlendMode.normal,
  }) : _type = _FigmaPaint.solid,
       _solidColor = color,
       _visible = visible,
       _opacity = opacity,
       _blendMode = blendMode,
       _gradientStops = null,
       _gradientTransform = null;

  const FigmaPaint.linearGradient({
    required List<ColorStop> gradientStops,
    FigmaTransform gradientTransform = FigmaTransform.identity,
    bool visible = true,
    double opacity = 1.0,
    BlendMode blendMode = BlendMode.normal,
  }) : _type = _FigmaPaint.linearGradient,
       _gradientStops = gradientStops,
       _gradientTransform = gradientTransform,
       _visible = visible,
       _opacity = opacity,
       _blendMode = blendMode,
       _solidColor = null;

  const FigmaPaint.radialGradient({
    required List<ColorStop> gradientStops,
    FigmaTransform gradientTransform = FigmaTransform.identity,
    bool visible = true,
    double opacity = 1.0,
    BlendMode blendMode = BlendMode.normal,
  }) : _type = _FigmaPaint.radialGradient,
       _gradientStops = gradientStops,
       _gradientTransform = gradientTransform,
       _visible = visible,
       _opacity = opacity,
       _blendMode = blendMode,
       _solidColor = null;

  const FigmaPaint.angularGradient({
    required List<ColorStop> gradientStops,
    FigmaTransform gradientTransform = FigmaTransform.identity,
    bool visible = true,
    double opacity = 1.0,
    BlendMode blendMode = BlendMode.normal,
  }) : _type = _FigmaPaint.angularGradient,
       _gradientStops = gradientStops,
       _gradientTransform = gradientTransform,
       _visible = visible,
       _opacity = opacity,
       _blendMode = blendMode,
       _solidColor = null;

  const FigmaPaint.diamondGradient({
    required List<ColorStop> gradientStops,
    required FigmaTransform gradientTransform,
    bool visible = true,
    double opacity = 1.0,
    BlendMode blendMode = BlendMode.normal,
  }) : _type = _FigmaPaint.diamondGradient,
       _gradientStops = gradientStops,
       _gradientTransform = gradientTransform,
       _visible = visible,
       _opacity = opacity,
       _blendMode = blendMode,
       _solidColor = null;

  final _FigmaPaint _type;
  final Color? _solidColor;
  final List<ColorStop>? _gradientStops;
  final FigmaTransform? _gradientTransform;
  final bool _visible;
  final double _opacity;
  final BlendMode _blendMode;

  fig.FigmaPaint build() => switch (_type) {
    _FigmaPaint.solid => fig.SolidPaint(
      color: _solidColor!.build(),
      visible: _visible,
      opacity: _opacity,
      blendMode: _blendMode.build(),
    ),
    _FigmaPaint.linearGradient => fig.LinearGradientPaint(
      gradientStops: _gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: _gradientTransform!.build(),
      visible: _visible,
      opacity: _opacity,
      blendMode: _blendMode.build(),
    ),
    _FigmaPaint.radialGradient => fig.RadialGradientPaint(
      gradientStops: _gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: _gradientTransform!.build(),
      visible: _visible,
      opacity: _opacity,
      blendMode: _blendMode.build(),
    ),
    _FigmaPaint.angularGradient => fig.AngularGradientPaint(
      gradientStops: _gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: _gradientTransform!.build(),
      visible: _visible,
      opacity: _opacity,
      blendMode: _blendMode.build(),
    ),
    _FigmaPaint.diamondGradient => fig.DiamondGradientPaint(
      gradientStops: _gradientStops!.map((x) => x.build()).toList(),
      gradientTransform: _gradientTransform!.build(),
      visible: _visible,
      opacity: _opacity,
      blendMode: _blendMode.build(),
    ),
  };
}

@Bind()
class ColorStop {
  const ColorStop({required this.position, required this.color});

  final double position;
  final Color color;

  fig.ColorStop build() =>
      fig.ColorStop(position: position, color: color.build());
}

@Bind()
class FigmaDecoration {
  const FigmaDecoration({this.fills = const [], this.strokes = const []});

  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;

  fig.FigmaDecoration build() => fig.FigmaDecoration(
    fills: fills.map((x) => x.build()).toList(),
    strokes: strokes.map((x) => x.build()).toList(),
  );
}

@Bind()
abstract class Widget {
  const Widget();
}

@Bind()
enum Axis {
  vertical,
  horizontal;

  flu.Axis build() => switch (this) {
    vertical => flu.Axis.vertical,
    horizontal => flu.Axis.horizontal,
  };
}

@Bind()
enum OverflowDirection {
  none,
  horizontal,
  vertical,
  both;

  fig.OverflowDirection build() => switch (this) {
    none => fig.OverflowDirection.none,
    horizontal => fig.OverflowDirection.horizontal,
    vertical => fig.OverflowDirection.vertical,
    both => fig.OverflowDirection.both,
  };
}

@Bind()
enum LayoutMode {
  freeform,
  horizontal,
  vertical,
  grid;

  fig.LayoutMode build() => switch (this) {
    freeform => fig.LayoutMode.freeform,
    horizontal => fig.LayoutMode.horizontal,
    vertical => fig.LayoutMode.vertical,
    grid => fig.LayoutMode.grid,
  };
}

@Bind()
enum PrimaryAxisSizingMode {
  fixed,
  auto;

  fig.PrimaryAxisSizingMode build() => switch (this) {
    fixed => fig.PrimaryAxisSizingMode.fixed,
    auto => fig.PrimaryAxisSizingMode.auto,
  };
}

@Bind()
enum CounterAxisSizingMode {
  fixed,
  auto;

  fig.CounterAxisSizingMode build() => switch (this) {
    fixed => fig.CounterAxisSizingMode.fixed,
    auto => fig.CounterAxisSizingMode.auto,
  };
}

@Bind()
enum LayoutWrap {
  noWrap,
  wrap;

  fig.LayoutWrap build() => switch (this) {
    noWrap => fig.LayoutWrap.noWrap,
    wrap => fig.LayoutWrap.wrap,
  };
}

@Bind()
enum LayoutAlign {
  min,
  center,
  max,
  stretch,
  spaceBetween;

  fig.LayoutAlign build() => switch (this) {
    min => fig.LayoutAlign.min,
    center => fig.LayoutAlign.center,
    max => fig.LayoutAlign.max,
    stretch => fig.LayoutAlign.stretch,
    spaceBetween => fig.LayoutAlign.spaceBetween,
  };
}

@Bind()
enum ChildSizingMode {
  fixed,
  hug;

  fig.ChildSizingMode build() => switch (this) {
    fixed => fig.ChildSizingMode.fixed,
    hug => fig.ChildSizingMode.hug,
  };
}

@Bind()
class EdgeInsets {
  const EdgeInsets.only({
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
  });
  final double top;
  final double bottom;
  final double left;
  final double right;

  static const EdgeInsets zero = EdgeInsets.only(
    top: 0,
    bottom: 0,
    right: 0,
    left: 0,
  );

  flu.EdgeInsets build() =>
      flu.EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
}

enum _FigmaLayoutProperties { auto, freeform, grid }

@Bind()
class FigmaLayoutProperties {
  const FigmaLayoutProperties.auto({
    required double referenceWidth,
    required double referenceHeight,
    Axis axis = Axis.horizontal,
    PrimaryAxisSizingMode primaryAxisSizingMode = PrimaryAxisSizingMode.auto,
    CounterAxisSizingMode counterAxisSizingMode = CounterAxisSizingMode.fixed,
    LayoutAlign primaryAxisAlignItems = LayoutAlign.min,
    LayoutAlign counterAxisAlignItems = LayoutAlign.min,
    LayoutWrap layoutWrap = LayoutWrap.noWrap,
    EdgeInsets padding = EdgeInsets.zero,
    double itemSpacing = 0,
    double counterAxisSpacing = 0,
  }) : _type = _FigmaLayoutProperties.auto,
       _autoReferenceWidth = referenceWidth,
       _autoReferenceHeight = referenceHeight,
       _autoAxis = axis,
       _autoPrimaryAxisSizingMode = primaryAxisSizingMode,
       _autoCounterAxisSizingMode = counterAxisSizingMode,
       _autoPrimaryAxisAlignItems = primaryAxisAlignItems,
       _autoCounterAxisAlignItems = counterAxisAlignItems,
       _autoLayoutWrap = layoutWrap,
       _autoPadding = padding,
       _autoItemSpacing = itemSpacing,
       _autoCounterAxisSpacing = counterAxisSpacing,
       _freeformReferenceWidth = null,
       _freeformReferenceHeight = null,
       _gridColumnCount = null,
       _gridRowCount = null,
       _gridColumns = null,
       _gridRows = null,
       _gridColumnGap = null,
       _gridRowGap = null,
       _gridPadding = null;

  const FigmaLayoutProperties.freeform({
    required double referenceWidth,
    required double referenceHeight,
  }) : _type = _FigmaLayoutProperties.freeform,
       _freeformReferenceWidth = referenceWidth,
       _freeformReferenceHeight = referenceHeight,
       _autoReferenceWidth = null,
       _autoReferenceHeight = null,
       _autoAxis = null,
       _autoPrimaryAxisSizingMode = null,
       _autoCounterAxisSizingMode = null,
       _autoPrimaryAxisAlignItems = null,
       _autoCounterAxisAlignItems = null,
       _autoLayoutWrap = null,
       _autoPadding = null,
       _autoItemSpacing = null,
       _autoCounterAxisSpacing = null,
       _gridColumnCount = null,
       _gridRowCount = null,
       _gridColumns = null,
       _gridRows = null,
       _gridColumnGap = null,
       _gridRowGap = null,
       _gridPadding = null;

  const FigmaLayoutProperties.grid({
    int columnCount = 1,
    int rowCount = 1,
    List<GridTrack> columns = const [],
    List<GridTrack> rows = const [],
    double columnGap = 0,
    double rowGap = 0,
    EdgeInsets padding = EdgeInsets.zero,
  }) : _type = _FigmaLayoutProperties.grid,
       _gridColumnCount = columnCount,
       _gridRowCount = rowCount,
       _gridColumns = columns,
       _gridRows = rows,
       _gridColumnGap = columnGap,
       _gridRowGap = rowGap,
       _gridPadding = padding,
       _autoReferenceWidth = null,
       _autoReferenceHeight = null,
       _autoAxis = null,
       _autoPrimaryAxisSizingMode = null,
       _autoCounterAxisSizingMode = null,
       _autoPrimaryAxisAlignItems = null,
       _autoCounterAxisAlignItems = null,
       _autoLayoutWrap = null,
       _autoPadding = null,
       _autoItemSpacing = null,
       _autoCounterAxisSpacing = null,
       _freeformReferenceWidth = null,
       _freeformReferenceHeight = null;

  final _FigmaLayoutProperties _type;

  // Auto layout properties
  final double? _autoReferenceWidth;
  final double? _autoReferenceHeight;
  final Axis? _autoAxis;
  final PrimaryAxisSizingMode? _autoPrimaryAxisSizingMode;
  final CounterAxisSizingMode? _autoCounterAxisSizingMode;
  final LayoutAlign? _autoPrimaryAxisAlignItems;
  final LayoutAlign? _autoCounterAxisAlignItems;
  final LayoutWrap? _autoLayoutWrap;
  final EdgeInsets? _autoPadding;
  final double? _autoItemSpacing;
  final double? _autoCounterAxisSpacing;

  // Freeform layout properties
  final double? _freeformReferenceWidth;
  final double? _freeformReferenceHeight;

  // Grid layout properties
  final int? _gridColumnCount;
  final int? _gridRowCount;
  final List<GridTrack>? _gridColumns;
  final List<GridTrack>? _gridRows;
  final double? _gridColumnGap;
  final double? _gridRowGap;
  final EdgeInsets? _gridPadding;

  fig.FigmaLayoutProperties build() => switch (_type) {
    _FigmaLayoutProperties.auto => fig.FigmaLayoutProperties.auto(
      referenceWidth: _autoReferenceWidth!,
      referenceHeight: _autoReferenceHeight!,
      axis: _autoAxis!.build(),
      primaryAxisSizingMode: _autoPrimaryAxisSizingMode!.build(),
      counterAxisSizingMode: _autoCounterAxisSizingMode!.build(),
      primaryAxisAlignItems: _autoPrimaryAxisAlignItems!.build(),
      counterAxisAlignItems: _autoCounterAxisAlignItems!.build(),
      layoutWrap: _autoLayoutWrap!.build(),
      padding: _autoPadding!.build(),
      itemSpacing: _autoItemSpacing!,
      counterAxisSpacing: _autoCounterAxisSpacing!,
    ),
    _FigmaLayoutProperties.freeform => fig.FigmaLayoutProperties.freeform(
      referenceWidth: _freeformReferenceWidth!,
      referenceHeight: _freeformReferenceHeight!,
    ),
    _FigmaLayoutProperties.grid => fig.FigmaLayoutProperties.grid(
      columnCount: _gridColumnCount!,
      rowCount: _gridRowCount!,
      columns: _gridColumns!.map((x) => x.build()).toList(),
      rows: _gridRows!.map((x) => x.build()).toList(),
      columnGap: _gridColumnGap!,
      rowGap: _gridRowGap!,
      padding: _gridPadding!.build(),
    ),
  };
}

@Bind()
class FigmaLayout extends Widget {
  const FigmaLayout({required this.layout, required this.children});
  final FigmaLayoutProperties layout;
  final List<Widget> children;
  @override
  flu.Widget build() {
    return fig.FigmaLayout(
      layout: layout.build(),
      children: children.map((x) => x.build()).toList(),
    );
  }
}

// ============================================================================
// Basic types
// ============================================================================

@Bind()
class Color {
  const Color.from({
    required this.alpha,
    required this.red,
    required this.green,
    required this.blue,
  });

  final double alpha;
  final double red;
  final double green;
  final double blue;

  flu.Color build() =>
      flu.Color.from(alpha: alpha, red: red, green: green, blue: blue);
}

@Bind()
class Offset {
  const Offset(this.dx, this.dy);
  final double dx;
  final double dy;

  flu.Offset build() => flu.Offset(dx, dy);
}

@Bind()
enum FontWeight {
  w100,
  w200,
  w300,
  w400,
  w500,
  w600,
  w700,
  w800,
  w900;

  flu.FontWeight build() => switch (this) {
    w100 => flu.FontWeight.w100,
    w200 => flu.FontWeight.w200,
    w300 => flu.FontWeight.w300,
    w400 => flu.FontWeight.w400,
    w500 => flu.FontWeight.w500,
    w600 => flu.FontWeight.w600,
    w700 => flu.FontWeight.w700,
    w800 => flu.FontWeight.w800,
    w900 => flu.FontWeight.w900,
  };

  static FontWeight get normal => w400;
  static FontWeight get bold => w700;
}

// ============================================================================
// Enums
// ============================================================================

@Bind()
enum BlendMode {
  passThrough,
  normal,
  darken,
  multiply,
  linearBurn,
  colorBurn,
  lighten,
  screen,
  linearDodge,
  colorDodge,
  overlay,
  softLight,
  hardLight,
  difference,
  exclusion,
  hue,
  saturation,
  color,
  luminosity;

  fig.BlendMode build() => switch (this) {
    passThrough => fig.BlendMode.passThrough,
    normal => fig.BlendMode.normal,
    darken => fig.BlendMode.darken,
    multiply => fig.BlendMode.multiply,
    linearBurn => fig.BlendMode.linearBurn,
    colorBurn => fig.BlendMode.colorBurn,
    lighten => fig.BlendMode.lighten,
    screen => fig.BlendMode.screen,
    linearDodge => fig.BlendMode.linearDodge,
    colorDodge => fig.BlendMode.colorDodge,
    overlay => fig.BlendMode.overlay,
    softLight => fig.BlendMode.softLight,
    hardLight => fig.BlendMode.hardLight,
    difference => fig.BlendMode.difference,
    exclusion => fig.BlendMode.exclusion,
    hue => fig.BlendMode.hue,
    saturation => fig.BlendMode.saturation,
    color => fig.BlendMode.color,
    luminosity => fig.BlendMode.luminosity,
  };
}

@Bind()
enum ConstraintType {
  min,
  center,
  max,
  stretch,
  scale;

  fig.ConstraintType build() => switch (this) {
    min => fig.ConstraintType.min,
    center => fig.ConstraintType.center,
    max => fig.ConstraintType.max,
    stretch => fig.ConstraintType.stretch,
    scale => fig.ConstraintType.scale,
  };
}

@Bind()
enum ScaleMode {
  fill,
  fit,
  crop,
  tile;

  fig.ScaleMode build() => switch (this) {
    fill => fig.ScaleMode.fill,
    fit => fig.ScaleMode.fit,
    crop => fig.ScaleMode.crop,
    tile => fig.ScaleMode.tile,
  };
}

@Bind()
enum GridTrackSizingMode {
  auto,
  fixed;

  fig.GridTrackSizingMode build() => switch (this) {
    auto => fig.GridTrackSizingMode.auto,
    fixed => fig.GridTrackSizingMode.fixed,
  };
}

// ============================================================================
// Layout types
// ============================================================================

@Bind()
class ChildSize {
  const ChildSize({
    required this.width,
    required this.height,
    this.primaryAxisSizing,
    this.counterAxisSizing,
  });

  final double width;
  final double height;
  final ChildSizingMode? primaryAxisSizing;
  final ChildSizingMode? counterAxisSizing;

  fig.ChildSize build() => fig.ChildSize(
    width: width,
    height: height,
    primaryAxisSizing: primaryAxisSizing?.build(),
    counterAxisSizing: counterAxisSizing?.build(),
  );
}

@Bind()
class GridTrack {
  const GridTrack({this.size, this.sizingMode = GridTrackSizingMode.auto});

  final double? size;
  final GridTrackSizingMode sizingMode;

  fig.GridTrack build() =>
      fig.GridTrack(size: size, sizingMode: sizingMode.build());
}

// ============================================================================
// Effect types
// ============================================================================

enum _FigmaEffect { dropShadow, layerBlur, backgroundBlur }

@Bind()
class FigmaEffect {
  const FigmaEffect.dropShadow({
    required Color color,
    required Offset offset,
    required double radius,
    double spread = 0,
    bool visible = true,
    BlendMode blendMode = BlendMode.normal,
    bool showShadowBehindNode = false,
  }) : _type = _FigmaEffect.dropShadow,
       _color = color,
       _offset = offset,
       _radius = radius,
       _spread = spread,
       _visible = visible,
       _blendMode = blendMode,
       _showShadowBehindNode = showShadowBehindNode;

  const FigmaEffect.layerBlur({required double radius, bool visible = true})
    : _type = _FigmaEffect.layerBlur,
      _radius = radius,
      _visible = visible,
      _color = null,
      _offset = null,
      _spread = null,
      _blendMode = null,
      _showShadowBehindNode = null;

  const FigmaEffect.backgroundBlur({
    required double radius,
    bool visible = true,
  }) : _type = _FigmaEffect.backgroundBlur,
       _radius = radius,
       _visible = visible,
       _color = null,
       _offset = null,
       _spread = null,
       _blendMode = null,
       _showShadowBehindNode = null;

  final _FigmaEffect _type;
  final Color? _color;
  final Offset? _offset;
  final double _radius;
  final double? _spread;
  final bool _visible;
  final BlendMode? _blendMode;
  final bool? _showShadowBehindNode;

  fig.FigmaEffect build() => switch (_type) {
    _FigmaEffect.dropShadow => fig.FigmaEffect.dropShadow(
      color: _color!.build(),
      offset: _offset!.build(),
      radius: _radius,
      spread: _spread!,
      visible: _visible,
      blendMode: _blendMode!.build(),
      showShadowBehindNode: _showShadowBehindNode!,
    ),
    _FigmaEffect.layerBlur => fig.FigmaEffect.layerBlur(
      radius: _radius,
      visible: _visible,
    ),
    _FigmaEffect.backgroundBlur => fig.FigmaEffect.backgroundBlur(
      radius: _radius,
      visible: _visible,
    ),
  };
}

// ============================================================================
// Text types
// ============================================================================

@Bind()
enum FigmaFontStyle {
  regular,
  italic;

  fig.FigmaFontStyle build() => switch (this) {
    regular => fig.FigmaFontStyle.regular,
    italic => fig.FigmaFontStyle.italic,
  };
}

@Bind()
enum LetterSpacingUnit {
  pixels,
  percent;

  fig.LetterSpacingUnit build() => switch (this) {
    pixels => fig.LetterSpacingUnit.pixels,
    percent => fig.LetterSpacingUnit.percent,
  };
}

@Bind()
class FontName {
  const FontName({
    required this.family,
    this.style = FigmaFontStyle.regular,
    this.weight = FontWeight.w400,
  });

  final String family;
  final FigmaFontStyle style;
  final FontWeight weight;

  fig.FontName build() => fig.FontName(
    family: family,
    style: style.build(),
    weight: weight.build(),
  );
}

@Bind()
class LetterSpacing {
  const LetterSpacing({required this.value, required this.unit});

  final double value;
  final LetterSpacingUnit unit;

  fig.LetterSpacing build() =>
      fig.LetterSpacing(value: value, unit: unit.build());
}

enum LineHeightType { pixels, percent, auto }

@Bind()
class LineHeight {
  const LineHeight.pixels(this.value) : type = LineHeightType.pixels;
  const LineHeight.percent(this.value) : type = LineHeightType.percent;
  const LineHeight.auto() : type = LineHeightType.auto, value = null;

  final LineHeightType type;
  final double? value;
}

@Bind()
class FigmaTextStyle {
  const FigmaTextStyle({
    required this.fontName,
    required this.fontSize,
    this.letterSpacing = const LetterSpacing(
      value: 1,
      unit: LetterSpacingUnit.percent,
    ),
    this.lineHeight = const LineHeight.auto(),
  });

  final FontName fontName;
  final double fontSize;
  final LetterSpacing letterSpacing;
  final LineHeight lineHeight;
}

@Bind()
class FigmaTextSpan {
  const FigmaTextSpan({required this.text, this.style});

  final String text;
  final FigmaTextStyle? style;
}

// ============================================================================
// Widget types
// ============================================================================

@Bind()
class FigmaFrame extends Widget {
  const FigmaFrame({
    required this.layout,
    this.size,
    this.decoration,
    this.effects = const [],
    this.opacity = 1.0,
    this.visible = true,
    this.blendMode = BlendMode.passThrough,
    this.shape = const FigmaRectangleShape(),
    this.stroke = const FigmaStroke.uniform(weight: 1),
    this.clipContent = true,
    this.children = const [],
  });

  final ChildSize? size;
  final FigmaLayoutProperties layout;
  final FigmaRectangleShape shape;
  final FigmaStroke stroke;
  final FigmaDecoration? decoration;
  final List<FigmaEffect> effects;
  final double opacity;
  final bool visible;
  final BlendMode blendMode;
  final bool clipContent;
  final List<Widget> children;

  @override
  flu.Widget build() {
    return fig.FigmaFrame(
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
    );
  }
}

@Bind()
class FigmaText extends Widget {
  const FigmaText(
    this.text, {
    this.style,
    this.fills = const [],
    this.strokes = const [],
  }) : characters = null;

  const FigmaText.rich({
    required List<FigmaTextSpan> this.characters,
    this.style,
    this.fills = const [],
    this.strokes = const [],
  }) : text = null;

  final FigmaTextStyle? style;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final String? text;
  final List<FigmaTextSpan>? characters;

  @override
  flu.Widget build() {
    return characters != null
        ? fig.FigmaText.rich(
            characters: characters!.map((x) => x.build()).toList(),
            style: style?.build(),
            fills: fills.map((x) => x.build()).toList(),
            strokes: strokes.map((x) => x.build()).toList(),
          )
        : fig.FigmaText(
            text!,
            style: style?.build(),
            fills: fills.map((x) => x.build()).toList(),
            strokes: strokes.map((x) => x.build()).toList(),
          );
  }
}

@Bind()
class FigmaDecorated extends Widget {
  const FigmaDecorated({
    required this.decoration,
    this.shape = const FigmaRectangleShape(),
    this.stroke = const FigmaStroke.uniform(weight: 1),
    required this.child,
  });

  final FigmaStroke stroke;
  final FigmaRectangleShape shape;
  final FigmaDecoration decoration;
  final Widget child;

  @override
  flu.Widget build() {
    return fig.FigmaDecorated(
      decoration: decoration.build(),
      shape: shape.build(),
      stroke: stroke.build(),
      child: child.build(),
    );
  }
}

@Bind()
class FigmaTransformed extends Widget {
  const FigmaTransformed({required this.transform, required this.child});

  final FigmaTransform transform;
  final Widget child;

  @override
  flu.Widget build() {
    return fig.FigmaTransformed(
      transform: transform.build(),
      child: child.build(),
    );
  }
}

@Bind()
class FigmaClip extends Widget {
  const FigmaClip({required this.shape, required this.child});

  final FigmaRectangleShape shape;
  final Widget child;

  @override
  flu.Widget build() {
    return fig.FigmaClip(shape: shape.build(), child: child.build());
  }
}

@Bind()
class FigmaFiltered extends Widget {
  const FigmaFiltered({
    required this.effects,
    required this.shape,
    required this.child,
  });

  final List<FigmaEffect> effects;
  final FigmaRectangleShape shape;
  final Widget child;

  @override
  flu.Widget build() {
    return fig.FigmaFiltered(
      effects: effects.map((x) => x.build()).toList(),
      shape: shape.build(),
      child: child.build(),
    );
  }
}
