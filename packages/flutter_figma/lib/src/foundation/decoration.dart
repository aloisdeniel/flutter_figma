import 'paint.dart';

sealed class FigmaDecorationShape {
  const FigmaDecorationShape();
}

class FigmaRectangleShape extends FigmaDecorationShape {
  const FigmaRectangleShape({
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.smoothing = 0.0,
  });

  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
  final double smoothing;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaRectangleShape &&
          runtimeType == other.runtimeType &&
          topLeftRadius == other.topLeftRadius &&
          topRightRadius == other.topRightRadius &&
          bottomLeftRadius == other.bottomLeftRadius &&
          bottomRightRadius == other.bottomRightRadius &&
          smoothing == other.smoothing;

  @override
  int get hashCode => Object.hash(topLeftRadius, topRightRadius,
      bottomLeftRadius, bottomRightRadius, smoothing);

  @override
  String toString() =>
      'FigmaRectangleShape(topLeftRadius: $topLeftRadius, topRightRadius: $topRightRadius, bottomLeftRadius: $bottomLeftRadius, bottomRightRadius: $bottomRightRadius, smoothing: $smoothing)';
}

class FigmaDecoration {
  const FigmaDecoration({
    this.fills = const [],
    this.strokes = const [],
    required this.shape,
  });

  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final FigmaDecorationShape shape;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaDecoration &&
          runtimeType == other.runtimeType &&
          _listEquals(fills, other.fills) &&
          _listEquals(strokes, other.strokes) &&
          shape == other.shape;

  @override
  int get hashCode =>
      Object.hash(Object.hashAll(fills), Object.hashAll(strokes), shape);

  @override
  String toString() =>
      'FigmaDecoration(fills: $fills, strokes: $strokes, shape: $shape)';
}

bool _listEquals<T>(List<T> a, List<T> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
