import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/layout.dart';

sealed class FigmaLayoutProperties {
  const FigmaLayoutProperties();

  const factory FigmaLayoutProperties.auto({
    required double referenceWidth,
    required double referenceHeight,
    Axis axis,
    LayoutAlign primaryAxisAlignItems,
    LayoutAlign counterAxisAlignItems,
    LayoutWrap layoutWrap,
    EdgeInsets padding,
    double itemSpacing,
    double counterAxisSpacing,
  }) = FigmaAutoLayoutProperties;

  const factory FigmaLayoutProperties.freeform({
    required double referenceWidth,
    required double referenceHeight,
  }) = FigmaFreeformLayoutProperties;

  const factory FigmaLayoutProperties.grid({
    int columnCount,
    int rowCount,
    List<GridTrack> columns,
    List<GridTrack> rows,
    double columnGap,
    double rowGap,
    EdgeInsets padding,
  }) = FigmaGridLayoutProperties;
}

class FigmaFreeformLayoutProperties extends FigmaLayoutProperties {
  const FigmaFreeformLayoutProperties({
    required this.referenceWidth,
    required this.referenceHeight,
  });
  final double referenceWidth;
  final double referenceHeight;
}

class FigmaAutoLayoutProperties extends FigmaLayoutProperties {
  const FigmaAutoLayoutProperties({
    required this.referenceWidth,
    required this.referenceHeight,
    this.axis = Axis.horizontal,
    this.primaryAxisAlignItems = LayoutAlign.min,
    this.counterAxisAlignItems = LayoutAlign.min,
    this.layoutWrap = LayoutWrap.noWrap,
    this.padding = EdgeInsets.zero,
    this.itemSpacing = 0,
    this.counterAxisSpacing = 0,
  });

  final double referenceWidth;
  final double referenceHeight;
  final Axis axis;
  final LayoutAlign primaryAxisAlignItems;
  final LayoutAlign counterAxisAlignItems;
  final LayoutWrap layoutWrap;
  final EdgeInsets padding;
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
    this.padding = EdgeInsets.zero,
  });

  final int columnCount;
  final int rowCount;
  final List<GridTrack> columns;
  final List<GridTrack> rows;
  final double columnGap;
  final double rowGap;
  final EdgeInsets padding;
}

class FigmaLayout extends MultiChildRenderObjectWidget {
  const FigmaLayout({
    super.key,
    required this.layout,
    required super.children,
  });

