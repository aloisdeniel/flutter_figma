import 'dart:js_interop';

import 'package:figma_plugin/src/figma.dart';

import 'code_buffer.dart';
import 'effect_builder.dart';
import 'layout_builder.dart';
import 'paint_builder.dart';
import 'parsers.dart';

/// Handles building individual node code
class NodeBuilder {
  final CodeBuffer buffer;
  final PaintBuilder paintBuilder;
  final EffectBuilder effectBuilder;
  final LayoutBuilder layoutBuilder;

  NodeBuilder(this.buffer)
      : paintBuilder = PaintBuilder(buffer),
        effectBuilder = EffectBuilder(buffer),
        layoutBuilder = LayoutBuilder(buffer);

  void buildSceneNode(SceneNode node, {FrameNode? parentFrame}) {
    // Determine if we need FigmaPositioned based on parent's layout mode
    final bool parentIsAutoLayout = parentFrame != null &&
        (parentFrame.layoutMode == 'HORIZONTAL' ||
            parentFrame.layoutMode == 'VERTICAL');
    final bool parentIsGrid =
        parentFrame != null && parentFrame.layoutMode == 'GRID';
    final bool parentIsFreeform =
        parentFrame != null && parentFrame.layoutMode == 'NONE';

    if (parentIsFreeform) {
      _buildFreeformPositioned(node);
    } else if (parentIsAutoLayout) {
      _buildAutoLayoutPositioned(node, parentFrame);
    } else if (parentIsGrid) {
      _buildGridPositioned();
    }

    switch (node.type) {
      case 'FRAME':
        buildFrameNode(node as FrameNode);
      case 'GROUP':
        buildGroupNode(node as GroupNode);
      case 'RECTANGLE':
        buildRectangleNode(node as RectangleNode);
      case 'ELLIPSE':
        buildEllipseNode(node as EllipseNode);
      case 'TEXT':
        buildTextNode(node as TextNode);
      case 'VECTOR':
        buildVectorNode(node as VectorNode);
      case 'LINE':
        buildLineNode(node as LineNode);
      case 'POLYGON':
        buildPolygonNode(node as PolygonNode);
      case 'STAR':
        buildStarNode(node as StarNode);
      default:
        print('Unsupported node type: ${node.type}');
    }

    if (parentIsFreeform ||
        parentIsGrid ||
        (parentIsAutoLayout &&
            (Parsers.parseChildSizingMode(node.layoutSizingHorizontal) !=
                    null ||
                Parsers.parseChildSizingMode(node.layoutSizingVertical) !=
                    null))) {
      buffer.unindent();
      buffer.writeLine(',');
      buffer.unindent();
      buffer.writeLine(')');
    }
  }

  void _buildFreeformPositioned(SceneNode node) {
    buffer.writeLine('FigmaPositioned.freeform(');
    buffer.indent();
    buffer.writeLine('x: ${node.x},');
    buffer.writeLine('y: ${node.y},');
    buffer.writeLine('width: ${node.width},');
    buffer.writeLine('height: ${node.height},');
    buffer.writeLine('child: ');
    buffer.indent();
  }

  void _buildAutoLayoutPositioned(SceneNode node, FrameNode parentFrame) {
    final hSizing = Parsers.parseChildSizingMode(node.layoutSizingHorizontal);
    final vSizing = Parsers.parseChildSizingMode(node.layoutSizingVertical);

    if (hSizing != null || vSizing != null) {
      buffer.writeLine('FigmaPositioned.auto(');
      buffer.indent();
      buffer.writeLine('width: ${node.width},');
      buffer.writeLine('height: ${node.height},');

      // Determine primary and counter axis based on parent's layout mode
      if (parentFrame.layoutMode == 'HORIZONTAL') {
        if (hSizing != null) {
          buffer.writeLine('primaryAxisSizing: $hSizing,');
        }
        if (vSizing != null) {
          buffer.writeLine('counterAxisSizing: $vSizing,');
        }
      } else {
        // VERTICAL
        if (vSizing != null) {
          buffer.writeLine('primaryAxisSizing: $vSizing,');
        }
        if (hSizing != null) {
          buffer.writeLine('counterAxisSizing: $hSizing,');
        }
      }

      buffer.writeLine('child: ');
      buffer.indent();
    }
  }

  void _buildGridPositioned() {
    buffer.writeLine('FigmaPositioned.grid(');
    buffer.indent();
    buffer.writeLine('row: 0,');
    buffer.writeLine('column: 0,');
    buffer.writeLine('child: ');
    buffer.indent();
  }

