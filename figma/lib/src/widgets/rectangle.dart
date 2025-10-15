import 'package:flutter/widgets.dart' show Element;
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

class FigmaRectangle extends FigmaGeometryNode {
  const FigmaRectangle({
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
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.constraints,
    this.relativeTransform,
    this.cornerRadius = 0,
    this.topLeftRadius,
    this.topRightRadius,
    this.bottomLeftRadius,
    this.bottomRightRadius,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final double cornerRadius;
  final double? topLeftRadius;
  final double? topRightRadius;
  final double? bottomLeftRadius;
  final double? bottomRightRadius;

  @override
  Element createElement() {
    return FigmaRectangleElement(this);
  }
}
