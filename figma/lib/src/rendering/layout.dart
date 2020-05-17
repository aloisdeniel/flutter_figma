import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaLayoutParentData extends ContainerBoxParentData<RenderBox> {
  FigmaLayoutConstraints constraints;
  FigmaTransform transform;
  FigmaLayoutAlign layoutAlign;
  @override
  String toString() =>
      '${super.toString()}; transform=$transform, layoutAlign=$layoutAlign, constraints=$constraints';
}

class FigmaLayout extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaLayout({
    Key key,
    this.constraints,
    this.transform,
    this.layoutAlign,
    @required Widget child,
  }) : super(key: key, child: child);

  final FigmaLayoutConstraints constraints;
  final FigmaTransform transform;
  final FigmaLayoutAlign layoutAlign;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData as FigmaLayoutParentData;
    bool needsLayout = false;

    if (parentData.constraints != constraints) {
      parentData.constraints = constraints;
      needsLayout = true;
    }

    if (parentData.transform != transform) {
      parentData.transform = transform;
      needsLayout = true;
    }

    if (parentData.layoutAlign != layoutAlign) {
      parentData.layoutAlign = layoutAlign;
      needsLayout = true;
    }

    if (needsLayout) {
      final AbstractNode targetParent = renderObject.parent;
      if (targetParent is RenderObject) targetParent.markNeedsLayout();
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => FigmaFrame;
}
