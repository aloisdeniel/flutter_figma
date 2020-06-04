import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/layout.dart';
import 'package:flutter_figma/src/rendering/vector.dart';
import 'package:flutter/widgets.dart';

import '../data.dart';
import 'node.dart';

class FigmaRectangle extends StatelessWidget implements FigmaNode {
  @override
  final String id;
  @override
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
  })  : relativeTransform = relativeTransform ?? FigmaTransform(),
        preserveRatio = preserveRatio ?? false,
        super(
          key: key ?? (id != null ? Key(id) : null),
        );

  @override
  Widget build(BuildContext context) {
    final data = FigmaData.of(context, name);

    Widget child;
    if (data?.builder != null) {
      child = data.builder(context);
    } else {
      child = Opacity(
        opacity: data?.opacity ?? opacity,
        child: _FigmaRectangle(this),
      );
    }

    if (data?.decoratorBuilder != null) {
      child = data.decoratorBuilder(context, child);
    }

    child = FigmaRootNode.child(child: child);

    if (FigmaRootNode.of(context)) return child;

    return FigmaLayout(
      designSize: size,
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
    final data = FigmaData.of(context, rectangle.name);

    final fills = data?.fills ?? rectangle.fills;
    final strokes = data?.strokes ?? rectangle.strokes;
    final effects = data?.effects ?? rectangle.effects;
    final strokeWeight = data?.strokeWeight ?? rectangle.strokeWeight;
    final rectangleCornerRadii =
        data?.rectangleCornerRadii ?? rectangle.rectangleCornerRadii;
    return RenderFigmaVector(
      configuration: createLocalImageConfiguration(context),
      designTransform: rectangle.relativeTransform,
      designSize: rectangle.size,
      decoration: FigmaPaintDecoration(
        fills: fills,
        strokes: strokes,
        effects: effects,
        strokeWeight: strokeWeight,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangleCornerRadii,
        ),
      ),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaVector renderObject) {
    final data = FigmaData.of(context, rectangle.name);
    final fills = data?.fills ?? rectangle.fills;
    final strokes = data?.strokes ?? rectangle.strokes;
    final effects = data?.effects ?? rectangle.effects;
    final strokeWeight = data?.strokeWeight ?? rectangle.strokeWeight;
    final rectangleCornerRadii =
        data?.rectangleCornerRadii ?? rectangle.rectangleCornerRadii;
    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..designSize = rectangle.size
      ..designTransform = rectangle.relativeTransform
      ..decoration = FigmaPaintDecoration(
        fills: fills,
        strokeWeight: strokeWeight,
        strokes: strokes,
        effects: effects,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangleCornerRadii,
        ),
      );
  }
}
