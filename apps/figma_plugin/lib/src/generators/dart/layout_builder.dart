import 'package:figma_plugin/src/figma.dart';

import 'code_buffer.dart';
import 'parsers.dart';

/// Handles building layout properties code
class LayoutBuilder {
  final CodeBuffer buffer;

  LayoutBuilder(this.buffer);

  void buildAutoLayoutProperties(FrameNode node) {
    buffer.writeLine('layout: FigmaAutoLayoutProperties(');
    buffer.indent();

    // Reference dimensions
    buffer.writeLine('referenceWidth: ${node.width},');
    buffer.writeLine('referenceHeight: ${node.height},');

    // Layout axis
    if (node.layoutMode == 'HORIZONTAL') {
      buffer.writeLine('axis: Axis.horizontal,');
    } else if (node.layoutMode == 'VERTICAL') {
      buffer.writeLine('axis: Axis.vertical,');
    }

    // Sizing modes
    final primarySizing = Parsers.parsePrimaryAxisSizingMode(node);
    if (primarySizing != 'PrimaryAxisSizingMode.fixed') {
      buffer.writeLine('primaryAxisSizingMode: $primarySizing,');
    }

    final counterSizing = Parsers.parseCounterAxisSizingMode(node);
    if (counterSizing != 'CounterAxisSizingMode.fixed') {
      buffer.writeLine('counterAxisSizingMode: $counterSizing,');
    }

    // Alignment - FrameNode doesn't have primaryAxisAlignItems/counterAxisAlignItems
    // These properties may not be available in the current Figma API

    // Padding
    final hasPadding = node.paddingLeft != 0 ||
        node.paddingRight != 0 ||
        node.paddingTop != 0 ||
        node.paddingBottom != 0;
    if (hasPadding) {
      buffer.writeLine('padding: EdgeInsets.only(');
      buffer.indent();
      buffer.writeLine('left: ${node.paddingLeft},');
      buffer.writeLine('right: ${node.paddingRight},');
      buffer.writeLine('top: ${node.paddingTop},');
      buffer.writeLine('bottom: ${node.paddingBottom},');
      buffer.unindent();
      buffer.writeLine('),');
    }

    // Item spacing
    if (node.itemSpacing != 0) {
      buffer.writeLine('itemSpacing: ${node.itemSpacing},');
    }

    buffer.unindent();
    buffer.writeLine('),');
  }

  void buildFreeformLayoutProperties(FrameNode node) {
    buffer.writeLine('layout: FigmaFreeformLayoutProperties(');
    buffer.indent();
    buffer.writeLine('referenceWidth: ${node.width},');
    buffer.writeLine('referenceHeight: ${node.height},');
    buffer.unindent();
    buffer.writeLine('),');
  }

  void buildGridLayoutProperties(FrameNode node) {
    buffer.writeLine('layout: FigmaGridLayoutProperties(');
    buffer.indent();

    // TODO: These properties would need to come from the Figma API
    // For now, we'll use default values
    buffer.writeLine('columnCount: 3,');
    buffer.writeLine('rowCount: 3,');
    buffer.writeLine('columnGap: ${node.itemSpacing},');
    buffer.writeLine('rowGap: ${node.itemSpacing},');

    // Padding
    final hasPadding = node.paddingLeft != 0 ||
        node.paddingRight != 0 ||
        node.paddingTop != 0 ||
        node.paddingBottom != 0;
    if (hasPadding) {
      buffer.writeLine('padding: EdgeInsets.only(');
      buffer.indent();
      buffer.writeLine('left: ${node.paddingLeft},');
      buffer.writeLine('right: ${node.paddingRight},');
      buffer.writeLine('top: ${node.paddingTop},');
      buffer.writeLine('bottom: ${node.paddingBottom},');
      buffer.unindent();
      buffer.writeLine('),');
    }

    buffer.unindent();
    buffer.writeLine('),');
  }
}
