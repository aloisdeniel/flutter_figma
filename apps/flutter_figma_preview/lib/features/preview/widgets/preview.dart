import 'package:binui/binui.dart' as binui;
import 'package:flutter/widgets.dart';

class Preview extends StatelessWidget {
  const Preview({super.key, required this.result});

  final binui.Library result;

  @override
  Widget build(BuildContext context) {
    if (result.visualNodes.isEmpty) {
      return const Center(child: Text('No visual nodes to display'));
    }

    // Render all visual nodes in a scrollable list
    return SingleChildScrollView(
      child: Column(
        children: [
          for (final node in result.visualNodes)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _VisualNodeRenderer(node: node, library: result),
            ),
        ],
      ),
    );
  }
}

/// Renders a VisualNode as a Flutter Widget at runtime
class _VisualNodeRenderer extends StatelessWidget {
  const _VisualNodeRenderer({required this.node, required this.library});

  final binui.VisualNode node;
  final binui.Library library;

  @override
  Widget build(BuildContext context) {
    return switch (node.whichType()) {
      binui.VisualNode_Type.frame => _buildFrame(node.frame),
      binui.VisualNode_Type.group => _buildGroup(node.group),
      binui.VisualNode_Type.rectangle => _buildRectangle(node.rectangle),
      binui.VisualNode_Type.ellipse => _buildEllipse(node.ellipse),
      binui.VisualNode_Type.text => _buildText(node.text),
      binui.VisualNode_Type.line => _buildPlaceholder('Line', node),
      binui.VisualNode_Type.vector => _buildPlaceholder('Vector', node),
      binui.VisualNode_Type.component => _buildPlaceholder('Component', node),
      binui.VisualNode_Type.instance => _buildPlaceholder('Instance', node),
      binui.VisualNode_Type.booleanOperation => _buildPlaceholder(
        'BooleanOp',
        node,
      ),
      binui.VisualNode_Type.notSet => const SizedBox.shrink(),
    };
  }

  Widget _buildFrame(binui.FrameNode frame) {
    if (!frame.visible) return const SizedBox.shrink();

    final children = frame.children
        .map((child) => _VisualNodeRenderer(node: child, library: library))
        .toList();

    return Container(
      width: frame.width,
      height: frame.height,
      decoration: _getBoxDecoration(frame.fills),
      child: Stack(children: children),
    );
  }

  Widget _buildGroup(binui.GroupNode group) {
    if (!group.visible) return const SizedBox.shrink();

    final children = group.children
        .map((child) => _VisualNodeRenderer(node: child, library: library))
        .toList();

    return SizedBox(
      width: group.width,
      height: group.height,
      child: Stack(children: children),
    );
  }

  Widget _buildRectangle(binui.RectangleNode rectangle) {
    if (!rectangle.visible) return const SizedBox.shrink();

    return Container(
      width: rectangle.width,
      height: rectangle.height,
      decoration: _getBoxDecoration(rectangle.fills),
    );
  }

