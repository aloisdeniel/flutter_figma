import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'layout.dart';

/// Mixin that provides auto layout functionality for Figma layouts.
///
/// This mixin handles horizontal and vertical auto layouts, similar to flexbox,
/// with support for wrapping, spacing, alignment, and different sizing modes.
mixin FigmaAutoLayoutMixin on RenderBox {
  // Auto layout properties - to be implemented by the using class
  LayoutMode get autoLayoutMode;
  PrimaryAxisSizingMode get primaryAxisSizingMode;
  CounterAxisSizingMode get counterAxisSizingMode;
  LayoutAlign get primaryAxisAlignItems;
  LayoutAlign get counterAxisAlignItems;
  LayoutWrap get layoutWrap;
  double get paddingLeft;
  double get paddingRight;
  double get paddingTop;
  double get paddingBottom;
  double get itemSpacing;
  double get counterAxisSpacing;
  double get referenceWidth;
  double get referenceHeight;

  BoxConstraints get constraints;

  /// Performs auto layout for horizontal or vertical layouts.
  Size performAutoLayout(
    List<RenderBox> autoChildren,
    BoxConstraints constraints,
  ) {
    if (autoChildren.isEmpty) {
      final padSumP = _getPadStartP() + _getPadEndP();
      final padSumC = _getPadStartC() + _getPadEndC();
      final expectedSize = switch (autoLayoutMode) {
        LayoutMode.horizontal => Size(padSumP, padSumC),
        LayoutMode.vertical => Size(padSumC, padSumP),
        _ => throw Exception('Invalid auto layout mode'),
      };
      return constraints.constrain(expectedSize);
    }

    final padSumP = _getPadStartP() + _getPadEndP();
    final padSumC = _getPadStartC() + _getPadEndC();

    // Calculate available space for fill children
    double? availablePrimarySpace;
    double? availableCounterSpace;

    if (primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      availablePrimarySpace = switch (autoLayoutMode) {
        LayoutMode.horizontal => referenceWidth - padSumP,
        LayoutMode.vertical => referenceHeight - padSumP,
        LayoutMode.freeform || LayoutMode.grid => null,
      };
    } else {
      // For hug mode, use constraints if bounded
      availablePrimarySpace = switch (autoLayoutMode) {
        LayoutMode.horizontal =>
          constraints.hasBoundedWidth ? constraints.maxWidth - padSumP : null,
        LayoutMode.vertical =>
          constraints.hasBoundedHeight ? constraints.maxHeight - padSumP : null,
        LayoutMode.freeform || LayoutMode.grid => null,
      };
    }

    if (counterAxisSizingMode == CounterAxisSizingMode.fixed) {
      availableCounterSpace = switch (autoLayoutMode) {
        LayoutMode.horizontal => referenceHeight - padSumC,
        LayoutMode.vertical => referenceWidth - padSumC,
        LayoutMode.freeform || LayoutMode.grid => null,
      };
    } else {
      // For hug mode, use constraints if bounded
      availableCounterSpace = switch (autoLayoutMode) {
        LayoutMode.horizontal =>
          constraints.hasBoundedHeight ? constraints.maxHeight - padSumC : null,
        LayoutMode.vertical =>
          constraints.hasBoundedWidth ? constraints.maxWidth - padSumC : null,
        LayoutMode.freeform || LayoutMode.grid => null,
      };
    }

    final List<Size> childSizes = _layoutAutoChildren(
      autoChildren,
      availablePrimarySpace,
      availableCounterSpace,
    );

    double? innerFixedP;
    if (primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      innerFixedP = switch (autoLayoutMode) {
        LayoutMode.horizontal => referenceWidth - padSumP,
        LayoutMode.vertical => referenceHeight - padSumP,
        LayoutMode.freeform || LayoutMode.grid => null,
      };
    }

    final lines = _buildLines(childSizes, innerFixedP);

    final innerP = _calculateInnerPrimarySize(childSizes, lines, innerFixedP);
    final innerC = _calculateInnerCounterSize(lines, constraints, padSumC);

    return constraints.constrain(
      switch (autoLayoutMode) {
        LayoutMode.horizontal => Size(innerP + padSumP, innerC + padSumC),
        LayoutMode.vertical => Size(innerC + padSumC, innerP + padSumP),
        LayoutMode.freeform ||
        LayoutMode.grid =>
          throw Exception('Invalid auto layout mode'),
      },
    );
  }

  /// Positions auto layout children after sizing has been determined.
  void positionAutoChildren(
    List<RenderBox> autoChildren,
    Size containerSize,
  ) {
    if (autoChildren.isEmpty) return;

    final List<Size> childSizes = [];
    for (final child in autoChildren) {
      childSizes.add(child.size);
    }

    final padSumP = _getPadStartP() + _getPadEndP();
    final padSumC = _getPadStartC() + _getPadEndC();

    double? innerFixedP;
    if (primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      innerFixedP = switch (autoLayoutMode) {
        LayoutMode.horizontal => containerSize.width - padSumP,
        LayoutMode.vertical => containerSize.height - padSumP,
        LayoutMode.freeform || LayoutMode.grid => null,
      };
    }

    final lines = _buildLines(childSizes, innerFixedP);
    final innerP = _calculateInnerPrimarySize(childSizes, lines, innerFixedP);
    final innerC = switch (autoLayoutMode) {
      LayoutMode.horizontal => containerSize.height - padSumC,
      LayoutMode.vertical => containerSize.width - padSumC,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };

    _positionAutoChildrenInternal(
        autoChildren, lines, childSizes, innerP, innerC);
  }

  /// Layouts auto children and returns their sizes.
  ///
  /// This uses a two-pass approach to handle [ChildSizingMode.fill]:
  /// 1. First pass: layout non-fill children to determine their sizes
  /// 2. Calculate remaining space for fill children
  /// 3. Second pass: layout fill children with their share of remaining space
  List<Size> _layoutAutoChildren(
    List<RenderBox> autoChildren,
    double? availablePrimarySpace,
    double? availableCounterSpace,
  ) {
    final List<Size?> childSizes = List.filled(autoChildren.length, null);
    final List<int> fillPrimaryIndices = [];

    // First pass: layout non-fill-primary children and identify fill children
    double usedPrimarySpace = 0;
    for (var i = 0; i < autoChildren.length; i++) {
      final child = autoChildren[i];
      final childParentData = child.parentData! as FigmaLayoutParentData;
      final primarySizing = childParentData.primaryAxisSizing;
      final counterSizing = childParentData.counterAxisSizing;

      // Check if this child fills the primary axis
      if (primarySizing == ChildSizingMode.fill) {
        fillPrimaryIndices.add(i);
        continue;
      }

      // Layout non-fill-primary children
      final childConstraints = _buildChildConstraints(
        childParentData,
        primarySizing,
        counterSizing,
        null, // No fill size for primary axis
        availableCounterSpace,
      );

      child.layout(childConstraints, parentUsesSize: true);
      childSizes[i] = child.size;
      usedPrimarySpace += _getPrimarySize(child.size);
    }

    // Calculate spacing used
    final spacingUsed =
        autoChildren.length > 1 ? itemSpacing * (autoChildren.length - 1) : 0.0;

    // Calculate remaining space for fill children
    double fillPrimarySize = 0;
    if (fillPrimaryIndices.isNotEmpty && availablePrimarySpace != null) {
      final remainingSpace =
          availablePrimarySpace - usedPrimarySpace - spacingUsed;
      fillPrimarySize = math.max(0, remainingSpace / fillPrimaryIndices.length);
    }

    // Second pass: layout fill-primary children
    for (final i in fillPrimaryIndices) {
      final child = autoChildren[i];
      final childParentData = child.parentData! as FigmaLayoutParentData;
      final primarySizing = childParentData.primaryAxisSizing;
      final counterSizing = childParentData.counterAxisSizing;

      final childConstraints = _buildChildConstraints(
        childParentData,
        primarySizing,
        counterSizing,
        fillPrimarySize,
        availableCounterSpace,
      );

      child.layout(childConstraints, parentUsesSize: true);
      childSizes[i] = child.size;
    }

    return childSizes.cast<Size>();
  }

  /// Builds constraints for a child based on its sizing modes.
  BoxConstraints _buildChildConstraints(
    FigmaLayoutParentData childParentData,
    ChildSizingMode? primarySizing,
    ChildSizingMode? counterSizing,
    double? fillPrimarySize,
    double? availableCounterSpace,
  ) {
    double minPrimary, maxPrimary, minCounter, maxCounter;

    // Handle primary axis sizing
    switch (primarySizing) {
      case ChildSizingMode.fixed:
        final fixedSize = autoLayoutMode == LayoutMode.horizontal
            ? childParentData.width
            : childParentData.height;
        minPrimary = fixedSize;
        maxPrimary = fixedSize;
      case ChildSizingMode.fill:
        if (fillPrimarySize != null && fillPrimarySize > 0) {
          minPrimary = fillPrimarySize;
          maxPrimary = fillPrimarySize;
        } else {
          // Fallback to hug behavior if no fill size available
          minPrimary = 0.0;
          maxPrimary = double.infinity;
        }
      case ChildSizingMode.hug:
      case null:
        minPrimary = 0.0;
        maxPrimary = double.infinity;
    }

    // Handle counter axis sizing
    switch (counterSizing) {
      case ChildSizingMode.fixed:
        final fixedSize = autoLayoutMode == LayoutMode.horizontal
            ? childParentData.height
            : childParentData.width;
        minCounter = fixedSize;
        maxCounter = fixedSize;
      case ChildSizingMode.fill:
        if (availableCounterSpace != null && availableCounterSpace > 0) {
          minCounter = availableCounterSpace;
          maxCounter = availableCounterSpace;
        } else {
          // Fallback to hug behavior if no fill size available
          minCounter = 0.0;
          maxCounter = double.infinity;
        }
      case ChildSizingMode.hug:
      case null:
        minCounter = 0.0;
        maxCounter = double.infinity;
    }

    // Map primary/counter to width/height based on layout mode
    if (autoLayoutMode == LayoutMode.horizontal) {
      return BoxConstraints(
        minWidth: minPrimary,
        maxWidth: maxPrimary,
        minHeight: minCounter,
        maxHeight: maxCounter,
      );
    } else {
      return BoxConstraints(
        minWidth: minCounter,
        maxWidth: maxCounter,
        minHeight: minPrimary,
        maxHeight: maxPrimary,
      );
    }
  }

  /// Calculates the inner primary axis size.
  double _calculateInnerPrimarySize(
    List<Size> childSizes,
    List<_AutoLayoutLine> lines,
    double? innerFixedP,
  ) {
    if (primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      return innerFixedP!;
    } else {
      if (layoutWrap == LayoutWrap.wrap && lines.length > 1) {
        return lines.map((l) => l.sumP).reduce(math.max);
      } else {
        return childSizes.isEmpty
            ? 0
            : childSizes
                    .map((s) => _getPrimarySize(s))
                    .reduce((a, b) => a + b) +
                itemSpacing * (childSizes.length - 1);
      }
    }
  }

  /// Calculates the inner counter axis size.
  double _calculateInnerCounterSize(
    List<_AutoLayoutLine> lines,
    BoxConstraints constraints,
    double padSumC,
  ) {
    if (counterAxisSizingMode == CounterAxisSizingMode.fixed) {
      return switch (autoLayoutMode) {
        LayoutMode.horizontal => referenceHeight - padSumC,
        LayoutMode.vertical => referenceWidth - padSumC,
        LayoutMode.freeform ||
        LayoutMode.grid =>
          throw Exception('Invalid auto layout mode'),
      };
    } else {
      return lines.isEmpty
          ? 0
          : lines.map((l) => l.maxC).reduce((a, b) => a + b) +
              counterAxisSpacing * math.max(0, lines.length - 1);
    }
  }

  /// Builds layout lines for wrapping support.
  List<_AutoLayoutLine> _buildLines(
      List<Size> childSizes, double? innerFixedP) {
    final lineCapacityP = (layoutWrap == LayoutWrap.wrap && innerFixedP != null)
        ? innerFixedP
        : double.infinity;

    final lines = <_AutoLayoutLine>[];
    var currentLine = _AutoLayoutLine();

    for (var i = 0; i < childSizes.length; i++) {
      final itemP = _getPrimarySize(childSizes[i]);
      final need = (currentLine.items.isEmpty ? 0 : itemSpacing) + itemP;

      if (layoutWrap == LayoutWrap.wrap &&
          currentLine.sumP + need > lineCapacityP &&
          currentLine.items.isNotEmpty) {
        lines.add(currentLine);
        currentLine = _AutoLayoutLine();
      }

      currentLine.items.add(i);
      currentLine.sumP +=
          (currentLine.items.length == 1 ? 0 : itemSpacing) + itemP;
      currentLine.maxC =
          math.max(currentLine.maxC, _getCounterSize(childSizes[i]));
    }

    if (currentLine.items.isNotEmpty) {
      lines.add(currentLine);
    }

    return lines;
  }

  /// Positions auto children based on calculated layout.
  void _positionAutoChildrenInternal(
    List<RenderBox> autoChildren,
    List<_AutoLayoutLine> lines,
    List<Size> childSizes,
    double innerP,
    double innerC,
  ) {
    final totalLinesC = lines.isEmpty
        ? 0.0
        : lines.map((l) => l.maxC).reduce((a, b) => a + b) +
            counterAxisSpacing * math.max(0, lines.length - 1);

    final startC = switch (counterAxisAlignItems) {
      LayoutAlign.min => 0.0,
      LayoutAlign.center => (innerC - totalLinesC) / 2,
      LayoutAlign.max => innerC - totalLinesC,
      LayoutAlign.stretch => 0.0,
      LayoutAlign.spaceBetween => 0.0,
    };

    var cursorC = startC;
    for (final line in lines) {
      line.offsetC = cursorC;
      cursorC += line.maxC + counterAxisSpacing;
    }

    for (final line in lines) {
      final usedP = line.items.isEmpty
          ? 0.0
          : line.items
                  .map((i) => _getPrimarySize(childSizes[i]))
                  .reduce((a, b) => a + b) +
              itemSpacing * math.max(0, line.items.length - 1);
      final freeP = innerP - usedP;

      double gap;
      double offsetP;

      if (primaryAxisAlignItems == LayoutAlign.spaceBetween &&
          line.items.length > 1) {
        gap = freeP / (line.items.length - 1);
        offsetP = 0;
      } else {
        gap = itemSpacing;
        offsetP = switch (primaryAxisAlignItems) {
          LayoutAlign.min => 0.0,
          LayoutAlign.center => freeP / 2,
          LayoutAlign.max => freeP,
          LayoutAlign.spaceBetween => 0.0,
          LayoutAlign.stretch => 0.0,
        };
      }

      var cursorP = offsetP;

      for (final i in line.items) {
        final child = autoChildren[i];

        final offsetCItem = switch (counterAxisAlignItems) {
          LayoutAlign.min => 0.0,
          LayoutAlign.center =>
            (line.maxC - _getCounterSize(childSizes[i])) / 2,
          LayoutAlign.max => line.maxC - _getCounterSize(childSizes[i]),
          LayoutAlign.stretch => 0.0,
          LayoutAlign.spaceBetween => 0.0,
        };

        final childParentData = child.parentData! as FigmaLayoutParentData;
        childParentData.offset = switch (autoLayoutMode) {
          LayoutMode.horizontal => Offset(
              paddingLeft + cursorP,
              paddingTop + line.offsetC + offsetCItem,
            ),
          LayoutMode.vertical => Offset(
              paddingLeft + line.offsetC + offsetCItem,
              paddingTop + cursorP,
            ),
          LayoutMode.freeform ||
          LayoutMode.grid =>
            throw Exception('Invalid auto layout mode'),
        };

        cursorP += _getPrimarySize(childSizes[i]) + gap;
      }
    }
  }

  // Helper methods for axis-dependent properties

  double _getPrimarySize(Size size) {
    return switch (autoLayoutMode) {
      LayoutMode.horizontal => size.width,
      LayoutMode.vertical => size.height,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };
  }

  double _getCounterSize(Size size) {
    return switch (autoLayoutMode) {
      LayoutMode.horizontal => size.height,
      LayoutMode.vertical => size.width,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };
  }

  double _getPadStartP() {
    return switch (autoLayoutMode) {
      LayoutMode.horizontal => paddingLeft,
      LayoutMode.vertical => paddingTop,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };
  }

  double _getPadEndP() {
    return switch (autoLayoutMode) {
      LayoutMode.horizontal => paddingRight,
      LayoutMode.vertical => paddingBottom,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };
  }

  double _getPadStartC() {
    return switch (autoLayoutMode) {
      LayoutMode.horizontal => paddingTop,
      LayoutMode.vertical => paddingLeft,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };
  }

  double _getPadEndC() {
    return switch (autoLayoutMode) {
      LayoutMode.horizontal => paddingBottom,
      LayoutMode.vertical => paddingRight,
      LayoutMode.freeform ||
      LayoutMode.grid =>
        throw Exception('Invalid auto layout mode'),
    };
  }
}

/// Helper class for managing layout lines in wrapped auto layouts.
class _AutoLayoutLine {
  List<int> items = [];
  double sumP = 0;
  double maxC = 0;
  double offsetC = 0;
}
