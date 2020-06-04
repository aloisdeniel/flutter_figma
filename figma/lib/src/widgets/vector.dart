import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/layout.dart';
import 'package:flutter_figma/src/rendering/vector.dart';
import 'package:flutter/widgets.dart';

import '../data.dart';
import 'node.dart';

class FigmaVector extends StatelessWidget implements FigmaNode {
  @override
  final String id;
  @override
  final String name;
  final double strokeWeight;
  final FigmaStrokeJoin strokeJoin;
  final FigmaStrokeCap strokeCap;
  final bool preserveRatio;
  final FigmaLayoutAlign layoutAlign;
  final FigmaLayoutConstraints constraints;
  final FigmaStrokeAlign strokeAlign;
  final FigmaCornerRadii rectangleCornerRadii;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final Path fillGeometry;
  final Size size;
  final FigmaTransform relativeTransform;
  final double opacity;

  FigmaVector({
    Key key,
    this.id,
    this.name,
    this.fillGeometry,
    this.strokeJoin = FigmaStrokeJoin.miter,
    this.strokeCap = FigmaStrokeCap.none,
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
        super(key: key ?? (id != null ? Key(id) : null));

  @override
  Widget build(BuildContext context) {
    final data = FigmaData.of(context, name);

    Widget child;
    if (data?.builder != null) {
      child = data.builder(context);
    } else {
      child = Opacity(
        opacity: data?.opacity ?? opacity,
        child: _FigmaVector(this),
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

class _FigmaVector extends LeafRenderObjectWidget {
  final FigmaVector vector;

  _FigmaVector(this.vector);

  @override
  RenderObject createRenderObject(BuildContext context) {
    final data = FigmaData.of(context, vector.name);
    final fills = data?.fills ?? vector.fills;
    final strokes = data?.strokes ?? vector.strokes;
    final effects = data?.effects ?? vector.effects;
    final strokeWeight = data?.strokeWeight ?? vector.strokeWeight;
    return RenderFigmaVector(
      configuration: createLocalImageConfiguration(context),
      designTransform: vector.relativeTransform,
      designSize: vector.size,
      decoration: FigmaPaintDecoration(
        fills: fills,
        strokes: strokes,
        effects: effects,
        strokeWeight: strokeWeight,
        shape: FigmaPathPaintShape(
          fillGeometry: vector.fillGeometry,
        ),
      ),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaVector renderObject) {
    final data = FigmaData.of(context, vector.name);
    final fills = data?.fills ?? vector.fills;
    final strokes = data?.strokes ?? vector.strokes;
    final effects = data?.effects ?? vector.effects;
    final strokeWeight = data?.strokeWeight ?? vector.strokeWeight;

    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..designSize = vector.size
      ..designTransform = vector.relativeTransform
      ..decoration = FigmaPaintDecoration(
        fills: fills,
        strokeWeight: strokeWeight,
        strokes: strokes,
        effects: effects,
        shape: FigmaPathPaintShape(
          fillGeometry: vector.fillGeometry,
        ),
      );
  }
}