  void buildFrameNode(FrameNode node) {
    buffer.writeLine('FigmaFrame(');
    buffer.indent();

    // Layout properties
    if (node.layoutMode == 'HORIZONTAL' || node.layoutMode == 'VERTICAL') {
      layoutBuilder.buildAutoLayoutProperties(node);
    } else if (node.layoutMode == 'GRID') {
      layoutBuilder.buildGridLayoutProperties(node);
    } else {
      layoutBuilder.buildFreeformLayoutProperties(node);
    }

    // Shape (corner radius) - FrameNode doesn't have corner radius properties
    // Corner radius would need to be accessed through a different property if available

    // Decoration (fills and strokes)
    final hasFills = node.fills.toDart.isNotEmpty;
    final hasStrokes = node.strokes.toDart.isNotEmpty;
    if (hasFills || hasStrokes) {
      _buildDecoration(node);
    }

    // Effects
    final effects = node.effects.toDart;
    if (effects.isNotEmpty) {
      buffer.writeLine('effects: [');
      buffer.indent();
      for (var effect in effects) {
        effectBuilder.buildEffect(effect);
        buffer.writeLine(',');
      }
      buffer.unindent();
      buffer.writeLine('],');
    }

    // Opacity - FrameNode doesn't have opacity property
    // Opacity would need to be accessed through effects if available

    // Blend mode - FrameNode doesn't have blendMode property

    // Clip content
    if (node.clipsContent) {
      buffer.writeLine('clipContent: true,');
    }

    // Visibility
    if (!node.visible) {
      buffer.writeLine('visible: false,');
    }

    // Children
    final children = node.children.toDart;
    if (children.isNotEmpty) {
      buffer.writeLine('children: [');
      buffer.indent();
      for (var child in children) {
        buildSceneNode(child, parentFrame: node);
        buffer.writeLine(',');
      }
      buffer.unindent();
      buffer.writeLine('],');
    }

    buffer.unindent();
    buffer.writeLine(')');
  }

  void buildGroupNode(GroupNode node) {
    // Groups don't have their own visual properties in flutter_figma
    // We'll wrap children in a Stack or just output them
    final children = node.children.toDart;
    if (children.isEmpty) {
      buffer.writeLine('SizedBox.shrink()');
      return;
    }

    if (children.length == 1) {
      buildSceneNode(children.first, parentFrame: null);
    } else {
      buffer.writeLine('Stack(');
      buffer.indent();
      buffer.writeLine('children: [');
      buffer.indent();
      for (var child in children) {
        buildSceneNode(child, parentFrame: null);
        buffer.writeLine(',');
      }
      buffer.unindent();
      buffer.writeLine('],');
      buffer.unindent();
      buffer.writeLine(')');
    }
  }

  void buildRectangleNode(RectangleNode node) {
    buffer.writeLine('FigmaFrame(');
    buffer.indent();

    // Freeform layout for rectangles
    buffer.writeLine('layout: FigmaFreeformLayoutProperties(');
    buffer.indent();
    buffer.writeLine('referenceWidth: ${node.width},');
    buffer.writeLine('referenceHeight: ${node.height},');
    buffer.unindent();
    buffer.writeLine('),');

    // Shape with corner radius
    if (node.topLeftRadius != 0 ||
        node.topRightRadius != 0 ||
        node.bottomLeftRadius != 0 ||
        node.bottomRightRadius != 0) {
      buffer.writeLine('shape: FigmaRectangleShape(');
      buffer.indent();
      buffer.writeLine('topLeftRadius: ${node.topLeftRadius},');
      buffer.writeLine('topRightRadius: ${node.topRightRadius},');
      buffer.writeLine('bottomLeftRadius: ${node.bottomLeftRadius},');
      buffer.writeLine('bottomRightRadius: ${node.bottomRightRadius},');
      buffer.unindent();
      buffer.writeLine('),');
    }

    // Decoration
    final fills = node.fills.toDart;
    final strokes = node.strokes.toDart;

    if (fills.isNotEmpty || strokes.isNotEmpty) {
      buffer.writeLine('decoration: FigmaDecoration(');
      buffer.indent();

      // Fills
      if (fills.isNotEmpty) {
        buffer.writeLine('fills: [');
        buffer.indent();
        for (var fill in fills) {
          paintBuilder.buildPaint(fill);
          buffer.writeLine(',');
        }
        buffer.unindent();
        buffer.writeLine('],');
      }

      // Strokes
      if (strokes.isNotEmpty) {
        buffer.writeLine('strokes: [');
        buffer.indent();
        for (var stroke in strokes) {
          paintBuilder.buildPaint(stroke);
          buffer.writeLine(',');
        }
        buffer.unindent();
        buffer.writeLine('],');
      }

      buffer.unindent();
      buffer.writeLine('),');
    }

    // Visibility
    if (!node.visible) {
      buffer.writeLine('visible: false,');
    }

    buffer.unindent();
    buffer.writeLine(')');
  }

