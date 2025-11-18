import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

class FigmaLayoutParentData extends ContainerBoxParentData<RenderBox> {
  double x = 0;
  double y = 0;
  double width = 0;
  double height = 0;
  ConstraintType horizontalConstraint = ConstraintType.min;
  ConstraintType verticalConstraint = ConstraintType.min;
  ChildSizingMode? primaryAxisSizing;
  ChildSizingMode? counterAxisSizing;

  bool get isAbsolutePositioned =>
      horizontalConstraint != ConstraintType.min ||
      verticalConstraint != ConstraintType.min ||
      x != 0 ||
      y != 0;
}

class RenderFigmaLayout extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, FigmaLayoutParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, FigmaLayoutParentData> {
  RenderFigmaLayout({
    double width = 0,
    double height = 0,
    AutoLayoutMode mode = AutoLayoutMode.horizontal,
    PrimaryAxisSizingMode primaryAxisSizingMode = PrimaryAxisSizingMode.fixed,
    CounterAxisSizingMode counterAxisSizingMode = CounterAxisSizingMode.fixed,
    LayoutAlign primaryAxisAlignItems = LayoutAlign.min,
    LayoutAlign counterAxisAlignItems = LayoutAlign.min,
    LayoutWrap layoutWrap = LayoutWrap.noWrap,
    double paddingLeft = 0,
    double paddingRight = 0,
    double paddingTop = 0,
    double paddingBottom = 0,
    double itemSpacing = 0,
    double counterAxisSpacing = 0,
  })  : _width = width,
        _height = height,
        _mode = mode,
        _primaryAxisSizingMode = primaryAxisSizingMode,
        _counterAxisSizingMode = counterAxisSizingMode,
        _primaryAxisAlignItems = primaryAxisAlignItems,
        _counterAxisAlignItems = counterAxisAlignItems,
        _layoutWrap = layoutWrap,
        _paddingLeft = paddingLeft,
        _paddingRight = paddingRight,
        _paddingTop = paddingTop,
        _paddingBottom = paddingBottom,
        _itemSpacing = itemSpacing,
        _counterAxisSpacing = counterAxisSpacing;

  double _width;
  double get width => _width;
  set width(double value) {
    if (_width != value) {
      _width = value;
      markNeedsLayout();
    }
  }

  double _height;
  double get height => _height;
  set height(double value) {
    if (_height != value) {
      _height = value;
      markNeedsLayout();
    }
  }

  AutoLayoutMode _mode;
  AutoLayoutMode get mode => _mode;
  set mode(AutoLayoutMode value) {
    if (_mode != value) {
      _mode = value;
      markNeedsLayout();
    }
  }

  PrimaryAxisSizingMode _primaryAxisSizingMode;
  PrimaryAxisSizingMode get primaryAxisSizingMode => _primaryAxisSizingMode;
  set primaryAxisSizingMode(PrimaryAxisSizingMode value) {
    if (_primaryAxisSizingMode != value) {
      _primaryAxisSizingMode = value;
      markNeedsLayout();
    }
  }

  CounterAxisSizingMode _counterAxisSizingMode;
  CounterAxisSizingMode get counterAxisSizingMode => _counterAxisSizingMode;
  set counterAxisSizingMode(CounterAxisSizingMode value) {
    if (_counterAxisSizingMode != value) {
      _counterAxisSizingMode = value;
      markNeedsLayout();
    }
  }

  LayoutAlign _primaryAxisAlignItems;
  LayoutAlign get primaryAxisAlignItems => _primaryAxisAlignItems;
  set primaryAxisAlignItems(LayoutAlign value) {
    if (_primaryAxisAlignItems != value) {
      _primaryAxisAlignItems = value;
      markNeedsLayout();
    }
  }

  LayoutAlign _counterAxisAlignItems;
  LayoutAlign get counterAxisAlignItems => _counterAxisAlignItems;
  set counterAxisAlignItems(LayoutAlign value) {
    if (_counterAxisAlignItems != value) {
      _counterAxisAlignItems = value;
      markNeedsLayout();
    }
  }

  LayoutWrap _layoutWrap;
  LayoutWrap get layoutWrap => _layoutWrap;
  set layoutWrap(LayoutWrap value) {
    if (_layoutWrap != value) {
      _layoutWrap = value;
      markNeedsLayout();
    }
  }

