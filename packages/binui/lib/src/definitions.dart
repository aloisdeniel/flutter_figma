import 'package:binui/src/definitions.pb.dart';

export 'definitions.pb.dart';

class VariableCollectionVariantValue {
  const VariableCollectionVariantValue({
    required this.collectionId,
    required this.variantId,
  });

  final int collectionId;
  final int variantId;

  @override
  int get hashCode {
    return Object.hash(collectionId, variantId);
  }

  @override
  bool operator ==(Object other) {
    if (other is! VariableCollectionVariantValue) return false;
    return other.collectionId == collectionId && other.variantId == variantId;
  }
}

class PropertyValue {
  const PropertyValue({
    required this.componentId,
    required this.propertyId,
    required this.value,
  });

  final int componentId;
  final int propertyId;
  final Value value;

  @override
  int get hashCode {
    return Object.hash(componentId, propertyId, value);
  }

  @override
  bool operator ==(Object other) {
    if (other is! PropertyValue) return false;
    return other.componentId == componentId &&
        other.propertyId == propertyId &&
        other.value == value;
  }
}

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
    List<VariableCollectionVariantValue> variableCollectionVariants = const [],
    List<PropertyValue> properties = const [],
  }) {
    final result = () {
      switch (alias.whichType()) {
        case Alias_Type.constant:
          return alias.constant.value;
        case Alias_Type.variable:
          final collection = findVariableCollection(
            alias.variable.collectionId,
          );
          print('Resolved collection: ${collection}');
          if (collection != null) {
            final variantValue = variableCollectionVariants
                .where((x) => x.collectionId == alias.variable.collectionId)
                .firstOrNull;

            final variantId =
                variantValue?.variantId ?? collection.variants.first.id;
            print(
              'Resolved variantId: ${alias.variable.variableId} -> $variantId',
            );

            return collection.findVariantValue(
              alias.variable.variableId,
              variantId,
            );
          }
        case Alias_Type.property:
          final value = properties
              .where(
                (x) =>
                    x.componentId == alias.property.componentId &&
                    x.propertyId == alias.property.propertyId,
              )
              .firstOrNull;

          return value?.value ?? alias.property.defaultValue;
        case Alias_Type.notSet:
          return null;
      }
    }();
    if (result?.whichType() == Value_Type.alias) {
      return resolveAlias(
        result!.alias,
        variableCollectionVariants: variableCollectionVariants,
        properties: properties,
      );
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
