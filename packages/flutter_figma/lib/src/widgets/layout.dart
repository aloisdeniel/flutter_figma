import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/layout.dart';

sealed class FigmaLayoutProperties {
  const FigmaLayoutProperties();

  const factory FigmaLayoutProperties.auto({
    AutoLayoutMode mode,
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

  const factory FigmaLayoutProperties.grid({
    int columnCount,
    int rowCount,
    List<GridTrack> columns,
    List<GridTrack> rows,
    double columnGap,
    double rowGap,
    double paddingLeft,
    double paddingRight,
    double paddingTop,
    double paddingBottom,
  }) = FigmaGridLayoutProperties;
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
    this.mode = AutoLayoutMode.horizontal,
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

  final AutoLayoutMode mode;
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

class FigmaGridLayoutProperties extends FigmaLayoutProperties {
  const FigmaGridLayoutProperties({
    this.columnCount = 1,
    this.rowCount = 1,
    this.columns = const [],
    this.rows = const [],
    this.columnGap = 0,
    this.rowGap = 0,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
  });

  final int columnCount;
  final int rowCount;
  final List<GridTrack> columns;
  final List<GridTrack> rows;
  final double columnGap;
  final double rowGap;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
}

class FigmaLayout extends MultiChildRenderObjectWidget {
  const FigmaLayout({
    super.key,
    required super.children,
    this.layout = const FigmaAutoLayoutProperties(),
  });

  final FigmaLayoutProperties layout;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return switch (layout) {
      FigmaAutoLayoutProperties(
        :final mode,
        :final primaryAxisSizingMode,
        :final counterAxisSizingMode,
        :final primaryAxisAlignItems,
        :final counterAxisAlignItems,
        :final layoutWrap,
        :final paddingLeft,
        :final paddingRight,
        :final paddingTop,
        :final paddingBottom,
        :final itemSpacing,
        :final counterAxisSpacing
      ) =>
        RenderFigmaLayout(
          mode: mode,
          primaryAxisSizingMode: primaryAxisSizingMode,
          counterAxisSizingMode: counterAxisSizingMode,
          primaryAxisAlignItems: primaryAxisAlignItems,
          counterAxisAlignItems: counterAxisAlignItems,
          layoutWrap: layoutWrap,
          paddingLeft: paddingLeft,
          paddingRight: paddingRight,
          paddingTop: paddingTop,
          paddingBottom: paddingBottom,
          itemSpacing: itemSpacing,
          counterAxisSpacing: counterAxisSpacing,
        ),
      FigmaAbsoluteLayoutProperties(:final width, :final height) =>
        RenderFigmaLayout(
          width: width,
          height: height,
        ),
      FigmaGridLayoutProperties(
        :final columnCount,
        :final rowCount,
        :final columns,
        :final rows,
        :final columnGap,
        :final rowGap,
        :final paddingLeft,
        :final paddingRight,
        :final paddingTop,
        :final paddingBottom
      ) =>
        RenderFigmaLayout(
          mode: AutoLayoutMode.grid,
          gridColumnCount: columnCount,
          gridRowCount: rowCount,
          gridColumns: columns,
          gridRows: rows,
          gridColumnGap: columnGap,
          gridRowGap: rowGap,
          paddingLeft: paddingLeft,
          paddingRight: paddingRight,
          paddingTop: paddingTop,
          paddingBottom: paddingBottom,
        ),
    };
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaLayout renderObject) {
    switch (layout) {
      case FigmaAutoLayoutProperties(
          :final mode,
          :final primaryAxisSizingMode,
          :final counterAxisSizingMode,
          :final primaryAxisAlignItems,
          :final counterAxisAlignItems,
          :final layoutWrap,
          :final paddingLeft,
          :final paddingRight,
          :final paddingTop,
          :final paddingBottom,
          :final itemSpacing,
          :final counterAxisSpacing
        ):
        renderObject
          ..mode = mode
          ..primaryAxisSizingMode = primaryAxisSizingMode
          ..counterAxisSizingMode = counterAxisSizingMode
          ..primaryAxisAlignItems = primaryAxisAlignItems
          ..counterAxisAlignItems = counterAxisAlignItems
          ..layoutWrap = layoutWrap
          ..paddingLeft = paddingLeft
          ..paddingRight = paddingRight
          ..paddingTop = paddingTop
          ..paddingBottom = paddingBottom
          ..itemSpacing = itemSpacing
          ..counterAxisSpacing = counterAxisSpacing;
      case FigmaAbsoluteLayoutProperties(:final width, :final height):
        renderObject
          ..width = width
          ..height = height;
      case FigmaGridLayoutProperties(
          :final columnCount,
          :final rowCount,
          :final columns,
          :final rows,
          :final columnGap,
          :final rowGap,
          :final paddingLeft,
          :final paddingRight,
          :final paddingTop,
          :final paddingBottom
        ):
        renderObject
          ..mode = AutoLayoutMode.grid
          ..gridColumnCount = columnCount
          ..gridRowCount = rowCount
          ..gridColumns = columns
          ..gridRows = rows
          ..gridColumnGap = columnGap
          ..gridRowGap = rowGap
          ..paddingLeft = paddingLeft
          ..paddingRight = paddingRight
          ..paddingTop = paddingTop
          ..paddingBottom = paddingBottom;
    }
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
  Type get debugTypicalAncestorWidgetClass => FigmaLayout;
}

class FigmaSized extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaSized({
    super.key,
    required this.size,
    required super.child,
  });

  final ChildSize size;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData! as FigmaLayoutParentData;
    bool needsLayout = false;

    if (parentData.width != size.width) {
      parentData.width = size.width;
      needsLayout = true;
    }
    if (parentData.height != size.height) {
      parentData.height = size.height;
      needsLayout = true;
    }
    if (parentData.primaryAxisSizing != size.primaryAxisSizing) {
      parentData.primaryAxisSizing = size.primaryAxisSizing;
      needsLayout = true;
    }
    if (parentData.counterAxisSizing != size.counterAxisSizing) {
      parentData.counterAxisSizing = size.counterAxisSizing;
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
  Type get debugTypicalAncestorWidgetClass => FigmaLayout;
}

class FigmaGridCell extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaGridCell({
    super.key,
    required super.child,
    this.column = 0,
    this.row = 0,
    this.columnSpan = 1,
    this.rowSpan = 1,
  });

  final int column;
  final int row;
  final int columnSpan;
  final int rowSpan;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData! as FigmaLayoutParentData;
    bool needsLayout = false;

    if (parentData.gridColumn != column) {
      parentData.gridColumn = column;
      needsLayout = true;
    }
    if (parentData.gridRow != row) {
      parentData.gridRow = row;
      needsLayout = true;
    }
    if (parentData.gridColumnSpan != columnSpan) {
      parentData.gridColumnSpan = columnSpan;
      needsLayout = true;
    }
    if (parentData.gridRowSpan != rowSpan) {
      parentData.gridRowSpan = rowSpan;
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
  Type get debugTypicalAncestorWidgetClass => FigmaLayout;
}
