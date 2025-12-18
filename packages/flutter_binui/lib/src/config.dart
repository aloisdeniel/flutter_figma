import 'package:binui/binui.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_binui/src/value.dart';

class BinuiConfig {
  const BinuiConfig(
    this.library, {
    this.variableCollectionVariants = const [],
    this.componentProperties = const [],
  });

  final Library library;
  final List<PropertyValue> componentProperties;
  final List<VariableCollectionVariantValue> variableCollectionVariants;

  T resolve<T>(Alias alias, T defaultValue) {
    if (alias.whichType() == Alias_Type.notSet) {
      return defaultValue;
    }
    final value = library.resolveAlias(
      alias,
      variableCollectionVariants: variableCollectionVariants,
      properties: componentProperties,
    );
    if (value == null || value.whichType() == Value_Type.notSet) {
      return defaultValue;
    }
    return value.toFlutter<T>();
  }

  @override
  int get hashCode {
    return Object.hash(library.id, Object.hashAll(componentProperties));
  }

  @override
  bool operator ==(Object other) {
    if (other is! BinuiConfig) return false;
    return other.library.id == library.id &&
        listEquals(other.componentProperties, componentProperties);
  }
}
