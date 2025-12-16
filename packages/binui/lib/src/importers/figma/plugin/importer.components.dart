part of 'importer.dart';

Future<List<Component>> _importSelectedComponents() async {
  final selection = figma_api.figma.currentPage.selection.toDart;

  if (selection.isEmpty) {
    return [];
  }

  final components = <Component>[];
  for (final node in selection) {
    if (node.type == 'COMPONENT_SET') {
      final componentSet = node as figma_api.ComponentSetNode;
      components.add(await _createComponentFromSet(componentSet));
    } else if (node.type == 'COMPONENT') {
      final component = node as figma_api.ComponentNode;
      components.add(_createComponentFromNode(component));
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

  final children = componentSet.children;

  final firstChild = children.length > 0
      ? children[0] as figma_api.ComponentNode
      : null;

  if (firstChild != null) {
    final figProperties = componentSet.componentPropertyDefinitions.dartify();

    if (figProperties is! Map) {
      return Component(
        name: name,
        documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
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
  }

  return Component(
    name: name,
    documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
    variantDefinitions: variantDefinitions,
    properties: properties,
  );
}

Component _createComponentFromNode(figma_api.ComponentNode component) {
  final name = component.name;

  return Component(
    name: name,
    documentation: 'https://www.figma.com/file/${figma_api.figma.fileKey}',
  );
}
