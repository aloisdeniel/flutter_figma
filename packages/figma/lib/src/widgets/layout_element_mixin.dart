import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

mixin FigmaLayoutElementMixin on RenderObjectElement {
  final List<Element> layoutChildren = [];

  List<Widget> get widgetChildren;

  ContainerRenderObjectMixin<RenderBox, ContainerBoxParentData<RenderBox>> get containerRenderObject;

  @override
  void mount(Element? parent, Object? newSlot) {
    super.mount(parent, newSlot);
    layoutChildren.addAll(widgetChildren.map((child) {
      final element = inflateWidget(child, null);
      return element;
    }));

    for (var i = 0; i < layoutChildren.length; i++) {
      final childRenderObject = layoutChildren[i].renderObject;
      if (childRenderObject is RenderBox) {
        _insertChild(
          childRenderObject,
          after: i > 0 ? layoutChildren[i - 1].renderObject as RenderBox? : null,
        );
      }
    }
  }

  @override
  void update(RenderObjectWidget newWidget) {
    super.update(newWidget);
    _updateChildren();
  }

  void _updateChildren() {
    final newChildren = widgetChildren;
    var oldChildrenTop = 0;
    var newChildrenTop = 0;

    while (newChildrenTop < newChildren.length &&
        oldChildrenTop < layoutChildren.length) {
      final newChild = newChildren[newChildrenTop];
      final oldChild = layoutChildren[oldChildrenTop];

      if (Widget.canUpdate(newChild, oldChild.widget)) {
        final updated = updateChild(oldChild, newChild, newChildrenTop);
        layoutChildren[oldChildrenTop] = updated!;
        newChildrenTop++;
        oldChildrenTop++;
      } else {
        break;
      }
    }

    while (oldChildrenTop < layoutChildren.length) {
      deactivateChild(layoutChildren.removeLast());
    }

    while (newChildrenTop < newChildren.length) {
      final newChild = inflateWidget(newChildren[newChildrenTop], newChildrenTop);
      layoutChildren.add(newChild);
      final childRenderObject = newChild.renderObject;
      if (childRenderObject is RenderBox) {
        _insertChild(
          childRenderObject,
          after: newChildrenTop > 0
              ? layoutChildren[newChildrenTop - 1].renderObject as RenderBox?
              : null,
        );
      }
      newChildrenTop++;
    }
  }

  void _insertChild(RenderBox child, {RenderBox? after}) {
    containerRenderObject.insert(child, after: after);
  }

  void _removeChild(RenderBox child) {
    containerRenderObject.remove(child);
  }

  void _moveChild(RenderBox child, {RenderBox? after}) {
    containerRenderObject.move(child, after: after);
  }

  @override
  void insertRenderObjectChild(RenderObject child, Object? slot) {
    if (child is RenderBox) {
      _insertChild(child, after: slot as RenderBox?);
    }
  }

  @override
  void moveRenderObjectChild(
      RenderObject child, Object? oldSlot, Object? newSlot) {
    if (child is RenderBox) {
      _moveChild(child, after: newSlot as RenderBox?);
    }
  }

  @override
  void removeRenderObjectChild(RenderObject child, Object? slot) {
    if (child is RenderBox) {
      _removeChild(child);
    }
  }

  @override
  void visitChildren(ElementVisitor visitor) {
    for (final child in layoutChildren) {
      visitor(child);
    }
  }

  @override
  void forgetChild(Element child) {
    layoutChildren.remove(child);
    super.forgetChild(child);
  }
}
