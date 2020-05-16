import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/rectangle.dart';
import 'package:flutter/widgets.dart';

import 'node.dart';

class FigmaRectangle extends LeafRenderObjectWidget implements FigmaNode {
  final String id;
  final String name;
  final double strokeWeight;
  final bool preserveRatio;
  final FigmaLayoutAlign layoutAlign;
  final FigmaLayoutConstraints constraints;
  final FigmaStrokeAlign strokeAlign;
  final FigmaCornerRadii rectangleCornerRadii;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final Size size;
  final FigmaTransform relativeTransform;
  final double opacity;

  FigmaRectangle({
    Key key,
    this.id,
    this.name,
    this.size = Size.zero,
    this.layoutAlign = FigmaLayoutAlign.min,
    FigmaTransform relativeTransform,
    bool preserveRatio,
    this.strokeWeight = 1.0,
    this.opacity = 1.0,
    this.constraints = const FigmaLayoutConstraints(),
    this.rectangleCornerRadii = FigmaCornerRadii.zero,
    this.strokeAlign = FigmaStrokeAlign.center,
    this.fills = const <FigmaPaint>[],
    this.strokes = const <FigmaPaint>[],
    this.effects = const <FigmaEffect>[],
  })  : this.relativeTransform = relativeTransform ?? FigmaTransform(),
        this.preserveRatio = preserveRatio ?? false,
        super(key: key ?? (id != null ? Key(id) : null));

  factory FigmaRectangle.fromJson(dynamic json) {
    return FigmaRectangle();
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaRectangle(
      configuration: createLocalImageConfiguration(context),
      designConstraints: constraints,
      designTransform: relativeTransform,
      layoutAlign: layoutAlign,
      opacity: opacity,
      designSize: size,
      decoration: FigmaPaintDecoration(
        fills: fills,
        strokes: strokes,
        effects: effects,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangleCornerRadii,
        ),
      ),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaRectangle renderObject) {
    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..designConstraints = constraints
      ..designSize = size
      ..opacity = opacity
      ..designTransform = relativeTransform
      ..designLayoutAlign = layoutAlign
      ..decoration = FigmaPaintDecoration(
        fills: fills,
        strokes: strokes,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangleCornerRadii,
        ),
      );
  }
}
