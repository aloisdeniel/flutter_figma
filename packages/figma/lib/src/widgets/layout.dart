import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/rendering/layout.dart';

sealed class FigmaLayoutProperties {
  const FigmaLayoutProperties();

  const factory FigmaLayoutProperties.auto({
    Axis direction,
    PrimaryAxisSizingMode primaryAxisSizingMode,
    CounterAxisSizingMode counterAxisSizingMode,
    LayoutAlign primaryAxisAlignItems,
    LayoutAlign counterAxisAlignItems,
    LayoutWrap layoutWrap,
    double paddingLeft,
    double paddingRight,
    double paddingTop,
    double paddingBottom,
    double itemSpacing,
    double counterAxisSpacing,
  }) = FigmaAutoLayoutProperties;
}

class FigmaAbsoluteLayoutProperties extends FigmaLayoutProperties {
  const FigmaAbsoluteLayoutProperties();
}

class FigmaAutoLayoutProperties extends FigmaLayoutProperties {
  const FigmaAutoLayoutProperties({
    this.direction = Axis.horizontal,
    this.primaryAxisSizingMode = PrimaryAxisSizingMode.fixed,
    this.counterAxisSizingMode = CounterAxisSizingMode.fixed,
    this.primaryAxisAlignItems = LayoutAlign.min,
    this.counterAxisAlignItems = LayoutAlign.min,
    this.layoutWrap = LayoutWrap.noWrap,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.itemSpacing = 0,
    this.counterAxisSpacing = 0,
  });

  final Axis direction;
  final PrimaryAxisSizingMode primaryAxisSizingMode;
  final CounterAxisSizingMode counterAxisSizingMode;
  final LayoutAlign primaryAxisAlignItems;
  final LayoutAlign counterAxisAlignItems;
  final LayoutWrap layoutWrap;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double itemSpacing;
  final double counterAxisSpacing;
}

class FigmaAutoLayout extends MultiChildRenderObjectWidget {
  const FigmaAutoLayout({
    super.key,
    required super.children,
    this.layout = const FigmaAutoLayoutProperties(),
  });

  final FigmaAutoLayoutProperties layout;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaAutoLayout(
      direction: layout.direction,
      primaryAxisSizingMode: layout.primaryAxisSizingMode,
      counterAxisSizingMode: layout.counterAxisSizingMode,
      primaryAxisAlignItems: layout.primaryAxisAlignItems,
      counterAxisAlignItems: layout.counterAxisAlignItems,
      layoutWrap: layout.layoutWrap,
      paddingLeft: layout.paddingLeft,
      paddingRight: layout.paddingRight,
      paddingTop: layout.paddingTop,
      paddingBottom: layout.paddingBottom,
      itemSpacing: layout.itemSpacing,
      counterAxisSpacing: layout.counterAxisSpacing,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaAutoLayout renderObject) {
    renderObject
      ..direction = layout.direction
      ..primaryAxisSizingMode = layout.primaryAxisSizingMode
      ..counterAxisSizingMode = layout.counterAxisSizingMode
      ..primaryAxisAlignItems = layout.primaryAxisAlignItems
      ..counterAxisAlignItems = layout.counterAxisAlignItems
      ..layoutWrap = layout.layoutWrap
      ..paddingLeft = layout.paddingLeft
      ..paddingRight = layout.paddingRight
      ..paddingTop = layout.paddingTop
      ..paddingBottom = layout.paddingBottom
      ..itemSpacing = layout.itemSpacing
      ..counterAxisSpacing = layout.counterAxisSpacing;
  }
}
