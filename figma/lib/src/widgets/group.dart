import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

class FigmaGroup extends FigmaSceneNode {
  const FigmaGroup({
    super.visible,
    super.opacity,
    super.blendMode,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.children = const [],
    this.relativeTransform,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final List<Widget> children;
  final FigmaTransform? relativeTransform;

  @override
  Element createElement() {
    return FigmaGroupElement(this);
  }
}

class FigmaGroupElement extends RenderObjectElement {
  FigmaGroupElement(FigmaGroup super.widget);

  @override
  FigmaGroup get widget => super.widget as FigmaGroup;

  @override
  RenderFigmaGroup get renderObject => super.renderObject as RenderFigmaGroup;

  final List<Element> _children = [];

  @override
  RenderFigmaGroup createRenderObject(BuildContext context) {
    return RenderFigmaGroup(
      x: widget.x,
      y: widget.y,
      width: widget.width,
      height: widget.height,
      visible: widget.visible,
      opacity: widget.opacity,
      blendMode: widget.blendMode,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderFigmaGroup renderObject) {
    renderObject
      ..x = widget.x
      ..y = widget.y
      ..width = widget.width
      ..height = widget.height
      ..visible = widget.visible
      ..opacity = widget.opacity
      ..blendMode = widget.blendMode;
  }

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
        renderObject.insert(childRenderObject, after: i > 0 ? _children[i - 1].renderObject as RenderBox? : null);
      }
    }
  }

  @override
  void update(Widget newWidget) {
    super.update(newWidget);
    _updateChildren();
  }

  void _updateChildren() {
    final newChildren = widget.children;
    var oldChildrenTop = 0;
    var newChildrenTop = 0;

    while (newChildrenTop < newChildren.length && oldChildrenTop < _children.length) {
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
      final newChild = inflateWidget(newChildren[newChildrenTop], newChildrenTop);
      _children.add(newChild);
      final childRenderObject = newChild.renderObject;
      if (childRenderObject is RenderBox) {
        renderObject.insert(childRenderObject, after: newChildrenTop > 0 ? _children[newChildrenTop - 1].renderObject as RenderBox? : null);
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
  void moveRenderObjectChild(RenderObject child, Object? oldSlot, Object? newSlot) {
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

class RenderFigmaGroup extends RenderBox with ContainerRenderObjectMixin<RenderBox, BoxParentData> {
  RenderFigmaGroup({
    required double x,
    required double y,
    required double width,
    required double height,
    required bool visible,
    required double opacity,
    required BlendMode blendMode,
  })  : _x = x,
        _y = y,
        _width = width,
        _height = height,
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
      child.parentData = BoxParentData()..nextSibling = afterParentData.nextSibling;
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
      while (prev != null && (prev.parentData! as BoxParentData).nextSibling != child) {
        prev = (prev.parentData! as BoxParentData).nextSibling;
      }
      if (prev != null) {
        (prev.parentData! as BoxParentData).nextSibling = null;
        lastChild = prev;
      }
    } else {
      var prev = firstChild;
      while (prev != null && (prev.parentData! as BoxParentData).nextSibling != child) {
        prev = (prev.parentData! as BoxParentData).nextSibling;
      }
      if (prev != null) {
        (prev.parentData! as BoxParentData).nextSibling = (child.parentData! as BoxParentData).nextSibling;
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
    size = Size(_width, _height);
    
    var child = firstChild;
    while (child != null) {
      child.layout(BoxConstraints.loose(size), parentUsesSize: false);
      child = (child.parentData! as BoxParentData).nextSibling;
    }
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

    var child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as BoxParentData;
      context.paintChild(child, offset);
      child = childParentData.nextSibling;
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
        offset: Offset.zero,
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