  double _paddingLeft;
  double get paddingLeft => _paddingLeft;
  set paddingLeft(double value) {
    if (_paddingLeft != value) {
      _paddingLeft = value;
      markNeedsLayout();
    }
  }

  double _paddingRight;
  double get paddingRight => _paddingRight;
  set paddingRight(double value) {
    if (_paddingRight != value) {
      _paddingRight = value;
      markNeedsLayout();
    }
  }

  double _paddingTop;
  double get paddingTop => _paddingTop;
  set paddingTop(double value) {
    if (_paddingTop != value) {
      _paddingTop = value;
      markNeedsLayout();
    }
  }

  double _paddingBottom;
  double get paddingBottom => _paddingBottom;
  set paddingBottom(double value) {
    if (_paddingBottom != value) {
      _paddingBottom = value;
      markNeedsLayout();
    }
  }

  double _itemSpacing;
  double get itemSpacing => _itemSpacing;
  set itemSpacing(double value) {
    if (_itemSpacing != value) {
      _itemSpacing = value;
      markNeedsLayout();
    }
  }

  double _counterAxisSpacing;
  double get counterAxisSpacing => _counterAxisSpacing;
  set counterAxisSpacing(double value) {
    if (_counterAxisSpacing != value) {
      _counterAxisSpacing = value;
      markNeedsLayout();
    }
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! FigmaLayoutParentData) {
      child.parentData = FigmaLayoutParentData();
    }
  }

  @override
  void performLayout() {
    final autoChildren = <RenderBox>[];
    final absoluteChildren = <RenderBox>[];

    RenderBox? child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as FigmaLayoutParentData;
      if (childParentData.isAbsolutePositioned) {
        absoluteChildren.add(child);
      } else {
        autoChildren.add(child);
      }
      child = childParentData.nextSibling;
    }

    if (autoChildren.isEmpty && absoluteChildren.isNotEmpty) {
      _performAbsoluteLayout(absoluteChildren);
    } else if (absoluteChildren.isEmpty && autoChildren.isNotEmpty) {
      _performAutoLayout(autoChildren);
    } else {
      _performMixedLayout(autoChildren, absoluteChildren);
    }
  }

  void _performAbsoluteLayout(List<RenderBox> absoluteChildren) {
    size = constraints.constrain(Size(_width, _height));

    for (final child in absoluteChildren) {
      final childParentData = child.parentData! as FigmaLayoutParentData;
      final childWidth = childParentData.width;
      final childHeight = childParentData.height;

      child.layout(
        BoxConstraints(
          minWidth: childWidth,
          maxWidth: childWidth,
          minHeight: childHeight,
          maxHeight: childHeight,
        ),
        parentUsesSize: false,
      );

      childParentData.offset = Offset(childParentData.x, childParentData.y);
    }
  }

  void _performAutoLayout(List<RenderBox> autoChildren) {
    if (autoChildren.isEmpty) {
      final padSumP = _getPadStartP() + _getPadEndP();
      final padSumC = _getPadStartC() + _getPadEndC();
      size = switch (_mode) {
        AutoLayoutMode.horizontal => Size(padSumP, padSumC),
        AutoLayoutMode.vertical => Size(padSumC, padSumP),
      };
      return;
    }

    final List<Size> childSizes = [];
    for (final child in autoChildren) {
      final childParentData = child.parentData! as FigmaLayoutParentData;
      final primarySizing = childParentData.primaryAxisSizing;
      final counterSizing = childParentData.counterAxisSizing;

      BoxConstraints childConstraints;
      if (_mode == AutoLayoutMode.horizontal) {
        final minWidth = primarySizing == ChildSizingMode.fixed
            ? childParentData.width
            : 0.0;
        final maxWidth = primarySizing == ChildSizingMode.fixed
            ? childParentData.width
            : double.infinity;
        final minHeight = counterSizing == ChildSizingMode.fixed
            ? childParentData.height
            : 0.0;
        final maxHeight = counterSizing == ChildSizingMode.fixed
            ? childParentData.height
            : double.infinity;
        childConstraints = BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        );
      } else {
        final minWidth = counterSizing == ChildSizingMode.fixed
            ? childParentData.width
            : 0.0;
        final maxWidth = counterSizing == ChildSizingMode.fixed
            ? childParentData.width
            : double.infinity;
        final minHeight = primarySizing == ChildSizingMode.fixed
            ? childParentData.height
            : 0.0;
        final maxHeight = primarySizing == ChildSizingMode.fixed
            ? childParentData.height
            : double.infinity;
        childConstraints = BoxConstraints(
          minWidth: minWidth,
          maxWidth: maxWidth,
          minHeight: minHeight,
          maxHeight: maxHeight,
        );
      }

      child.layout(childConstraints, parentUsesSize: true);
      childSizes.add(child.size);
    }

    final padSumP = _getPadStartP() + _getPadEndP();
    final padSumC = _getPadStartC() + _getPadEndC();

    double? innerFixedP;
    if (_primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      innerFixedP = switch (_mode) {
        AutoLayoutMode.horizontal => constraints.maxWidth - padSumP,
        AutoLayoutMode.vertical => constraints.maxHeight - padSumP,
      };
    }

    final lines = _buildLines(childSizes, innerFixedP);

    double innerP;
    if (_primaryAxisSizingMode == PrimaryAxisSizingMode.fixed) {
      innerP = innerFixedP!;
    } else {
      if (_layoutWrap == LayoutWrap.wrap && lines.length > 1) {
        innerP = lines.map((l) => l.sumP).reduce(math.max);
      } else {
        innerP = childSizes.isEmpty
            ? 0
            : childSizes
                    .map((s) => _getPrimarySize(s))
                    .reduce((a, b) => a + b) +
                _itemSpacing * (childSizes.length - 1);
      }
    }

    double innerC;
    if (_counterAxisSizingMode == CounterAxisSizingMode.fixed) {
      innerC = switch (_mode) {
        AutoLayoutMode.horizontal => constraints.maxHeight - padSumC,
        AutoLayoutMode.vertical => constraints.maxWidth - padSumC,
      };
    } else {
      innerC = lines.isEmpty
          ? 0
          : lines.map((l) => l.maxC).reduce((a, b) => a + b) +
              _counterAxisSpacing * math.max(0, lines.length - 1);
    }

    size = constraints.constrain(
      switch (_mode) {
        AutoLayoutMode.horizontal => Size(innerP + padSumP, innerC + padSumC),
        AutoLayoutMode.vertical => Size(innerC + padSumC, innerP + padSumP),
      },
    );

    _positionAutoChildren(autoChildren, lines, childSizes, innerP, innerC);
  }

  void _performMixedLayout(
      List<RenderBox> autoChildren, List<RenderBox> absoluteChildren) {
    _performAutoLayout(autoChildren);

    for (final child in absoluteChildren) {
      final childParentData = child.parentData! as FigmaLayoutParentData;
      final childWidth = childParentData.width;
      final childHeight = childParentData.height;

      child.layout(
        BoxConstraints(
          minWidth: childWidth,
          maxWidth: childWidth,
          minHeight: childHeight,
          maxHeight: childHeight,
        ),
        parentUsesSize: false,
      );

      childParentData.offset = Offset(childParentData.x, childParentData.y);
    }
  }

  double _getPrimarySize(Size size) {
    return switch (_mode) {
      AutoLayoutMode.horizontal => size.width,
      AutoLayoutMode.vertical => size.height,
    };
  }

  double _getCounterSize(Size size) {
    return switch (_mode) {
      AutoLayoutMode.horizontal => size.height,
      AutoLayoutMode.vertical => size.width,
    };
  }

  double _getPadStartP() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingLeft,
      AutoLayoutMode.vertical => _paddingTop,
    };
  }

  double _getPadEndP() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingRight,
      AutoLayoutMode.vertical => _paddingBottom,
    };
  }

  double _getPadStartC() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingTop,
      AutoLayoutMode.vertical => _paddingLeft,
    };
  }

  double _getPadEndC() {
    return switch (_mode) {
      AutoLayoutMode.horizontal => _paddingBottom,
      AutoLayoutMode.vertical => _paddingRight,
    };
  }

  List<_Line> _buildLines(List<Size> childSizes, double? innerFixedP) {
    final lineCapacityP =
        (_layoutWrap == LayoutWrap.wrap && innerFixedP != null)
            ? innerFixedP
            : double.infinity;

    final lines = <_Line>[];
    var currentLine = _Line();

    for (var i = 0; i < childSizes.length; i++) {
      final itemP = _getPrimarySize(childSizes[i]);
      final need = (currentLine.items.isEmpty ? 0 : _itemSpacing) + itemP;

      if (_layoutWrap == LayoutWrap.wrap &&
          currentLine.sumP + need > lineCapacityP &&
          currentLine.items.isNotEmpty) {
        lines.add(currentLine);
        currentLine = _Line();
      }

      currentLine.items.add(i);
      currentLine.sumP +=
          (currentLine.items.length == 1 ? 0 : _itemSpacing) + itemP;
      currentLine.maxC =
          math.max(currentLine.maxC, _getCounterSize(childSizes[i]));
    }

    if (currentLine.items.isNotEmpty) {
      lines.add(currentLine);
    }

    return lines;
  }

  void _positionAutoChildren(List<RenderBox> autoChildren, List<_Line> lines,
      List<Size> childSizes, double innerP, double innerC) {
    final totalLinesC = lines.isEmpty
        ? 0.0
        : lines.map((l) => l.maxC).reduce((a, b) => a + b) +
            _counterAxisSpacing * math.max(0, lines.length - 1);

    final startC = switch (_counterAxisAlignItems) {
      LayoutAlign.min => 0.0,
      LayoutAlign.center => (innerC - totalLinesC) / 2,
      LayoutAlign.max => innerC - totalLinesC,
      LayoutAlign.stretch => 0.0,
      LayoutAlign.spaceBetween => 0.0,
    };

    var cursorC = startC;
    for (final line in lines) {
      line.offsetC = cursorC;
      cursorC += line.maxC + _counterAxisSpacing;
    }

    for (final line in lines) {
      final usedP = line.items.isEmpty
          ? 0.0
          : line.items
                  .map((i) => _getPrimarySize(childSizes[i]))
                  .reduce((a, b) => a + b) +
              _itemSpacing * math.max(0, line.items.length - 1);
      final freeP = innerP - usedP;

      double gap;
      double offsetP;

      if (_primaryAxisAlignItems == LayoutAlign.spaceBetween &&
          line.items.length > 1) {
        gap = freeP / (line.items.length - 1);
        offsetP = 0;
      } else {
        gap = _itemSpacing;
        offsetP = switch (_primaryAxisAlignItems) {
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

        final offsetCItem = switch (_counterAxisAlignItems) {
          LayoutAlign.min => 0.0,
          LayoutAlign.center =>
            (line.maxC - _getCounterSize(childSizes[i])) / 2,
          LayoutAlign.max => line.maxC - _getCounterSize(childSizes[i]),
          LayoutAlign.stretch => 0.0,
          LayoutAlign.spaceBetween => 0.0,
        };

        final childParentData = child.parentData! as FigmaLayoutParentData;
        childParentData.offset = switch (_mode) {
          AutoLayoutMode.horizontal => Offset(
              _paddingLeft + cursorP,
              _paddingTop + line.offsetC + offsetCItem,
            ),
          AutoLayoutMode.vertical => Offset(
              _paddingLeft + line.offsetC + offsetCItem,
              _paddingTop + cursorP,
            ),
        };

        cursorP += _getPrimarySize(childSizes[i]) + gap;
      }
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    return defaultHitTestChildren(result, position: position);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    defaultPaint(context, offset);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('width', width));
    properties.add(DoubleProperty('height', height));
    properties.add(EnumProperty<AutoLayoutMode>('direction', mode));
    properties.add(EnumProperty<PrimaryAxisSizingMode>(
        'primaryAxisSizingMode', primaryAxisSizingMode));
    properties.add(EnumProperty<CounterAxisSizingMode>(
        'counterAxisSizingMode', counterAxisSizingMode));
    properties.add(EnumProperty<LayoutAlign>(
        'primaryAxisAlignItems', primaryAxisAlignItems));
    properties.add(EnumProperty<LayoutAlign>(
        'counterAxisAlignItems', counterAxisAlignItems));
    properties.add(EnumProperty<LayoutWrap>('layoutWrap', layoutWrap));
    properties.add(DoubleProperty('paddingLeft', paddingLeft));
    properties.add(DoubleProperty('paddingRight', paddingRight));
    properties.add(DoubleProperty('paddingTop', paddingTop));
    properties.add(DoubleProperty('paddingBottom', paddingBottom));
    properties.add(DoubleProperty('itemSpacing', itemSpacing));
    properties.add(DoubleProperty('counterAxisSpacing', counterAxisSpacing));
  }
}

class _Line {
  List<int> items = [];
  double sumP = 0;
  double maxC = 0;
  double offsetC = 0;
}