  void buildTextNode(TextNode node) {
    // Use simple constructor if no mixed styles
    final hasMixedStyles =
        node.fontSize == figma.mixed || node.fontName == figma.mixed;

    if (!hasMixedStyles) {
      buffer.writeLine('FigmaText(');
      buffer.indent();
      buffer.writeLine('${Parsers.escapeString(node.characters)},');
    } else {
      buffer.writeLine('FigmaText.rich(');
      buffer.indent();
      buffer.writeLine('characters: [');
      buffer.indent();
      buffer.writeLine(
          'FigmaTextSpan(text: ${Parsers.escapeString(node.characters)}),');
      buffer.unindent();
      buffer.writeLine('],');
    }

    // Text style
    if (node.fontSize != figma.mixed) {
      buffer.writeLine('style: FigmaTextStyle(');
      buffer.indent();

      // Font name
      if (node.fontName != figma.mixed) {
        final fontName = node.fontName as FontName;
        buffer.writeLine('fontName: FontName(');
        buffer.indent();
        buffer.writeLine('family: ${Parsers.escapeString(fontName.family)},');
        buffer.writeLine('style: ${Parsers.parseFontStyle(fontName.style)},');
        buffer
            .writeLine('weight: ${Parsers.parseFontWeight(fontName.style)},');
        buffer.unindent();
        buffer.writeLine('),');
      }

      // Font size
      buffer.writeLine('fontSize: ${node.fontSize as num},');

      // Letter spacing (default to 0 pixels)
      buffer.writeLine(
          'letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),');

      // Line height (default to auto)
      buffer.writeLine('lineHeight: LineHeightAuto(),');

      buffer.unindent();
      buffer.writeLine('),');
    }

    // Fills
    final fills = node.fills.toDart;
    if (fills.isNotEmpty) {
      buffer.writeLine('fills: [');
      buffer.indent();
      for (var fill in fills) {
        paintBuilder.buildPaint(fill);
        buffer.writeLine(',');
      }
      buffer.unindent();
      buffer.writeLine('],');
    }

    buffer.unindent();
    buffer.writeLine(')');
  }

  void buildEllipseNode(EllipseNode node) {
    // EllipseNode doesn't have fills and strokes in the current API
    // Rendering as a placeholder for now
    buffer.writeLine('// Ellipse node: ${Parsers.escapeString(node.name)}');
    buffer.writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void buildVectorNode(VectorNode node) {
    // VectorNode doesn't have fills and strokes in the current API
    // Rendering as a placeholder for now
    buffer.writeLine('// Vector node: ${Parsers.escapeString(node.name)}');
    buffer.writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void buildLineNode(LineNode node) {
    // Lines are rendered as containers
    buffer.writeLine('// Line node: ${Parsers.escapeString(node.name)}');
    buffer.writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void buildPolygonNode(PolygonNode node) {
    // Polygons rendered as placeholder
    buffer.writeLine('// Polygon node: ${Parsers.escapeString(node.name)}');
    buffer.writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void buildStarNode(StarNode node) {
    // Stars rendered as placeholder
    buffer.writeLine('// Star node: ${Parsers.escapeString(node.name)}');
    buffer.writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void _buildDecoration(FrameNode node) {
    final fills = node.fills.toDart;
    final strokes = node.strokes.toDart;

    buffer.writeLine('decoration: FigmaDecoration(');
    buffer.indent();

    // Fills
    if (fills.isNotEmpty) {
      buffer.writeLine('fills: [');
      buffer.indent();
      for (var fill in fills) {
        paintBuilder.buildPaint(fill);
        buffer.writeLine(',');
      }
      buffer.unindent();
      buffer.writeLine('],');
    }

    // Strokes
    if (strokes.isNotEmpty) {
      buffer.writeLine('strokes: [');
      buffer.indent();
      for (var stroke in strokes) {
        paintBuilder.buildPaint(stroke);
        buffer.writeLine(',');
      }
      buffer.unindent();
      buffer.writeLine('],');
    }

    buffer.unindent();
    buffer.writeLine('),');
  }
}
