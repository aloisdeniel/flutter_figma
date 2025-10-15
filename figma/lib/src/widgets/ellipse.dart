import 'package:flutter/widgets.dart' show Element;

import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

class FigmaEllipse extends FigmaGeometryNode {
  const FigmaEllipse({
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
    this.arcData,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final ArcData? arcData;

  @override
  Element createElement() {
    return FigmaEllipse(this);
  }
}
