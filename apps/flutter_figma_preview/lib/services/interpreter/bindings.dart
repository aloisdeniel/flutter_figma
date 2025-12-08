import 'package:eval_annotation/eval_annotation.dart';

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
enum FigmaStrokeJoin { miter, bevel, round }

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
}

// ============================================================================
// Paint types
// ============================================================================

enum FigmaPaintType {
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
    this.visible = true,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  }) : type = FigmaPaintType.solid,
       solidColor = color,
       gradientStops = null,
       gradientTransform = null;

  const FigmaPaint.linearGradient({
    required List<ColorStop> this.gradientStops,
    FigmaTransform this.gradientTransform = FigmaTransform.identity,
    this.visible = true,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  }) : type = FigmaPaintType.linearGradient,
       solidColor = null;

  const FigmaPaint.radialGradient({
    required List<ColorStop> this.gradientStops,
    FigmaTransform this.gradientTransform = FigmaTransform.identity,
    this.visible = true,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  }) : type = FigmaPaintType.radialGradient,
       solidColor = null;

  const FigmaPaint.angularGradient({
    required List<ColorStop> this.gradientStops,
    FigmaTransform this.gradientTransform = FigmaTransform.identity,
    this.visible = true,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  }) : type = FigmaPaintType.angularGradient,
       solidColor = null;

  const FigmaPaint.diamondGradient({
    required List<ColorStop> this.gradientStops,
    required FigmaTransform this.gradientTransform,
    this.visible = true,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  }) : type = FigmaPaintType.diamondGradient,
       solidColor = null;

  final FigmaPaintType type;
  final Color? solidColor;
  final List<ColorStop>? gradientStops;
  final FigmaTransform? gradientTransform;
  final bool visible;
  final double opacity;
  final BlendMode blendMode;
}

@Bind()
class ColorStop {
  const ColorStop({required this.position, required this.color});

  final double position;
  final Color color;
}

@Bind()
class FigmaDecoration {
  const FigmaDecoration({this.fills = const [], this.strokes = const []});

  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
}

@Bind()
abstract class Widget {
  const Widget();
}

@Bind()
enum Axis { vertical, horizontal }

@Bind()
enum OverflowDirection { none, horizontal, vertical, both }

@Bind()
enum LayoutMode { freeform, horizontal, vertical, grid }

@Bind()
enum PrimaryAxisSizingMode { fixed, auto }

@Bind()
enum CounterAxisSizingMode { fixed, auto }

@Bind()
enum LayoutWrap { noWrap, wrap }

@Bind()
enum LayoutAlign { min, center, max, stretch, spaceBetween }

@Bind()
enum ChildSizingMode { fixed, hug }

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
}

enum FigmaLayoutPropertiesType { auto, freeform, grid }

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
  }) : type = FigmaLayoutPropertiesType.auto,
       autoReferenceWidth = referenceWidth,
       autoReferenceHeight = referenceHeight,
       autoAxis = axis,
       autoPrimaryAxisSizingMode = primaryAxisSizingMode,
       autoCounterAxisSizingMode = counterAxisSizingMode,
       autoPrimaryAxisAlignItems = primaryAxisAlignItems,
       autoCounterAxisAlignItems = counterAxisAlignItems,
       autoLayoutWrap = layoutWrap,
       autoPadding = padding,
       autoItemSpacing = itemSpacing,
       autoCounterAxisSpacing = counterAxisSpacing,
       freeformReferenceWidth = null,
       freeformReferenceHeight = null,
       gridColumnCount = null,
       gridRowCount = null,
       gridColumns = null,
       gridRows = null,
       gridColumnGap = null,
       gridRowGap = null,
       gridPadding = null;

  const FigmaLayoutProperties.freeform({
    required double referenceWidth,
    required double referenceHeight,
  }) : type = FigmaLayoutPropertiesType.freeform,
       freeformReferenceWidth = referenceWidth,
       freeformReferenceHeight = referenceHeight,
       autoReferenceWidth = null,
       autoReferenceHeight = null,
       autoAxis = null,
       autoPrimaryAxisSizingMode = null,
       autoCounterAxisSizingMode = null,
       autoPrimaryAxisAlignItems = null,
       autoCounterAxisAlignItems = null,
       autoLayoutWrap = null,
       autoPadding = null,
       autoItemSpacing = null,
       autoCounterAxisSpacing = null,
       gridColumnCount = null,
       gridRowCount = null,
       gridColumns = null,
       gridRows = null,
       gridColumnGap = null,
       gridRowGap = null,
       gridPadding = null;

  const FigmaLayoutProperties.grid({
    int columnCount = 1,
    int rowCount = 1,
    List<GridTrack> columns = const [],
    List<GridTrack> rows = const [],
    double columnGap = 0,
    double rowGap = 0,
    EdgeInsets padding = EdgeInsets.zero,
  }) : type = FigmaLayoutPropertiesType.grid,
       gridColumnCount = columnCount,
       gridRowCount = rowCount,
       gridColumns = columns,
       gridRows = rows,
       gridColumnGap = columnGap,
       gridRowGap = rowGap,
       gridPadding = padding,
       autoReferenceWidth = null,
       autoReferenceHeight = null,
       autoAxis = null,
       autoPrimaryAxisSizingMode = null,
       autoCounterAxisSizingMode = null,
       autoPrimaryAxisAlignItems = null,
       autoCounterAxisAlignItems = null,
       autoLayoutWrap = null,
       autoPadding = null,
       autoItemSpacing = null,
       autoCounterAxisSpacing = null,
       freeformReferenceWidth = null,
       freeformReferenceHeight = null;

  final FigmaLayoutPropertiesType type;

  // Auto layout properties
  final double? autoReferenceWidth;
  final double? autoReferenceHeight;
  final Axis? autoAxis;
  final PrimaryAxisSizingMode? autoPrimaryAxisSizingMode;
  final CounterAxisSizingMode? autoCounterAxisSizingMode;
  final LayoutAlign? autoPrimaryAxisAlignItems;
  final LayoutAlign? autoCounterAxisAlignItems;
  final LayoutWrap? autoLayoutWrap;
  final EdgeInsets? autoPadding;
  final double? autoItemSpacing;
  final double? autoCounterAxisSpacing;

  // Freeform layout properties
  final double? freeformReferenceWidth;
  final double? freeformReferenceHeight;

  // Grid layout properties
  final int? gridColumnCount;
  final int? gridRowCount;
  final List<GridTrack>? gridColumns;
  final List<GridTrack>? gridRows;
  final double? gridColumnGap;
  final double? gridRowGap;
  final EdgeInsets? gridPadding;
}

