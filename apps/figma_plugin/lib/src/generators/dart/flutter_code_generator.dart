import 'package:figma_plugin/src/figma.dart';

import 'code_buffer.dart';
import 'node_builder.dart';

/// Main code generator for Flutter code from Figma nodes
class FlutterCodeGenerator {
  FlutterCodeGenerator();

  String generate(Iterable<SceneNode> nodes) {
    final buffer = CodeBuffer();

    buffer.writeLine("import 'package:flutter/widgets.dart';");
    buffer.writeLine("import 'package:flutter_figma/widgets.dart';");

    final nodeBuilder = NodeBuilder(buffer);

    for (var node in nodes) {
      buffer.writeLine('');
      nodeBuilder.buildSceneNode(node);
    }

    return buffer.toString();
  }
}
