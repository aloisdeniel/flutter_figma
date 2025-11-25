import 'dart:js_interop';

import 'package:figma_plugin/src/figma.dart';

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

  void _buildSceneNode(SceneNode node, {FrameNode? parentFrame}) {
    // Determine if we need FigmaPositioned based on parent's layout mode
    final bool parentIsAutoLayout = parentFrame != null &&
        (parentFrame.layoutMode == 'HORIZONTAL' ||
            parentFrame.layoutMode == 'VERTICAL');
    final bool parentIsGrid =
        parentFrame != null && parentFrame.layoutMode == 'GRID';
    final bool parentIsFreeform =
        parentFrame != null && parentFrame.layoutMode == 'NONE';

    if (parentIsFreeform) {
      // Freeform layout - use FigmaPositioned.freeform
      _writeLine('FigmaPositioned.freeform(');
      _indent();
      _writeLine('x: ${node.x},');
      _writeLine('y: ${node.y},');
      _writeLine('width: ${node.width},');
      _writeLine('height: ${node.height},');
      _writeLine('child: ');
      _indent();
    } else if (parentIsAutoLayout) {
      // Auto layout - use FigmaPositioned.auto with sizing modes
      final hSizing = _parseChildSizingMode(node.layoutSizingHorizontal);
      final vSizing = _parseChildSizingMode(node.layoutSizingVertical);

      if (hSizing != null || vSizing != null) {
        _writeLine('FigmaPositioned.auto(');
        _indent();
        _writeLine('width: ${node.width},');
        _writeLine('height: ${node.height},');

        // Determine primary and counter axis based on parent's layout mode
        if (parentFrame.layoutMode == 'HORIZONTAL') {
          if (hSizing != null) {
            _writeLine('primaryAxisSizing: $hSizing,');
          }
          if (vSizing != null) {
            _writeLine('counterAxisSizing: $vSizing,');
          }
        } else {
          // VERTICAL
          if (vSizing != null) {
            _writeLine('primaryAxisSizing: $vSizing,');
          }
          if (hSizing != null) {
            _writeLine('counterAxisSizing: $hSizing,');
          }
        }

        _writeLine('child: ');
        _indent();
      }
    } else if (parentIsGrid) {
      // Grid layout - use FigmaPositioned.grid
      // TODO: Extract actual grid position from Figma API if available
      _writeLine('FigmaPositioned.grid(');
      _indent();
      _writeLine('row: 0,');
      _writeLine('column: 0,');
      _writeLine('child: ');
      _indent();
    }

    switch (node.type) {
      case 'FRAME':
        _buildFrameNode(node as FrameNode);
      case 'GROUP':
        _buildGroupNode(node as GroupNode);
      case 'RECTANGLE':
        _buildRectangleNode(node as RectangleNode);
      case 'ELLIPSE':
        _buildEllipseNode(node as EllipseNode);
      case 'TEXT':
        _buildTextNode(node as TextNode);
      case 'VECTOR':
        _buildVectorNode(node as VectorNode);
      case 'LINE':
        _buildLineNode(node as LineNode);
      case 'POLYGON':
        _buildPolygonNode(node as PolygonNode);
      case 'STAR':
        _buildStarNode(node as StarNode);
      default:
        print('Unsupported node type: ${node.type}');
    }

    if (parentIsFreeform ||
        parentIsGrid ||
        (parentIsAutoLayout &&
            (_parseChildSizingMode(node.layoutSizingHorizontal) != null ||
                _parseChildSizingMode(node.layoutSizingVertical) != null))) {
      _unindent();
      _writeLine(',');
      _unindent();
      _writeLine(')');
    }
  }

  // Nodes

  void _buildFrameNode(FrameNode node) {
    _writeLine('FigmaFrame(');
    _indent();

    // Layout properties
    if (node.layoutMode == 'HORIZONTAL' || node.layoutMode == 'VERTICAL') {
      _buildAutoLayoutProperties(node);
    } else if (node.layoutMode == 'GRID') {
      _buildGridLayoutProperties(node);
    } else {
      _buildFreeformLayoutProperties(node);
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
      _writeLine('effects: [');
      _indent();
      for (var effect in effects) {
        _buildEffect(effect);
        _writeLine(',');
      }
      _unindent();
      _writeLine('],');
    }

    // Opacity - FrameNode doesn't have opacity property
    // Opacity would need to be accessed through effects if available

    // Blend mode - FrameNode doesn't have blendMode property

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
        _buildSceneNode(child, parentFrame: node);
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
      _buildSceneNode(children.first, parentFrame: null);
    } else {
      _writeLine('Stack(');
      _indent();
      _writeLine('children: [');
      _indent();
      for (var child in children) {
        _buildSceneNode(child, parentFrame: null);
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

    // Freeform layout for rectangles
    _writeLine('layout: FigmaFreeformLayoutProperties(');
    _indent();
    _writeLine('referenceWidth: ${node.width},');
    _writeLine('referenceHeight: ${node.height},');
    _unindent();
    _writeLine('),');

    // Shape with corner radius
    if (node.topLeftRadius != 0 ||
        node.topRightRadius != 0 ||
        node.bottomLeftRadius != 0 ||
        node.bottomRightRadius != 0) {
      _writeLine('shape: FigmaRectangleShape(');
      _indent();
      _writeLine('topLeftRadius: ${node.topLeftRadius},');
      _writeLine('topRightRadius: ${node.topRightRadius},');
      _writeLine('bottomLeftRadius: ${node.bottomLeftRadius},');
      _writeLine('bottomRightRadius: ${node.bottomRightRadius},');
      _unindent();
      _writeLine('),');
    }

    // Decoration
    final fills = node.fills.toDart;
    final strokes = node.strokes.toDart;

    if (fills.isNotEmpty || strokes.isNotEmpty) {
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

      _unindent();
      _writeLine('),');
    }

    // Visibility
    if (!node.visible) {
      _writeLine('visible: false,');
    }

    _unindent();
    _writeLine(')');
  }

  void _buildTextNode(TextNode node) {
    // Use simple constructor if no mixed styles
    final hasMixedStyles =
        node.fontSize == figma.mixed || node.fontName == figma.mixed;

    if (!hasMixedStyles) {
      _writeLine('FigmaText(');
      _indent();
      _writeLine('${_escapeString(node.characters)},');
    } else {
      _writeLine('FigmaText.rich(');
      _indent();
      _writeLine('characters: [');
      _indent();
      _writeLine('FigmaTextSpan(text: ${_escapeString(node.characters)}),');
      _unindent();
      _writeLine('],');
    }

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
        _writeLine('style: ${_parseFontStyle(fontName.style)},');
        _writeLine('weight: ${_parseFontWeight(fontName.style)},');
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

    // Reference dimensions
    _writeLine('referenceWidth: ${node.width},');
    _writeLine('referenceHeight: ${node.height},');

    // Layout axis
    if (node.layoutMode == 'HORIZONTAL') {
      _writeLine('axis: Axis.horizontal,');
    } else if (node.layoutMode == 'VERTICAL') {
      _writeLine('axis: Axis.vertical,');
    }

    // Sizing modes
    final primarySizing = _parsePrimaryAxisSizingMode(node);
    if (primarySizing != 'PrimaryAxisSizingMode.fixed') {
      _writeLine('primaryAxisSizingMode: $primarySizing,');
    }

    final counterSizing = _parseCounterAxisSizingMode(node);
    if (counterSizing != 'CounterAxisSizingMode.fixed') {
      _writeLine('counterAxisSizingMode: $counterSizing,');
    }

    // Alignment - FrameNode doesn't have primaryAxisAlignItems/counterAxisAlignItems
    // These properties may not be available in the current Figma API

    // Padding
    final hasPadding = node.paddingLeft != 0 ||
        node.paddingRight != 0 ||
        node.paddingTop != 0 ||
        node.paddingBottom != 0;
    if (hasPadding) {
      _writeLine('padding: EdgeInsets.only(');
      _indent();
      _writeLine('left: ${node.paddingLeft},');
      _writeLine('right: ${node.paddingRight},');
      _writeLine('top: ${node.paddingTop},');
      _writeLine('bottom: ${node.paddingBottom},');
      _unindent();
      _writeLine('),');
    }

    // Item spacing
    if (node.itemSpacing != 0) {
      _writeLine('itemSpacing: ${node.itemSpacing},');
    }

    _unindent();
    _writeLine('),');
  }

  String _parsePrimaryAxisSizingMode(FrameNode node) {
    // In Figma, the primary axis sizing is determined by layoutSizingHorizontal/Vertical
    final mode = node.layoutMode == 'HORIZONTAL'
        ? node.layoutSizingHorizontal
        : node.layoutSizingVertical;

    if (mode == 'HUG') {
      return 'PrimaryAxisSizingMode.auto';
    }
    return 'PrimaryAxisSizingMode.fixed';
  }

  String _parseCounterAxisSizingMode(FrameNode node) {
    // Counter axis is opposite of primary
    final mode = node.layoutMode == 'HORIZONTAL'
        ? node.layoutSizingVertical
        : node.layoutSizingHorizontal;

    if (mode == 'HUG') {
      return 'CounterAxisSizingMode.auto';
    }
    return 'CounterAxisSizingMode.fixed';
  }

  String? _parseChildSizingMode(String mode) {
    switch (mode.toUpperCase()) {
      case 'HUG':
        return 'ChildSizingMode.hug';
      case 'FIXED':
        return 'ChildSizingMode.fixed';
      case 'FILL':
        return null; // Fill is handled differently
      default:
        return null;
    }
  }

  void _buildFreeformLayoutProperties(FrameNode node) {
    _writeLine('layout: FigmaFreeformLayoutProperties(');
    _indent();
    _writeLine('referenceWidth: ${node.width},');
    _writeLine('referenceHeight: ${node.height},');
    _unindent();
    _writeLine('),');
  }

  void _buildGridLayoutProperties(FrameNode node) {
    _writeLine('layout: FigmaGridLayoutProperties(');
    _indent();

    // TODO: These properties would need to come from the Figma API
    // For now, we'll use default values
    _writeLine('columnCount: 3,');
    _writeLine('rowCount: 3,');
    _writeLine('columnGap: ${node.itemSpacing},');
    _writeLine('rowGap: ${node.itemSpacing},');

    // Padding
    final hasPadding = node.paddingLeft != 0 ||
        node.paddingRight != 0 ||
        node.paddingTop != 0 ||
        node.paddingBottom != 0;
    if (hasPadding) {
      _writeLine('padding: EdgeInsets.only(');
      _indent();
      _writeLine('left: ${node.paddingLeft},');
      _writeLine('right: ${node.paddingRight},');
      _writeLine('top: ${node.paddingTop},');
      _writeLine('bottom: ${node.paddingBottom},');
      _unindent();
      _writeLine('),');
    }

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

    _unindent();
    _writeLine('),');
  }

  void _buildPaint(Paint paint) {
    // Skip invisible paints
    if (paint.visible == false) {
      _write('// Invisible paint');
      return;
    }

    switch (paint.type) {
      case 'SOLID':
        _writeLine('SolidPaint(');
        _indent();
        final color = paint.color;
        if (color != null) {
          _writeLine(
              'color: ${_buildColor(paint.opacity?.toDouble(), color)},');
        }
        if (paint.opacity != null && paint.opacity != 1.0) {
          _writeLine('opacity: ${paint.opacity},');
        }
        if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
          _writeLine('blendMode: ${_parseBlendMode(paint.blendMode)},');
        }
        _unindent();
        _write(')');
      case 'GRADIENT_LINEAR':
        _writeLine('LinearGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: const [],');
        if (paint.opacity != null && paint.opacity != 1.0) {
          _writeLine('opacity: ${paint.opacity},');
        }
        if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
          _writeLine('blendMode: ${_parseBlendMode(paint.blendMode)},');
        }
        _unindent();
        _write(')');
      case 'GRADIENT_RADIAL':
        _writeLine('RadialGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: const [],');
        if (paint.opacity != null && paint.opacity != 1.0) {
          _writeLine('opacity: ${paint.opacity},');
        }
        if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
          _writeLine('blendMode: ${_parseBlendMode(paint.blendMode)},');
        }
        _unindent();
        _write(')');
      case 'GRADIENT_ANGULAR':
        _writeLine('AngularGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: const [],');
        if (paint.opacity != null && paint.opacity != 1.0) {
          _writeLine('opacity: ${paint.opacity},');
        }
        if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
          _writeLine('blendMode: ${_parseBlendMode(paint.blendMode)},');
        }
        _unindent();
        _write(')');
      case 'GRADIENT_DIAMOND':
        _writeLine('DiamondGradientPaint(');
        _indent();
        _writeLine('gradientTransform: FigmaTransform.identity,');
        _writeLine('gradientStops: const [],');
        if (paint.opacity != null && paint.opacity != 1.0) {
          _writeLine('opacity: ${paint.opacity},');
        }
        if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
          _writeLine('blendMode: ${_parseBlendMode(paint.blendMode)},');
        }
        _unindent();
        _write(')');
      case 'IMAGE':
        _writeLine('ImagePaint(');
        _indent();
        _writeLine(
            'scaleMode: ScaleMode.${(paint.scaleMode ?? 'FILL').toLowerCase()},');
        _writeLine(
            'imageHash: ${paint.imageHash != null ? _escapeString(paint.imageHash!) : 'null'},');
        if (paint.opacity != null && paint.opacity != 1.0) {
          _writeLine('opacity: ${paint.opacity},');
        }
        if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
          _writeLine('blendMode: ${_parseBlendMode(paint.blendMode)},');
        }
        _unindent();
        _write(')');
      default:
        _write('// Unsupported paint type: ${paint.type}');
    }
  }

  String _buildColor(double? opacity, RGB color) {
    return 'Color.from(alpha: ${opacity ?? 1.0}, red: ${color.r}, green: ${color.g}, blue: ${color.b})';
  }

  void _buildEllipseNode(EllipseNode node) {
    // EllipseNode doesn't have fills and strokes in the current API
    // Rendering as a placeholder for now
    _writeLine('// Ellipse node: ${_escapeString(node.name)}');
    _writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void _buildVectorNode(VectorNode node) {
    // VectorNode doesn't have fills and strokes in the current API
    // Rendering as a placeholder for now
    _writeLine('// Vector node: ${_escapeString(node.name)}');
    _writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void _buildLineNode(LineNode node) {
    // Lines are rendered as containers
    _writeLine('// Line node: ${_escapeString(node.name)}');
    _writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void _buildPolygonNode(PolygonNode node) {
    // Polygons rendered as placeholder
    _writeLine('// Polygon node: ${_escapeString(node.name)}');
    _writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void _buildStarNode(StarNode node) {
    // Stars rendered as placeholder
    _writeLine('// Star node: ${_escapeString(node.name)}');
    _writeLine('SizedBox(width: ${node.width}, height: ${node.height})');
  }

  void _buildEffect(Effect effect) {
    switch (effect.type) {
      case 'DROP_SHADOW':
        _writeLine('DropShadowEffect(');
        _indent();
        final color = effect.color;
        if (color != null) {
          _writeLine(
              'color: Color.from(alpha: ${color.a}, red: ${color.r}, green: ${color.g}, blue: ${color.b}),');
        }
        _writeLine('offset: Offset(0, ${effect.radius ?? 4}),');
        _writeLine('radius: ${effect.radius ?? 4},');
        _writeLine('visible: ${effect.visible},');
        _writeLine('blendMode: BlendMode.normal,');
        _unindent();
        _write(')');
      case 'INNER_SHADOW':
        _writeLine('InnerShadowEffect(');
        _indent();
        final color = effect.color;
        if (color != null) {
          _writeLine(
              'color: Color.from(alpha: ${color.a}, red: ${color.r}, green: ${color.g}, blue: ${color.b}),');
        }
        _writeLine('offset: Offset(0, ${effect.radius ?? 4}),');
        _writeLine('radius: ${effect.radius ?? 4},');
        _writeLine('visible: ${effect.visible},');
        _writeLine('blendMode: BlendMode.normal,');
        _unindent();
        _write(')');
      case 'LAYER_BLUR':
        _writeLine('LayerBlurEffect(');
        _indent();
        _writeLine('radius: ${effect.radius ?? 4},');
        _writeLine('visible: ${effect.visible},');
        _unindent();
        _write(')');
      case 'BACKGROUND_BLUR':
        _writeLine('BackgroundBlurEffect(');
        _indent();
        _writeLine('radius: ${effect.radius ?? 4},');
        _writeLine('visible: ${effect.visible},');
        _unindent();
        _write(')');
      default:
        _write('// Unsupported effect type: ${effect.type}');
    }
  }

  String _parseFontWeight(String style) {
    // Parse font weight from style string
    final styleLower = style.toLowerCase();
    if (styleLower.contains('thin')) return 'FontWeight.w100';
    if (styleLower.contains('extralight') ||
        styleLower.contains('ultra light')) {
      return 'FontWeight.w200';
    }
    if (styleLower.contains('light')) return 'FontWeight.w300';
    if (styleLower.contains('medium')) return 'FontWeight.w500';
    if (styleLower.contains('semibold') || styleLower.contains('demibold')) {
      return 'FontWeight.w600';
    }
    if (styleLower.contains('bold') && !styleLower.contains('extrabold')) {
      return 'FontWeight.w700';
    }
    if (styleLower.contains('extrabold') || styleLower.contains('ultrabold')) {
      return 'FontWeight.w800';
    }
    if (styleLower.contains('black') || styleLower.contains('heavy')) {
      return 'FontWeight.w900';
    }
    return 'FontWeight.w400'; // Regular/Normal
  }

  String _parseFontStyle(String style) {
    return style.toLowerCase().contains('italic')
        ? 'FigmaFontStyle.italic'
        : 'FigmaFontStyle.regular';
  }

  String _parseBlendMode(String? blendMode) {
    if (blendMode == null) return 'BlendMode.normal';
    switch (blendMode.toUpperCase()) {
      case 'PASS_THROUGH':
        return 'BlendMode.passThrough';
      case 'NORMAL':
        return 'BlendMode.normal';
      case 'DARKEN':
        return 'BlendMode.darken';
      case 'MULTIPLY':
        return 'BlendMode.multiply';
      case 'LINEAR_BURN':
        return 'BlendMode.linearBurn';
      case 'COLOR_BURN':
        return 'BlendMode.colorBurn';
      case 'LIGHTEN':
        return 'BlendMode.lighten';
      case 'SCREEN':
        return 'BlendMode.screen';
      case 'LINEAR_DODGE':
        return 'BlendMode.linearDodge';
      case 'COLOR_DODGE':
        return 'BlendMode.colorDodge';
      case 'OVERLAY':
        return 'BlendMode.overlay';
      case 'SOFT_LIGHT':
        return 'BlendMode.softLight';
      case 'HARD_LIGHT':
        return 'BlendMode.hardLight';
      case 'DIFFERENCE':
        return 'BlendMode.difference';
      case 'EXCLUSION':
        return 'BlendMode.exclusion';
      case 'HUE':
        return 'BlendMode.hue';
      case 'SATURATION':
        return 'BlendMode.saturation';
      case 'COLOR':
        return 'BlendMode.color';
      case 'LUMINOSITY':
        return 'BlendMode.luminosity';
      default:
        return 'BlendMode.normal';
    }
  }

  String _escapeString(String str) {
    return "'${str.replaceAll('\\', '\\\\').replaceAll("'", "\\'").replaceAll('\n', '\\n')}'";
  }
}
