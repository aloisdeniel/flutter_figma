import 'package:flutter_figma/src/foundation/text.dart';
import 'package:flutter_figma/src/foundation/vector.dart';

sealed class FigmaShape {
  const FigmaShape();
}

class FigmaRectangleShape extends FigmaShape {
  const FigmaRectangleShape({
    this.topLeftRadius = 0.0,
    this.topRightRadius = 0.0,
    this.bottomLeftRadius = 0.0,
    this.bottomRightRadius = 0.0,
    this.smoothing = 0.0,
  });

  const FigmaRectangleShape.all(
    double radius, {
    this.smoothing = 0.0,
  })  : topLeftRadius = radius,
        topRightRadius = radius,
        bottomLeftRadius = radius,
        bottomRightRadius = radius;

  const FigmaRectangleShape.symmetric({
    double topRadius = 0.0,
    double bottomRadius = 0.0,
    this.smoothing = 0.0,
  })  : topLeftRadius = topRadius,
        topRightRadius = topRadius,
        bottomLeftRadius = bottomRadius,
        bottomRightRadius = bottomRadius;

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

class FigmaVectorPathsShape extends FigmaShape {
  const FigmaVectorPathsShape({
    required this.fill,
    this.stroke,
  });

  final List<VectorPath> fill;

  // If null identical to fill.
  final List<VectorPath>? stroke;
}

class FigmaTextShape extends FigmaShape {
  const FigmaTextShape({
    required this.characters,
    this.style,
  });

  final FigmaTextStyle? style;
  final List<FigmaTextSpan>? characters;
}
