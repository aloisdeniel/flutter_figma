import 'color.dart';
import 'enums.dart';

enum LayoutMode {
  none,
  horizontal,
  vertical,
  grid,
}

enum PrimaryAxisSizingMode {
  fixed,
  auto,
}

enum CounterAxisSizingMode {
  fixed,
  auto,
}

enum LayoutWrap {
  noWrap,
  wrap,
}

enum LayoutAlign {
  min,
  center,
  max,
  stretch,
  spaceBetween,
}

enum LayoutSizing {
  fixed,
  hug,
  fill,
}

enum ScaleMode {
  fill,
  fit,
  crop,
  tile,
}

enum OverflowDirection {
  none,
  horizontal,
  vertical,
  both,
}

enum OverlayPositionType {
  center,
  topLeft,
  topCenter,
  topRight,
  bottomLeft,
  bottomCenter,
  bottomRight,
  manual,
}

class Constraints {
  const Constraints({
    required this.horizontal,
    required this.vertical,
  });

  final ConstraintType horizontal;
  final ConstraintType vertical;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Constraints &&
          runtimeType == other.runtimeType &&
          horizontal == other.horizontal &&
          vertical == other.vertical;

  @override
  int get hashCode => Object.hash(horizontal, vertical);

  @override
  String toString() =>
      'Constraints(horizontal: $horizontal, vertical: $vertical)';
}

abstract class LayoutGrid {
  const LayoutGrid({
    this.visible = true,
    this.color,
  });

  final bool visible;
  final FigmaRGBA? color;
}

class RowsColsLayoutGrid extends LayoutGrid {
  const RowsColsLayoutGrid({
    required this.pattern,
    required this.alignment,
    required this.gutterSize,
    required this.count,
    this.sectionSize,
    this.offset,
    super.visible,
    super.color,
  });

  final RowsColsPattern pattern;
  final LayoutGridAlignment alignment;
  final double gutterSize;
  final double count;
  final double? sectionSize;
  final double? offset;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RowsColsLayoutGrid &&
          runtimeType == other.runtimeType &&
          pattern == other.pattern &&
          alignment == other.alignment &&
          gutterSize == other.gutterSize &&
          count == other.count &&
          sectionSize == other.sectionSize &&
          offset == other.offset &&
          visible == other.visible &&
          color == other.color;

  @override
  int get hashCode => Object.hash(pattern, alignment, gutterSize, count,
      sectionSize, offset, visible, color);

  @override
  String toString() =>
      'RowsColsLayoutGrid(pattern: $pattern, alignment: $alignment, gutterSize: $gutterSize, count: $count, sectionSize: $sectionSize, offset: $offset, visible: $visible, color: $color)';
}

enum RowsColsPattern {
  rows,
  columns,
}

enum LayoutGridAlignment {
  min,
  max,
  stretch,
  center,
}

class GridLayoutGrid extends LayoutGrid {
  const GridLayoutGrid({
    required this.sectionSize,
    super.visible,
    super.color,
  });

  final double sectionSize;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridLayoutGrid &&
          runtimeType == other.runtimeType &&
          sectionSize == other.sectionSize &&
          visible == other.visible &&
          color == other.color;

  @override
  int get hashCode => Object.hash(sectionSize, visible, color);

  @override
  String toString() =>
      'GridLayoutGrid(sectionSize: $sectionSize, visible: $visible, color: $color)';
}
