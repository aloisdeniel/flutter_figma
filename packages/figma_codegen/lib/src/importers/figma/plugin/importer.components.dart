import 'dart:js_interop';
import 'dart:js_interop_unsafe';

import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart'
    as figma_api;

class FigmaComponentsImporter {
  const FigmaComponentsImporter();

  Future<List<Component>> import(
    ImportContext<FigmaImportOptions> context,
  ) async {
    final nodes = await _targetNodes(context);
    if (nodes.isEmpty) {
      print('No components selected for import.');
      return const [];
    }

    final components = <Component>[];
    for (final node in nodes) {
      final imported = await _componentFromNode(node);
      if (imported != null) {
        components.add(imported);
      }
    }

    return components;
  }
}

Future<List<figma_api.SceneNode>> _targetNodes(
  ImportContext<FigmaImportOptions> context,
) async {
  final componentIds = context.options.componentIds;
  if (componentIds != null && componentIds.isNotEmpty) {
    final nodes = <figma_api.SceneNode>[];
    for (final id in componentIds) {
      final resolved = await figma_api.figma.getNodeByIdAsync(id).toDart;
      if (resolved is figma_api.SceneNode) {
        nodes.add(resolved);
      } else {
        print('Skipping node with id $id – not a component.');
      }
    }
    return nodes;
  }

  final selection = figma_api.figma.currentPage.selection.toDart;
  return selection
      .where(
        (node) =>
            node is figma_api.ComponentNode || node is figma_api.ComponentSetNode,
      )
      .cast<figma_api.SceneNode>()
      .toList(growable: false);
}

Future<Component?> _componentFromNode(figma_api.SceneNode node) async {
  if (node is figma_api.ComponentSetNode) {
    return _componentFromDefinition(node.name, node.componentPropertyDefinitions);
  }

  if (node is figma_api.ComponentNode) {
    return _componentFromDefinition(node.name, node.componentPropertyDefinitions);
  }

  return null;
}

Future<Component?> _componentFromDefinition(
  String name,
  JSObject? componentPropertyDefinitions,
) async {
  final definitions = componentPropertyDefinitions?.dartify();
  if (definitions is! Map) {
    return Component(name: name);
  }

  final variants = <ComponentVariant>[];
  final properties = <ComponentProperty>[];

  for (final entry in definitions.entries) {
    final propertyName = entry.key;
    final value = entry.value;
    if (propertyName is! String || value is! Map) {
      continue;
    }

    final type = value['type'];
    if (type == 'VARIANT') {
      final options = value['variantOptions'];
      variants.add(
        ComponentVariant(
          name: propertyName,
          options: options is List ? options.map((e) => '$e').toList() : const [],
        ),
      );
    }

    final defaultValue = await _componentPropertyValue(
      propertyName,
      value,
    );

    properties.add(
      ComponentProperty(
        name: propertyName,
        defaultValue: defaultValue,
      ),
    );
  }

  return Component(
    name: name,
    description: '',
    variants: variants,
    properties: properties,
  );
}

Future<ComponentPropertyValue?> _componentPropertyValue(
  String propertyName,
  Map<dynamic, dynamic> definition,
) async {
  final type = definition['type'];
  final rawDefault = definition['defaultValue'];

  switch (type) {
    case 'BOOLEAN':
      if (rawDefault is bool) {
        return ComponentPropertyValue(booleanValue: rawDefault);
      }
      break;
    case 'TEXT':
      return ComponentPropertyValue(stringValue: rawDefault?.toString() ?? '');
    case 'FLOAT':
    case 'NUMBER':
      if (rawDefault is num) {
        return ComponentPropertyValue(numberValue: rawDefault.toDouble());
      }
      break;
    case 'VARIANT':
      final value = rawDefault?.toString() ?? '';
      return ComponentPropertyValue(
        variantValue: ComponentVariantValue(
          variantName: propertyName,
          value: value,
          description: '',
        ),
      );
    case 'INSTANCE_SWAP':
      final resolvedName = await _resolveComponentName(rawDefault);
      if (resolvedName != null) {
        return ComponentPropertyValue(
          instanceSwapValue: ComponentInstance(componentName: resolvedName),
        );
      }
      return ComponentPropertyValue(
        instanceSwapValue:
            ComponentInstance(componentName: rawDefault?.toString() ?? ''),
      );
    default:
      return null;
  }
  return null;
}

Future<String?> _resolveComponentName(dynamic componentId) async {
  if (componentId is! String || componentId.isEmpty) {
    return null;
  }

  final node = await figma_api.figma.getNodeByIdAsync(componentId).toDart;
  if (node is figma_api.ComponentNode) {
    return node.name;
  }
  if (node is figma_api.ComponentSetNode) {
    return node.name;
  }
  return null;
}
