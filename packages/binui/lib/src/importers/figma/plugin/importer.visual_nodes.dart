part of 'importer.dart';

VisualNode? _convertSceneNodeToVisualNode(figma_api.SceneNode node) {
  switch (node.type) {
    case 'FRAME':
      return VisualNode(frame: _convertFrameNode(node as figma_api.FrameNode));
    case 'GROUP':
      return VisualNode(group: _convertGroupNode(node as figma_api.GroupNode));
    case 'RECTANGLE':
      return VisualNode(
        rectangle: _convertRectangleNode(node as figma_api.RectangleNode),
      );
    case 'ELLIPSE':
      return VisualNode(
        ellipse: _convertEllipseNode(node as figma_api.EllipseNode),
      );
    case 'LINE':
      return VisualNode(line: _convertLineNode(node as figma_api.LineNode));
    case 'VECTOR':
      return VisualNode(
        vector: _convertVectorNode(node as figma_api.VectorNode),
      );
    case 'TEXT':
      return VisualNode(text: _convertTextNode(node as figma_api.TextNode));
    case 'COMPONENT':
      return VisualNode(
        frame: _convertComponentNode(node as figma_api.ComponentNode),
      );
    case 'INSTANCE':
      return VisualNode(
        instance: _convertInstanceNode(node as figma_api.InstanceNode),
      );
    case 'BOOLEAN_OPERATION':
      return VisualNode(
        booleanOperation: _convertBooleanOperationNode(
          node as figma_api.BooleanOperationNode,
        ),
      );
    default:
      print('Unsupported node type: ${node.type}');
      return null;
  }
}

FrameNode _convertFrameNode(figma_api.FrameNode node) {
  // Convert layout properties based on layout mode
  LayoutProperties? layout;
  final layoutModeStr = node.layoutMode.toUpperCase();
  if (layoutModeStr == 'HORIZONTAL' || layoutModeStr == 'VERTICAL') {
    layout = LayoutProperties(
      autoLayout: AutoLayoutProperties(
        isVertical: layoutModeStr == 'VERTICAL',
        padding: EdgeInsets(
          left: (node.paddingLeft as num?)?.toDouble() ?? 0,
          right: (node.paddingRight as num?)?.toDouble() ?? 0,
          top: (node.paddingTop as num?)?.toDouble() ?? 0,
          bottom: (node.paddingBottom as num?)?.toDouble() ?? 0,
        ),
        itemSpacing: (node.itemSpacing as num?)?.toDouble() ?? 0,
      ),
    );
  } else {
    layout = LayoutProperties(freeform: FreeformLayoutProperties());
  }

  return FrameNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(node.children.toDart),
    fills: _convertPaints(node.fills.toDart),
    strokes: _convertPaints(node.strokes.toDart),
    clipContent: node.clipsContent,
    effects: _convertEffects(node.effects.toDart),
    layout: layout,
  );
}

GroupNode _convertGroupNode(figma_api.GroupNode node) {
  return GroupNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(node.children.toDart),
  );
}

RectangleNode _convertRectangleNode(figma_api.RectangleNode node) {
  return RectangleNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    fills: _convertPaints(node.fills.toDart),
    strokes: _convertPaints(node.strokes.toDart),
    cornerRadius: CornerRadius(
      topLeft: (node.topLeftRadius as num?)?.toDouble() ?? 0,
      topRight: (node.topRightRadius as num?)?.toDouble() ?? 0,
      bottomLeft: (node.bottomLeftRadius as num?)?.toDouble() ?? 0,
      bottomRight: (node.bottomRightRadius as num?)?.toDouble() ?? 0,
    ),
  );
}

EllipseNode _convertEllipseNode(figma_api.EllipseNode node) {
  return EllipseNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
  );
}

LineNode _convertLineNode(figma_api.LineNode node) {
  return LineNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
  );
}

VectorNode _convertVectorNode(figma_api.VectorNode node) {
  return VectorNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
  );
}

TextNode _convertTextNode(figma_api.TextNode node) {
  // Extract font information
  String? fontFamily;
  String? fontStyleStr;
  int? fontWeight;

  if (node.fontName != figma_api.figma.mixed) {
    final fontName = node.fontName as figma_api.FontName;
    fontFamily = fontName.family;
    fontStyleStr = fontName.style;
    // Parse font weight from style (e.g., "Bold" -> 700)
    fontWeight = _parseFontWeight(fontName.style);
  }

  // Get fontSize safely
  double? fontSize;
  if (node.fontSize != figma_api.figma.mixed) {
    fontSize = (node.fontSize as num?)?.toDouble();
  }

  // TODO: Add letterSpacing and lineHeight conversion when needed
  // These require more complex handling of the Figma API types

  return TextNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    characters: _createStringAlias(node.characters),
    fills: _convertPaints(node.fills.toDart),
    style: TextStyle(
      fontName: FontName(
        family: fontFamily ?? 'Default',
        style: _parseFontStyle(fontStyleStr ?? 'Regular'),
        weight: fontWeight ?? 400,
      ),
      fontSize: fontSize ?? 14,
      //letterSpacing: letterSpacing,
      //lineHeight: lineHeight,
    ),
  );
}

FrameNode _convertComponentNode(figma_api.ComponentNode node) {
  return FrameNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(node.children.toDart),
  );
}

InstanceNode _convertInstanceNode(figma_api.InstanceNode node) {
  return InstanceNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(node.children.toDart),
    mainComponentId: node.mainComponent?.id,
  );
}

BooleanOperationNode _convertBooleanOperationNode(
  figma_api.BooleanOperationNode node,
) {
  return BooleanOperationNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(node.children.toDart),
    booleanOperation: _convertBooleanOperation(node.booleanOperation),
  );
}

