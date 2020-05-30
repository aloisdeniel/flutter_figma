class FigmaCornerRadii {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  static const zero = FigmaCornerRadii.all(0.0);

  const FigmaCornerRadii.all(double value)
      : topLeft = value,
        topRight = value,
        bottomLeft = value,
        bottomRight = value;

  const FigmaCornerRadii.only({
    double topLeft,
    double topRight,
    double bottomLeft,
    double bottomRight,
  })  : topLeft = topLeft ?? 0.0,
        topRight = topRight ?? 0.0,
        bottomLeft = bottomLeft ?? 0.0,
        bottomRight = bottomRight ?? 0.0;

  FigmaCornerRadii.fromList(List<double> values)
      : topLeft = values[0] ?? 0.0,
        topRight = values[1] ?? 0.0,
        bottomLeft = values[2] ?? 0.0,
        bottomRight = values[3] ?? 0.0;
}
