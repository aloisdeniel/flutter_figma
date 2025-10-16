import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/enums.dart';
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

  const factory FigmaLayoutProperties.absolute({
    double width,
    double height,
  }) = FigmaAbsoluteLayoutProperties;
}

class FigmaAbsoluteLayoutProperties extends FigmaLayoutProperties {
  const FigmaAbsoluteLayoutProperties({
    this.width = 0,
    this.height = 0,
  });

  final double width;
  final double height;
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

class FigmaAbsoluteLayout extends MultiChildRenderObjectWidget {
  const FigmaAbsoluteLayout({
    super.key,
    required super.children,
    this.layout = const FigmaAbsoluteLayoutProperties(),
  });

  final FigmaAbsoluteLayoutProperties layout;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaAbsoluteLayout(
      width: layout.width,
      height: layout.height,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaAbsoluteLayout renderObject) {
    renderObject
      ..width = layout.width
      ..height = layout.height;
  }
}

class FigmaPositioned extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaPositioned({
    super.key,
    required super.child,
    this.x = 0,
    this.y = 0,
    this.width = 0,
    this.height = 0,
    this.horizontalConstraint = ConstraintType.min,
    this.verticalConstraint = ConstraintType.min,
    this.primaryAxisSizing,
    this.counterAxisSizing,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final ConstraintType horizontalConstraint;
  final ConstraintType verticalConstraint;
  final ChildSizingMode? primaryAxisSizing;
  final ChildSizingMode? counterAxisSizing;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData! as FigmaLayoutParentData;
    bool needsLayout = false;

    if (parentData.x != x) {
      parentData.x = x;
      needsLayout = true;
    }
    if (parentData.y != y) {
      parentData.y = y;
      needsLayout = true;
    }
    if (parentData.width != width) {
      parentData.width = width;
      needsLayout = true;
    }
    if (parentData.height != height) {
      parentData.height = height;
      needsLayout = true;
    }
    if (parentData.horizontalConstraint != horizontalConstraint) {
      parentData.horizontalConstraint = horizontalConstraint;
      needsLayout = true;
    }
    if (parentData.verticalConstraint != verticalConstraint) {
      parentData.verticalConstraint = verticalConstraint;
      needsLayout = true;
    }
    if (parentData.primaryAxisSizing != primaryAxisSizing) {
      parentData.primaryAxisSizing = primaryAxisSizing;
      needsLayout = true;
    }
    if (parentData.counterAxisSizing != counterAxisSizing) {
      parentData.counterAxisSizing = counterAxisSizing;
      needsLayout = true;
    }

    if (needsLayout) {
      final targetParent = renderObject.parent;
      if (targetParent is RenderObject) {
        targetParent.markNeedsLayout();
      }
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => FigmaAbsoluteLayout;
}

class FigmaChildSize extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaChildSize({
    super.key,
    required super.child,
    this.width = 0,
    this.height = 0,
    this.primaryAxisSizing,
    this.counterAxisSizing,
  });

  final double width;
  final double height;
  final ChildSizingMode? primaryAxisSizing;
  final ChildSizingMode? counterAxisSizing;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData! as FigmaLayoutParentData;
    bool needsLayout = false;

    if (parentData.width != width) {
      parentData.width = width;
      needsLayout = true;
    }
    if (parentData.height != height) {
      parentData.height = height;
      needsLayout = true;
    }
    if (parentData.primaryAxisSizing != primaryAxisSizing) {
      parentData.primaryAxisSizing = primaryAxisSizing;
      needsLayout = true;
    }
    if (parentData.counterAxisSizing != counterAxisSizing) {
      parentData.counterAxisSizing = counterAxisSizing;
      needsLayout = true;
    }

    if (needsLayout) {
      final targetParent = renderObject.parent;
      if (targetParent is RenderObject) {
        targetParent.markNeedsLayout();
      }
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => FigmaAutoLayout;
}
