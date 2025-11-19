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

enum AutoLayoutMode {
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

enum ChildSizingMode {
  fixed,
  hug,
}

class ChildSize {
  const ChildSize({
    required this.width,
    required this.height,
    this.primaryAxisSizing,
    this.counterAxisSizing,
  });

  final double width;
  final double height;
  final ChildSizingMode? primaryAxisSizing;
  final ChildSizingMode? counterAxisSizing;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChildSize &&
          width == other.width &&
          height == other.height &&
          primaryAxisSizing == other.primaryAxisSizing &&
          counterAxisSizing == other.counterAxisSizing;

  @override
  int get hashCode =>
      Object.hash(width, height, primaryAxisSizing, counterAxisSizing);
}

/// Represents the sizing mode for grid tracks (rows or columns)
enum GridTrackSizingMode {
  /// Track size is automatically calculated based on available space
  auto,
  
  /// Track has a fixed size in pixels
  fixed,
}

/// Represents a grid track (row or column) with its sizing configuration
class GridTrack {
  const GridTrack({
    this.size,
    this.sizingMode = GridTrackSizingMode.auto,
  });

  /// The size of the track in pixels (when sizingMode is fixed)
  final double? size;
  
  /// How the track should be sized
  final GridTrackSizingMode sizingMode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GridTrack &&
          size == other.size &&
          sizingMode == other.sizingMode;

  @override
  int get hashCode => Object.hash(size, sizingMode);
}
