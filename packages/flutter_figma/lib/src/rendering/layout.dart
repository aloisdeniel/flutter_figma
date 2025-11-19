import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

class FigmaLayoutParentData extends ContainerBoxParentData<RenderBox> {
  double x = 0;
  double y = 0;
  double width = 0;
  double height = 0;
  ConstraintType horizontalConstraint = ConstraintType.min;
  ConstraintType verticalConstraint = ConstraintType.min;
  ChildSizingMode? primaryAxisSizing;
  ChildSizingMode? counterAxisSizing;

  // Grid-specific properties
  int gridColumn = 0;
  int gridRow = 0;
  int gridColumnSpan = 1;
  int gridRowSpan = 1;

  bool get isAbsolutePositioned =>
      horizontalConstraint != ConstraintType.min ||
      verticalConstraint != ConstraintType.min ||
      x != 0 ||
      y != 0;
}

class RenderFigmaLayout extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, FigmaLayoutParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, FigmaLayoutParentData> {
  RenderFigmaLayout({
    double width = 0,
    double height = 0,
    AutoLayoutMode mode = AutoLayoutMode.none,
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
  })  : _width = width,
        _height = height,
        _mode = mode,
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

  double _width;
  double get width => _width;
  set width(double value) {
    if (_width != value) {
      _width = value;
      markNeedsLayout();
    }
  }

  double _height;
  double get height => _height;
  set height(double value) {
    if (_height != value) {
      _height = value;
      markNeedsLayout();
    }
  }

  AutoLayoutMode _mode;
  AutoLayoutMode get mode => _mode;
  set mode(AutoLayoutMode value) {
    if (_mode != value) {
      _mode = value;
      markNeedsLayout();
    }
  }

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
    if (_mode == AutoLayoutMode.grid) {
      _performGridLayout();
      return;
    }

    final autoChildren = <RenderBox>[];
    final absoluteChildren = <RenderBox>[];

