part of 'importer.dart';

Future<List<Component>> _importSelectedComponents(
  ImporterContext<FigmaImportOptions> context,
  VariableIdMap variableIdMap,
) async {
  final selection = figma_api.figma.currentPage.selection.toDart;

  if (selection.isEmpty) {
    return [];
  }

  final components = <Component>[];
  final processedSetIds = <String>{};

  for (final node in selection) {
    if (node.type == 'COMPONENT_SET') {
      final componentSet = node as figma_api.ComponentSetNode;
      if (!processedSetIds.contains(componentSet.id)) {
        final componentId = context.identifiers.get(
          'component_sets/${node.id}',
        );
        processedSetIds.add(componentSet.id);
        components.add(
          await _createComponentFromSet(
            componentId,
            context,
            componentSet,
            variableIdMap,
          ),
        );
      }
    } else if (node.type == 'COMPONENT') {
      final component = node as figma_api.ComponentNode;
      // Check if the component's parent is a COMPONENT_SET
      final parent = component.parent.dartify();
      if (parent is Map && parent['type'] == 'COMPONENT_SET') {
        // Import the whole parent component set instead
        final parentId = parent['id'] as String;
        if (!processedSetIds.contains(parentId)) {
          final componentId = context.identifiers.get(
            'component_sets/$parentId',
          );
          processedSetIds.add(parentId);
          final parentNode = await figma_api.figma
              .getNodeByIdAsync(parentId)
              .toDart;
          if (parentNode != null) {
            final componentSet = parentNode as figma_api.ComponentSetNode;
            components.add(
              await _createComponentFromSet(
                componentId,
                context,
                componentSet,
                variableIdMap,
              ),
            );
          }
        }
      } else {
        final componentId = context.identifiers.get('components/${node.id}');
        // Standalone component - import as single-variant component
        components.add(
          await _createComponentFromNode(
            componentId,
            context,
            component,
            variableIdMap,
          ),
        );
      }
    }
  }

  return components;
}

Future<Component> _createComponentFromSet(
  int componentId,
  ImporterContext<FigmaImportOptions> context,
  figma_api.ComponentSetNode componentSet,
  VariableIdMap variableIdMap,
) async {
  final name = componentSet.name;
  final variantDefinitions = <ComponentVariantDefinition>[];
  final properties = <ComponentProperty>[];
  final variants = <ComponentVariant>[];

  final children = componentSet.children;

  final firstChild = children.length > 0
      ? children[0] as figma_api.ComponentNode
      : null;

  // Build property ID map for this component
  final propertyIdMap = <String, (int, int)>{};

  if (firstChild != null) {
    final figProperties = componentSet.componentPropertyDefinitions.dartify();

    if (figProperties is! Map) {
      // No properties defined, but still create variants with visual nodes
      for (var i = 0; i < children.length; i++) {
        final childNode = children[i] as figma_api.ComponentNode;
        final variantId = context.identifiers.get(
          'component_sets/${componentSet.id}/variant/${childNode.id}',
        );
        final visualNode = await _convertSceneNodeToVisualNode(
          childNode,
          context,
          propertyIdMap,
        );
        variants.add(
          ComponentVariant(
            id: variantId,
            name: childNode.name,
            root: visualNode,
          ),
        );
      }
      return Component(
        name: name,
        documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
        variants: variants,
      );
    }

    for (final entry in figProperties.entries) {
      final key = entry.key as String;
      final prop = entry.value as Map;
      final propType = prop['type'] as String;

      // Use context.identifiers.get to get a stable property ID
      final propertyId = context.identifiers.get(
        'component_sets/${componentSet.id}/property/$key',
      );

      if (propType == 'VARIANT') {
        final defaultValue = prop['defaultValue'] as String;
        final variantOptions = prop['variantOptions'] as List;
        final enumValues = <ComponentVariantValueDefinition>[];
        for (var i = 0; i < variantOptions.length; i++) {
          final variantOption = variantOptions[i] as String;
          final valueId = context.identifiers.get(
            'component_sets/${componentSet.id}/property/$key/value/$variantOption',
          );
          enumValues.add(
            ComponentVariantValueDefinition(name: variantOption, id: valueId),
          );
        }
        variantDefinitions.add(
          ComponentVariantDefinition(name: key, values: enumValues),
        );
        properties.add(
          ComponentProperty(
            id: propertyId,
            name: key,
            defaultValue: Value(stringValue: defaultValue),
          ),
        );
        propertyIdMap[key] = (componentId, propertyId);
      } else if (propType == 'TEXT') {
        final defaultValue = prop['defaultValue'] as String;
        properties.add(
          ComponentProperty(
            id: propertyId,
            name: key,
            defaultValue: Value(stringValue: defaultValue),
          ),
        );
        propertyIdMap[key] = (componentId, propertyId);
      } else if (propType == 'BOOLEAN') {
        final defaultValue = prop['defaultValue'] as bool;
        properties.add(
          ComponentProperty(
            id: propertyId,
            name: key,
            defaultValue: Value(boolean: defaultValue),
          ),
        );
        propertyIdMap[key] = (componentId, propertyId);
      }
    }

    // Create variants with visual nodes for each child component
    for (var i = 0; i < children.length; i++) {
      final childNode = children[i] as figma_api.ComponentNode;
      final variantId = context.identifiers.get(
        'component_sets/${componentSet.id}/variant/${childNode.id}',
      );
      final visualNode = await _convertSceneNodeToVisualNode(
        childNode,
        context,
        propertyIdMap,
      );

      // Parse variant values from component name (e.g., "Size=Large, State=Active")
      final variantValues = _parseVariantValues(
        childNode.name,
        variantDefinitions,
      );

      variants.add(
        ComponentVariant(
          id: variantId,
          name: childNode.name,
          variants: variantValues,
          root: visualNode,
        ),
      );
    }
  }

  return Component(
    id: componentId,
    name: name,
    documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
    variantDefinitions: variantDefinitions,
    properties: properties,
    variants: variants,
  );
}

