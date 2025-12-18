part of 'importer.dart';

/// Maps component property name to property ID
typedef PropertyIdMap = Map<String, (int componentId, int propertyId)>;

Future<VisualNode?> _convertSceneNodeToVisualNode(
  figma_api.SceneNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  switch (node.type) {
    case 'FRAME':
      return VisualNode(
        frame: await _convertFrameNode(
          node as figma_api.FrameNode,
          context,
          propertyIdMap,
        ),
      );
    case 'GROUP':
      return VisualNode(
        group: await _convertGroupNode(
          node as figma_api.GroupNode,
          context,
          propertyIdMap,
        ),
      );
    case 'RECTANGLE':
      return VisualNode(
        rectangle: await _convertRectangleNode(
          node as figma_api.RectangleNode,
          context,
          propertyIdMap,
        ),
      );
    case 'ELLIPSE':
      return VisualNode(
        ellipse: await _convertEllipseNode(
          node as figma_api.EllipseNode,
          context,
          propertyIdMap,
        ),
      );
    case 'LINE':
      return VisualNode(
        line: await _convertLineNode(
          node as figma_api.LineNode,
          context,
          propertyIdMap,
        ),
      );
    case 'VECTOR':
      return VisualNode(
        vector: await _convertVectorNode(
          node as figma_api.VectorNode,
          context,
          propertyIdMap,
        ),
      );
    case 'TEXT':
      return VisualNode(
        text: await _convertTextNode(
          node as figma_api.TextNode,
          context,
          propertyIdMap,
        ),
      );
    case 'COMPONENT':
      return VisualNode(
        frame: await _convertComponentNode(
          node as figma_api.ComponentNode,
          context,
          propertyIdMap,
        ),
      );
    case 'INSTANCE':
      return VisualNode(
        instance: await _convertInstanceNode(
          node as figma_api.InstanceNode,
          context,
          propertyIdMap,
        ),
      );
    case 'BOOLEAN_OPERATION':
      return VisualNode(
        booleanOperation: await _convertBooleanOperationNode(
          node as figma_api.BooleanOperationNode,
          context,
          propertyIdMap,
        ),
      );
    default:
      print('Unsupported node type: ${node.type}');
      return null;
  }
}

Future<FrameNode> _convertFrameNode(
  figma_api.FrameNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
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
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: await _convertChildren(
      node.children.toDart,
      context,
      propertyIdMap,
    ),
    fills: await _convertPaintsWithBoundVariables(
      node,
      node.fills.toDart,
      context,
    ),
    strokes: await _convertPaintsWithBoundVariables(
      node,
      node.strokes.toDart,
      context,
    ),
    clipContent: node.clipsContent,
    effects: _convertEffects(node.effects.toDart),
    layout: layout,
  );
}

Future<GroupNode> _convertGroupNode(
  figma_api.GroupNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return GroupNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: await _convertChildren(
      node.children.toDart,
      context,
      propertyIdMap,
    ),
  );
}

Future<RectangleNode> _convertRectangleNode(
  figma_api.RectangleNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return RectangleNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    fills: await _convertPaintsWithBoundVariables(
      node,
      node.fills.toDart,
      context,
    ),
    strokes: await _convertPaintsWithBoundVariables(
      node,
      node.strokes.toDart,
      context,
    ),
    cornerRadius: CornerRadius(
      topLeft: (node.topLeftRadius as num?)?.toDouble() ?? 0,
      topRight: (node.topRightRadius as num?)?.toDouble() ?? 0,
      bottomLeft: (node.bottomLeftRadius as num?)?.toDouble() ?? 0,
      bottomRight: (node.bottomRightRadius as num?)?.toDouble() ?? 0,
    ),
  );
}

Future<EllipseNode> _convertEllipseNode(
  figma_api.EllipseNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return EllipseNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
  );
}

Future<LineNode> _convertLineNode(
  figma_api.LineNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return LineNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
  );
}

Future<VectorNode> _convertVectorNode(
  figma_api.VectorNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return VectorNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
  );
}

Future<TextNode> _convertTextNode(
  figma_api.TextNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
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
  final characters = _createCharactersAlias(node, propertyIdMap);

  return TextNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    characters: characters,
    fills: await _convertPaintsWithBoundVariables(
      node,
      node.fills.toDart,
      context,
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

Future<FrameNode> _convertComponentNode(
  figma_api.ComponentNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return FrameNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: await _convertChildren(
      node.children.toDart,
      context,
      propertyIdMap,
    ),
  );
}

Future<InstanceNode> _convertInstanceNode(
  figma_api.InstanceNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  // Use async API to get main component to avoid documentAccess errors
  final mainComponent = await node.getMainComponentAsync().toDart;

  return InstanceNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: await _convertChildren(
      node.children.toDart,
      context,
      propertyIdMap,
    ),
    mainComponentId: mainComponent?.id,
  );
}

Future<BooleanOperationNode> _convertBooleanOperationNode(
  figma_api.BooleanOperationNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  return BooleanOperationNode(
    id: node.id,
    name: node.name,
    visible: await _createVisibilityAlias(node, context, propertyIdMap),
    x: node.x.toDouble(),
    y: node.y.toDouble(),
    width: node.width.toDouble(),
    height: node.height.toDouble(),
    rotation: node.rotation.toDouble(),
    children: await _convertChildren(
      node.children.toDart,
      context,
      propertyIdMap,
    ),
    booleanOperation: _convertBooleanOperation(node.booleanOperation),
  );
}

