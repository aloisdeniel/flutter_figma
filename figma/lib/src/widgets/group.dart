import 'package:flutter/widgets.dart' show Element;
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
  final List<FigmaNode> children;
  final FigmaTransform? relativeTransform;

  @override
  Element createElement() {
    return FigmaGroupElement(this);
  }
}
