import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/alias.dart';
import 'package:binui/src/exporters/flutter/values/flutter/effect.dart';
import 'package:binui/src/exporters/flutter/values/flutter/paint.dart';
import 'package:binui/src/exporters/flutter/values/flutter/radius.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';
import 'package:binui/src/utils/naming.dart';

class VisualNodeDartExporter {
  const VisualNodeDartExporter({required this.valueSerializer});

  final FlutterValueExporter valueSerializer;

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
    final String widget;
    if (frame.hasLayout()) {
      final layoutType = frame.layout.whichType();
      widget = switch (layoutType) {
        LayoutProperties_Type.freeform => 'fl.Stack',
        LayoutProperties_Type.autoLayout =>
          frame.layout.autoLayout.isVertical ? 'fl.Column' : 'fl.Row',
        LayoutProperties_Type.grid => 'fl.Wrap',
        LayoutProperties_Type.notSet => 'fl.Container',
      };
    } else {
      widget = 'fl.Container';
    }

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
    final borderRadiusExporter = const BorderRadiusDartExporter();

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
        final fillType = firstFill.whichType();
        if (fillType == Paint_Type.solid) {
          buffer.write(
            'color: ${paintExporter.serialize(library, firstFill)}, ',
          );
        } else if (fillType == Paint_Type.linearGradient ||
            fillType == Paint_Type.radialGradient ||
            fillType == Paint_Type.angularGradient ||
            fillType == Paint_Type.diamondGradient) {
          buffer.write(
            'gradient: ${paintExporter.serialize(library, firstFill)}, ',
          );
        }
      }

      // Corner radius
      if (rectangle.hasCornerRadius()) {
        final radius = borderRadiusExporter.serialize(rectangle.cornerRadius);
        buffer.write('borderRadius: $radius, ');
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

    if (text.hasStyle()) {
      final style = text.style;
      if (style.hasFontName()) {
        buffer.write("fontFamily: '${style.fontName.family}', ");
        if (style.fontName.weight != 0) {
          buffer.write('fontWeight: fl.FontWeight.w${style.fontName.weight}, ');
        }
      }
      if (style.hasFontSize()) {
        buffer.write('fontSize: ${style.fontSize}, ');
      }
      if (style.hasLetterSpacing() && style.letterSpacing.value != 0) {
        buffer.write('letterSpacing: ${style.letterSpacing.value}, ');
      }
      if (style.hasLineHeight()) {
        final lineHeight = style.lineHeight;
        if (lineHeight.hasPixels() && style.fontSize > 0) {
          final height = lineHeight.pixels / style.fontSize;
          buffer.write('height: $height, ');
        } else if (lineHeight.hasPercent()) {
          buffer.write('height: ${lineHeight.percent / 100}, ');
        }
      }
    }

    if (text.fills.isNotEmpty) {
      final color = paintExporter.serialize(library, text.fills.first);
      buffer.write('color: $color, ');
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
      TextAlignHorizontal.TEXT_ALIGN_HORIZONTAL_LEFT => 'fl.TextAlign.left',
      TextAlignHorizontal.TEXT_ALIGN_HORIZONTAL_CENTER => 'fl.TextAlign.center',
      TextAlignHorizontal.TEXT_ALIGN_HORIZONTAL_RIGHT => 'fl.TextAlign.right',
      TextAlignHorizontal.TEXT_ALIGN_HORIZONTAL_JUSTIFIED =>
        'fl.TextAlign.justify',
      _ => 'fl.TextAlign.left',
    };
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
