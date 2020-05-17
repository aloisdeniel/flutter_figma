import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/layout.dart';
import 'package:flutter_figma/src/rendering/rectangle.dart';
import 'package:flutter/widgets.dart';

import 'node.dart';

class FigmaRectangle extends StatelessWidget implements FigmaNode {
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
  final bool isRoot;

  FigmaRectangle({
    Key key,
    this.id,
    this.isRoot = false,
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

  @override
  Widget build(BuildContext context) {
    final child = Opacity(
      opacity: opacity,
      child: _FigmaRectangle(this),
    );

    if (isRoot) return child;

    return FigmaLayout(
      transform: relativeTransform,
      constraints: constraints,
      layoutAlign: layoutAlign,
      child: child,
    );
  }
}

class _FigmaRectangle extends LeafRenderObjectWidget {
  final FigmaRectangle rectangle;

  _FigmaRectangle(this.rectangle);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaRectangle(
      configuration: createLocalImageConfiguration(context),
      designTransform: rectangle.relativeTransform,
      designSize: rectangle.size,
      decoration: FigmaPaintDecoration(
        fills: rectangle.fills,
        strokes: rectangle.strokes,
        effects: rectangle.effects,
        strokeWeight: rectangle.strokeWeight,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangle.rectangleCornerRadii,
        ),
      ),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaRectangle renderObject) {
    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..designSize = rectangle.size
      ..designTransform = rectangle.relativeTransform
      ..decoration = FigmaPaintDecoration(
        fills: rectangle.fills,
        strokeWeight: rectangle.strokeWeight,
        strokes: rectangle.strokes,
        effects: rectangle.effects,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangle.rectangleCornerRadii,
        ),
      );
  }
}
