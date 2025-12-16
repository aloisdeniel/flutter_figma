/// Represents the corner radii and smoothing for a rectangle shape.
///
/// This class encapsulates the four corner radius values (one for each corner)
/// and a smoothing value that controls the transition between sharp and
/// superellipse (squircle) corners.
class CornerRadius {
  /// Creates a [CornerRadius] with the specified values for each corner.
  ///
  /// All radius values default to 0.0, and [smoothing] defaults to 0.0.
  const CornerRadius({
    this.topLeft = 0.0,
    this.topRight = 0.0,
    this.bottomLeft = 0.0,
    this.bottomRight = 0.0,
    this.smoothing = 0.0,
  });

  /// Creates a [CornerRadius] where all corners have the same radius.
  const CornerRadius.all(
    double radius, {
    this.smoothing = 0.0,
  })  : topLeft = radius,
        topRight = radius,
        bottomLeft = radius,
        bottomRight = radius;

  /// Creates a [CornerRadius] with symmetric top and bottom radii.
  ///
  /// The [topRadius] applies to both top corners, and [bottomRadius] applies
  /// to both bottom corners.
  const CornerRadius.symmetric({
    double topRadius = 0.0,
    double bottomRadius = 0.0,
    this.smoothing = 0.0,
  })  : topLeft = topRadius,
        topRight = topRadius,
        bottomLeft = bottomRadius,
        bottomRight = bottomRadius;

  /// Creates a [CornerRadius] where only specific corners have a radius.
  ///
  /// Corners not specified will have a radius of 0.0.
  const CornerRadius.only({
    this.topLeft = 0.0,
    this.topRight = 0.0,
    this.bottomLeft = 0.0,
    this.bottomRight = 0.0,
    this.smoothing = 0.0,
  });

  /// A [CornerRadius] with all corners set to zero and no smoothing.
  static const CornerRadius zero = CornerRadius();

  /// The radius of the top-left corner.
  final double topLeft;

  /// The radius of the top-right corner.
  final double topRight;

  /// The radius of the bottom-left corner.
  final double bottomLeft;

  /// The radius of the bottom-right corner.
  final double bottomRight;

  /// The smoothing factor for the corners.
  ///
  /// A value of 0.0 produces standard circular corners (like CSS border-radius).
  /// Values greater than 0.0 produce superellipse (squircle) corners,
  /// similar to iOS-style rounded rectangles.
  ///
  /// Typical values range from 0.0 to 1.0, where 0.6 is commonly used
  /// for iOS-style smooth corners.
  final double smoothing;

  /// Whether all corner radii are zero.
  bool get isZero =>
      topLeft == 0 && topRight == 0 && bottomLeft == 0 && bottomRight == 0;

  /// Whether all corners have the same radius.
  bool get isUniform =>
      topLeft == topRight &&
      topRight == bottomRight &&
      bottomRight == bottomLeft;

  /// Creates a copy of this [CornerRadius] with the given fields replaced.
  CornerRadius copyWith({
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
    double? smoothing,
  }) {
    return CornerRadius(
      topLeft: topLeft ?? this.topLeft,
      topRight: topRight ?? this.topRight,
      bottomLeft: bottomLeft ?? this.bottomLeft,
      bottomRight: bottomRight ?? this.bottomRight,
      smoothing: smoothing ?? this.smoothing,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CornerRadius &&
          runtimeType == other.runtimeType &&
          topLeft == other.topLeft &&
          topRight == other.topRight &&
          bottomLeft == other.bottomLeft &&
          bottomRight == other.bottomRight &&
          smoothing == other.smoothing;

  @override
  int get hashCode =>
      Object.hash(topLeft, topRight, bottomLeft, bottomRight, smoothing);

  @override
  String toString() =>
      'CornerRadius(topLeft: $topLeft, topRight: $topRight, bottomLeft: $bottomLeft, bottomRight: $bottomRight, smoothing: $smoothing)';
}
