import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'layout_freeform.dart';
import 'layout_auto.dart';
import 'layout_grid.dart';

enum FigmaPositionningMode {
  auto,
  absolute,
}

class FigmaLayoutParentData extends ContainerBoxParentData<RenderBox> {
  FigmaPositionningMode mode = FigmaPositionningMode.auto;
  double x = 0;
  double y = 0;
  double width = 0;
  double height = 0;
  ConstraintType horizontalConstraint = ConstraintType.min;
  ConstraintType verticalConstraint = ConstraintType.min;

  // AutoLayout-specific
  ChildSizingMode? primaryAxisSizing;
  ChildSizingMode? counterAxisSizing;

  // Grid-specific properties
  int gridColumn = 0;
  int gridRow = 0;
  int gridColumnSpan = 1;
  int gridRowSpan = 1;
}

class RenderFigmaLayout extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, FigmaLayoutParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, FigmaLayoutParentData>,
        FigmaAbsoluteLayoutMixin,
        FigmaAutoLayoutMixin,
        FigmaGridLayoutMixin {
  RenderFigmaLayout({
    LayoutMode mode = LayoutMode.freeform,
    double referenceWidth = 0,
    double referenceHeight = 0,
    PrimaryAxisSizingMode primaryAxisSizingMode = PrimaryAxisSizingMode.fixed,
    CounterAxisSizingMode counterAxisSizingMode = CounterAxisSizingMode.fixed,
    LayoutAlign primaryAxisAlignItems = LayoutAlign.min,
    LayoutAlign counterAxisAlignItems = LayoutAlign.min,
    LayoutWrap layoutWrap = LayoutWrap.noWrap,
    double paddingLeft = 0,
    double paddingRight = 0,
    double paddingTop = 0,
    double paddingBottom = 0,
    double itemSpacing = 0,
    double counterAxisSpacing = 0,
    int gridColumnCount = 1,
    int gridRowCount = 1,
    List<GridTrack> gridColumns = const [],
    List<GridTrack> gridRows = const [],
    double gridColumnGap = 0,
    double gridRowGap = 0,
  })  : _mode = mode,
        _referenceWidth = referenceWidth,
        _referenceHeight = referenceHeight,
        _primaryAxisSizingMode = primaryAxisSizingMode,
        _counterAxisSizingMode = counterAxisSizingMode,
        _primaryAxisAlignItems = primaryAxisAlignItems,
        _counterAxisAlignItems = counterAxisAlignItems,
        _layoutWrap = layoutWrap,
        _paddingLeft = paddingLeft,
        _paddingRight = paddingRight,
        _paddingTop = paddingTop,
        _paddingBottom = paddingBottom,
        _itemSpacing = itemSpacing,
        _counterAxisSpacing = counterAxisSpacing,
        _gridColumnCount = gridColumnCount,
        _gridRowCount = gridRowCount,
        _gridColumns = gridColumns,
        _gridRows = gridRows,
        _gridColumnGap = gridColumnGap,
        _gridRowGap = gridRowGap;

  double _referenceWidth;
  double get referenceWidth => _referenceWidth;
  set referenceWidth(double value) {
    if (_referenceWidth != value) {
      _referenceWidth = value;
      markNeedsLayout();
    }
  }

  double _referenceHeight;
  double get referenceHeight => _referenceHeight;
  set referenceHeight(double value) {
    if (_referenceHeight != value) {
      _referenceHeight = value;
      markNeedsLayout();
    }
  }

  LayoutMode _mode;
  LayoutMode get mode => _mode;
  set mode(LayoutMode value) {
    if (_mode != value) {
      _mode = value;
      markNeedsLayout();
    }
  }

  // FigmaAutoLayoutMixin implementation
  @override
  LayoutMode get autoLayoutMode => _mode;

  PrimaryAxisSizingMode _primaryAxisSizingMode;
  PrimaryAxisSizingMode get primaryAxisSizingMode => _primaryAxisSizingMode;
  set primaryAxisSizingMode(PrimaryAxisSizingMode value) {
    if (_primaryAxisSizingMode != value) {
      _primaryAxisSizingMode = value;
      markNeedsLayout();
    }
  }

  CounterAxisSizingMode _counterAxisSizingMode;
  CounterAxisSizingMode get counterAxisSizingMode => _counterAxisSizingMode;
  set counterAxisSizingMode(CounterAxisSizingMode value) {
    if (_counterAxisSizingMode != value) {
      _counterAxisSizingMode = value;
      markNeedsLayout();
    }
  }

  LayoutAlign _primaryAxisAlignItems;
  LayoutAlign get primaryAxisAlignItems => _primaryAxisAlignItems;
  set primaryAxisAlignItems(LayoutAlign value) {
    if (_primaryAxisAlignItems != value) {
      _primaryAxisAlignItems = value;
      markNeedsLayout();
    }
  }

  LayoutAlign _counterAxisAlignItems;
  LayoutAlign get counterAxisAlignItems => _counterAxisAlignItems;
  set counterAxisAlignItems(LayoutAlign value) {
    if (_counterAxisAlignItems != value) {
      _counterAxisAlignItems = value;
      markNeedsLayout();
    }
  }

  LayoutWrap _layoutWrap;
  LayoutWrap get layoutWrap => _layoutWrap;
  set layoutWrap(LayoutWrap value) {
    if (_layoutWrap != value) {
      _layoutWrap = value;
      markNeedsLayout();
    }
  }

  double _paddingLeft;
  double get paddingLeft => _paddingLeft;
  set paddingLeft(double value) {
    if (_paddingLeft != value) {
      _paddingLeft = value;
      markNeedsLayout();
    }
  }

  double _paddingRight;
  double get paddingRight => _paddingRight;
  set paddingRight(double value) {
    if (_paddingRight != value) {
      _paddingRight = value;
      markNeedsLayout();
    }
  }

  double _paddingTop;
  double get paddingTop => _paddingTop;
  set paddingTop(double value) {
    if (_paddingTop != value) {
      _paddingTop = value;
      markNeedsLayout();
    }
  }

  double _paddingBottom;
  double get paddingBottom => _paddingBottom;
  set paddingBottom(double value) {
    if (_paddingBottom != value) {
      _paddingBottom = value;
      markNeedsLayout();
    }
  }

  double _itemSpacing;
  double get itemSpacing => _itemSpacing;
  set itemSpacing(double value) {
    if (_itemSpacing != value) {
      _itemSpacing = value;
      markNeedsLayout();
    }
  }

  double _counterAxisSpacing;
  double get counterAxisSpacing => _counterAxisSpacing;
  set counterAxisSpacing(double value) {
    if (_counterAxisSpacing != value) {
      _counterAxisSpacing = value;
      markNeedsLayout();
    }
  }

  int _gridColumnCount;
  int get gridColumnCount => _gridColumnCount;
  set gridColumnCount(int value) {
    if (_gridColumnCount != value) {
      _gridColumnCount = value;
      markNeedsLayout();
    }
  }

  int _gridRowCount;
  int get gridRowCount => _gridRowCount;
  set gridRowCount(int value) {
    if (_gridRowCount != value) {
      _gridRowCount = value;
      markNeedsLayout();
    }
  }

  List<GridTrack> _gridColumns;
  List<GridTrack> get gridColumns => _gridColumns;
  set gridColumns(List<GridTrack> value) {
    if (_gridColumns != value) {
      _gridColumns = value;
      markNeedsLayout();
    }
  }

  List<GridTrack> _gridRows;
  List<GridTrack> get gridRows => _gridRows;
  set gridRows(List<GridTrack> value) {
    if (_gridRows != value) {
      _gridRows = value;
      markNeedsLayout();
    }
  }

  double _gridColumnGap;
  double get gridColumnGap => _gridColumnGap;
  set gridColumnGap(double value) {
    if (_gridColumnGap != value) {
      _gridColumnGap = value;
      markNeedsLayout();
    }
  }

  double _gridRowGap;
  double get gridRowGap => _gridRowGap;
  set gridRowGap(double value) {
    if (_gridRowGap != value) {
      _gridRowGap = value;
      markNeedsLayout();
    }
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! FigmaLayoutParentData) {
      child.parentData = FigmaLayoutParentData();
    }
  }

  @override
  void performLayout() {
    switch (_mode) {
      case LayoutMode.freeform:
        final children = <RenderBox>[];

        RenderBox? child = firstChild;
        while (child != null) {
          final childParentData = child.parentData! as FigmaLayoutParentData;
          if (childParentData.mode != FigmaPositionningMode.absolute) {
            print('A child does not have its absolute positioning');
          }
          children.add(child);
          child = childParentData.nextSibling;
        }

        size = constraints.biggest;
        positionAbsoluteChildren(
          children,
          Size(referenceWidth, referenceHeight),
          size,
        );
      case LayoutMode.horizontal:
      case LayoutMode.vertical:
        final autoChildren = <RenderBox>[];
        final absoluteChildren = <RenderBox>[];

        RenderBox? child = firstChild;
        while (child != null) {
          final childParentData = child.parentData! as FigmaLayoutParentData;
          if (childParentData.mode == FigmaPositionningMode.absolute) {
            absoluteChildren.add(child);
          } else {
            autoChildren.add(child);
          }
          child = childParentData.nextSibling;
        }
        // First layout the auto children to determine the container size
        size = performAutoLayout(autoChildren, constraints);
        positionAutoChildren(autoChildren, size);

        // Then position absolute children on top, respecting their constraints
        positionAbsoluteChildren(
            absoluteChildren, Size(referenceWidth, referenceHeight), size);
      case LayoutMode.grid:
        // Grid layout doesn't support mixed layout yet
        size = performGridLayout();
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<LayoutMode>('direction', mode));
    properties.add(EnumProperty<PrimaryAxisSizingMode>(
        'primaryAxisSizingMode', primaryAxisSizingMode));
    properties.add(EnumProperty<CounterAxisSizingMode>(
        'counterAxisSizingMode', counterAxisSizingMode));
    properties.add(EnumProperty<LayoutAlign>(
        'primaryAxisAlignItems', primaryAxisAlignItems));
    properties.add(EnumProperty<LayoutAlign>(
        'counterAxisAlignItems', counterAxisAlignItems));
    properties.add(EnumProperty<LayoutWrap>('layoutWrap', layoutWrap));
    properties.add(DoubleProperty('paddingLeft', paddingLeft));
    properties.add(DoubleProperty('paddingRight', paddingRight));
    properties.add(DoubleProperty('paddingTop', paddingTop));
    properties.add(DoubleProperty('paddingBottom', paddingBottom));
    properties.add(DoubleProperty('itemSpacing', itemSpacing));
    properties.add(DoubleProperty('counterAxisSpacing', counterAxisSpacing));
    properties.add(IntProperty('gridColumnCount', gridColumnCount));
    properties.add(IntProperty('gridRowCount', gridRowCount));
    properties.add(DoubleProperty('gridColumnGap', gridColumnGap));
    properties.add(DoubleProperty('gridRowGap', gridRowGap));
  }
}
