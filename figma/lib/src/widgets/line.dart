import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/line.dart';
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
  RenderObjectElement createElement() {
    return FigmaLineElement(this);
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaLine(
      x: x,
      y: y,
      width: width,
      fills: fills,
      strokes: strokes,
      strokeWeight: strokeWeight,
      strokeCap: strokeCap,
      visible: visible,
      opacity: opacity,
      blendMode: blendMode,
    );
  }

  @override
  void updateRenderObject(BuildContext context, covariant RenderFigmaLine renderObject) {
    renderObject
      ..x = x
      ..y = y
      ..width = width
      ..fills = fills
      ..strokes = strokes
      ..strokeWeight = strokeWeight
      ..strokeCap = strokeCap
      ..visible = visible
      ..opacity = opacity
      ..blendMode = blendMode;
  }
}


