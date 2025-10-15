import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/vector.dart';
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
  RenderObjectElement createElement() {
    return FigmaVectorElement(this);
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaVector(
      x: x,
      y: y,
      width: width,
      height: height,
      fills: fills,
      strokes: strokes,
      strokeWeight: strokeWeight,
      strokeAlign: strokeAlign,
      strokeCap: strokeCap,
      strokeJoin: strokeJoin,
      vectorNetwork: vectorNetwork,
      vectorPaths: vectorPaths,
      visible: visible,
      opacity: opacity,
      blendMode: blendMode,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaVector renderObject) {
    renderObject
      ..x = x
      ..y = y
      ..width = width
      ..height = height
      ..fills = fills
      ..strokes = strokes
      ..strokeWeight = strokeWeight
      ..strokeAlign = strokeAlign
      ..strokeCap = strokeCap
      ..strokeJoin = strokeJoin
      ..vectorNetwork = vectorNetwork
      ..vectorPaths = vectorPaths
      ..visible = visible
      ..opacity = opacity
      ..blendMode = blendMode;
  }
}
