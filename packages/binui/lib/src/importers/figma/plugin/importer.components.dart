part of 'importer.dart';

Future<List<Component>> _importSelectedComponents() async {
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
        processedSetIds.add(componentSet.id);
        components.add(await _createComponentFromSet(componentSet));
      }
    } else if (node.type == 'COMPONENT') {
      final component = node as figma_api.ComponentNode;
      // Check if the component's parent is a COMPONENT_SET
      final parent = component.parent.dartify();
      if (parent is Map && parent['type'] == 'COMPONENT_SET') {
        // Import the whole parent component set instead
        final parentId = parent['id'] as String;
        if (!processedSetIds.contains(parentId)) {
          processedSetIds.add(parentId);
          final parentNode = await figma_api.figma
              .getNodeByIdAsync(parentId)
              .toDart;
          if (parentNode != null) {
            final componentSet = parentNode as figma_api.ComponentSetNode;
            components.add(await _createComponentFromSet(componentSet));
          }
        }
      } else {
        // Standalone component - import as single-variant component
        components.add(_createComponentFromNode(component));
      }
    }
  }

  return components;
}

Future<List<Component>> _importComponents() async {
  final components = <Component>[];
  final pages = figma_api.figma.root.children;

  for (var i = 0; i < pages.length; i++) {
    final page = pages[i];

    await page.loadAsync().toDart;

    // Find component sets
    final componentSets = page.findAll(
      (figma_api.SceneNode node) {
        return node.type == 'COMPONENT_SET';
      }.toJS,
    );

    for (var j = 0; j < componentSets.length; j++) {
      final node = componentSets[j];
      final componentSet = node as figma_api.ComponentSetNode;
      components.add(await _createComponentFromSet(componentSet));
    }

    // Find single components (not in a component set)
    final singleComponents = page.findAll(
      (figma_api.SceneNode node) {
        return node.type == 'COMPONENT';
      }.toJS,
    );

    for (var j = 0; j < singleComponents.length; j++) {
      final node = singleComponents[j];
      final component = node as figma_api.ComponentNode;
      final parent = component.parent.dartify();
      if (parent is Map && parent['type'] != 'COMPONENT_SET') {
        components.add(_createComponentFromNode(component));
      }
    }
  }

  return components;
}

Future<Component> _createComponentFromSet(
  figma_api.ComponentSetNode componentSet,
) async {
  final name = componentSet.name;
  final variantDefinitions = <ComponentVariantDefinition>[];
  final properties = <ComponentProperty>[];
  final variants = <ComponentVariant>[];

  final children = componentSet.children;

  final firstChild = children.length > 0
      ? children[0] as figma_api.ComponentNode
      : null;

  if (firstChild != null) {
    final figProperties = componentSet.componentPropertyDefinitions.dartify();

    if (figProperties is! Map) {
      // No properties defined, but still create variants with visual nodes
      for (var i = 0; i < children.length; i++) {
        final childNode = children[i] as figma_api.ComponentNode;
        final visualNode = _convertSceneNodeToVisualNode(childNode);
        variants.add(
          ComponentVariant(id: i, name: childNode.name, root: visualNode),
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

      if (propType == 'VARIANT') {
        final defaultValue = prop['defaultValue'] as String;
        final variantOptions = prop['variantOptions'] as List;
        final enumValues = <ComponentVariantValueDefinition>[];
        for (var i = 0; i < variantOptions.length; i++) {
          final variantOption = variantOptions[i];
          enumValues.add(
            ComponentVariantValueDefinition(
              name: variantOption as String,
              id: i,
            ),
          );
        }
        variantDefinitions.add(
          ComponentVariantDefinition(name: key, values: enumValues),
        );
        properties.add(
          ComponentProperty(
            name: key,
            defaultValue: Value(stringValue: defaultValue),
          ),
        );
      } else if (propType == 'TEXT') {
        final defaultValue = prop['defaultValue'] as String;
        properties.add(
          ComponentProperty(
            name: key,
            defaultValue: Value(stringValue: defaultValue),
          ),
        );
      } else if (propType == 'BOOLEAN') {
        final defaultValue = prop['defaultValue'] as bool;
        properties.add(
          ComponentProperty(
            name: key,
            defaultValue: Value(boolean: defaultValue),
          ),
        );
      }
    }

    // Create variants with visual nodes for each child component
    for (var i = 0; i < children.length; i++) {
      final childNode = children[i] as figma_api.ComponentNode;
      final visualNode = _convertSceneNodeToVisualNode(childNode);

      // Parse variant values from component name (e.g., "Size=Large, State=Active")
      final variantValues = _parseVariantValues(
        childNode.name,
        variantDefinitions,
      );

      variants.add(
        ComponentVariant(
          id: i,
          name: childNode.name,
          variants: variantValues,
          root: visualNode,
        ),
      );
    }
  }

  return Component(
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

Component _createComponentFromNode(figma_api.ComponentNode component) {
  final name = component.name;
  final visualNode = _convertSceneNodeToVisualNode(component);

  // Create a single variant with the component's visual tree
  final variant = ComponentVariant(id: 0, name: name, root: visualNode);

  return Component(
    name: name,
    documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
    variants: [variant],
  );
}
