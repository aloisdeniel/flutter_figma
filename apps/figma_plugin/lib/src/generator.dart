import 'dart:js_interop';

import 'figma.dart';

class FlutterCodeGenerator {
  FlutterCodeGenerator();

  late StringBuffer _buffer;
  int _indentLevel = 0;

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

  void _writeLine(String text) {
    _buffer.writeln('${'  ' * _indentLevel}$text');
  }

  void _write(String text) {
    _buffer.write(text);
  }

  void _indent() {
    _indentLevel++;
  }

  void _unindent() {
    _indentLevel--;
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
    _writeLine('FigmaFrame(');
    _indent();

    // Layout properties
    if (node.layoutMode == 'HORIZONTAL' || node.layoutMode == 'VERTICAL') {
      _buildAutoLayoutProperties(node);
    } else {
      _buildAbsoluteLayoutProperties(node);
    }

    // Decoration (fills and strokes)
    final hasFills = node.fills.toDart.isNotEmpty;
    final hasStrokes = node.strokes.toDart.isNotEmpty;
    if (hasFills || hasStrokes) {
      _buildDecoration(node);
    }

    // Effects are handled by FigmaFrame
    // TODO: Add effects support when needed

    // Clip content
    if (node.clipsContent) {
      _writeLine('clipContent: true,');
    }

    // Visibility
    if (!node.visible) {
      _writeLine('visible: false,');
    }

    // Children
    final children = node.children.toDart;
    if (children.isNotEmpty) {
      _writeLine('children: [');
      _indent();
      for (var child in children) {
        _buildSceneNode(child);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    _unindent();
    _writeLine(')');
  }

  void _buildGroupNode(GroupNode node) {
    // Groups don't have their own visual properties in flutter_figma
    // We'll wrap children in a Stack or just output them
    final children = node.children.toDart;
    if (children.isEmpty) {
      _writeLine('SizedBox.shrink()');
      return;
    }

    if (children.length == 1) {
      _buildSceneNode(children.first);
    } else {
      _writeLine('Stack(');
      _indent();
      _writeLine('children: [');
      _indent();
      for (var child in children) {
        _buildSceneNode(child);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
      _unindent();
      _writeLine(')');
    }
  }

  void _buildRectangleNode(RectangleNode node) {
    _writeLine('FigmaFrame(');
    _indent();
    _buildKey(node);

    // Absolute layout for rectangles
    _writeLine('layout: FigmaAbsoluteLayoutProperties(');
    _indent();
    _writeLine('width: ${node.width},');
    _writeLine('height: ${node.height},');
    _unindent();
    _writeLine('),');

    // Decoration with corner radius
    final fills = node.fills.toDart;
    final strokes = node.strokes.toDart;

    _writeLine('decoration: FigmaDecoration(');
    _indent();

    // Fills
    if (fills.isNotEmpty) {
      _writeLine('fills: [');
      _indent();
      for (var fill in fills) {
        _buildPaint(fill);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    // Strokes
    if (strokes.isNotEmpty) {
      _writeLine('strokes: [');
      _indent();
      for (var stroke in strokes) {
        _buildPaint(stroke);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    // Shape with corner radius
    _writeLine('shape: FigmaRectangleShape(');
    _indent();
    _writeLine('topLeftRadius: ${node.topLeftRadius},');
    _writeLine('topRightRadius: ${node.topRightRadius},');
    _writeLine('bottomLeftRadius: ${node.bottomLeftRadius},');
    _writeLine('bottomRightRadius: ${node.bottomRightRadius},');
    _unindent();
    _writeLine('),');

    _unindent();
    _writeLine('),');

    // Visibility
    if (!node.visible) {
      _writeLine('visible: false,');
    }

    _unindent();
    _writeLine(')');
  }

  void _buildTextNode(TextNode node) {
    _writeLine('FigmaText(');
    _indent();

    // Characters as text spans
    _writeLine('characters: [');
    _indent();
    _writeLine('FigmaTextSpan(text: ${_escapeString(node.characters)}),');
    _unindent();
    _writeLine('],');

    // Text style
    if (node.fontSize != figma.mixed) {
      _writeLine('style: FigmaTextStyle(');
      _indent();

      // Font name
      if (node.fontName != figma.mixed) {
        final fontName = node.fontName as FontName;
        _writeLine('fontName: FontName(');
        _indent();
        _writeLine('family: ${_escapeString(fontName.family)},');
        _writeLine('style: FigmaFontStyle.${fontName.style.toLowerCase()},');
        _writeLine('weight: FontWeight.w400,'); // TODO: Parse weight from style
        _unindent();
        _writeLine('),');
      }

      // Font size
      _writeLine('fontSize: ${node.fontSize as num},');

      // Letter spacing (default to 0 pixels)
      _writeLine(
          'letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),');

      // Line height (default to auto)
      _writeLine('lineHeight: LineHeightAuto(),');

      _unindent();
      _writeLine('),');
    }

    // Fills
    final fills = node.fills.toDart;
    if (fills.isNotEmpty) {
      _writeLine('fills: [');
      _indent();
      for (var fill in fills) {
        _buildPaint(fill);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    _unindent();
    _writeLine(')');
  }

  void _buildAutoLayoutProperties(FrameNode node) {
    _writeLine('layout: FigmaAutoLayoutProperties(');
    _indent();

    // Layout mode
    if (node.layoutMode == 'HORIZONTAL') {
      _writeLine('mode: AutoLayoutMode.horizontal,');
    } else if (node.layoutMode == 'VERTICAL') {
      _writeLine('mode: AutoLayoutMode.vertical,');
    }

    // Padding
    if (node.paddingLeft != 0) {
      _writeLine('paddingLeft: ${node.paddingLeft},');
    }
    if (node.paddingRight != 0) {
      _writeLine('paddingRight: ${node.paddingRight},');
    }
    if (node.paddingTop != 0) {
      _writeLine('paddingTop: ${node.paddingTop},');
    }
    if (node.paddingBottom != 0) {
      _writeLine('paddingBottom: ${node.paddingBottom},');
    }

    // Item spacing
    if (node.itemSpacing != 0) {
      _writeLine('itemSpacing: ${node.itemSpacing},');
    }

    // TODO: Add alignment, sizing modes, etc.

    _unindent();
    _writeLine('),');
  }

  void _buildAbsoluteLayoutProperties(FrameNode node) {
    _writeLine('layout: FigmaAbsoluteLayoutProperties(');
    _indent();
    _writeLine('width: ${node.width},');
    _writeLine('height: ${node.height},');
    _unindent();
    _writeLine('),');
  }

  void _buildDecoration(FrameNode node) {
    final fills = node.fills.toDart;
    final strokes = node.strokes.toDart;

    _writeLine('decoration: FigmaDecoration(');
    _indent();

    // Fills
    if (fills.isNotEmpty) {
      _writeLine('fills: [');
      _indent();
      for (var fill in fills) {
        _buildPaint(fill);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    // Strokes
    if (strokes.isNotEmpty) {
      _writeLine('strokes: [');
      _indent();
      for (var stroke in strokes) {
        _buildPaint(stroke);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    // Shape (default rectangle)
    _writeLine('shape: FigmaRectangleShape(),');

    _unindent();
    _writeLine('),');
  }

  void _buildPaint(Paint paint) {
    switch (paint.type) {
      case 'SOLID':
        _writeLine('SolidPaint(');
        _indent();
        final color = paint.color;
        if (color != null) {
          _writeLine(
              'color: ${_buildColor(paint.opacity?.toDouble(), color)},');
        }
        _unindent();
        _write(')');
      case 'GRADIENT_LINEAR':
        _writeLine('LinearGradientPaint(');
        _indent();
        _writeLine(
            'gradientTransform: FigmaTransform.identity,'); // TODO: Parse transform
        _writeLine('gradientStops: [],'); // TODO: Parse gradient stops
        _unindent();
        _write(')');
      case 'GRADIENT_RADIAL':
        _writeLine('RadialGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: [],');
        _unindent();
        _write(')');
      case 'GRADIENT_ANGULAR':
        _writeLine('AngularGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: [],');
        _unindent();
        _write(')');
      case 'GRADIENT_DIAMOND':
        _writeLine('DiamondGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: [],');
        _unindent();
        _write(')');
      default:
        _write('// Unsupported paint type: ${paint.type}');
    }
  }

  void _buildKey(SceneNode node) {
    _writeLine('key: const Key(\'${node.id}\')');
  }

  String _buildColor(double? opacity, RGB color) {
    return 'Color.from(alpha: ${opacity ?? 1.0}, red: ${color.r}, green: ${color.g}, blue: ${color.b})';
  }

  String _escapeString(String str) {
    return "'${str.replaceAll('\\', '\\\\').replaceAll("'", "\\'").replaceAll('\n', '\\n')}'";
  }
}