@Bind()
class FigmaLayout extends Widget {
  const FigmaLayout({required this.layout, required this.children});
  final FigmaLayoutProperties layout;
  final List<Widget> children;
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
}

@Bind()
class Offset {
  const Offset(this.dx, this.dy);
  final double dx;
  final double dy;
}

@Bind()
enum FontWeight { w100, w200, w300, w400, w500, w600, w700, w800, w900 }

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
  luminosity,
}

@Bind()
enum ConstraintType { min, center, max, stretch, scale }

@Bind()
enum ScaleMode { fill, fit, crop, tile }

@Bind()
enum GridTrackSizingMode { auto, fixed }

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
}

@Bind()
class GridTrack {
  const GridTrack({this.size, this.sizingMode = GridTrackSizingMode.auto});

  final double? size;
  final GridTrackSizingMode sizingMode;
}

// ============================================================================
// Effect types
// ============================================================================

enum FigmaEffectType { dropShadow, layerBlur, backgroundBlur }

@Bind()
class FigmaEffect {
  const FigmaEffect.dropShadow({
    required Color this.color,
    required Offset this.offset,
    required this.radius,
    double this.spread = 0,
    this.visible = true,
    BlendMode this.blendMode = BlendMode.normal,
    bool this.showShadowBehindNode = false,
  }) : type = FigmaEffectType.dropShadow;

  const FigmaEffect.layerBlur({required this.radius, this.visible = true})
    : type = FigmaEffectType.layerBlur,
      color = null,
      offset = null,
      spread = null,
      blendMode = null,
      showShadowBehindNode = null;

  const FigmaEffect.backgroundBlur({required this.radius, this.visible = true})
    : type = FigmaEffectType.backgroundBlur,
      color = null,
      offset = null,
      spread = null,
      blendMode = null,
      showShadowBehindNode = null;

  final FigmaEffectType type;
  final Color? color;
  final Offset? offset;
  final double radius;
  final double? spread;
  final bool visible;
  final BlendMode? blendMode;
  final bool? showShadowBehindNode;
}

// ============================================================================
// Text types
// ============================================================================

@Bind()
enum FigmaFontStyle { regular, italic }

@Bind()
enum LetterSpacingUnit { pixels, percent }

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
}

@Bind()
class LetterSpacing {
  const LetterSpacing({required this.value, required this.unit});

  final double value;
  final LetterSpacingUnit unit;
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
}

@Bind()
class FigmaTransformed extends Widget {
  const FigmaTransformed({required this.transform, required this.child});

  final FigmaTransform transform;
  final Widget child;
}

@Bind()
class FigmaClip extends Widget {
  const FigmaClip({required this.shape, required this.child});

  final FigmaRectangleShape shape;
  final Widget child;
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
}
