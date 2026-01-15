import 'package:figma_codegen/src/definitions/variables.pb.dart';

export 'variables.pb.dart';

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

extension LibraryExtension on List<VariableCollection> {
  VariableCollection? findVariableCollection(int id) {
    return where((x) => x.id == id).firstOrNull;
  }

  Value_Type? resolveAliasType(Alias alias) {
    final result = resolveAlias(alias);
    if (result == null) print('Could not resolve alias type for alias: $alias');
    return result?.whichType();
  }

  Value? resolveValue(
    Value value, {
    List<VariableCollectionVariantValue> variableCollectionVariants = const [],
  }) {
    switch (value.whichType()) {
      case Value_Type.color:
        if (value.color.hasAlias()) {
          final resolved = resolveAlias(
            value.color.alias,
            variableCollectionVariants: variableCollectionVariants,
          );
          if (resolved == null) return null;
          return resolveValue(
            resolved,
            variableCollectionVariants: variableCollectionVariants,
          );
        }
        return value;
      case Value_Type.stringValue:
        if (value.stringValue.hasAlias()) {
          final resolved = resolveAlias(
            value.stringValue.alias,
            variableCollectionVariants: variableCollectionVariants,
          );
          if (resolved == null) return null;
          return resolveValue(
            resolved,
            variableCollectionVariants: variableCollectionVariants,
          );
        }
        return value;
      case Value_Type.doubleValue:
        if (value.doubleValue.hasAlias()) {
          final resolved = resolveAlias(
            value.doubleValue.alias,
            variableCollectionVariants: variableCollectionVariants,
          );
          if (resolved == null) return null;
          return resolveValue(
            resolved,
            variableCollectionVariants: variableCollectionVariants,
          );
        }
        return value;
      case Value_Type.boolean:
        if (value.boolean.hasAlias()) {
          final resolved = resolveAlias(
            value.boolean.alias,
            variableCollectionVariants: variableCollectionVariants,
          );
          if (resolved == null) return null;
          return resolveValue(
            resolved,
            variableCollectionVariants: variableCollectionVariants,
          );
        }
        return value;
      case Value_Type.notSet:
        return null;
      default:
        return value;
    }
  }

  Value? resolveAlias(
    Alias alias, {
    List<VariableCollectionVariantValue> variableCollectionVariants = const [],
  }) {
    return () {
      switch (alias.whichType()) {
        case Alias_Type.variable:
          final collection = findVariableCollection(
            alias.variable.collectionId,
          );
          print('Resolved collection: ${collection?.name}');
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
        case Alias_Type.notSet:
          return null;
      }
    }();
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

extension ValueExtension on Value {
  Alias? getAlias() {
    switch (whichType()) {
      case Value_Type.color:
        if (color.hasAlias()) {
          return color.alias;
        }
      case Value_Type.stringValue:
        if (stringValue.hasAlias()) {
          return stringValue.alias;
        }
      case Value_Type.doubleValue:
        if (doubleValue.hasAlias()) {
          return doubleValue.alias;
        }
      case Value_Type.boolean:
        if (boolean.hasAlias()) {
          return boolean.alias;
        }
      default:
    }
    return null;
  }
}
