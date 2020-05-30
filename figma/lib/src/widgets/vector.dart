import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/layout.dart';
import 'package:flutter_figma/src/rendering/vector.dart';
import 'package:flutter/widgets.dart';

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
  final bool isRoot;

  FigmaVector({
    Key key,
    this.id,
    this.isRoot = false,
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
    final child = Opacity(
      opacity: opacity,
      child: _FigmaVector(this),
    );

    if (isRoot) return child;

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
    return RenderFigmaVector(
      configuration: createLocalImageConfiguration(context),
      designTransform: vector.relativeTransform,
      designSize: vector.size,
      decoration: FigmaPaintDecoration(
        fills: vector.fills,
        strokes: vector.strokes,
        effects: vector.effects,
        strokeWeight: vector.strokeWeight,
        shape: FigmaPathPaintShape(
          fillGeometry: vector.fillGeometry,
        ),
      ),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaVector renderObject) {
    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..designSize = vector.size
      ..designTransform = vector.relativeTransform
      ..decoration = FigmaPaintDecoration(
        fills: vector.fills,
        strokeWeight: vector.strokeWeight,
        strokes: vector.strokes,
        effects: vector.effects,
        shape: FigmaPathPaintShape(
          fillGeometry: vector.fillGeometry,
        ),
      );
  }
}
