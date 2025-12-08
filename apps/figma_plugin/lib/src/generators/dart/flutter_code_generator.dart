import 'package:figma_plugin/src/figma.dart';

import 'code_buffer.dart';
import 'node_builder.dart';
import 'parsers.dart';

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
      _generateWidgetClass(buffer, nodeBuilder, node);
    }

    return buffer.toString();
  }

  void _generateWidgetClass(
    CodeBuffer buffer,
    NodeBuilder nodeBuilder,
    SceneNode node,
  ) {
    final className = Parsers.toPascalCase(node.name);

    // Generate class definition
    buffer.writeLine('class $className extends StatelessWidget {');
    buffer.indent();

    // Constructor
    buffer.writeLine('const $className({super.key});');
    buffer.writeLine('');

    // Build method
    buffer.writeLine('@override');
    buffer.writeLine('Widget build(BuildContext context) {');
    buffer.indent();
    buffer.writeLine('return ');
    buffer.indent();

    // Generate the widget tree
    nodeBuilder.buildSceneNode(node);
    buffer.writeLine(';');

    buffer.unindent();
    buffer.unindent();
    buffer.writeLine('}');

    buffer.unindent();
    buffer.writeLine('}');
  }
}
