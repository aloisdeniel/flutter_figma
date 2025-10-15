import 'package:flutter/widgets.dart' show Widget;
import 'package:flutter_figma/src/foundation/foundation.dart';

abstract class FigmaNode extends Widget {
  const FigmaNode({
    this.visible = true,
  });

  final bool visible;
}

abstract class FigmaSceneNode extends FigmaNode {
  const FigmaSceneNode({
    super.visible,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  });

  final double opacity;
  final BlendMode blendMode;
}

abstract class FigmaGeometryNode extends FigmaSceneNode {
  const FigmaGeometryNode({
    super.visible,
    super.opacity,
    super.blendMode,
    this.fills = const [],
    this.strokes = const [],
    this.strokeWeight = 1.0,
    this.strokeAlign = StrokeAlign.inside,
    this.strokeCap = StrokeCap.none,
    this.strokeJoin = StrokeJoin.miter,
    this.strokeMiterLimit = 4.0,
    this.effects = const [],
    this.isMask = false,
    this.maskType = MaskType.alpha,
  });

  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final double strokeWeight;
  final StrokeAlign strokeAlign;
  final StrokeCap strokeCap;
  final StrokeJoin strokeJoin;
  final double strokeMiterLimit;
  final bool isMask;
  final MaskType maskType;
}

enum StrokeAlign {
  inside,
  outside,
  center,
}

abstract class FigmaContainerNode extends FigmaGeometryNode {
  const FigmaContainerNode({
    super.visible,
    super.opacity,
    super.blendMode,
    super.fills,
    super.strokes,
    super.strokeWeight,
    super.strokeAlign,
    super.strokeCap,
    super.strokeJoin,
    super.strokeMiterLimit,
    super.effects,
    super.isMask,
    super.maskType,
    this.children = const [],
    this.clipsContent = false,
  });

  final List<Widget> children;
  final bool clipsContent;
}

abstract class FigmaFrameNode extends FigmaContainerNode {
  const FigmaFrameNode({
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    super.visible,
    super.opacity,
    super.blendMode,
    super.fills,
    super.strokes,
    super.strokeWeight,
    super.strokeAlign,
    super.strokeCap,
    super.strokeJoin,
    super.strokeMiterLimit,
    super.effects,
    super.isMask,
    super.maskType,
    super.children,
    super.clipsContent,
    this.constraints,
    this.relativeTransform,
    this.layoutMode = LayoutMode.none,
    this.primaryAxisSizingMode = PrimaryAxisSizingMode.fixed,
    this.counterAxisSizingMode = CounterAxisSizingMode.fixed,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.itemSpacing = 0,
    this.counterAxisSpacing = 0,
    this.primaryAxisAlignItems = LayoutAlign.min,
    this.counterAxisAlignItems = LayoutAlign.min,
    this.layoutWrap = LayoutWrap.noWrap,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final LayoutMode layoutMode;
  final PrimaryAxisSizingMode primaryAxisSizingMode;
  final CounterAxisSizingMode counterAxisSizingMode;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double itemSpacing;
  final double counterAxisSpacing;
  final LayoutAlign primaryAxisAlignItems;
  final LayoutAlign counterAxisAlignItems;
  final LayoutWrap layoutWrap;
}
