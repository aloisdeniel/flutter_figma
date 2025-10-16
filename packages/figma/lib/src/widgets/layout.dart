import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

enum LayoutMode {
  none,
  horizontal,
  vertical,
  grid,
}

enum PrimaryAxisSizingMode {
  fixed,
  auto,
}

enum CounterAxisSizingMode {
  fixed,
  auto,
}

enum LayoutWrap {
  noWrap,
  wrap,
}

enum LayoutAlign {
  min,
  center,
  max,
  stretch,
  spaceBetween,
}

enum LayoutSizing {
  fixed,
  hug,
  fill,
}

class Constraints {
  const Constraints({
    required this.horizontal,
    required this.vertical,
  });

  final ConstraintType horizontal;
  final ConstraintType vertical;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Constraints &&
          runtimeType == other.runtimeType &&
          horizontal == other.horizontal &&
          vertical == other.vertical;

  @override
  int get hashCode => Object.hash(horizontal, vertical);

  @override
  String toString() =>
      'Constraints(horizontal: $horizontal, vertical: $vertical)';
}

class FigmaLayout extends Widget {
  const FigmaLayout({
    required this.children,
    this.x = 0,
    this.y = 0,
    this.width = 0,
    this.height = 0,
    this.constraints,
    this.relativeTransform,
    this.layoutMode = LayoutMode.none,
    this.primaryAxisSizingMode = PrimaryAxisSizingMode.fixed,
    this.counterAxisSizingMode = CounterAxisSizingMode.fixed,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.itemSpacing = 0,
    this.counterAxisSpacing = 0,
    this.primaryAxisAlignItems = LayoutAlign.min,
    this.counterAxisAlignItems = LayoutAlign.min,
    this.layoutWrap = LayoutWrap.noWrap,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final LayoutMode layoutMode;
  final PrimaryAxisSizingMode primaryAxisSizingMode;
  final CounterAxisSizingMode counterAxisSizingMode;
  final double paddingLeft;
  final double paddingRight;
  final double paddingTop;
  final double paddingBottom;
  final double itemSpacing;
  final double counterAxisSpacing;
  final LayoutAlign primaryAxisAlignItems;
  final LayoutAlign counterAxisAlignItems;
  final LayoutWrap layoutWrap;
  final List<Widget> children;

  @override
  Element createElement() {
    return FigmaLayoutElement(this);
  }
}
