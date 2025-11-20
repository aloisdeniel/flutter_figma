import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'layout.dart';

/// Mixin that provides grid layout functionality for Figma layouts.
///
/// This mixin handles CSS-grid-like layouts with support for:
/// - Fixed and auto-sized columns/rows
/// - Column and row gaps
/// - Grid cell spanning
/// - Automatic grid positioning
mixin FigmaGridLayoutMixin on RenderBox {
  // Grid layout properties - to be implemented by the using class
  int get gridColumnCount;
  int get gridRowCount;
  List<GridTrack> get gridColumns;
  List<GridTrack> get gridRows;
  double get gridColumnGap;
  double get gridRowGap;
  double get paddingLeft;
  double get paddingRight;
  double get paddingTop;
  double get paddingBottom;

  BoxConstraints get constraints;
  RenderBox? get firstChild;

  /// Performs grid layout.
  Size performGridLayout() {
    // Calculate available space
    final availableWidth =
        constraints.maxWidth - paddingLeft - paddingRight;
    final availableHeight =
        constraints.maxHeight - paddingTop - paddingBottom;

    // Calculate column widths
    final columnWidths = _calculateColumnWidths(availableWidth);

    // Calculate row heights
    final rowHeights = _calculateRowHeights(availableHeight);

    // Layout and position children
    _layoutGridChildren(columnWidths, rowHeights);

    // Calculate and return container size
    return _calculateGridSize(columnWidths, rowHeights);
  }

  /// Calculates the width of each column in the grid.
  List<double> _calculateColumnWidths(double availableWidth) {
    final columnWidths = <double>[];
    double totalFixedWidth = 0;
    int autoColumnCount = 0;

    for (int i = 0; i < gridColumnCount; i++) {
      if (i < gridColumns.length) {
        final track = gridColumns[i];
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
    final totalGapWidth = gridColumnGap * math.max(0, gridColumnCount - 1);
    final availableForAuto = availableWidth - totalFixedWidth - totalGapWidth;
    final autoColumnWidth =
        autoColumnCount > 0 ? availableForAuto / autoColumnCount : 0.0;

    for (int i = 0; i < columnWidths.length; i++) {
      if (columnWidths[i] == 0) {
        columnWidths[i] = autoColumnWidth < 0 ? 0.0 : autoColumnWidth;
      }
    }

    return columnWidths;
  }

  /// Calculates the height of each row in the grid.
  List<double> _calculateRowHeights(double availableHeight) {
    final rowHeights = <double>[];
    double totalFixedHeight = 0;
    int autoRowCount = 0;

    for (int i = 0; i < gridRowCount; i++) {
      if (i < gridRows.length) {
        final track = gridRows[i];
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
    final totalGapHeight = gridRowGap * math.max(0, gridRowCount - 1);
    final availableForAutoHeight =
        availableHeight - totalFixedHeight - totalGapHeight;
    final autoRowHeight =
        autoRowCount > 0 ? availableForAutoHeight / autoRowCount : 0.0;

    for (int i = 0; i < rowHeights.length; i++) {
      if (rowHeights[i] == 0) {
        rowHeights[i] = autoRowHeight < 0 ? 0.0 : autoRowHeight;
      }
    }

    return rowHeights;
  }

  /// Layouts and positions all grid children.
  void _layoutGridChildren(
    List<double> columnWidths,
    List<double> rowHeights,
  ) {
    int childIndex = 0;
    RenderBox? child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as FigmaLayoutParentData;

      // Auto-assign grid position if not explicitly set
      if (childParentData.gridColumn == 0 && childParentData.gridRow == 0) {
        childParentData.gridRow = childIndex ~/ gridColumnCount;
        childParentData.gridColumn = childIndex % gridColumnCount;
      }

      final col = childParentData.gridColumn;
      final row = childParentData.gridRow;
      final colSpan = childParentData.gridColumnSpan;
      final rowSpan = childParentData.gridRowSpan;

      // Calculate cell size based on span
      final cellSize = _calculateCellSize(
        columnWidths: columnWidths,
        rowHeights: rowHeights,
        col: col,
        row: row,
        colSpan: colSpan,
        rowSpan: rowSpan,
      );

      // Layout child
      child.layout(
        BoxConstraints.tightFor(
          width: cellSize.width,
          height: cellSize.height,
        ),
        parentUsesSize: true,
      );

      // Calculate and set position
      final position = _calculateGridPosition(
        columnWidths: columnWidths,
        rowHeights: rowHeights,
        col: col,
        row: row,
      );

      childParentData.offset = position;

      child = childParentData.nextSibling;
      childIndex++;
    }
  }

  /// Calculates the size of a grid cell including span.
  Size _calculateCellSize({
    required List<double> columnWidths,
    required List<double> rowHeights,
    required int col,
    required int row,
    required int colSpan,
    required int rowSpan,
  }) {
    double cellWidth = 0;
    for (int i = col; i < math.min(col + colSpan, columnWidths.length); i++) {
      cellWidth += columnWidths[i];
      if (i < col + colSpan - 1) {
        cellWidth += gridColumnGap;
      }
    }

    double cellHeight = 0;
    for (int i = row; i < math.min(row + rowSpan, rowHeights.length); i++) {
      cellHeight += rowHeights[i];
      if (i < row + rowSpan - 1) {
        cellHeight += gridRowGap;
      }
    }

    return Size(cellWidth, cellHeight);
  }

  /// Calculates the position of a grid cell.
  Offset _calculateGridPosition({
    required List<double> columnWidths,
    required List<double> rowHeights,
    required int col,
    required int row,
  }) {
    double x = paddingLeft;
    for (int i = 0; i < col; i++) {
      x += columnWidths[i] + gridColumnGap;
    }

    double y = paddingTop;
    for (int i = 0; i < row; i++) {
      y += rowHeights[i] + gridRowGap;
    }

    return Offset(x, y);
  }

  /// Calculates the total grid container size.
  Size _calculateGridSize(
    List<double> columnWidths,
    List<double> rowHeights,
  ) {
    final totalGapWidth = gridColumnGap * math.max(0, gridColumnCount - 1);
    final totalGapHeight = gridRowGap * math.max(0, gridRowCount - 1);

    final totalWidth = columnWidths.fold<double>(0, (sum, w) => sum + w) +
        totalGapWidth +
        paddingLeft +
        paddingRight;
    final totalHeight = rowHeights.fold<double>(0, (sum, h) => sum + h) +
        totalGapHeight +
        paddingTop +
        paddingBottom;

    return constraints.constrain(Size(totalWidth, totalHeight));
  }
}
