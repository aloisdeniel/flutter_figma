import 'package:binui/src/definitions.pb.dart';

export 'definitions.pb.dart';

extension LibraryExtension on Library {
  Component? findComponent(int id) {
    return components.where((x) => x.id == id).firstOrNull;
  }

  VariableCollection? findVariableCollection(int id) {
    return variables.where((x) => x.id == id).firstOrNull;
  }

  Value_Type? resolveAliasType(Alias alias) {
    final result = resolveAlias(alias);
    if (result == null) print('Could not resolve alias type for alias: $alias');
    return result?.whichType();
  }

  Value? resolveAlias(
    Alias alias, {
    Map<int, int>? variableCollectionVariants,
    Map<int, Value>? properties,
  }) {
    final result = () {
      switch (alias.whichType()) {
        case Alias_Type.variable:
          final collection = findVariableCollection(
            alias.variable.collectionId,
          );
          if (collection != null) {
            final variantId = variableCollectionVariants != null
                ? variableCollectionVariants[collection.id] ??
                      collection.variants.first.id
                : collection.variants.first.id;
            return collection.findVariantValue(
              alias.variable.variableId,
              variantId,
            );
          }
        case Alias_Type.constant:
          return alias.constant.value;
        case Alias_Type.property:
          if (properties != null) {
            if (properties.containsKey(alias.property.propertyId)) {
              return properties[alias.property.propertyId];
            }
          }
          return alias.property.defaultValue;
        case Alias_Type.notSet:
          return null;
      }
    }();
    if (result?.whichType() == Value_Type.alias) {
      return resolveAlias(result!.alias);
    }
    return result;
  }
}

extension ComponentExtension on Component {
  ComponentProperty? findProperty(int id) {
    return properties.where((x) => x.id == id).firstOrNull;
  }

  ComponentVariantDefinition? findVariant(int id) {
    return variantDefinitions.where((x) => x.id == id).firstOrNull;
  }
}

extension ComponentVariantDefinitionExtension on ComponentVariantDefinition {
  ComponentVariantValueDefinition? findValueDefinition(int id) {
    return values.where((x) => x.id == id).firstOrNull;
  }
}

extension VariableCollectionExtension on VariableCollection {
  VariableCollectionEntry? findEntry(int id) {
    return variables.where((x) => x.id == id).firstOrNull;
  }

  VariableCollectionVariant? findVariant(int id) {
    return variants.where((x) => x.id == id).firstOrNull;
  }

  Value? findVariantValue(int id, int variantId) {
    final index = variables.indexWhere((x) => x.id == id);
    if (index < 0) return null;
    final variant = findVariant(variantId);
    if (variant == null) return null;
    return variant.values[index];
  }
}
