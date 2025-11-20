import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'layout.dart';

extension FigmaConstraintsExtension on ConstraintType {
  double resolveOffset(
    double offset,
    double size,
    double referenceSize,
    double containerSize,
  ) {
    switch (this) {
      case ConstraintType.stretch:
      case ConstraintType.scale:
      case ConstraintType.min:
        return offset;
      case ConstraintType.center:
        final halfSize = size / 2;
        final refCenter = referenceSize / 2;
        final distanceFromCenter = (offset + halfSize) - refCenter;
        return (containerSize / 2) + distanceFromCenter - halfSize;
      case ConstraintType.max:
        final refOffsetFromRight = referenceSize - offset;
        return containerSize - refOffsetFromRight;
    }
  }

  double resolveSize(
    double offset,
    double size,
    double referenceSize,
    double containerSize,
  ) {
    switch (this) {
      case ConstraintType.center:
      case ConstraintType.max:
      case ConstraintType.min:
        return size;

      case ConstraintType.stretch:
        final right = referenceSize - offset - size;
        return containerSize - offset - right;

      case ConstraintType.scale:
        if (referenceSize == 0) return 0;
        return containerSize * (size / referenceSize);
    }
  }
}

/// Mixin that provides absolute layout functionality for Figma layouts.
///
/// This mixin handles positioning of absolutely positioned children based on
/// their constraint types (min, max, center, stretch, scale).
mixin FigmaAbsoluteLayoutMixin on RenderBox {
  /// Positions absolute children based on their constraints.
  ///
  /// Each child's position is calculated based on its horizontal and vertical
  /// constraint types:
  /// - [ConstraintType.min]: Pin to start edge
  /// - [ConstraintType.max]: Pin to end edge
  /// - [ConstraintType.center]: Center with offset
  /// - [ConstraintType.stretch]: Stretch between edges
  /// - [ConstraintType.scale]: Scale proportionally
  void positionAbsoluteChildren(
    List<RenderBox> absoluteChildren,
    Size referenceSize,
    Size containerSize,
  ) {
    for (final child in absoluteChildren) {
      final childParentData = child.parentData! as FigmaLayoutParentData;

      final childSize = _calculateAbsoluteSize(
        childParentData: childParentData,
        containerSize: containerSize,
        referenceSize: referenceSize,
      );

      child.layout(
        BoxConstraints.tight(childSize),
        parentUsesSize: false,
      );

      // Calculate position based on constraint types
      final position = _calculateAbsolutePosition(
        childParentData: childParentData,
        containerSize: containerSize,
        referenceSize: referenceSize,
      );

      childParentData.offset = position;
    }
  }

  /// Calculates the absolute position of a child based on its constraints.
  Offset _calculateAbsolutePosition({
    required FigmaLayoutParentData childParentData,
    required Size containerSize,
    required Size referenceSize,
  }) {
    final x = childParentData.horizontalConstraint.resolveOffset(
      childParentData.x,
      childParentData.width,
      referenceSize.width,
      containerSize.width,
    );
    final y = childParentData.verticalConstraint.resolveOffset(
      childParentData.y,
      childParentData.height,
      referenceSize.height,
      containerSize.height,
    );

    return Offset(x, y);
  }

  Size _calculateAbsoluteSize({
    required FigmaLayoutParentData childParentData,
    required Size containerSize,
    required Size referenceSize,
  }) {
    final w = childParentData.horizontalConstraint.resolveSize(
      childParentData.x,
      childParentData.width,
      referenceSize.width,
      containerSize.width,
    );
    final h = childParentData.verticalConstraint.resolveSize(
      childParentData.y,
      childParentData.height,
      referenceSize.height,
      containerSize.height,
    );

    return Size(w, h);
  }
}
