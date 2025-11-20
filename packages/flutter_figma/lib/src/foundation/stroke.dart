enum FigmaStrokeAlignment {
  inside,
  center,
  outside,
}

enum FigmaStrokeJoin {
  miter,
  bevel,
  round,
}

class FigmaStroke {
  const FigmaStroke({
    this.topWeight = 0.0,
    this.bottomWeight = 0.0,
    this.leftWeight = 0.0,
    this.rightWeight = 0.0,
    this.join = FigmaStrokeJoin.miter,
    this.alignment = FigmaStrokeAlignment.center,
  });

  const FigmaStroke.uniform({
    double weight = 0.0,
    this.join = FigmaStrokeJoin.miter,
    this.alignment = FigmaStrokeAlignment.center,
  })  : topWeight = weight,
        bottomWeight = weight,
        leftWeight = weight,
        rightWeight = weight;

  final double topWeight;
  final double bottomWeight;
  final double rightWeight;
  final double leftWeight;
  final FigmaStrokeJoin join;
  final FigmaStrokeAlignment alignment;

  bool get isUniform =>
      topWeight == bottomWeight &&
      topWeight == rightWeight &&
      topWeight == leftWeight;

  // TODO equality
}