// Helper functions

List<VisualNode> _convertChildren(List<figma_api.SceneNode> children) {
  final visualNodes = <VisualNode>[];
  for (final child in children) {
    final visualNode = _convertSceneNodeToVisualNode(child);
    if (visualNode != null) {
      visualNodes.add(visualNode);
    }
  }
  return visualNodes;
}

List<Paint> _convertPaints(List<figma_api.Paint> paints) {
  return paints
      .where((paint) => paint.visible ?? true)
      .map((paint) => _convertPaint(paint))
      .toList();
}

Paint _convertPaint(figma_api.Paint paint) {
  final paintType = paint.type.toUpperCase();

  // Convert based on type
  if (paintType == 'SOLID') {
    return Paint(
      solid: SolidPaint(
        color: paint.color != null ? _convertColorToAlias(paint.color!) : null,
      ),
      visible: paint.visible ?? true,
      opacity: paint.opacity?.toDouble(),
      blendMode: _convertBlendMode(paint.blendMode),
    );
  }

  // For now, default to solid for other types
  return Paint(
    visible: paint.visible ?? true,
    opacity: paint.opacity?.toDouble(),
    blendMode: _convertBlendMode(paint.blendMode),
  );
}

Alias _convertColorToAlias(figma_api.RGB color) {
  return Alias(
    constant: ConstantAlias(
      value: Value(
        color: Color(
          red: color.r.toDouble(),
          green: color.g.toDouble(),
          blue: color.b.toDouble(),
          alpha: 1.0,
        ),
      ),
    ),
  );
}

BlendMode? _convertBlendMode(String? blendMode) {
  if (blendMode == null) return null;

  switch (blendMode.toUpperCase()) {
    case 'NORMAL':
      return BlendMode.BLEND_MODE_NORMAL;
    case 'MULTIPLY':
      return BlendMode.BLEND_MODE_MULTIPLY;
    case 'SCREEN':
      return BlendMode.BLEND_MODE_SCREEN;
    case 'OVERLAY':
      return BlendMode.BLEND_MODE_OVERLAY;
    // TODO
    default:
      return BlendMode.BLEND_MODE_NORMAL;
  }
}

List<Effect> _convertEffects(List<figma_api.Effect> effects) {
  return effects
      .where((effect) => effect.visible)
      .map((effect) => _convertEffect(effect))
      .toList();
}

Effect _convertEffect(figma_api.Effect effect) {
  final effectType = effect.type.toUpperCase();

  if (effectType == 'DROP_SHADOW') {
    return Effect(
      dropShadow: DropShadowEffect(
        color: effect.color != null ? _convertRGBAToAlias(effect.color!) : null,
        radius: effect.radius?.toDouble(),
      ),
      visible: effect.visible,
    );
  } else if (effectType == 'INNER_SHADOW') {
    return Effect(
      innerShadow: InnerShadowEffect(
        color: effect.color != null ? _convertRGBAToAlias(effect.color!) : null,
        radius: effect.radius?.toDouble(),
      ),
      visible: effect.visible,
    );
  } else if (effectType == 'LAYER_BLUR') {
    return Effect(
      layerBlur: LayerBlurEffect(radius: effect.radius?.toDouble()),
      visible: effect.visible,
    );
  } else if (effectType == 'BACKGROUND_BLUR') {
    return Effect(
      backgroundBlur: BackgroundBlurEffect(radius: effect.radius?.toDouble()),
      visible: effect.visible,
    );
  }

  return Effect(visible: effect.visible);
}

Alias _convertRGBAToAlias(figma_api.RGBA color) {
  return Alias(
    constant: ConstantAlias(
      value: Value(
        color: Color(
          red: color.r.toDouble(),
          green: color.g.toDouble(),
          blue: color.b.toDouble(),
          alpha: color.a.toDouble(),
        ),
      ),
    ),
  );
}

BooleanOperation? _convertBooleanOperation(String operation) {
  switch (operation.toUpperCase()) {
    case 'UNION':
      return BooleanOperation.BOOLEAN_OPERATION_UNION;
    case 'INTERSECT':
      return BooleanOperation.BOOLEAN_OPERATION_INTERSECT;
    case 'SUBTRACT':
      return BooleanOperation.BOOLEAN_OPERATION_SUBTRACT;
    case 'EXCLUDE':
      return BooleanOperation.BOOLEAN_OPERATION_EXCLUDE;
    default:
      return BooleanOperation.BOOLEAN_OPERATION_UNION;
  }
}

Alias _createStringAlias(String value) {
  return Alias(
    constant: ConstantAlias(value: Value(stringValue: value)),
  );
}

int _parseFontWeight(String style) {
  final styleLower = style.toLowerCase();
  if (styleLower.contains('thin')) return 100;
  if (styleLower.contains('extralight') || styleLower.contains('ultra light')) {
    return 200;
  }
  if (styleLower.contains('light')) return 300;
  if (styleLower.contains('medium')) return 500;
  if (styleLower.contains('semibold') || styleLower.contains('demibold')) {
    return 600;
  }
  if (styleLower.contains('bold') && !styleLower.contains('extrabold')) {
    return 700;
  }
  if (styleLower.contains('extrabold') || styleLower.contains('ultrabold')) {
    return 800;
  }
  if (styleLower.contains('black') || styleLower.contains('heavy')) return 900;
  return 400; // Regular/Normal
}

FontStyle _parseFontStyle(String style) {
  final styleLower = style.toLowerCase();
  if (styleLower.contains('italic') || styleLower.contains('oblique')) {
    return FontStyle.FONT_STYLE_ITALIC;
  }
  return FontStyle.FONT_STYLE_REGULAR;
}
