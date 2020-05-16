import 'dart:math' as math;
import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FigmaLayoutParentData extends ContainerBoxParentData<RenderBox> {
  FigmaLayoutConstraints constraints;
  FigmaTransform transform;
  FigmaLayoutAlign layoutAlign;
  @override
  String toString() =>
      '${super.toString()}; transform=$transform, layoutAlign=$layoutAlign, constraints=$constraints';
}

class RenderFigmaFrame extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, FigmaLayoutParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, FigmaLayoutParentData>,
        DebugOverflowIndicatorMixin {
  RenderFigmaFrame({
    List<RenderBox> children,
    double horizontalPadding,
    double verticalPadding,
    FigmaTransform designTransform,
    Size designSize,
    ImageConfiguration configuration,
    FigmaLayoutAlign layoutAlign,
    double opacity,
    FigmaCounterAxisSizingMode counterAxisSizingMode,
    double itemSpacing,
    FigmaLayoutConstraints designConstraints,
    FigmaPaintDecoration decoration,
    FigmaLayoutMode layoutMode = FigmaLayoutMode.none,
  })  : assert(layoutMode != null),
        _layoutMode = layoutMode,
        _designTransform = designTransform,
        _designSize = designSize,
        _configuration = configuration,
        _opacity = opacity ?? 1.0,
        _alpha = Color.getAlphaFromOpacity(opacity),
        _designConstraints = designConstraints,
        _designLayoutAlign = layoutAlign,
        _counterAxisSizingMode = counterAxisSizingMode,
        _horizontalPadding = horizontalPadding,
        _verticalPadding = verticalPadding,
        _itemSpacing = itemSpacing,
        _decoration = decoration {
    addAll(children);
    _updateParentData();
  }
  @override
  bool get alwaysNeedsCompositing => _alpha != 0 && _alpha != 255;

  void _updateParentData() {
    parentData ??= FigmaLayoutParentData();
    final data = parentData as FigmaLayoutParentData;
    data.constraints = _designConstraints;
    data.layoutAlign = _designLayoutAlign;
    data.transform = _designTransform;
  }

  Size get designSize => _designSize;
  Size _designSize;
  set designSize(Size value) {
    assert(value != null);
    if (_designSize != value) {
      _designSize = value;
      markNeedsLayout();
    }
  }

  FigmaLayoutAlign get designLayoutAlign => _designLayoutAlign;
  FigmaLayoutAlign _designLayoutAlign;
  set designLayoutAlign(FigmaLayoutAlign value) {
    assert(value != null);
    if (_designLayoutAlign != value) {
      _designLayoutAlign = value;
      _updateParentData();
      markNeedsLayout();
    }
  }

  FigmaTransform get designTransform => _designTransform;
  FigmaTransform _designTransform;
  set designTransform(FigmaTransform value) {
    assert(value != null);
    if (_designTransform != value) {
      _designTransform = value;
      _updateParentData();
      markNeedsLayout();
    }
  }

  FigmaLayoutConstraints get designConstraints => _designConstraints;
  FigmaLayoutConstraints _designConstraints;
  set designConstraints(FigmaLayoutConstraints value) {
    assert(value != null);
    if (_designConstraints != value) {
      _designConstraints = value;
      _updateParentData();
      markNeedsLayout();
    }
  }

  FigmaCounterAxisSizingMode get counterAxisSizingMode =>
      _counterAxisSizingMode;
  FigmaCounterAxisSizingMode _counterAxisSizingMode;
  set counterAxisSizingMode(FigmaCounterAxisSizingMode value) {
    assert(value != null);
    if (_counterAxisSizingMode != value) {
      _counterAxisSizingMode = value;
      markNeedsLayout();
    }
  }

  FigmaLayoutMode get layoutMode => _layoutMode;
  FigmaLayoutMode _layoutMode;
  set layoutMode(FigmaLayoutMode value) {
    assert(value != null);
    if (_layoutMode != value) {
      _layoutMode = value;
      markNeedsLayout();
    }
  }

  BoxPainter _painter;

  FigmaPaintDecoration get decoration => _decoration;
  FigmaPaintDecoration _decoration;
  set decoration(FigmaPaintDecoration value) {
    assert(value != null);
    if (_decoration != value) {
      _painter?.dispose();
      _painter = null;
      _decoration = value;
      markNeedsLayout();
    }
  }

  int _alpha;
  double get opacity => _opacity;
  double _opacity;
  set opacity(double value) {
    assert(value != null);
    assert(value >= 0.0 && value <= 1.0);
    if (_opacity == value) return;
    final bool didNeedCompositing = alwaysNeedsCompositing;
    _opacity = value;
    _alpha = Color.getAlphaFromOpacity(_opacity);
    if (didNeedCompositing != alwaysNeedsCompositing)
      markNeedsCompositingBitsUpdate();
    markNeedsPaint();
  }

  double get horizontalPadding => _horizontalPadding;
  double _horizontalPadding;
  set horizontalPadding(double value) {
    assert(value != null);
    if (_horizontalPadding != value) {
      _horizontalPadding = value;
      markNeedsLayout();
    }
  }

  double get verticalPadding => _verticalPadding;
  double _verticalPadding;
  set verticalPadding(double value) {
    assert(value != null);
    if (_verticalPadding != value) {
      _verticalPadding = value;
      markNeedsLayout();
    }
  }

  double get itemSpacing => _itemSpacing;
  double _itemSpacing;
  set itemSpacing(double value) {
    assert(value != null);
    if (_itemSpacing != value) {
      _itemSpacing = value;
      markNeedsLayout();
    }
  }

  /// The settings to pass to the decoration when painting, so that it can
  /// resolve images appropriately. See [ImageProvider.resolve] and
  /// [BoxPainter.paint].
  ///
  /// The [ImageConfiguration.textDirection] field is also used by
  /// direction-sensitive [Decoration]s for painting and hit-testing.
  ImageConfiguration get configuration => _configuration;
  ImageConfiguration _configuration;
  set configuration(ImageConfiguration value) {
    assert(value != null);
    if (value == _configuration) return;
    _configuration = value;
    markNeedsPaint();
  }

  // Set during layout if overflow occurred on the main axis.
  double _overflow;
  // Check whether any meaningful overflow is present. Values below an epsilon
  // are treated as not overflowing.
  bool get _hasOverflow => false; // _overflow > precisionErrorTolerance;

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! FigmaLayoutParentData)
      child.parentData = FigmaLayoutParentData();
  }

  @override
  void detach() {
    _painter?.dispose();
    _painter = null;
    super.detach();
    // Since we're disposing of our painter, we won't receive change
    // notifications. We mark ourselves as needing paint so that we will
    // resubscribe to change notifications. If we didn't do this, then, for
    // example, animated GIFs would stop animating when a DecoratedBox gets
    // moved around the tree due to GlobalKey reparenting.
    markNeedsPaint();
  }

  double _computeIntrinsicWidth(double height, bool minChild) {
    // We should get the maximum child of children or fixed
    if (layoutMode == FigmaLayoutMode.vertical) {
      if (counterAxisSizingMode == FigmaCounterAxisSizingMode.fixed) {
        return designSize.width;
      }
      double size = horizontalPadding * 2;
      RenderBox child = firstChild;
      while (child != null) {
        final mainSize = child.getMinIntrinsicWidth(height);
        size = math.max(size, mainSize);
        final FigmaLayoutParentData childParentData =
            child.parentData as FigmaLayoutParentData;
        child = childParentData.nextSibling;
      }
      return size;
    }

    // We should add all children widths
    if (layoutMode == FigmaLayoutMode.horizontal) {
      double size = horizontalPadding * 2;
      RenderBox child = firstChild;
      while (child != null) {
        final mainSize = minChild
            ? child.getMinIntrinsicWidth(double.infinity)
            : child.getMaxIntrinsicWidth(double.infinity);
        final FigmaLayoutParentData childParentData =
            child.parentData as FigmaLayoutParentData;
        size += mainSize;
        child = childParentData.nextSibling;
        if (child != null) size += itemSpacing;
      }
      return size;
    }

    // Absolute positions
    double size = 0;
    RenderBox child = firstChild;
    while (child != null) {
      final FigmaLayoutParentData childParentData =
          child.parentData as FigmaLayoutParentData;
      final position = childParentData.transform.position;
      final mainSize = minChild
          ? child.getMinIntrinsicWidth(
              height - position.dx - 2 * horizontalPadding,
            )
          : child.getMaxIntrinsicWidth(double.infinity);

      size = math.max(size, position.dx + mainSize);
      child = childParentData.nextSibling;
    }
    return size;
  }

  double _computeIntrinsicHeight(double width, bool minChild) {
    // We should get the maximum child of children or fixed
    if (layoutMode == FigmaLayoutMode.horizontal) {
      if (counterAxisSizingMode == FigmaCounterAxisSizingMode.fixed) {
        return designSize.height;
      }
      double size = verticalPadding * 2;
      RenderBox child = firstChild;
      while (child != null) {
        final mainSize = child.getMinIntrinsicHeight(width);
        size = math.max(size, mainSize);
        final FigmaLayoutParentData childParentData =
            child.parentData as FigmaLayoutParentData;
        child = childParentData.nextSibling;
      }
      return size;
    }

    // We should add all children heights
    if (layoutMode == FigmaLayoutMode.vertical) {
      double size = verticalPadding * 2;
      RenderBox child = firstChild;
      while (child != null) {
        final mainSize = minChild
            ? child.getMinIntrinsicHeight(double.infinity)
            : child.getMaxIntrinsicHeight(double.infinity);
        final FigmaLayoutParentData childParentData =
            child.parentData as FigmaLayoutParentData;
        size += mainSize;
        child = childParentData.nextSibling;
        if (child != null) size += itemSpacing;
      }
      return size;
    }

    // Absolute positions
    double size = 0;
    RenderBox child = firstChild;
    while (child != null) {
      final FigmaLayoutParentData childParentData =
          child.parentData as FigmaLayoutParentData;
      final position = childParentData.transform.position;
      final mainSize = minChild
          ? child.getMinIntrinsicHeight(
              width - position.dy - 2 * verticalPadding,
            )
          : child.getMaxIntrinsicHeight(double.infinity);

      size = math.max(size, position.dy + mainSize);
      child = childParentData.nextSibling;
    }
    return size;
  }

  @override
  double computeMinIntrinsicWidth(double height) =>
      _computeIntrinsicWidth(height, true);

  @override
  double computeMaxIntrinsicWidth(double height) =>
      _computeIntrinsicWidth(height, false);

  @override
  double computeMinIntrinsicHeight(double width) =>
      _computeIntrinsicHeight(width, true);

  @override
  double computeMaxIntrinsicHeight(double width) =>
      _computeIntrinsicHeight(width, false);

  void _performStackLayout() {
    double designCross;
    double constraintsMaxCross;
    double crossPadding;
    double mainPadding;

    final isHorizontal = layoutMode == FigmaLayoutMode.horizontal;
    final isCrossFixed =
        counterAxisSizingMode == FigmaCounterAxisSizingMode.fixed;
    final constraints = this.constraints;
    if (isHorizontal) {
      designCross = designSize.height;
      constraintsMaxCross = constraints.maxHeight;
      crossPadding = verticalPadding;
      mainPadding = horizontalPadding;
    } else {
      designCross = designSize.width;
      constraintsMaxCross = constraints.maxWidth;
      crossPadding = horizontalPadding;
      mainPadding = verticalPadding;
    }

    final maxCross = isCrossFixed ? designCross : constraintsMaxCross;

    var child = firstChild;

    // 1. we calculate children sizes
    final stretchedChildren = <RenderBox>[];
    double cross = isCrossFixed ? designSize.width : 2 * crossPadding;

    while (child != null) {
      final childParentData = child.parentData as FigmaLayoutParentData;
      if (childParentData.layoutAlign == FigmaLayoutAlign.stretch) {
        stretchedChildren.add(child);
      } else {
        final innerConstraints = isHorizontal
            ? BoxConstraints(
                maxHeight: maxCross - 2 * crossPadding,
                maxWidth: double.infinity,
              )
            : BoxConstraints(
                maxHeight: double.infinity,
                maxWidth: maxCross - 2 * crossPadding,
              );
        child.layout(innerConstraints, parentUsesSize: true);

        if (!isCrossFixed) {
          final childCross =
              isHorizontal ? child.size.height : child.size.width;
          cross = math.max(cross, childCross + crossPadding * 2);
        }
      }

      child = childParentData.nextSibling;
    }

    // 2. Layout of stretched items
    for (var child in stretchedChildren) {
      // TODO use rotation
      final maxChildCross = cross - 2 * crossPadding;
      final innerConstraints = isHorizontal
          ? BoxConstraints(
              minHeight: maxChildCross,
              maxHeight: maxChildCross,
              maxWidth: double.infinity,
            )
          : BoxConstraints(
              maxHeight: double.infinity,
              minWidth: maxChildCross,
              maxWidth: maxChildCross,
            );
      child.layout(innerConstraints, parentUsesSize: true);
    }

    // 2. we update children offset
    child = firstChild;
    var main = mainPadding;
    while (child != null) {
      final childParentData = child.parentData as FigmaLayoutParentData;
      final childCross = isHorizontal ? child.size.height : child.size.width;
      final childMain = isHorizontal ? child.size.width : child.size.height;

      double crossOffset;
      switch (childParentData.layoutAlign) {
        case FigmaLayoutAlign.center:
          crossOffset = (cross / 2) - (childCross / 2);
          break;
        case FigmaLayoutAlign.max:
          crossOffset = cross - crossPadding - childCross;
          break;
        default:
          crossOffset = crossPadding;
      }

      childParentData.offset = isHorizontal
          ? Offset(
              main,
              crossOffset,
            )
          : Offset(
              crossOffset,
              main,
            );

      main += childMain;
      child = childParentData.nextSibling;
      if (child != null) main += itemSpacing;
    }

    main += mainPadding;

    if (!isHorizontal) {
      size = Size(
        math.min(
          cross,
          constraints.biggest.width,
        ),
        math.min(
          main,
          constraints.biggest.height,
        ),
      );
    } else {
      size = Size(
        math.min(
          main,
          constraints.biggest.width,
        ),
        math.min(
          cross,
          constraints.biggest.height,
        ),
      );
    }
  }

  void _performAbsoluteLayout() {
    var child = firstChild;
    while (child != null) {
      final childParentData = child.parentData as FigmaLayoutParentData;
      final position = childParentData.transform.position;
      final innerConstraints = BoxConstraints(
        maxWidth: constraints.maxWidth - position.dx,
        maxHeight: constraints.maxHeight - position.dy,
      );
      child.layout(innerConstraints);
      childParentData.offset = position;
      child = childParentData.nextSibling;
    }

    final biggest = constraints.biggest;
    size = Size(
      math.min(designSize.width, biggest.width),
      math.min(
        designSize.height,
        biggest.height,
      ),
    );
  }

  @override
  void performLayout() {
    assert(constraints != null);
    switch (layoutMode) {
      case FigmaLayoutMode.horizontal:
      case FigmaLayoutMode.vertical:
        _performStackLayout();
        break;
      default:
        _performAbsoluteLayout();
        break;
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (_alpha == 0) {
      layer = null;
      return;
    }
    if (_alpha == 255) {
      // No need to keep the layer. We'll create a new one if necessary.
      layer = null;
      _paintWithOpacity(context, offset);
      return;
    } else {
      layer = context.pushOpacity(
        offset,
        _alpha,
        _paintWithOpacity,
        oldLayer: layer as OpacityLayer,
      );
    }
  }

  void _paintWithOpacity(PaintingContext context, Offset offset) {
    assert(size.width != null);
    assert(size.height != null);
    _painter ??= _decoration.createBoxPainter(markNeedsPaint);
    final filledConfiguration = configuration.copyWith(size: size);

    // Painting background decoration
    int debugSaveCount;
    assert(() {
      debugSaveCount = context.canvas.getSaveCount();
      return true;
    }());
    _painter.paint(context.canvas, offset, filledConfiguration);
    assert(() {
      if (debugSaveCount != context.canvas.getSaveCount()) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary(
              '${_decoration.runtimeType} painter had mismatching save and restore calls.'),
          ErrorDescription(
              'Before painting the decoration, the canvas save count was $debugSaveCount. '
              'After painting it, the canvas save count was ${context.canvas.getSaveCount()}. '
              'Every call to save() or saveLayer() must be matched by a call to restore().'),
          DiagnosticsProperty<Decoration>('The decoration was', decoration,
              style: DiagnosticsTreeStyle.errorProperty),
          DiagnosticsProperty<BoxPainter>('The painter was', _painter,
              style: DiagnosticsTreeStyle.errorProperty),
        ]);
      }
      return true;
    }());
    if (decoration.isComplex) context.setIsComplexHint();

    // Painting children

    if (!_hasOverflow) {
      defaultPaint(context, offset);
      return;
    }

    // There's no point in drawing the children if we're empty.
    if (size.isEmpty) return;

    // We have overflow. Clip it.
    context.pushClipRect(
        needsCompositing, offset, Offset.zero & size, defaultPaint);

    assert(() {
      // Only set this if it's null to save work. It gets reset to null if the
      // _direction changes.
      final List<DiagnosticsNode> debugOverflowHints = <DiagnosticsNode>[
        ErrorDescription(
            'The overflowing $runtimeType has a layout mode of $_layoutMode.'),
        ErrorDescription(
            'The edge of the $runtimeType that is overflowing has been marked '
            'in the rendering with a yellow and black striped pattern. This is '
            'usually caused by the contents being too big for the $runtimeType.'),
        ErrorHint(
            'Consider applying a flex factor (e.g. using an Expanded widget) to '
            'force the children of the $runtimeType to fit within the available '
            'space instead of being sized to their natural size.'),
        ErrorHint(
            'This is considered an error condition because it indicates that there '
            'is content that cannot be seen. If the content is legitimately bigger '
            'than the available space, consider clipping it with a ClipRect widget '
            'before putting it in the flex, or using a scrollable container rather '
            'than a Flex, like a ListView.'),
      ];

      // Simulate a child rect that overflows by the right amount. This child
      // rect is never used for drawing, just for determining the overflow
      // location and amount.
      // TODO
      return true;
    }());
  }

  @override
  Rect describeApproximatePaintClip(RenderObject child) =>
      _hasOverflow ? Offset.zero & size : null;

  @override
  String toStringShort() {
    String header = super.toStringShort();
    if (_overflow is double && _hasOverflow) header += ' OVERFLOWING';
    return header;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<FigmaLayoutMode>('layoutMode', layoutMode));
  }
}
