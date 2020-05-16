class FigmaCornerRadii {
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;

  static const zero = FigmaCornerRadii.all(0.0);

  const FigmaCornerRadii.all(double value)
      : this.topLeft = value,
        this.topRight = value,
        this.bottomLeft = value,
        this.bottomRight = value;

  const FigmaCornerRadii.only({
    double topLeft,
    double topRight,
    double bottomLeft,
    double bottomRight,
  })  : this.topLeft = topLeft ?? 0.0,
        this.topRight = topRight ?? 0.0,
        this.bottomLeft = bottomLeft ?? 0.0,
        this.bottomRight = bottomRight ?? 0.0;

  FigmaCornerRadii.fromList(List<double> values)
      : this.topLeft = values[0] ?? 0.0,
        this.topRight = values[1] ?? 0.0,
        this.bottomLeft = values[2] ?? 0.0,
        this.bottomRight = values[3] ?? 0.0;
}
