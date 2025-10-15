import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/frame.dart';
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
  RenderObjectElement createElement() {
    return FigmaFrameElement(this);
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaFrame(
      x: x,
      y: y,
      width: width,
      height: height,
      fills: fills,
      strokes: strokes,
      strokeWeight: strokeWeight,
      strokeAlign: strokeAlign,
      cornerRadius: cornerRadius,
      topLeftRadius: topLeftRadius,
      topRightRadius: topRightRadius,
      bottomLeftRadius: bottomLeftRadius,
      bottomRightRadius: bottomRightRadius,
      clipsContent: clipsContent,
      layoutMode: layoutMode,
      primaryAxisSizingMode: primaryAxisSizingMode,
      counterAxisSizingMode: counterAxisSizingMode,
      paddingLeft: paddingLeft,
      paddingRight: paddingRight,
      paddingTop: paddingTop,
      paddingBottom: paddingBottom,
      itemSpacing: itemSpacing,
      counterAxisSpacing: counterAxisSpacing,
      primaryAxisAlignItems: primaryAxisAlignItems,
      counterAxisAlignItems: counterAxisAlignItems,
      layoutWrap: layoutWrap,
      visible: visible,
      opacity: opacity,
      blendMode: blendMode,
    );
  }
}
