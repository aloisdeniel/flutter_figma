import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/frame.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/rendering/layout.dart';

import '../data.dart';
import 'node.dart';

class FigmaFrame extends StatelessWidget implements FigmaNode {
  @override
  final String id;
  @override
  final String name;
  final bool preserveRatio;
  final bool clipsContent;
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
        child: _FigmaFrame(this),
      );

      if (clipsContent) {
        child = ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(rectangleCornerRadii.topLeft),
            topRight: Radius.circular(rectangleCornerRadii.topRight),
            bottomLeft: Radius.circular(rectangleCornerRadii.bottomLeft),
            bottomRight: Radius.circular(rectangleCornerRadii.bottomRight),
          ),
          child: child,
        );
      }
    }

    if (data?.decoratorBuilder != null) {
      child = data.decoratorBuilder(context, child);
    }

    child = FigmaRootNode.child(child: child);

    if (FigmaRootNode.of(context)) {
      return child;
    }

    return FigmaLayout(
      designSize: size,
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
    final data = FigmaData.of(context, frame.name);
    final fills = data?.fills ?? frame.fills;
    final strokes = data?.strokes ?? frame.strokes;
    final effects = data?.effects ?? frame.effects;
    final strokeWeight = data?.strokeWeight ?? frame.strokeWeight;
    final rectangleCornerRadii =
        data?.rectangleCornerRadii ?? frame.rectangleCornerRadii;
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
        fills: fills,
        strokes: strokes,
        strokeWeight: strokeWeight,
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
    final data = FigmaData.of(context, frame.name);
    final fills = data?.fills ?? frame.fills;
    final strokes = data?.strokes ?? frame.strokes;
    final effects = data?.effects ?? frame.effects;
    final strokeWeight = data?.strokeWeight ?? frame.strokeWeight;
    final rectangleCornerRadii =
        data?.rectangleCornerRadii ?? frame.rectangleCornerRadii;
    renderObject
      ..configuration = createLocalImageConfiguration(context)
      ..layoutMode = frame.layoutMode
      ..designTransform = frame.relativeTransform
      ..designSize = frame.size
      ..horizontalPadding = frame.horizontalPadding ?? 0.0
      ..verticalPadding = frame.verticalPadding ?? 0.0
      ..counterAxisSizingMode = frame.counterAxisSizingMode
      ..itemSpacing = frame.itemSpacing ?? 0.0
      ..decoration = FigmaPaintDecoration(
        fills: fills,
        strokes: strokes,
        strokeWeight: strokeWeight,
        effects: effects,
        shape: FigmaBoxPaintShape(
          rectangleCornerRadii: rectangleCornerRadii,
        ),
      );
  }
}
