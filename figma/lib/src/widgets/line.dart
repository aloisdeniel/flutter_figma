import 'package:flutter/widgets.dart' show Element;
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

class FigmaLine extends FigmaGeometryNode {
  const FigmaLine({
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
    this.constraints,
    this.relativeTransform,
  });

  final double x;
  final double y;
  final double width;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;

  @override
  Element createElement() {
    return FigmaLineElement(this);
  }
}