    RenderBox? child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as FigmaLayoutParentData;
      if (childParentData.isAbsolutePositioned) {
        absoluteChildren.add(child);
      } else {
        autoChildren.add(child);
      }
      child = childParentData.nextSibling;
    }

    if (autoChildren.isEmpty && absoluteChildren.isNotEmpty) {
      _performAbsoluteLayout(absoluteChildren);
    } else if (absoluteChildren.isEmpty && autoChildren.isNotEmpty) {
      _performAutoLayout(autoChildren);
    } else {
      _performMixedLayout(autoChildren, absoluteChildren);
    }
  }

  void _performAbsoluteLayout(List<RenderBox> absoluteChildren) {
    size = constraints.constrain(Size(_width, _height));
    _positionAbsoluteChildren(absoluteChildren);
  }

  void _positionAbsoluteChildren(List<RenderBox> absoluteChildren) {
    for (final child in absoluteChildren) {
      final childParentData = child.parentData! as FigmaLayoutParentData;

      // Calculate child size based on constraints
      double childWidth = childParentData.width;
      double childHeight = childParentData.height;

      // Handle stretch constraints - child should stretch to fill available space
      if (childParentData.horizontalConstraint == ConstraintType.stretch) {
        // For stretch, the width extends from x to (containerWidth - x)
        // In Figma, x represents the left distance and width represents right distance
        childWidth = size.width - childParentData.x - childParentData.width;
      }

      if (childParentData.verticalConstraint == ConstraintType.stretch) {
        // For stretch, the height extends from y to (containerHeight - y)
        // In Figma, y represents the top distance and height represents bottom distance
        childHeight = size.height - childParentData.y - childParentData.height;
      }

      child.layout(
        BoxConstraints(
          minWidth: childWidth,
          maxWidth: childWidth,
          minHeight: childHeight,
          maxHeight: childHeight,
        ),
        parentUsesSize: false,
      );

      // Calculate position based on constraint types
      double x = childParentData.x;
      double y = childParentData.y;

      switch (childParentData.horizontalConstraint) {
        case ConstraintType.min:
          // Pin to left - x is distance from left
          x = childParentData.x;
          break;
        case ConstraintType.max:
          // Pin to right - x is distance from right
          x = size.width - childParentData.x - childWidth;
          break;
        case ConstraintType.center:
          // Center horizontally - x is offset from center
          x = (size.width - childWidth) / 2 + childParentData.x;
          break;
        case ConstraintType.stretch:
          // Pin to both left and right - x is distance from left
          x = childParentData.x;
          break;
        case ConstraintType.scale:
          // Scale proportionally - x is proportional position
          x = childParentData.x;
          break;
      }

      switch (childParentData.verticalConstraint) {
        case ConstraintType.min:
          // Pin to top - y is distance from top
          y = childParentData.y;
          break;
        case ConstraintType.max:
          // Pin to bottom - y is distance from bottom
          y = size.height - childParentData.y - childHeight;
          break;
        case ConstraintType.center:
          // Center vertically - y is offset from center
          y = (size.height - childHeight) / 2 + childParentData.y;
          break;
        case ConstraintType.stretch:
          // Pin to both top and bottom - y is distance from top
          y = childParentData.y;
          break;
        case ConstraintType.scale:
          // Scale proportionally - y is proportional position
          y = childParentData.y;
          break;
      }

      childParentData.offset = Offset(x, y);
    }
  }

  void _performAutoLayout(List<RenderBox> autoChildren) {
    if (autoChildren.isEmpty) {
      final padSumP = _getPadStartP() + _getPadEndP();
      final padSumC = _getPadStartC() + _getPadEndC();
      final expectedSize = switch (_mode) {
        AutoLayoutMode.horizontal => Size(padSumP, padSumC),
        AutoLayoutMode.vertical => Size(padSumC, padSumP),
        _ => throw Exception(),
      };
      size = constraints.constrain(expectedSize);
      return;
    }

    final List<Size> childSizes = [];
    for (final child in autoChildren) {
      final childParentData = child.parentData! as FigmaLayoutParentData;
      final primarySizing = childParentData.primaryAxisSizing;
      final counterSizing = childParentData.counterAxisSizing;

      BoxConstraints childConstraints;
      if (_mode == AutoLayoutMode.horizontal) {
        final minWidth = primarySizing == ChildSizingMode.fixed
            ? childParentData.width
            : 0.0;
        final maxWidth = primarySizing == ChildSizingMode.fixed
            ? childParentData.width
            : double.infinity;
        final minHeight = counterSizing == ChildSizingMode.fixed
            ? childParentData.height
            : 0.0;
        final maxHeight = counterSizing == ChildSizingMode.fixed
            ? childParentData.height
            : double.infinity;
        childConstraints = BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        );
      } else {
        final minWidth = counterSizing == ChildSizingMode.fixed
            ? childParentData.width
            : 0.0;
        final maxWidth = counterSizing == ChildSizingMode.fixed
            ? childParentData.width
            : double.infinity;
        final minHeight = primarySizing == ChildSizingMode.fixed
            ? childParentData.height
            : 0.0;
        final maxHeight = primarySizing == ChildSizingMode.fixed
            ? childParentData.height
            : double.infinity;
        childConstraints = BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        );
      }

      child.layout(childConstraints, parentUsesSize: true);
      childSizes.add(child.size);
    }

    final padSumP = _getPadStartP() + _getPadEndP();
    final padSumC = _getPadStartC() + _getPadEndC();

    double? innerFixedP;
    if (_primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      innerFixedP = switch (_mode) {
        AutoLayoutMode.horizontal => constraints.maxWidth - padSumP,
        AutoLayoutMode.vertical => constraints.maxHeight - padSumP,
        AutoLayoutMode.none || AutoLayoutMode.grid => null,
      };
    }

    final lines = _buildLines(childSizes, innerFixedP);

    double innerP;
    if (_primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      innerP = innerFixedP!;
    } else {
      if (_layoutWrap == LayoutWrap.wrap && lines.length > 1) {
        innerP = lines.map((l) => l.sumP).reduce(math.max);
      } else {
        innerP = childSizes.isEmpty
            ? 0
            : childSizes
                    .map((s) => _getPrimarySize(s))
                    .reduce((a, b) => a + b) +
                _itemSpacing * (childSizes.length - 1);
      }
    }

    double innerC;
    if (_counterAxisSizingMode == CounterAxisSizingMode.fixed) {
      innerC = switch (_mode) {
        AutoLayoutMode.horizontal => constraints.maxHeight - padSumC,
        AutoLayoutMode.vertical => constraints.maxWidth - padSumC,
        AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
      };
    } else {
      innerC = lines.isEmpty
          ? 0
          : lines.map((l) => l.maxC).reduce((a, b) => a + b) +
              _counterAxisSpacing * math.max(0, lines.length - 1);
    }

    size = constraints.constrain(
      switch (_mode) {
        AutoLayoutMode.horizontal => Size(innerP + padSumP, innerC + padSumC),
        AutoLayoutMode.vertical => Size(innerC + padSumC, innerP + padSumP),
        AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
      },
    );

    _positionAutoChildren(autoChildren, lines, childSizes, innerP, innerC);
  }

  void _performMixedLayout(
      List<RenderBox> autoChildren, List<RenderBox> absoluteChildren) {
    switch (_mode) {
      case AutoLayoutMode.none:
        _performAbsoluteLayout(absoluteChildren);
      case AutoLayoutMode.horizontal:
      case AutoLayoutMode.vertical:
        // First layout the auto children to determine the container size
        _performAutoLayout(autoChildren);

        // Then position absolute children on top, respecting their constraints
        _positionAbsoluteChildren(absoluteChildren);
      case AutoLayoutMode.grid:
        // Grid layout doesn't support mixed layout yet
        _performGridLayout();
    }
  }

  double _getPrimarySize(Size size) {
    return switch (_mode) {
      AutoLayoutMode.horizontal => size.width,
      AutoLayoutMode.vertical => size.height,
      AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
    };
  }

  double _getCounterSize(Size size) {
    return switch (_mode) {
      AutoLayoutMode.horizontal => size.height,
      AutoLayoutMode.vertical => size.width,
      AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
    };
  }

  double _getPadStartP() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingLeft,
      AutoLayoutMode.vertical => _paddingTop,
      AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
    };
  }

  double _getPadEndP() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingRight,
      AutoLayoutMode.vertical => _paddingBottom,
      AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
    };
  }

  double _getPadStartC() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingTop,
      AutoLayoutMode.vertical => _paddingLeft,
      AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
    };
  }

  double _getPadEndC() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingBottom,
      AutoLayoutMode.vertical => _paddingRight,
      AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
    };
  }

  List<_Line> _buildLines(List<Size> childSizes, double? innerFixedP) {
    final lineCapacityP =
        (_layoutWrap == LayoutWrap.wrap && innerFixedP != null)
            ? innerFixedP
            : double.infinity;

    final lines = <_Line>[];
    var currentLine = _Line();

    for (var i = 0; i < childSizes.length; i++) {
      final itemP = _getPrimarySize(childSizes[i]);
      final need = (currentLine.items.isEmpty ? 0 : _itemSpacing) + itemP;

      if (_layoutWrap == LayoutWrap.wrap &&
          currentLine.sumP + need > lineCapacityP &&
          currentLine.items.isNotEmpty) {
        lines.add(currentLine);
        currentLine = _Line();
      }

      currentLine.items.add(i);
      currentLine.sumP +=
          (currentLine.items.length == 1 ? 0 : _itemSpacing) + itemP;
      currentLine.maxC =
          math.max(currentLine.maxC, _getCounterSize(childSizes[i]));
    }

    if (currentLine.items.isNotEmpty) {
      lines.add(currentLine);
    }

    return lines;
  }

  void _positionAutoChildren(List<RenderBox> autoChildren, List<_Line> lines,
      List<Size> childSizes, double innerP, double innerC) {
    final totalLinesC = lines.isEmpty
        ? 0.0
        : lines.map((l) => l.maxC).reduce((a, b) => a + b) +
            _counterAxisSpacing * math.max(0, lines.length - 1);

    final startC = switch (_counterAxisAlignItems) {
      LayoutAlign.min => 0.0,
      LayoutAlign.center => (innerC - totalLinesC) / 2,
      LayoutAlign.max => innerC - totalLinesC,
      LayoutAlign.stretch => 0.0,
      LayoutAlign.spaceBetween => 0.0,
    };

    var cursorC = startC;
    for (final line in lines) {
      line.offsetC = cursorC;
      cursorC += line.maxC + _counterAxisSpacing;
    }

    for (final line in lines) {
      final usedP = line.items.isEmpty
          ? 0.0
          : line.items
                  .map((i) => _getPrimarySize(childSizes[i]))
                  .reduce((a, b) => a + b) +
              _itemSpacing * math.max(0, line.items.length - 1);
      final freeP = innerP - usedP;

      double gap;
      double offsetP;

      if (_primaryAxisAlignItems == LayoutAlign.spaceBetween &&
          line.items.length > 1) {
        gap = freeP / (line.items.length - 1);
        offsetP = 0;
      } else {
        gap = _itemSpacing;
        offsetP = switch (_primaryAxisAlignItems) {
          LayoutAlign.min => 0.0,
          LayoutAlign.center => freeP / 2,
          LayoutAlign.max => freeP,
          LayoutAlign.spaceBetween => 0.0,
          LayoutAlign.stretch => 0.0,
        };
      }

      var cursorP = offsetP;

      for (final i in line.items) {
        final child = autoChildren[i];

        final offsetCItem = switch (_counterAxisAlignItems) {
          LayoutAlign.min => 0.0,
          LayoutAlign.center =>
            (line.maxC - _getCounterSize(childSizes[i])) / 2,
          LayoutAlign.max => line.maxC - _getCounterSize(childSizes[i]),
          LayoutAlign.stretch => 0.0,
          LayoutAlign.spaceBetween => 0.0,
        };

        final childParentData = child.parentData! as FigmaLayoutParentData;
        childParentData.offset = switch (_mode) {
          AutoLayoutMode.horizontal => Offset(
              _paddingLeft + cursorP,
              _paddingTop + line.offsetC + offsetCItem,
            ),
          AutoLayoutMode.vertical => Offset(
              _paddingLeft + line.offsetC + offsetCItem,
              _paddingTop + cursorP,
            ),
          AutoLayoutMode.none || AutoLayoutMode.grid => throw Exception(),
        };

        cursorP += _getPrimarySize(childSizes[i]) + gap;
      }
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

  void _performGridLayout() {
    // Calculate available space
    final availableWidth =
        constraints.maxWidth - _paddingLeft - _paddingRight;
    final availableHeight =
        constraints.maxHeight - _paddingTop - _paddingBottom;

    // Calculate column widths
    final columnWidths = <double>[];
    double totalFixedWidth = 0;
    int autoColumnCount = 0;

    for (int i = 0; i < _gridColumnCount; i++) {
      if (i < _gridColumns.length) {
        final track = _gridColumns[i];
        if (track.sizingMode == GridTrackSizingMode.fixed &&
            track.size != null) {
          columnWidths.add(track.size!);
          totalFixedWidth += track.size!;
        } else {
          columnWidths.add(0); // Will be calculated later
          autoColumnCount++;
        }
      } else {
        columnWidths.add(0);
        autoColumnCount++;
      }
    }

    // Calculate auto column width
    final totalGapWidth = _gridColumnGap * math.max(0, _gridColumnCount - 1);
    final availableForAuto = availableWidth - totalFixedWidth - totalGapWidth;
    final autoColumnWidth =
        autoColumnCount > 0 ? availableForAuto / autoColumnCount : 0.0;

    for (int i = 0; i < columnWidths.length; i++) {
      if (columnWidths[i] == 0) {
        columnWidths[i] = autoColumnWidth < 0 ? 0.0 : autoColumnWidth;
      }
    }

    // Calculate row heights
    final rowHeights = <double>[];
    double totalFixedHeight = 0;
    int autoRowCount = 0;

    for (int i = 0; i < _gridRowCount; i++) {
      if (i < _gridRows.length) {
        final track = _gridRows[i];
        if (track.sizingMode == GridTrackSizingMode.fixed &&
            track.size != null) {
          rowHeights.add(track.size!);
          totalFixedHeight += track.size!;
        } else {
          rowHeights.add(0); // Will be calculated later
          autoRowCount++;
        }
      } else {
        rowHeights.add(0);
        autoRowCount++;
      }
    }

    // Calculate auto row height
    final totalGapHeight = _gridRowGap * math.max(0, _gridRowCount - 1);
    final availableForAutoHeight =
        availableHeight - totalFixedHeight - totalGapHeight;
    final autoRowHeight =
        autoRowCount > 0 ? availableForAutoHeight / autoRowCount : 0.0;

    for (int i = 0; i < rowHeights.length; i++) {
      if (rowHeights[i] == 0) {
        rowHeights[i] = autoRowHeight < 0 ? 0.0 : autoRowHeight;
      }
    }

    // Layout children
    int childIndex = 0;
    RenderBox? child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as FigmaLayoutParentData;

      // Auto-assign grid position if not explicitly set
      if (childParentData.gridColumn == 0 && childParentData.gridRow == 0) {
        childParentData.gridRow = childIndex ~/ _gridColumnCount;
        childParentData.gridColumn = childIndex % _gridColumnCount;
      }

      final col = childParentData.gridColumn;
      final row = childParentData.gridRow;
      final colSpan = childParentData.gridColumnSpan;
      final rowSpan = childParentData.gridRowSpan;

      // Calculate cell size based on span
      double cellWidth = 0;
      for (int i = col; i < math.min(col + colSpan, columnWidths.length); i++) {
        cellWidth += columnWidths[i];
        if (i < col + colSpan - 1) {
          cellWidth += _gridColumnGap;
        }
      }

      double cellHeight = 0;
      for (int i = row; i < math.min(row + rowSpan, rowHeights.length); i++) {
        cellHeight += rowHeights[i];
        if (i < row + rowSpan - 1) {
          cellHeight += _gridRowGap;
        }
      }

      // Layout child
      child.layout(
        BoxConstraints.tightFor(width: cellWidth, height: cellHeight),
        parentUsesSize: true,
      );

      // Calculate position
      double x = _paddingLeft;
      for (int i = 0; i < col; i++) {
        x += columnWidths[i] + _gridColumnGap;
      }

      double y = _paddingTop;
      for (int i = 0; i < row; i++) {
        y += rowHeights[i] + _gridRowGap;
      }

      childParentData.offset = Offset(x, y);

      child = childParentData.nextSibling;
      childIndex++;
    }

    // Set container size
    final totalWidth = columnWidths.fold<double>(0, (sum, w) => sum + w) +
        totalGapWidth +
        _paddingLeft +
        _paddingRight;
    final totalHeight = rowHeights.fold<double>(0, (sum, h) => sum + h) +
        totalGapHeight +
        _paddingTop +
        _paddingBottom;

    size = constraints.constrain(Size(totalWidth, totalHeight));
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('width', width));
    properties.add(DoubleProperty('height', height));
    properties.add(EnumProperty<AutoLayoutMode>('direction', mode));
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

class _Line {
  List<int> items = [];
  double sumP = 0;
  double maxC = 0;
  double offsetC = 0;
}