/// Parses variant values from a component name like "Size=Large, State=Active"
List<ComponentVariantValue> _parseVariantValues(
  String componentName,
  List<ComponentVariantDefinition> variantDefinitions,
) {
  final variantValues = <ComponentVariantValue>[];

  // Split by comma and parse key=value pairs
  final pairs = componentName.split(',').map((s) => s.trim());

  for (final pair in pairs) {
    final parts = pair.split('=');
    if (parts.length == 2) {
      final key = parts[0].trim();
      final value = parts[1].trim();

      // Find matching variant definition
      for (var i = 0; i < variantDefinitions.length; i++) {
        final definition = variantDefinitions[i];
        if (definition.name == key) {
          // Find matching value definition
          for (final valueDef in definition.values) {
            if (valueDef.name == value) {
              variantValues.add(
                ComponentVariantValue(componentId: i, variantId: valueDef.id),
              );
              break;
            }
          }
          break;
        }
      }
    }
  }

  return variantValues;
}

Future<Component> _createComponentFromNode(
  int componentId,
  ImporterContext<FigmaImportOptions> context,
  figma_api.ComponentNode component,
  VariableIdMap variableIdMap,
) async {
  final name = component.name;
  final properties = <ComponentProperty>[];
  final propertyIdMap = <String, (int, int)>{};

  // Extract component properties from standalone component
  final figProperties = component.componentPropertyDefinitions.dartify();
  if (figProperties is Map) {
    for (final entry in figProperties.entries) {
      final key = entry.key as String;
      final prop = entry.value as Map;
      final propType = prop['type'] as String;

      // Use context.identifiers.get to get a stable property ID
      final propertyId = context.identifiers.get(
        'components/${component.id}/property/$key',
      );

      if (propType == 'TEXT') {
        final defaultValue = prop['defaultValue'] as String;
        properties.add(
          ComponentProperty(
            componentId: componentId,
            id: propertyId,
            name: key,
            defaultValue: Value(stringValue: defaultValue),
          ),
        );
        propertyIdMap[key] = (componentId, propertyId);
      } else if (propType == 'BOOLEAN') {
        final defaultValue = prop['defaultValue'] as bool;
        properties.add(
          ComponentProperty(
            componentId: componentId,
            id: propertyId,
            name: key,
            defaultValue: Value(boolean: defaultValue),
          ),
        );
        propertyIdMap[key] = (componentId, propertyId);
      }
      // Note: VARIANT type doesn't apply to standalone components
    }
  }

  final visualNode = await _convertSceneNodeToVisualNode(
    component,
    context,
    propertyIdMap,
  );

  // Create a single variant with the component's visual tree
  final variantId = context.identifiers.get(
    'components/${component.id}/variant/default',
  );
  final variant = ComponentVariant(id: variantId, name: name, root: visualNode);

  return Component(
    id: componentId,
    name: name,
    documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
    properties: properties,
    variants: [variant],
  );
}
