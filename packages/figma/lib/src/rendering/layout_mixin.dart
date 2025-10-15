import 'dart:math' as math;
import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/layout.dart';

mixin FigmaLayoutMixin<T extends ContainerBoxParentData<RenderBox>>
    on RenderBox, ContainerRenderObjectMixin<RenderBox, T> {
  LayoutMode get layoutMode;
  PrimaryAxisSizingMode get primaryAxisSizingMode;
  CounterAxisSizingMode get counterAxisSizingMode;
  double get paddingLeft;
  double get paddingRight;
  double get paddingTop;
  double get paddingBottom;
  double get itemSpacing;
  double get counterAxisSpacing;
  LayoutAlign get primaryAxisAlignItems;
  LayoutAlign get counterAxisAlignItems;
  LayoutWrap get layoutWrap;

  double get layoutWidth;
  double get layoutHeight;
  set layoutWidth(double value);
  set layoutHeight(double value);

  Size performFigmaLayout() {
    if (layoutMode == LayoutMode.none) {
      final size = Size(layoutWidth, layoutHeight);

      var child = firstChild;
      while (child != null) {
        child.layout(BoxConstraints.loose(size), parentUsesSize: false);
        final childParentData = child.parentData! as T;
        child = childParentData.nextSibling;
      }

      return size;
    } else if (layoutMode == LayoutMode.horizontal ||
        layoutMode == LayoutMode.vertical) {
      return _performFlexLayout();
    } else {
      return Size(layoutWidth, layoutHeight);
    }
  }

  Size _performFlexLayout() {
    final isHorizontal = layoutMode == LayoutMode.horizontal;
    final contentWidth = layoutWidth - paddingLeft - paddingRight;
    final contentHeight = layoutHeight - paddingTop - paddingBottom;

    var child = firstChild;
    final children = <RenderBox>[];
    while (child != null) {
      children.add(child);
      final childParentData =
          child.parentData! as ContainerBoxParentData<RenderBox>;
      child = childParentData.nextSibling;
    }

    if (children.isEmpty) {
      return Size(layoutWidth, layoutHeight);
    }

    var width = layoutWidth;
    var height = layoutHeight;

    if (isHorizontal) {
      var currentX = paddingLeft;
      var maxHeight = 0.0;

      for (final child in children) {
        child.layout(BoxConstraints.loose(Size(contentWidth, contentHeight)),
            parentUsesSize: true);
        final childParentData = child.parentData! as T;
        childParentData.offset = Offset(currentX, paddingTop);
        currentX += child.size.width + itemSpacing;
        maxHeight = math.max(maxHeight, child.size.height);
      }

      if (primaryAxisSizingMode == PrimaryAxisSizingMode.auto) {
        width = currentX - itemSpacing + paddingRight;
        layoutWidth = width;
      }
      if (counterAxisSizingMode == CounterAxisSizingMode.auto) {
        height = maxHeight + paddingTop + paddingBottom;
        layoutHeight = height;
      }
    } else {
      var currentY = paddingTop;
      var maxWidth = 0.0;

      for (final child in children) {
        child.layout(BoxConstraints.loose(Size(contentWidth, contentHeight)),
            parentUsesSize: true);
        final childParentData = child.parentData! as T;
        childParentData.offset = Offset(paddingLeft, currentY);
        currentY += child.size.height + itemSpacing;
        maxWidth = math.max(maxWidth, child.size.width);
      }

      if (primaryAxisSizingMode == PrimaryAxisSizingMode.auto) {
        height = currentY - itemSpacing + paddingBottom;
        layoutHeight = height;
      }
      if (counterAxisSizingMode == CounterAxisSizingMode.auto) {
        width = maxWidth + paddingLeft + paddingRight;
        layoutWidth = width;
      }
    }

    return Size(width, height);
  }
}