  final FigmaLayoutProperties layout;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return switch (layout) {
      FigmaAutoLayoutProperties(
        :final referenceWidth,
        :final referenceHeight,
        :final axis,
        :final primaryAxisAlignItems,
        :final counterAxisAlignItems,
        :final layoutWrap,
        :final padding,
        :final itemSpacing,
        :final counterAxisSpacing
      ) =>
        RenderFigmaLayout(
          mode: switch (axis) {
            Axis.horizontal => LayoutMode.horizontal,
            Axis.vertical => LayoutMode.vertical,
          },
          referenceWidth: referenceWidth,
          referenceHeight: referenceHeight,
          primaryAxisAlignItems: primaryAxisAlignItems,
          counterAxisAlignItems: counterAxisAlignItems,
          layoutWrap: layoutWrap,
          paddingLeft: padding.left,
          paddingRight: padding.right,
          paddingTop: padding.top,
          paddingBottom: padding.bottom,
          itemSpacing: itemSpacing,
          counterAxisSpacing: counterAxisSpacing,
        ),
      FigmaFreeformLayoutProperties(
        :final referenceWidth,
        :final referenceHeight,
      ) =>
        RenderFigmaLayout(
          referenceWidth: referenceWidth,
          referenceHeight: referenceHeight,
        ),
      FigmaGridLayoutProperties(
        :final columnCount,
        :final rowCount,
        :final columns,
        :final rows,
        :final columnGap,
        :final rowGap,
        :final padding,
      ) =>
        RenderFigmaLayout(
          mode: LayoutMode.grid,
          gridColumnCount: columnCount,
          gridRowCount: rowCount,
          gridColumns: columns,
          gridRows: rows,
          gridColumnGap: columnGap,
          gridRowGap: rowGap,
          paddingLeft: padding.left,
          paddingRight: padding.right,
          paddingTop: padding.top,
          paddingBottom: padding.bottom,
        ),
    };
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaLayout renderObject) {
    switch (layout) {
      case FigmaAutoLayoutProperties(
          :final referenceWidth,
          :final referenceHeight,
          :final axis,
          :final primaryAxisAlignItems,
          :final counterAxisAlignItems,
          :final layoutWrap,
          :final padding,
          :final itemSpacing,
          :final counterAxisSpacing
        ):
        renderObject
          ..mode = switch (axis) {
            Axis.horizontal => LayoutMode.horizontal,
            Axis.vertical => LayoutMode.vertical,
          }
          ..referenceHeight = referenceHeight
          ..referenceWidth = referenceWidth
          ..primaryAxisAlignItems = primaryAxisAlignItems
          ..counterAxisAlignItems = counterAxisAlignItems
          ..layoutWrap = layoutWrap
          ..paddingLeft = padding.left
          ..paddingRight = padding.right
          ..paddingTop = padding.top
          ..paddingBottom = padding.bottom
          ..itemSpacing = itemSpacing
          ..counterAxisSpacing = counterAxisSpacing;
      case FigmaGridLayoutProperties(
          :final columnCount,
          :final rowCount,
          :final columns,
          :final rows,
          :final columnGap,
          :final rowGap,
          :final padding,
        ):
        renderObject
          ..mode = LayoutMode.grid
          ..gridColumnCount = columnCount
          ..gridRowCount = rowCount
          ..gridColumns = columns
          ..gridRows = rows
          ..gridColumnGap = columnGap
          ..gridRowGap = rowGap
          ..paddingLeft = padding.left
          ..paddingRight = padding.right
          ..paddingTop = padding.top
          ..paddingBottom = padding.bottom;
      case FigmaFreeformLayoutProperties(
          :final referenceWidth,
          :final referenceHeight,
        ):
        renderObject
          ..referenceHeight = referenceHeight
          ..referenceWidth = referenceWidth;
    }
  }
}

class FigmaPositioned extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaPositioned.freeform({
    super.key,
    required super.child,
    this.x = 0,
    this.y = 0,
    this.width = 0,
    this.height = 0,
    this.horizontalConstraint = ConstraintType.min,
    this.verticalConstraint = ConstraintType.min,
  })  : primaryAxisSizing = null,
        counterAxisSizing = null,
        mode = FigmaPositionningMode.absolute,
        column = 0,
        row = 0,
        columnSpan = 1,
        rowSpan = 1;

  const FigmaPositioned.auto({
    super.key,
    required super.child,
    this.width = 0,
    this.height = 0,
    ChildSizingMode this.primaryAxisSizing = ChildSizingMode.hug,
    ChildSizingMode this.counterAxisSizing = ChildSizingMode.hug,
  })  : x = 0,
        y = 0,
        mode = FigmaPositionningMode.auto,
        horizontalConstraint = ConstraintType.min,
        verticalConstraint = ConstraintType.min,
        column = 0,
        row = 0,
        columnSpan = 1,
        rowSpan = 1;

  const FigmaPositioned.grid({
    super.key,
    required super.child,
    this.row = 0,
    this.column = 0,
    this.rowSpan = 1,
    this.columnSpan = 1,
  })  : x = 0,
        y = 0,
        mode = FigmaPositionningMode.auto,
        height = 0,
        width = 0,
        counterAxisSizing = null,
        primaryAxisSizing = null,
        horizontalConstraint = ConstraintType.min,
        verticalConstraint = ConstraintType.min;

  final FigmaPositionningMode mode;
  final double x;
  final double y;
  final double width;
  final double height;
  final ConstraintType horizontalConstraint;
  final ConstraintType verticalConstraint;
  final ChildSizingMode? primaryAxisSizing;
  final ChildSizingMode? counterAxisSizing;
  final int column;
  final int row;
  final int columnSpan;
  final int rowSpan;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData! as FigmaLayoutParentData;
    bool needsLayout = false;

    if (parentData.mode != mode) {
      parentData.mode = mode;
      needsLayout = true;
    }
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
