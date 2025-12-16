import 'package:flutter_figma/src/foundation/corner_radius.dart';
import 'package:flutter_figma/src/foundation/text.dart';
import 'package:flutter_figma/src/foundation/vector.dart';

sealed class FigmaShape {
  const FigmaShape();
}

class FigmaRectangleShape extends FigmaShape {
  const FigmaRectangleShape({
    this.cornerRadius = CornerRadius.zero,
  });

  /// Creates a rectangle shape with individual corner radius values.
  FigmaRectangleShape.corners({
    double topLeftRadius = 0.0,
    double topRightRadius = 0.0,
    double bottomLeftRadius = 0.0,
    double bottomRightRadius = 0.0,
    double smoothing = 0.0,
  }) : cornerRadius = CornerRadius(
          topLeft: topLeftRadius,
          topRight: topRightRadius,
          bottomLeft: bottomLeftRadius,
          bottomRight: bottomRightRadius,
          smoothing: smoothing,
        );

  /// Creates a rectangle shape where all corners have the same radius.
  FigmaRectangleShape.all(
    double radius, {
    double smoothing = 0.0,
  }) : cornerRadius = CornerRadius.all(radius, smoothing: smoothing);

  /// Creates a rectangle shape with symmetric top and bottom radii.
  FigmaRectangleShape.symmetric({
    double topRadius = 0.0,
    double bottomRadius = 0.0,
    double smoothing = 0.0,
  }) : cornerRadius = CornerRadius.symmetric(
          topRadius: topRadius,
          bottomRadius: bottomRadius,
          smoothing: smoothing,
        );

  final CornerRadius cornerRadius;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaRectangleShape &&
          runtimeType == other.runtimeType &&
          cornerRadius == other.cornerRadius;

  @override
  int get hashCode => cornerRadius.hashCode;

  @override
  String toString() => 'FigmaRectangleShape(cornerRadius: $cornerRadius)';
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
