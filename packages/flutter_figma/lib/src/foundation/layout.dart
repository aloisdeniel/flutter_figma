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
  //grid, //TODO
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
