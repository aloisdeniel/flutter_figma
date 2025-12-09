import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';
import 'package:binui/src/exporters/flutter/values/alias.dart';
import 'package:binui/src/exporters/flutter/values/effect.dart';
import 'package:binui/src/exporters/flutter/values/paint.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';

class VisualNodeDartExporter {
  const VisualNodeDartExporter({required this.valueSerializer});

  final ValueDartExporter valueSerializer;

  /// Serializes a VisualNode to a Flutter Widget
  String serialize(Library library, VisualNode node) {
    return switch (node.whichType()) {
      VisualNode_Type.frame => _serializeFrameNode(library, node.frame),
      VisualNode_Type.group => _serializeGroupNode(library, node.group),
      VisualNode_Type.rectangle => _serializeRectangleNode(
        library,
        node.rectangle,
      ),
      VisualNode_Type.ellipse => _serializeEllipseNode(library, node.ellipse),
      VisualNode_Type.line => _serializeLineNode(library, node.line),
      VisualNode_Type.vector => _serializeVectorNode(library, node.vector),
      VisualNode_Type.text => _serializeTextNode(library, node.text),
      VisualNode_Type.component => _serializeComponentNode(
        library,
        node.component,
      ),
      VisualNode_Type.instance => _serializeInstanceNode(
        library,
        node.instance,
      ),
      VisualNode_Type.booleanOperation => _serializeBooleanOperationNode(
        library,
        node.booleanOperation,
      ),
      VisualNode_Type.notSet => 'fl.SizedBox.shrink()',
    };
  }

  String _serializeFrameNode(Library library, FrameNode frame) {
    if (!frame.visible) return 'fl.SizedBox.shrink()';

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final effectExporter = EffectDartExporter(valueSerializer: valueSerializer);

    final buffer = StringBuffer();

    // Determine widget type based on layout mode
    final String widget = switch (frame.layoutMode) {
      LayoutMode.horizontal => 'fl.Row',
      LayoutMode.vertical => 'fl.Column',
      LayoutMode.none => 'fl.Stack',
      LayoutMode.grid => 'fl.Wrap', // Simplified grid layout
      _ => 'fl.Container',
    };

    buffer.write('$widget(');

    // Add children if any
    if (frame.children.isNotEmpty) {
      buffer.write('children: [');
      for (final child in frame.children) {
        buffer.write(serialize(library, child));
        buffer.write(', ');
      }
      buffer.write('], ');
    }

    // Add decoration if fills or effects exist
    if (frame.fills.isNotEmpty || frame.effects.isNotEmpty) {
      if (widget == 'fl.Container') {
        buffer.write('decoration: ');
        buffer.write(
          paintExporter.serializeAsBoxDecoration(library, frame.fills.toList()),
        );

        if (frame.effects.isNotEmpty) {
          final shadows = effectExporter.serializeAsBoxShadowList(
            library,
            frame.effects.toList(),
          );
          if (shadows != '[]') {
            buffer.write('.copyWith(boxShadow: $shadows)');
          }
        }
        buffer.write(', ');
      }
    }

    // Add constraints if needed
    // TODO: Implement constraint handling

    buffer.write(')');
    return buffer.toString();
  }

  String _serializeGroupNode(Library library, GroupNode group) {
    if (!group.visible) return 'fl.SizedBox.shrink()';

    final buffer = StringBuffer('fl.Stack(children: [');
    for (final child in group.children) {
      buffer.write(serialize(library, child));
      buffer.write(', ');
    }
    buffer.write('])');
    return buffer.toString();
  }

  String _serializeRectangleNode(Library library, RectangleNode rectangle) {
    if (!rectangle.visible) return 'fl.SizedBox.shrink()';

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final effectExporter = EffectDartExporter(valueSerializer: valueSerializer);
    final aliasExporter = AliasDartExporter(
      valueSerializer: valueSerializer,
      alwaysFallback: true,
    );

    final buffer = StringBuffer('fl.Container(');

    // Size
    buffer.write('width: ${rectangle.width}, ');
    buffer.write('height: ${rectangle.height}, ');

    // Decoration
    if (rectangle.fills.isNotEmpty ||
        rectangle.effects.isNotEmpty ||
        rectangle.hasCornerRadius()) {
      buffer.write('decoration: fl.BoxDecoration(');

      // Fills
      if (rectangle.fills.isNotEmpty) {
        final firstFill = rectangle.fills.first;
        if (firstFill.whichType() == Paint_Type.solid) {
          buffer.write(
            'color: ${paintExporter.serialize(library, firstFill)}, ',
          );
        } else if (firstFill.whichType() == Paint_Type.gradient) {
          buffer.write(
            'gradient: ${paintExporter.serialize(library, firstFill)}, ',
          );
        }
      }

      // Corner radius
      if (rectangle.hasCornerRadius()) {
        final radius = aliasExporter.serialize(library, rectangle.cornerRadius);
        buffer.write('borderRadius: fl.BorderRadius.circular($radius), ');
      }

      // Effects (shadows)
      if (rectangle.effects.isNotEmpty) {
        final shadows = effectExporter.serializeAsBoxShadowList(
          library,
          rectangle.effects.toList(),
        );
        if (shadows != '[]') {
          buffer.write('boxShadow: $shadows, ');
        }
      }

      buffer.write('), ');
    }

    buffer.write(')');
    return buffer.toString();
  }

