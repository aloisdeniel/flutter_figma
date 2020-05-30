import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaLayoutParentData extends ContainerBoxParentData<RenderBox> {
  FigmaLayoutConstraints constraints;
  FigmaTransform transform;
  Size designSize;
  FigmaLayoutAlign layoutAlign;
  @override
  String toString() =>
      '${super.toString()}; transform=$transform, size=$designSize layoutAlign=$layoutAlign, constraints=$constraints';
}

class FigmaLayout extends ParentDataWidget<FigmaLayoutParentData> {
  const FigmaLayout({
    Key key,
    @required this.constraints,
    @required this.transform,
    @required this.layoutAlign,
    @required this.designSize,
    @required Widget child,
  }) : super(key: key, child: child);

  final FigmaLayoutConstraints constraints;
  final FigmaTransform transform;
  final FigmaLayoutAlign layoutAlign;
  final Size designSize;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is FigmaLayoutParentData);
    final parentData = renderObject.parentData as FigmaLayoutParentData;
    var needsLayout = false;

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

    if (parentData.designSize != designSize) {
      parentData.designSize = designSize;
      needsLayout = true;
    }

    if (needsLayout) {
      final targetParent = renderObject.parent;
      if (targetParent is RenderObject) targetParent.markNeedsLayout();
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => FigmaFrame;
}
