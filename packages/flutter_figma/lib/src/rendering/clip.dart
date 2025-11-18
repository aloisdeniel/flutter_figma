import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

class RenderFigmaClip extends RenderProxyBox {
  RenderFigmaClip({required FigmaDecorationShape shape}) : _shape = shape;

  FigmaDecorationShape _shape;
  FigmaDecorationShape get shape => _shape;
  set shape(FigmaDecorationShape value) {
    if (_shape == value) return;
    _shape = value;
    markNeedsPaint();
  }
}
