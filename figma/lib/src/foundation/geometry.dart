import 'dart:ui' show Offset, Size, Rect;

class FigmaVector {
  const FigmaVector(this.x, this.y);

  final double x;
  final double y;

  Offset toOffset() => Offset(x, y);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaVector &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y;

  @override
  int get hashCode => Object.hash(x, y);

  @override
  String toString() => 'FigmaVector($x, $y)';
}

class FigmaRect {
  const FigmaRect(this.x, this.y, this.width, this.height);

  final double x;
  final double y;
  final double width;
  final double height;

  Rect toRect() => Rect.fromLTWH(x, y, width, height);

  Size get size => Size(width, height);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaRect &&
          runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y &&
          width == other.width &&
          height == other.height;

  @override
  int get hashCode => Object.hash(x, y, width, height);

  @override
  String toString() => 'FigmaRect($x, $y, $width, $height)';
}

class FigmaTransform {
  const FigmaTransform(
      this.m00, this.m01, this.m02, this.m10, this.m11, this.m12);

  factory FigmaTransform.fromList(List<List<double>> transform) {
    return FigmaTransform(
      transform[0][0],
      transform[0][1],
      transform[0][2],
      transform[1][0],
      transform[1][1],
      transform[1][2],
    );
  }

  final double m00;
  final double m01;
  final double m02;
  final double m10;
  final double m11;
  final double m12;

  static const FigmaTransform identity = FigmaTransform(1, 0, 0, 0, 1, 0);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaTransform &&
          runtimeType == other.runtimeType &&
          m00 == other.m00 &&
          m01 == other.m01 &&
          m02 == other.m02 &&
          m10 == other.m10 &&
          m11 == other.m11 &&
          m12 == other.m12;

  @override
  int get hashCode => Object.hash(m00, m01, m02, m10, m11, m12);

  @override
  String toString() => 'FigmaTransform([$m00, $m01, $m02], [$m10, $m11, $m12])';
}

class ArcData {
  const ArcData({
    required this.startingAngle,
    required this.endingAngle,
    required this.innerRadius,
  });

  final double startingAngle;
  final double endingAngle;
  final double innerRadius;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ArcData &&
          runtimeType == other.runtimeType &&
          startingAngle == other.startingAngle &&
          endingAngle == other.endingAngle &&
          innerRadius == other.innerRadius;

  @override
  int get hashCode => Object.hash(startingAngle, endingAngle, innerRadius);

  @override
  String toString() =>
      'ArcData(startingAngle: $startingAngle, endingAngle: $endingAngle, innerRadius: $innerRadius)';
}
