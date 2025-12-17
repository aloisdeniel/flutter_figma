part of 'importer.dart';

/// Maps component property name to property ID
typedef PropertyIdMap = Map<String, int>;

VisualNode? _convertSceneNodeToVisualNode(
  figma_api.SceneNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
  switch (node.type) {
    case 'FRAME':
      return VisualNode(
        frame: _convertFrameNode(
          node as figma_api.FrameNode,
          variableIdMap,
          propertyIdMap,
        ),
      );
    case 'GROUP':
      return VisualNode(
        group: _convertGroupNode(
          node as figma_api.GroupNode,
          variableIdMap,
          propertyIdMap,
        ),
      );
    case 'RECTANGLE':
      return VisualNode(
        rectangle: _convertRectangleNode(
          node as figma_api.RectangleNode,
          variableIdMap,
        ),
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
      return VisualNode(
        text: _convertTextNode(
          node as figma_api.TextNode,
          variableIdMap,
          propertyIdMap,
        ),
      );
    case 'COMPONENT':
      return VisualNode(
        frame: _convertComponentNode(
          node as figma_api.ComponentNode,
          variableIdMap,
          propertyIdMap,
        ),
      );
    case 'INSTANCE':
      return VisualNode(
        instance: _convertInstanceNode(
          node as figma_api.InstanceNode,
          variableIdMap,
          propertyIdMap,
        ),
      );
    case 'BOOLEAN_OPERATION':
      return VisualNode(
        booleanOperation: _convertBooleanOperationNode(
          node as figma_api.BooleanOperationNode,
          variableIdMap,
          propertyIdMap,
        ),
      );
    default:
      print('Unsupported node type: ${node.type}');
      return null;
  }
}

FrameNode _convertFrameNode(
  figma_api.FrameNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
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
    children: _convertChildren(
      node.children.toDart,
      variableIdMap,
      propertyIdMap,
    ),
    fills: _convertPaintsWithBoundVariables(
      node,
      node.fills.toDart,
      variableIdMap,
    ),
    strokes: _convertPaintsWithBoundVariables(
      node,
      node.strokes.toDart,
      variableIdMap,
    ),
    clipContent: node.clipsContent,
    effects: _convertEffects(node.effects.toDart),
    layout: layout,
  );
}

GroupNode _convertGroupNode(
  figma_api.GroupNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
  return GroupNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(
      node.children.toDart,
      variableIdMap,
      propertyIdMap,
    ),
  );
}

RectangleNode _convertRectangleNode(
  figma_api.RectangleNode node,
  VariableIdMap variableIdMap,
) {
  return RectangleNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    fills: _convertPaintsWithBoundVariables(
      node,
      node.fills.toDart,
      variableIdMap,
    ),
    strokes: _convertPaintsWithBoundVariables(
      node,
      node.strokes.toDart,
      variableIdMap,
    ),
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

TextNode _convertTextNode(
  figma_api.TextNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
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

  // Check for component property reference on the text content
  final characters = _createTextAlias(node, propertyIdMap);

  return TextNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    characters: characters,
    fills: _convertPaintsWithBoundVariables(
      node,
      node.fills.toDart,
      variableIdMap,
    ),
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

FrameNode _convertComponentNode(
  figma_api.ComponentNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
  return FrameNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(
      node.children.toDart,
      variableIdMap,
      propertyIdMap,
    ),
  );
}

InstanceNode _convertInstanceNode(
  figma_api.InstanceNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
  return InstanceNode(
    id: node.id,
    name: node.name,
    visible: node.visible,
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: _convertChildren(
      node.children.toDart,
      variableIdMap,
      propertyIdMap,
    ),
    mainComponentId: node.mainComponent?.id,
  );
}

BooleanOperationNode _convertBooleanOperationNode(
  figma_api.BooleanOperationNode node,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
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
    children: _convertChildren(
      node.children.toDart,
      variableIdMap,
      propertyIdMap,
    ),
    booleanOperation: _convertBooleanOperation(node.booleanOperation),
  );
}

// Helper functions

List<VisualNode> _convertChildren(
  List<figma_api.SceneNode> children,
  VariableIdMap variableIdMap,
  PropertyIdMap propertyIdMap,
) {
  final visualNodes = <VisualNode>[];
  for (final child in children) {
    final visualNode = _convertSceneNodeToVisualNode(
      child,
      variableIdMap,
      propertyIdMap,
    );
    if (visualNode != null) {
      visualNodes.add(visualNode);
    }
  }
  return visualNodes;
}

/// Converts paints while checking for bound variables on the node
List<Paint> _convertPaintsWithBoundVariables(
  figma_api.SceneNode node,
  List<figma_api.Paint> paints,
  VariableIdMap variableIdMap,
) {
  final boundVariables = node.boundVariables?.dartify() as Map?;

  return paints
      .asMap()
      .entries
      .where((entry) {
        final paint = entry.value;
        return paint.visible ?? true;
      })
      .map((entry) {
        final index = entry.key;
        final paint = entry.value;
        return _convertPaintWithBoundVariable(
          paint,
          boundVariables,
          index,
          variableIdMap,
        );
      })
      .toList();
}

Paint _convertPaintWithBoundVariable(
  figma_api.Paint paint,
  Map? boundVariables,
  int paintIndex,
  VariableIdMap variableIdMap,
) {
  final paintType = paint.type.toUpperCase();

  // Check if this paint has a bound variable for color
  Alias? colorAlias;

  if (paintType == 'SOLID') {
    // Check for bound variable on fills[index].color
    final fillsBindings = boundVariables?['fills'] as List?;
    if (fillsBindings != null && paintIndex < fillsBindings.length) {
      final fillBinding = fillsBindings[paintIndex] as Map?;
      final colorBinding = fillBinding?['color'] as Map?;
      if (colorBinding != null && colorBinding['type'] == 'VARIABLE_ALIAS') {
        final variableId = colorBinding['id'] as String;
        final indices = variableIdMap[variableId];
        if (indices != null) {
          final (collectionId, varId) = indices;
          colorAlias = Alias(
            variable: VariableAlias(
              collectionId: collectionId,
              variableId: varId,
            ),
          );
        }
      }
    }

    // Fall back to constant color if no variable binding
    colorAlias ??= paint.color != null
        ? _convertColorToAlias(paint.color!)
        : null;

    return Paint(
      solid: SolidPaint(color: colorAlias),
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

/// Creates a text alias, checking for component property references
Alias _createTextAlias(figma_api.TextNode node, PropertyIdMap propertyIdMap) {
  // Check for component property reference on characters
  final propRefs = node.componentPropertyReferences?.dartify() as Map?;
  if (propRefs != null) {
    final charactersRef = propRefs['characters'] as String?;
    if (charactersRef != null) {
      // The reference format is typically the property name
      // Look it up in our property map
      final propertyId = propertyIdMap[charactersRef];
      if (propertyId != null) {
        return Alias(
          property: PropertyAlias(
            propertyId: propertyId,
            defaultValue: Value(stringValue: node.characters),
          ),
        );
      }
    }
  }

  // Fall back to constant string
  return Alias(
    constant: ConstantAlias(value: Value(stringValue: node.characters)),
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