  String _serializeEllipseNode(Library library, EllipseNode ellipse) {
    if (!ellipse.visible) return 'fl.SizedBox.shrink()';

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);

    final buffer = StringBuffer('fl.Container(');
    buffer.write('width: ${ellipse.width}, ');
    buffer.write('height: ${ellipse.height}, ');
    buffer.write('decoration: fl.BoxDecoration(');
    buffer.write('shape: fl.BoxShape.circle, ');

    if (ellipse.fills.isNotEmpty) {
      final firstFill = ellipse.fills.first;
      if (firstFill.whichType() == Paint_Type.solid) {
        buffer.write('color: ${paintExporter.serialize(library, firstFill)}, ');
      }
    }

    buffer.write('), ');
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeLineNode(Library library, LineNode line) {
    if (!line.visible) return 'fl.SizedBox.shrink()';

    return 'fl.Divider() /* Line node - requires custom paint */';
  }

  String _serializeVectorNode(Library library, VectorNode vector) {
    if (!vector.visible) return 'fl.SizedBox.shrink()';

    return 'fl.SizedBox.shrink() /* Vector node - requires custom paint or SVG */';
  }

  String _serializeTextNode(Library library, TextNode text) {
    if (!text.visible) return 'fl.SizedBox.shrink()';

    final aliasExporter = AliasDartExporter(
      valueSerializer: valueSerializer,
      alwaysFallback: true,
    );
    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);

    final buffer = StringBuffer('fl.Text(');

    // Text content
    final characters = aliasExporter.serialize(library, text.characters);
    buffer.write('$characters, ');

    // Text style
    buffer.write('style: fl.TextStyle(');
    buffer.write("fontFamily: '${text.fontFamily}', ");

    if (text.hasFontSize()) {
      final fontSize = aliasExporter.serialize(library, text.fontSize);
      buffer.write('fontSize: $fontSize, ');
    }

    buffer.write('fontWeight: fl.FontWeight.w${text.fontWeight}, ');

    if (text.fills.isNotEmpty) {
      final color = paintExporter.serialize(library, text.fills.first);
      buffer.write('color: $color, ');
    }

    if (text.hasLetterSpacing()) {
      buffer.write('letterSpacing: ${text.letterSpacing}, ');
    }

    if (text.hasLineHeight()) {
      buffer.write('height: ${text.lineHeight}, ');
    }

    buffer.write('), ');

    // Text alignment
    buffer.write(
      'textAlign: ${_serializeTextAlign(text.textAlignHorizontal)}, ',
    );

    buffer.write(')');
    return buffer.toString();
  }

  String _serializeTextAlign(TextAlignHorizontal align) {
    return switch (align) {
      TextAlignHorizontal.left => 'fl.TextAlign.left',
      TextAlignHorizontal.center => 'fl.TextAlign.center',
      TextAlignHorizontal.right => 'fl.TextAlign.right',
      TextAlignHorizontal.justified => 'fl.TextAlign.justify',
      _ => 'fl.TextAlign.left',
    };
  }

  String _serializeComponentNode(Library library, ComponentNode component) {
    if (!component.visible) return 'fl.SizedBox.shrink()';

    // Component nodes reference a component definition
    final componentName = Naming.typeName(component.name);
    return '$componentName()';
  }

  String _serializeInstanceNode(Library library, InstanceNode instance) {
    if (!instance.visible) return 'fl.SizedBox.shrink()';

    // Instance nodes are instances of components
    if (instance.hasMainComponentId()) {
      final componentName = Naming.typeName(instance.name);
      return '$componentName()';
    }

    return 'fl.SizedBox.shrink()';
  }

  String _serializeBooleanOperationNode(
    Library library,
    BooleanOperationNode booleanOp,
  ) {
    if (!booleanOp.visible) return 'fl.SizedBox.shrink()';

    // Boolean operations require custom painting or complex clipping
    return 'fl.SizedBox.shrink() /* Boolean operation - requires custom paint */';
  }
}