// Helper functions

Future<List<VisualNode>> _convertChildren(
  List<figma_api.SceneNode> children,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  final visualNodes = <VisualNode>[];
  for (final child in children) {
    final visualNode = await _convertSceneNodeToVisualNode(
      child,
      context,
      propertyIdMap,
    );
    if (visualNode != null) {
      visualNodes.add(visualNode);
    }
  }
  return visualNodes;
}

/// Converts paints while checking for bound variables on the node
Future<List<Paint>> _convertPaintsWithBoundVariables(
  figma_api.SceneNode node,
  List<figma_api.Paint> paints,
  ImporterContext<FigmaImportOptions> context,
) {
  final boundVariables = node.boundVariables?.dartify() as Map?;

  return Future.wait(
    paints
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
            context,
          );
        }),
  );
}

Future<Paint> _convertPaintWithBoundVariable(
  figma_api.Paint paint,
  Map? boundVariables,
  int paintIndex,
  ImporterContext<FigmaImportOptions> context,
) async {
  final paintType = paint.type.toUpperCase();

  // Check if this paint has a bound variable for color
  Alias? colorAlias;

  if (paintType == 'SOLID') {
    // Check for bound variable on fills[index].color
    final fillsBindings = boundVariables?['fills'] as List?;
    if (fillsBindings != null && paintIndex < fillsBindings.length) {
      final fillBinding = fillsBindings[paintIndex] as Map?;
      if (fillBinding != null && fillBinding['type'] == 'VARIABLE_ALIAS') {
        final figmaVariableId = fillBinding['id'] as String?;
        if (figmaVariableId != null) {
          // Use context.identifiers.get to get stable IDs for the variable alias
          colorAlias = await _createVariableAliasAsync(
            context,
            figmaVariableId,
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

/// Creates a variable alias from a Figma variable ID using context.identifiers
Future<Alias?> _createVariableAliasAsync(
  ImporterContext<FigmaImportOptions> context,
  String figmaVariableId,
) async {
  // Look up the variable to find its collection
  final variable = await figma_api.figma.variables
      .getVariableByIdAsync(figmaVariableId)
      .toDart;

  if (variable == null) {
    print(
      'Warning: Variable $figmaVariableId not found (may have been deleted)',
    );
    return null;
  }

  // Use consistent key format for collection and variable IDs
  final collectionId = context.identifiers.get(
    'variable_collection/${variable.variableCollectionId}',
  );
  final variableId = context.identifiers.get('variable/$figmaVariableId');

  return Alias(
    variable: VariableAlias(collectionId: collectionId, variableId: variableId),
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
Alias _createCharactersAlias(
  figma_api.TextNode node,
  PropertyIdMap propertyIdMap,
) {
  print('Bound for text node ${node.name}');
  print(node.componentPropertyReferences?.dartify());
  print(node.boundVariables?.dartify());
  print(propertyIdMap);

  // Check for component property references on characters
  final propertyReferences =
      node.componentPropertyReferences?.dartify() as Map?;
  if (propertyReferences != null) {
    final charactersRef = propertyReferences['characters'] as String?;
    if (charactersRef != null) {
      final propertyId = propertyIdMap[charactersRef];
      if (propertyId != null) {
        return Alias(
          property: PropertyAlias(
            componentId: propertyId.$1,
            propertyId: propertyId.$2,
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

/// Creates a visibility alias, checking for component property or variable references
Future<Alias> _createVisibilityAlias(
  figma_api.SceneNode node,
  ImporterContext<FigmaImportOptions> context,
  PropertyIdMap propertyIdMap,
) async {
  // Check for component property references on visible
  final propertyReferences =
      node.componentPropertyReferences?.dartify() as Map?;
  if (propertyReferences != null) {
    final visibleRef = propertyReferences['visible'] as String?;
    if (visibleRef != null) {
      final propertyId = propertyIdMap[visibleRef];
      if (propertyId != null) {
        return Alias(
          property: PropertyAlias(
            componentId: propertyId.$1,
            propertyId: propertyId.$2,
            defaultValue: Value(boolean: node.visible),
          ),
        );
      }
    }
  }

  // Check for bound variables on visible
  final boundVariables = node.boundVariables?.dartify() as Map?;
  if (boundVariables != null) {
    final visibleBinding = boundVariables['visible'] as Map?;
    if (visibleBinding != null && visibleBinding['type'] == 'VARIABLE_ALIAS') {
      final figmaVariableId = visibleBinding['id'] as String?;
      if (figmaVariableId != null) {
        final alias = await _createVariableAliasAsync(context, figmaVariableId);
        if (alias != null) {
          // Add default value to the variable alias
          alias.variable.defaultValue = Value(boolean: node.visible);
          return alias;
        }
      }
    }
  }

  // Fall back to constant boolean
  return Alias(
    constant: ConstantAlias(value: Value(boolean: node.visible)),
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
