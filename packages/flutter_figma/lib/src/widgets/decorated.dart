import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/decorated.dart';

class FigmaDecorated extends SingleChildRenderObjectWidget {
  const FigmaDecorated({
    super.key,
    required this.decoration,
    this.shape = const FigmaRectangleShape(),
    this.stroke = const FigmaStroke.uniform(weight: 1),
    super.child,
  });

  final FigmaStroke stroke;
  final FigmaRectangleShape shape;
  final FigmaDecoration decoration;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaDecorated(
        shape: shape, stroke: stroke, decoration: decoration);
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaDecorated renderObject) {
    renderObject
      ..decoration = decoration
      ..stroke = stroke
      ..shape = shape;
  }
}
