import 'package:flutter/widgets.dart' show Element;
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

class FigmaVectorNode extends FigmaGeometryNode {
  const FigmaVectorNode({
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
    this.vectorNetwork,
    this.vectorPaths,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final VectorNetwork? vectorNetwork;
  final List<VectorPath>? vectorPaths;

  @override
  Element createElement() {
    return FigmaVectorElement(this);
  }
}
