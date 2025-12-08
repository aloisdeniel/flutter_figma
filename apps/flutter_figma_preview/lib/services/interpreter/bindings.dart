import 'package:eval_annotation/eval_annotation.dart';
import 'package:flutter/widgets.dart' as flu;
import 'package:flutter_figma/widgets.dart' as fig;

@Bind()
class Key {
  const Key(this.value);
  final String value;
}

@Bind()
abstract class Widget {
  const Widget();

  flu.Widget build();
}

@Bind()
enum Axis {
  vertical,
  horizontal;

  flu.Axis build() => switch (this) {
    vertical => flu.Axis.vertical,
    horizontal => flu.Axis.horizontal,
  };
}

@Bind()
enum OverflowDirection {
  none,
  horizontal,
  vertical,
  both;

  fig.OverflowDirection build() => switch (this) {
    none => fig.OverflowDirection.none,
    horizontal => fig.OverflowDirection.horizontal,
    vertical => fig.OverflowDirection.vertical,
    both => fig.OverflowDirection.both,
  };
}

@Bind()
enum LayoutMode {
  freeform,
  horizontal,
  vertical,
  grid;

  fig.LayoutMode build() => switch (this) {
    freeform => fig.LayoutMode.freeform,
    horizontal => fig.LayoutMode.horizontal,
    vertical => fig.LayoutMode.vertical,
    grid => fig.LayoutMode.grid,
  };
}

@Bind()
enum PrimaryAxisSizingMode {
  fixed,
  auto;

  fig.PrimaryAxisSizingMode build() => switch (this) {
    fixed => fig.PrimaryAxisSizingMode.fixed,
    auto => fig.PrimaryAxisSizingMode.auto,
  };
}

@Bind()
enum CounterAxisSizingMode {
  fixed,
  auto;

  fig.CounterAxisSizingMode build() => switch (this) {
    fixed => fig.CounterAxisSizingMode.fixed,
    auto => fig.CounterAxisSizingMode.auto,
  };
}

@Bind()
enum LayoutWrap {
  noWrap,
  wrap;

  fig.LayoutWrap build() => switch (this) {
    noWrap => fig.LayoutWrap.noWrap,
    wrap => fig.LayoutWrap.wrap,
  };
}

@Bind()
enum LayoutAlign {
  min,
  center,
  max,
  stretch,
  spaceBetween;

  fig.LayoutAlign build() => switch (this) {
    min => fig.LayoutAlign.min,
    center => fig.LayoutAlign.center,
    max => fig.LayoutAlign.max,
    stretch => fig.LayoutAlign.stretch,
    spaceBetween => fig.LayoutAlign.spaceBetween,
  };
}

@Bind()
enum ChildSizingMode {
  fixed,
  hug;

  fig.ChildSizingMode build() => switch (this) {
    fixed => fig.ChildSizingMode.fixed,
    hug => fig.ChildSizingMode.hug,
  };
}

@Bind()
class EdgeInsets {
  const EdgeInsets.only({
    this.top = 0,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
  });
  final double top;
  final double bottom;
  final double left;
  final double right;

  static const EdgeInsets zero = EdgeInsets.only(
    top: 0,
    bottom: 0,
    right: 0,
    left: 0,
  );

  flu.EdgeInsets build() =>
      flu.EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
}

enum _FigmaLayoutProperties { auto }

@Bind()
class FigmaLayoutProperties {
  const FigmaLayoutProperties.auto({
    required double referenceWidth,
    required double referenceHeight,
    Axis axis = Axis.horizontal,
    PrimaryAxisSizingMode primaryAxisSizingMode = PrimaryAxisSizingMode.auto,
    CounterAxisSizingMode counterAxisSizingMode = CounterAxisSizingMode.fixed,
    LayoutAlign primaryAxisAlignItems = LayoutAlign.min,
    LayoutAlign counterAxisAlignItems = LayoutAlign.min,
    LayoutWrap layoutWrap = LayoutWrap.noWrap,
    EdgeInsets padding = EdgeInsets.zero,
    double itemSpacing = 0,
    double counterAxisSpacing = 0,
  }) : _type = _FigmaLayoutProperties.auto,
       _autoReferenceWidth = referenceWidth,
       _autoReferenceHeight = referenceHeight,
       _autoAxis = axis,
       _autoPrimaryAxisSizingMode = primaryAxisSizingMode,
       _autoCounterAxisSizingMode = counterAxisSizingMode,
       _autoPrimaryAxisAlignItems = primaryAxisAlignItems,
       _autoCounterAxisAlignItems = counterAxisAlignItems,
       _autoLayoutWrap = layoutWrap,
       _autoPadding = padding,
       _autoItemSpacing = itemSpacing,
       _autoCounterAxisSpacing = counterAxisSpacing;

  final _FigmaLayoutProperties _type;
  final double? _autoReferenceWidth;
  final double? _autoReferenceHeight;
  final Axis? _autoAxis;
  final PrimaryAxisSizingMode? _autoPrimaryAxisSizingMode;
  final CounterAxisSizingMode? _autoCounterAxisSizingMode;
  final LayoutAlign? _autoPrimaryAxisAlignItems;
  final LayoutAlign? _autoCounterAxisAlignItems;
  final LayoutWrap? _autoLayoutWrap;
  final EdgeInsets? _autoPadding;
  final double? _autoItemSpacing;
  final double? _autoCounterAxisSpacing;

  fig.FigmaLayoutProperties build() => switch (_type) {
    _FigmaLayoutProperties.auto => fig.FigmaLayoutProperties.auto(
      referenceWidth: _autoReferenceWidth!,
      referenceHeight: _autoReferenceHeight!,
      axis: _autoAxis!.build(),
      primaryAxisSizingMode: _autoPrimaryAxisSizingMode!.build(),
      counterAxisSizingMode: _autoCounterAxisSizingMode!.build(),
      primaryAxisAlignItems: _autoPrimaryAxisAlignItems!.build(),
      counterAxisAlignItems: _autoCounterAxisAlignItems!.build(),
      layoutWrap: _autoLayoutWrap!.build(),
      padding: _autoPadding!.build(),
      itemSpacing: _autoItemSpacing!,
      counterAxisSpacing: _autoCounterAxisSpacing!,
    ),
  };
}

@Bind()
class FigmaLayout extends Widget {
  const FigmaLayout({required this.layout, required this.children});
  final FigmaLayoutProperties layout;
  final List<Widget> children;
  @override
  flu.Widget build() {
    return fig.FigmaLayout(
      layout: layout.build(),
      children: children.map((x) => x.build()).toList(),
    );
  }
}
