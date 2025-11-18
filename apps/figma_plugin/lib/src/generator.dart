import 'figma.dart';

class FlutterCodeGenerator {
  FlutterCodeGenerator();

  late StringBuffer _buffer;

  String generate(Iterable<SceneNode> nodes) {
    _buffer = StringBuffer();

    _buffer.writeln("import 'package:flutter/widgets.dart';");
    _buffer.writeln("import 'package:flutter_figma/widgets.dart';");

    for (var node in nodes) {
      _buffer.writeln();
      _buildSceneNode(node);
    }

    return _buffer.toString();
  }

  void _buildSceneNode(SceneNode node) {
    switch (node.type) {
      case 'FRAME':
        _buildFrameNode(node as FrameNode);
      case 'GROUP':
        _buildGroupNode(node as GroupNode);
      case 'RECTANGLE':
        _buildRectangleNode(node as RectangleNode);
      case 'TEXT':
        _buildTextNode(node as TextNode);
      default:
        print('Unsupported node type: ${node.type}');
    }
  }

  // Nodes

  void _buildFrameNode(FrameNode node) {
    // TODO
  }

  void _buildGroupNode(GroupNode node) {
    // TODO
  }

  void _buildRectangleNode(RectangleNode node) {
    // TODO
  }

  void _buildTextNode(TextNode node) {
    // TODO
  }
}
