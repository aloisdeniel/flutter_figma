import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/frame.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/rendering/layout.dart';

import 'node.dart';

class FigmaFrame extends StatelessWidget implements FigmaNode {
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
  final bool isRoot;

  FigmaFrame({
    Key key,
    this.id,
    this.name,
    this.isRoot = false,
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
        );

  @override
  Widget build(BuildContext context) {
    final child = Opacity(
      opacity: opacity,
      child: _FigmaFrame(this),
    );

    if (isRoot) {
      return child;
    }

    return FigmaLayout(
      transform: relativeTransform,
      constraints: constraints,
      layoutAlign: layoutAlign,
      child: child,
    );
  }
}

class _FigmaFrame extends MultiChildRenderObjectWidget {
  final FigmaFrame frame;

  _FigmaFrame(this.frame)
      : super(
          children: frame.children,
        );

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaFrame(
      layoutMode: frame.layoutMode,
      designTransform: frame.relativeTransform,
      designSize: frame.size,
      configuration: createLocalImageConfiguration(context),
      horizontalPadding: frame.horizontalPadding,
      verticalPadding: frame.verticalPadding,
      counterAxisSizingMode: frame.counterAxisSizingMode,
      itemSpacing: frame.itemSpacing,
      decoration: FigmaPaintDecoration(
        fills: frame.fills,
        strokes: frame.strokes,
        strokeWeight: frame.strokeWeight,
        effects: frame.effects,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: frame.rectangleCornerRadii,
        ),
      ),
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderFigmaFrame renderObject) {
    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..layoutMode = frame.layoutMode
      ..designTransform = frame.relativeTransform
      ..designSize = frame.size
      ..horizontalPadding = frame.horizontalPadding
      ..verticalPadding = frame.verticalPadding
      ..counterAxisSizingMode = frame.counterAxisSizingMode
      ..itemSpacing = frame.itemSpacing
      ..decoration = FigmaPaintDecoration(
        fills: frame.fills,
        strokes: frame.strokes,
        strokeWeight: frame.strokeWeight,
        effects: frame.effects,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: frame.rectangleCornerRadii,
        ),
      );
  }
}
