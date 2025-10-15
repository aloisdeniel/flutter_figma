import 'dart:math' as math;
import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/base_node.dart';
import 'package:flutter_figma/src/widgets/frame.dart';

class FigmaFrameElement extends RenderObjectElement {
  FigmaFrameElement(FigmaFrame super.widget);

  @override
  FigmaFrame get widget => super.widget as FigmaFrame;

  @override
  RenderFigmaFrame get renderObject => super.renderObject as RenderFigmaFrame;

  final List<Element> _children = [];

  @override
  void mount(Element? parent, Object? newSlot) {
    super.mount(parent, newSlot);
    _children.addAll(widget.children.map((child) {
      final element = inflateWidget(child, null);
      return element;
    }));

    for (var i = 0; i < _children.length; i++) {
      final childRenderObject = _children[i].renderObject;
      if (childRenderObject is RenderBox) {
        renderObject.insert(childRenderObject,
            after: i > 0 ? _children[i - 1].renderObject as RenderBox? : null);
      }
    }
  }

  @override
  void update(RenderObjectWidget newWidget) {
    super.update(newWidget);
    _updateChildren();
  }

  void _updateChildren() {
    final newChildren = widget.children;
    var oldChildrenTop = 0;
    var newChildrenTop = 0;

    while (newChildrenTop < newChildren.length &&
        oldChildrenTop < _children.length) {
      final newChild = newChildren[newChildrenTop];
      final oldChild = _children[oldChildrenTop];

      if (Widget.canUpdate(newChild, oldChild.widget)) {
        final updated = updateChild(oldChild, newChild, newChildrenTop);
        _children[oldChildrenTop] = updated!;
        newChildrenTop++;
        oldChildrenTop++;
      } else {
        break;
      }
    }

    while (oldChildrenTop < _children.length) {
      deactivateChild(_children.removeLast());
    }

    while (newChildrenTop < newChildren.length) {
      final newChild =
          inflateWidget(newChildren[newChildrenTop], newChildrenTop);
      _children.add(newChild);
      final childRenderObject = newChild.renderObject;
      if (childRenderObject is RenderBox) {
        renderObject.insert(childRenderObject,
            after: newChildrenTop > 0
                ? _children[newChildrenTop - 1].renderObject as RenderBox?
                : null);
      }
      newChildrenTop++;
    }
  }

  @override
  void insertRenderObjectChild(RenderObject child, Object? slot) {
    if (child is RenderBox) {
      renderObject.insert(child, after: slot as RenderBox?);
    }
  }

  @override
  void moveRenderObjectChild(
      RenderObject child, Object? oldSlot, Object? newSlot) {
    if (child is RenderBox) {
      renderObject.move(child, after: newSlot as RenderBox?);
    }
  }

  @override
  void removeRenderObjectChild(RenderObject child, Object? slot) {
    if (child is RenderBox) {
      renderObject.remove(child);
    }
  }

  @override
  void visitChildren(ElementVisitor visitor) {
    for (final child in _children) {
      visitor(child);
    }
  }

  @override
  void forgetChild(Element child) {
    _children.remove(child);
    super.forgetChild(child);
  }
}

