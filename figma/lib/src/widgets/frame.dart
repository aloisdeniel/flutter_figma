import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/frame.dart';
import 'package:flutter/widgets.dart';

import 'node.dart';

class FigmaFrame extends MultiChildRenderObjectWidget implements FigmaNode {
  final String id;
  final String name;
  final bool preserveRatio;
  final FigmaLayoutAlign layoutAlign;
  final FigmaLayoutMode layoutMode;
  final List<Widget> children;
  final double strokeWeight;
  final FigmaLayoutConstraints constraints;
  final FigmaStrokeAlign strokeAlign;
  final FigmaCornerRadii rectangleCornerRadii;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final double horizontalPadding;
  final double verticalPadding;
  final double itemSpacing;
  final Size size;
  final FigmaTransform relativeTransform;
  final FigmaCounterAxisSizingMode counterAxisSizingMode;
  final double opacity;
  final bool clipsContent;

  FigmaFrame({
    Key key,
    this.id,
    this.name,
    this.layoutAlign = FigmaLayoutAlign.min,
    this.size = Size.zero,
    bool preserveRatio,
    this.clipsContent = false,
    this.counterAxisSizingMode = FigmaCounterAxisSizingMode.fixed,
    FigmaTransform relativeTransform,
    this.strokeWeight = 1.0,
    this.opacity = 1.0,
    this.itemSpacing = 0.0,
    this.verticalPadding = 0.0,
    this.horizontalPadding = 0.0,
    this.constraints = const FigmaLayoutConstraints(),
    this.rectangleCornerRadii = FigmaCornerRadii.zero,
    this.strokeAlign = FigmaStrokeAlign.center,
    this.children = const <Widget>[],
    this.fills = const <FigmaPaint>[],
    this.strokes = const <FigmaPaint>[],
    this.effects = const <FigmaEffect>[],
    this.layoutMode = FigmaLayoutMode.none,
  })  : this.relativeTransform = relativeTransform ?? FigmaTransform(),
        this.preserveRatio = preserveRatio ?? false,
        super(
          key: key ?? (id != null ? Key(id) : null),
          children: children,
        );

  factory FigmaFrame.fromJson(dynamic json) {
    return FigmaFrame();
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaFrame(
      opacity: opacity,
      layoutMode: layoutMode,
      designConstraints: constraints,
      designTransform: relativeTransform,
      designSize: size,
      configuration: createLocalImageConfiguration(context),
      horizontalPadding: horizontalPadding,
      layoutAlign: layoutAlign,
      verticalPadding: verticalPadding,
      counterAxisSizingMode: counterAxisSizingMode,
      itemSpacing: itemSpacing,
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
      BuildContext context, covariant RenderFigmaFrame renderObject) {
    renderObject
      ..opacity = opacity
      ..configuration = createLocalImageConfiguration(context)
      ..layoutMode = layoutMode
      ..designConstraints = constraints
      ..designTransform = relativeTransform
      ..designSize = size
      ..designLayoutAlign = layoutAlign
      ..horizontalPadding = horizontalPadding
      ..verticalPadding = verticalPadding
      ..counterAxisSizingMode = counterAxisSizingMode
      ..itemSpacing = itemSpacing
      ..decoration = FigmaPaintDecoration(
        fills: fills,
        strokes: strokes,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangleCornerRadii,
        ),
      );
  }
}