  Widget _buildEllipse(binui.EllipseNode ellipse) {
    if (!ellipse.visible) return const SizedBox.shrink();

    return Container(
      width: ellipse.width,
      height: ellipse.height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: _getFirstFillColor(ellipse.fills),
      ),
    );
  }

  Widget _buildText(binui.TextNode text) {
    if (!text.visible) return const SizedBox.shrink();

    final characters = _extractAliasString(text.characters);
    final fontSize = text.hasFontSize()
        ? _extractAliasDouble(text.fontSize, 14.0)
        : 14.0;
    final letterSpacing = text.hasLetterSpacing() ? text.letterSpacing : null;

    return Text(
      characters,
      style: TextStyle(
        fontFamily: text.fontFamily,
        fontSize: fontSize,
        fontWeight: FontWeight
            .values[(text.fontWeight / 100).clamp(0, 8).toInt().clamp(0, 8)],
        letterSpacing: letterSpacing,
        color: _getFirstFillColor(text.fills),
      ),
      textAlign: _getTextAlign(text.textAlignHorizontal),
    );
  }

  Widget _buildPlaceholder(String type, binui.VisualNode node) {
    double width = 100, height = 100;

    // Extract dimensions based on node type
    switch (node.whichType()) {
      case binui.VisualNode_Type.line:
        width = node.line.width;
        height = node.line.height;
        break;
      case binui.VisualNode_Type.vector:
        width = node.vector.width;
        height = node.vector.height;
        break;
      case binui.VisualNode_Type.component:
        width = node.component.width;
        height = node.component.height;
        break;
      case binui.VisualNode_Type.instance:
        width = node.instance.width;
        height = node.instance.height;
        break;
      case binui.VisualNode_Type.booleanOperation:
        width = node.booleanOperation.width;
        height = node.booleanOperation.height;
        break;
      default:
        break;
    }

    return Container(
      width: width,
      height: height,
      color: const Color(0x11000000),
      child: Center(child: Text('$type (not yet implemented)')),
    );
  }

  // Helper methods

  BoxDecoration? _getBoxDecoration(List<binui.Paint> fills) {
    if (fills.isEmpty) return null;

    final color = _getFirstFillColor(fills);
    if (color != null) {
      return BoxDecoration(color: color);
    }

    return null;
  }

  Color? _getFirstFillColor(List<binui.Paint> fills) {
    if (fills.isEmpty) return null;

    final firstFill = fills.first;
    if (!firstFill.visible) return null;

    if (firstFill.whichType() == binui.Paint_Type.solid) {
      final color = _extractAliasColor(firstFill.solid.color);
      return color;
    }

    return null;
  }

  TextAlign _getTextAlign(binui.TextAlignHorizontal align) {
    return switch (align) {
      binui.TextAlignHorizontal.left => TextAlign.left,
      binui.TextAlignHorizontal.center => TextAlign.center,
      binui.TextAlignHorizontal.right => TextAlign.right,
      binui.TextAlignHorizontal.justified => TextAlign.justify,
      _ => TextAlign.left,
    };
  }

  // Convert binui Color (protobuf message) to Flutter Color
  Color _convertColor(binui.Color binuiColor) {
    return Color.fromRGBO(
      (binuiColor.red * 255).round(),
      (binuiColor.green * 255).round(),
      (binuiColor.blue * 255).round(),
      binuiColor.alpha,
    );
  }

  // Extract Color value from Alias
  Color? _extractAliasColor(binui.Alias alias) {
    switch (alias.whichType()) {
      case binui.Alias_Type.constant:
        final value = alias.constant.value;
        if (value.hasColor()) {
          return _convertColor(value.color);
        }
        break;
      case binui.Alias_Type.variable:
        final value = alias.variable.defaultValue;
        if (value.hasColor()) {
          return _convertColor(value.color);
        }
        break;
      case binui.Alias_Type.property:
        final value = alias.property.defaultValue;
        if (value.hasColor()) {
          return _convertColor(value.color);
        }
        break;
      default:
        break;
    }
    return null;
  }

  // Extract double value from Alias
  double _extractAliasDouble(binui.Alias alias, [double defaultValue = 0.0]) {
    switch (alias.whichType()) {
      case binui.Alias_Type.constant:
        final value = alias.constant.value;
        if (value.hasDoubleValue()) {
          return value.doubleValue;
        }
        break;
      case binui.Alias_Type.variable:
        // For variables, use the default value
        final value = alias.variable.defaultValue;
        if (value.hasDoubleValue()) {
          return value.doubleValue;
        }
        break;
      case binui.Alias_Type.property:
        // For properties, use the default value
        final value = alias.property.defaultValue;
        if (value.hasDoubleValue()) {
          return value.doubleValue;
        }
        break;
      default:
        break;
    }
    return defaultValue;
  }

  // Extract string value from Alias
  String _extractAliasString(binui.Alias alias, [String defaultValue = '']) {
    switch (alias.whichType()) {
      case binui.Alias_Type.constant:
        final value = alias.constant.value;
        if (value.hasStringValue()) {
          return value.stringValue;
        }
        break;
      case binui.Alias_Type.variable:
        // For variables, use the default value
        final value = alias.variable.defaultValue;
        if (value.hasStringValue()) {
          return value.stringValue;
        }
        break;
      case binui.Alias_Type.property:
        // For properties, use the default value
        final value = alias.property.defaultValue;
        if (value.hasStringValue()) {
          return value.stringValue;
        }
        break;
      default:
        break;
    }
    return defaultValue;
  }
}
