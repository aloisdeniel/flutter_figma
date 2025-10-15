import 'package:flutter/widgets.dart' show Element;

import 'base_node.dart';

class FigmaFrame extends FigmaFrameNode {
  const FigmaFrame({
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
    required super.x,
    required super.y,
    required super.width,
    required super.height,
    super.constraints,
    super.relativeTransform,
    super.layoutMode,
    super.primaryAxisSizingMode,
    super.counterAxisSizingMode,
    super.paddingLeft,
    super.paddingRight,
    super.paddingTop,
    super.paddingBottom,
    super.itemSpacing,
    super.counterAxisSpacing,
    super.primaryAxisAlignItems,
    super.counterAxisAlignItems,
    super.layoutWrap,
    this.cornerRadius = 0,
    this.topLeftRadius,
    this.topRightRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
  });

  final double cornerRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;

  @override
  Element createElement() {
    return FigmaFrameElement(this);
  }
}
