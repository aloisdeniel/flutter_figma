class FigmaLayoutConstraints {
  final FigmaVerticalLayoutConstraint vertical;
  final FigmaHorizontalLayoutConstraint horizontal;
  const FigmaLayoutConstraints({
    this.vertical = FigmaVerticalLayoutConstraint.top,
    this.horizontal = FigmaHorizontalLayoutConstraint.left,
  });
}

enum FigmaLayoutAlign {
  min,
  center,
  max,
  stretch,
}

enum FigmaVerticalLayoutConstraint {
  top,
  bottom,
  center,
  top_bottom,
  scale,
}

enum FigmaHorizontalLayoutConstraint {
  left,
  right,
  center,
  left_right,
  scale,
}

enum FigmaLayoutMode {
  none,
  horizontal,
  vertical,
}

enum FigmaCounterAxisSizingMode {
  fixed,
  auto,
}
