import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/paint/rectangle_shape.dart';

class RenderFigmaDecorated extends RenderProxyBox {
  RenderFigmaDecorated({
    required FigmaDecoration decoration,
    required FigmaRectangleShape shape,
    required FigmaStroke stroke,
  })  : _decoration = decoration,
        _stroke = stroke,
        _shape = shape;

  FigmaDecoration _decoration;
  FigmaDecoration get decoration => _decoration;
  set decoration(FigmaDecoration value) {
    if (_decoration == value) return;
    _decoration = value;
    markNeedsPaint();
  }

  FigmaRectangleShape _shape;
  FigmaRectangleShape get shape => _shape;
  set shape(FigmaRectangleShape value) {
    if (_shape == value) return;
    _shape = value;
    markNeedsPaint();
  }

  FigmaStroke _stroke;
  FigmaStroke get stroke => _stroke;
  set stroke(FigmaStroke value) {
    if (_stroke == value) return;
    _stroke = value;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.isEmpty) return;

    final rect = offset & size;
    context.drawFigmaRectangleShape(
      rect,
      shape,
      stroke,
      decoration,
      () {
        super.paint(context, offset);
      },
    );
  }
}
