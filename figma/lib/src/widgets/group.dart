import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/group.dart';
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
  RenderObjectElement createElement() {
    return FigmaGroupElement(this);
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaGroup(
      x: x,
      y: y,
      width: width,
      height: height,
      visible: visible,
      opacity: opacity,
      blendMode: blendMode,
    );
  }

  @override
  void updateRenderObject(BuildContext context, covariant RenderFigmaGroup renderObject) {
    renderObject
      ..x = x
      ..y = y
      ..width = width
      ..height = height
      ..visible = visible
      ..opacity = opacity
      ..blendMode = blendMode;
  }
}