class RenderFigmaFrame extends RenderBox
    with ContainerRenderObjectMixin<RenderBox, BoxParentData> {
  RenderFigmaFrame({
    required double x,
    required double y,
    required double width,
    required double height,
    required List<FigmaPaint> fills,
    required List<FigmaPaint> strokes,
    required double strokeWeight,
    required StrokeAlign strokeAlign,
    required double cornerRadius,
    double? topLeftRadius,
    double? topRightRadius,
    double? bottomLeftRadius,
    double? bottomRightRadius,
    required bool clipsContent,
    required LayoutMode layoutMode,
    required PrimaryAxisSizingMode primaryAxisSizingMode,
    required CounterAxisSizingMode counterAxisSizingMode,
    required double paddingLeft,
    required double paddingRight,
    required double paddingTop,
    required double paddingBottom,
    required double itemSpacing,
    required double counterAxisSpacing,
    required LayoutAlign primaryAxisAlignItems,
    required LayoutAlign counterAxisAlignItems,
    required LayoutWrap layoutWrap,
    required bool visible,
    required double opacity,
    required BlendMode blendMode,
  })  : _x = x,
        _y = y,
        _width = width,
        _height = height,
        _fills = fills,
        _strokes = strokes,
        _strokeWeight = strokeWeight,
        _strokeAlign = strokeAlign,
        _cornerRadius = cornerRadius,
        _topLeftRadius = topLeftRadius,
        _topRightRadius = topRightRadius,
        _bottomLeftRadius = bottomLeftRadius,
        _bottomRightRadius = bottomRightRadius,
        _clipsContent = clipsContent,
        _layoutMode = layoutMode,
        _primaryAxisSizingMode = primaryAxisSizingMode,
        _counterAxisSizingMode = counterAxisSizingMode,
        _paddingLeft = paddingLeft,
        _paddingRight = paddingRight,
        _paddingTop = paddingTop,
        _paddingBottom = paddingBottom,
        _itemSpacing = itemSpacing,
        _counterAxisSpacing = counterAxisSpacing,
        _primaryAxisAlignItems = primaryAxisAlignItems,
        _counterAxisAlignItems = counterAxisAlignItems,
        _layoutWrap = layoutWrap,
        _visible = visible,
        _opacity = opacity,
        _blendMode = blendMode;

  double _x;
  double get x => _x;
  set x(double value) {
    if (_x == value) return;
    _x = value;
    markNeedsLayout();
  }

  double _y;
  double get y => _y;
  set y(double value) {
    if (_y == value) return;
    _y = value;
    markNeedsLayout();
  }

  double _width;
  double get width => _width;
  set width(double value) {
    if (_width == value) return;
    _width = value;
    markNeedsLayout();
  }

  double _height;
  double get height => _height;
  set height(double value) {
    if (_height == value) return;
    _height = value;
    markNeedsLayout();
  }

  List<FigmaPaint> _fills;
  List<FigmaPaint> get fills => _fills;
  set fills(List<FigmaPaint> value) {
    if (_fills == value) return;
    _fills = value;
    markNeedsPaint();
  }

  List<FigmaPaint> _strokes;
  List<FigmaPaint> get strokes => _strokes;
  set strokes(List<FigmaPaint> value) {
    if (_strokes == value) return;
    _strokes = value;
    markNeedsPaint();
  }

  double _strokeWeight;
  double get strokeWeight => _strokeWeight;
  set strokeWeight(double value) {
    if (_strokeWeight == value) return;
    _strokeWeight = value;
    markNeedsPaint();
  }

  StrokeAlign _strokeAlign;
  StrokeAlign get strokeAlign => _strokeAlign;
  set strokeAlign(StrokeAlign value) {
    if (_strokeAlign == value) return;
    _strokeAlign = value;
    markNeedsPaint();
  }

  double _cornerRadius;
  double get cornerRadius => _cornerRadius;
  set cornerRadius(double value) {
    if (_cornerRadius == value) return;
    _cornerRadius = value;
    markNeedsPaint();
  }

  double? _topLeftRadius;
  double? get topLeftRadius => _topLeftRadius;
  set topLeftRadius(double? value) {
    if (_topLeftRadius == value) return;
    _topLeftRadius = value;
    markNeedsPaint();
  }

  double? _topRightRadius;
  double? get topRightRadius => _topRightRadius;
  set topRightRadius(double? value) {
    if (_topRightRadius == value) return;
    _topRightRadius = value;
    markNeedsPaint();
  }

  double? _bottomLeftRadius;
  double? get bottomLeftRadius => _bottomLeftRadius;
  set bottomLeftRadius(double? value) {
    if (_bottomLeftRadius == value) return;
    _bottomLeftRadius = value;
    markNeedsPaint();
  }

  double? _bottomRightRadius;
  double? get bottomRightRadius => _bottomRightRadius;
  set bottomRightRadius(double? value) {
    if (_bottomRightRadius == value) return;
    _bottomRightRadius = value;
    markNeedsPaint();
  }

  bool _clipsContent;
  bool get clipsContent => _clipsContent;
  set clipsContent(bool value) {
    if (_clipsContent == value) return;
    _clipsContent = value;
    markNeedsPaint();
  }

  LayoutMode _layoutMode;
  LayoutMode get layoutMode => _layoutMode;
  set layoutMode(LayoutMode value) {
    if (_layoutMode == value) return;
    _layoutMode = value;
    markNeedsLayout();
  }

  PrimaryAxisSizingMode _primaryAxisSizingMode;
  PrimaryAxisSizingMode get primaryAxisSizingMode => _primaryAxisSizingMode;
  set primaryAxisSizingMode(PrimaryAxisSizingMode value) {
    if (_primaryAxisSizingMode == value) return;
    _primaryAxisSizingMode = value;
    markNeedsLayout();
  }

  CounterAxisSizingMode _counterAxisSizingMode;
  CounterAxisSizingMode get counterAxisSizingMode => _counterAxisSizingMode;
  set counterAxisSizingMode(CounterAxisSizingMode value) {
    if (_counterAxisSizingMode == value) return;
    _counterAxisSizingMode = value;
    markNeedsLayout();
  }

  double _paddingLeft;
  double get paddingLeft => _paddingLeft;
  set paddingLeft(double value) {
    if (_paddingLeft == value) return;
    _paddingLeft = value;
    markNeedsLayout();
  }

  double _paddingRight;
  double get paddingRight => _paddingRight;
  set paddingRight(double value) {
    if (_paddingRight == value) return;
    _paddingRight = value;
    markNeedsLayout();
  }

  double _paddingTop;
  double get paddingTop => _paddingTop;
  set paddingTop(double value) {
    if (_paddingTop == value) return;
    _paddingTop = value;
    markNeedsLayout();
  }

  double _paddingBottom;
  double get paddingBottom => _paddingBottom;
  set paddingBottom(double value) {
    if (_paddingBottom == value) return;
    _paddingBottom = value;
    markNeedsLayout();
  }

  double _itemSpacing;
  double get itemSpacing => _itemSpacing;
  set itemSpacing(double value) {
    if (_itemSpacing == value) return;
    _itemSpacing = value;
    markNeedsLayout();
  }

  double _counterAxisSpacing;
  double get counterAxisSpacing => _counterAxisSpacing;
  set counterAxisSpacing(double value) {
    if (_counterAxisSpacing == value) return;
    _counterAxisSpacing = value;
    markNeedsLayout();
  }

  LayoutAlign _primaryAxisAlignItems;
  LayoutAlign get primaryAxisAlignItems => _primaryAxisAlignItems;
  set primaryAxisAlignItems(LayoutAlign value) {
    if (_primaryAxisAlignItems == value) return;
    _primaryAxisAlignItems = value;
    markNeedsLayout();
  }

  LayoutAlign _counterAxisAlignItems;
  LayoutAlign get counterAxisAlignItems => _counterAxisAlignItems;
  set counterAxisAlignItems(LayoutAlign value) {
    if (_counterAxisAlignItems == value) return;
    _counterAxisAlignItems = value;
    markNeedsLayout();
  }

  LayoutWrap _layoutWrap;
  LayoutWrap get layoutWrap => _layoutWrap;
  set layoutWrap(LayoutWrap value) {
    if (_layoutWrap == value) return;
    _layoutWrap = value;
    markNeedsLayout();
  }

  bool _visible;
  bool get visible => _visible;
  set visible(bool value) {
    if (_visible == value) return;
    _visible = value;
    markNeedsPaint();
  }

  double _opacity;
  double get opacity => _opacity;
  set opacity(double value) {
    if (_opacity == value) return;
    _opacity = value;
    markNeedsPaint();
  }

  BlendMode _blendMode;
  BlendMode get blendMode => _blendMode;
  set blendMode(BlendMode value) {
    if (_blendMode == value) return;
    _blendMode = value;
    markNeedsPaint();
  }

  void insert(RenderBox child, {RenderBox? after}) {
    adoptChild(child);
    if (after == null) {
      if (firstChild == null) {
        firstChild = child;
        lastChild = child;
      } else {
        final oldFirst = firstChild;
        firstChild = child;
        child.parentData = BoxParentData();
        if (oldFirst != null) {
          (child.parentData! as BoxParentData).nextSibling = oldFirst;
        }
      }
    } else {
      final afterParentData = after.parentData! as BoxParentData;
      child.parentData = BoxParentData()
        ..nextSibling = afterParentData.nextSibling;
      afterParentData.nextSibling = child;
      if (after == lastChild) {
        lastChild = child;
      }
    }
  }

  void remove(RenderBox child) {
    dropChild(child);
    if (child == firstChild && child == lastChild) {
      firstChild = null;
      lastChild = null;
    } else if (child == firstChild) {
      firstChild = (child.parentData! as BoxParentData).nextSibling;
    } else if (child == lastChild) {
      var prev = firstChild;
      while (prev != null &&
          (prev.parentData! as BoxParentData).nextSibling != child) {
        prev = (prev.parentData! as BoxParentData).nextSibling;
      }
      if (prev != null) {
        (prev.parentData! as BoxParentData).nextSibling = null;
        lastChild = prev;
      }
    } else {
      var prev = firstChild;
      while (prev != null &&
          (prev.parentData! as BoxParentData).nextSibling != child) {
        prev = (prev.parentData! as BoxParentData).nextSibling;
      }
      if (prev != null) {
        (prev.parentData! as BoxParentData).nextSibling =
            (child.parentData! as BoxParentData).nextSibling;
      }
    }
  }

  void move(RenderBox child, {RenderBox? after}) {
    remove(child);
    insert(child, after: after);
  }

  @override
  void setupParentData(RenderBox child) {
    if (child.parentData is! BoxParentData) {
      child.parentData = BoxParentData();
    }
  }

  @override
  void performLayout() {
    if (_layoutMode == LayoutMode.none) {
      size = Size(_width, _height);

      var child = firstChild;
      while (child != null) {
        child.layout(BoxConstraints.loose(size), parentUsesSize: false);
        child = (child.parentData! as BoxParentData).nextSibling;
      }
    } else if (_layoutMode == LayoutMode.horizontal ||
        _layoutMode == LayoutMode.vertical) {
      _performFlexLayout();
    } else {
      size = Size(_width, _height);
    }
  }

  void _performFlexLayout() {
    final isHorizontal = _layoutMode == LayoutMode.horizontal;
    final contentWidth = _width - _paddingLeft - _paddingRight;
    final contentHeight = _height - _paddingTop - _paddingBottom;

    var child = firstChild;
    final children = <RenderBox>[];
    while (child != null) {
      children.add(child);
      child = (child.parentData! as BoxParentData).nextSibling;
    }

    if (children.isEmpty) {
      size = Size(_width, _height);
      return;
    }

    if (isHorizontal) {
      var currentX = _paddingLeft;
      var maxHeight = 0.0;

      for (final child in children) {
        child.layout(BoxConstraints.loose(Size(contentWidth, contentHeight)),
            parentUsesSize: true);
        final childParentData = child.parentData! as BoxParentData;
        childParentData.offset = Offset(currentX, _paddingTop);
        currentX += child.size.width + _itemSpacing;
        maxHeight = math.max(maxHeight, child.size.height);
      }

      if (_primaryAxisSizingMode == PrimaryAxisSizingMode.auto) {
        _width = currentX - _itemSpacing + _paddingRight;
      }
      if (_counterAxisSizingMode == CounterAxisSizingMode.auto) {
        _height = maxHeight + _paddingTop + _paddingBottom;
      }
    } else {
      var currentY = _paddingTop;
      var maxWidth = 0.0;

      for (final child in children) {
        child.layout(BoxConstraints.loose(Size(contentWidth, contentHeight)),
            parentUsesSize: true);
        final childParentData = child.parentData! as BoxParentData;
        childParentData.offset = Offset(_paddingLeft, currentY);
        currentY += child.size.height + _itemSpacing;
        maxWidth = math.max(maxWidth, child.size.width);
      }

      if (_primaryAxisSizingMode == PrimaryAxisSizingMode.auto) {
        _height = currentY - _itemSpacing + _paddingBottom;
      }
      if (_counterAxisSizingMode == CounterAxisSizingMode.auto) {
        _width = maxWidth + _paddingLeft + _paddingRight;
      }
    }

    size = Size(_width, _height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (!_visible || _opacity == 0) return;

    final canvas = context.canvas;
    canvas.save();

    if (_opacity < 1.0) {
      canvas.saveLayer(
        offset & size,
        ui.Paint()..color = ui.Color.fromRGBO(255, 255, 255, _opacity),
      );
    }

    final rect = offset & size;
    final radii = ui.Radius.circular(_cornerRadius);
    final rrect = ui.RRect.fromRectAndCorners(
      rect,
      topLeft:
          _topLeftRadius != null ? ui.Radius.circular(_topLeftRadius!) : radii,
      topRight: _topRightRadius != null
          ? ui.Radius.circular(_topRightRadius!)
          : radii,
      bottomLeft: _bottomLeftRadius != null
          ? ui.Radius.circular(_bottomLeftRadius!)
          : radii,
      bottomRight: _bottomRightRadius != null
          ? ui.Radius.circular(_bottomRightRadius!)
          : radii,
    );

    for (final fill in _fills) {
      if (fill is SolidPaint && fill.visible) {
        final paint = ui.Paint()
          ..color = ui.Color.fromRGBO(
            (fill.color.r * 255).toInt(),
            (fill.color.g * 255).toInt(),
            (fill.color.b * 255).toInt(),
            fill.opacity,
          )
          ..style = ui.PaintingStyle.fill;
        canvas.drawRRect(rrect, paint);
      }
    }

    if (_clipsContent) {
      canvas.clipRRect(rrect);
    }

    var child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as BoxParentData;
      context.paintChild(child, offset + childParentData.offset);
      child = childParentData.nextSibling;
    }

    for (final stroke in _strokes) {
      if (stroke is SolidPaint && stroke.visible) {
        final paint = ui.Paint()
          ..color = ui.Color.fromRGBO(
            (stroke.color.r * 255).toInt(),
            (stroke.color.g * 255).toInt(),
            (stroke.color.b * 255).toInt(),
            stroke.opacity,
          )
          ..style = ui.PaintingStyle.stroke
          ..strokeWidth = _strokeWeight;

        final adjustedRect = switch (_strokeAlign) {
          StrokeAlign.inside => rect.deflate(_strokeWeight / 2),
          StrokeAlign.outside => rect.inflate(_strokeWeight / 2),
          StrokeAlign.center => rect,
        };

        final adjustedRRect = ui.RRect.fromRectAndCorners(
          adjustedRect,
          topLeft: _topLeftRadius != null
              ? ui.Radius.circular(_topLeftRadius!)
              : radii,
          topRight: _topRightRadius != null
              ? ui.Radius.circular(_topRightRadius!)
              : radii,
          bottomLeft: _bottomLeftRadius != null
              ? ui.Radius.circular(_bottomLeftRadius!)
              : radii,
          bottomRight: _bottomRightRadius != null
              ? ui.Radius.circular(_bottomRightRadius!)
              : radii,
        );

        canvas.drawRRect(adjustedRRect, paint);
      }
    }

    if (_opacity < 1.0) {
      canvas.restore();
    }
    canvas.restore();
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    var child = lastChild;
    while (child != null) {
      final childParentData = child.parentData! as BoxParentData;
      if (result.addWithPaintOffset(
        offset: childParentData.offset,
        position: position,
        hitTest: (BoxHitTestResult result, Offset transformed) {
          return child!.hitTest(result, position: transformed);
        },
      )) {
        return true;
      }
      child = childParentData.nextSibling;
    }
    return false;
  }
}
