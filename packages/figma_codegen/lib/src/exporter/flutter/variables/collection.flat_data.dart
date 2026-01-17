import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';
import 'package:figma_codegen/src/utils/dart/dart.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

void writeFlatCollectionDataClass(
  FlutterExportContext context,
  DartBuffer buffer,
  VariableCollection definition,
) {
  // Choose generation strategy based on number of variants
  if (definition.variants.length == 1) {
    _writeSingleModeClass(context, buffer, definition);
  } else {
    _writeMultiModeClasses(context, buffer, definition);
  }
}

/// Generates a simple class for collections with only one mode/variant.
void _writeSingleModeClass(
  FlutterExportContext context,
  DartBuffer buffer,
  VariableCollection definition,
) {
  final baseTypeName = Naming.typeName(definition.name);
  final dataClassName = '${baseTypeName}Data';
  final variant = definition.variants.first;

  // Collect alias information
  final aliasedCollections = context.collectAliasedCollectionsMap(definition);

  // Simple class (not sealed)
  buffer.writeln('class $dataClassName {');
  buffer.indent();

  // Constructor
  buffer.writeln('$dataClassName();');
  buffer.writeln();

  // Alias record type (if there are aliased collections)
  if (aliasedCollections.isNotEmpty) {
    final aliasFields = <String>[];
    for (final entry in aliasedCollections.entries) {
      final collectionName = entry.value;
      final typeName = '${Naming.typeName(collectionName)}Data';
      final fieldName = Naming.fieldName(collectionName);
      aliasFields.add('$typeName $fieldName');
    }
    buffer.writeln('late ({${aliasFields.join(', ')}}) alias;');
    buffer.writeln();
  }

  // Fields for each variable
  for (var i = 0; i < definition.variables.length; i++) {
    final variable = definition.variables[i];
    final value = variant.values[i];
    final name = Naming.fieldName(variable.name);

    // This is a constant value
    final serializedValue = const FlutterValueExporter().serialize(
      context,
      value,
      value.whichType(),
    );
    var aliases = value.getDescendantAliases();
    if (aliases.isNotEmpty) {
      buffer.writeln('late final $name = $serializedValue;');
    } else {
      buffer.writeln('final $name = $serializedValue;');
    }
  }

  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();
}

/// Generates sealed class with enum and variant classes for multiple modes.
void _writeMultiModeClasses(
  FlutterExportContext context,
  DartBuffer buffer,
  VariableCollection definition,
) {
  final baseTypeName = Naming.typeName(definition.name);
  final dataClassName = '${baseTypeName}Data';

  // Mode enum
  final modeValues = <String>[];
  for (var variant in definition.variants) {
    final valueName = Naming.fieldName(variant.name);
    modeValues.add(valueName);
  }
  final modeEnum = DartEnum(name: '${baseTypeName}Mode', values: modeValues);
  buffer.writeEnum(modeEnum);
  buffer.writeln();

  // Collect alias information
  final aliasedCollections = context.collectAliasedCollectionsMap(definition);

  // Sealed base class
  buffer.writeln('sealed class $dataClassName {');
  buffer.indent();

  // Constructor
  buffer.writeln('$dataClassName();');
  buffer.writeln();

  // Factory fromMode
  buffer.writeln('factory $dataClassName.fromMode(${baseTypeName}Mode mode) {');
  buffer.indent();
  buffer.writeln('switch (mode) {');
  buffer.indent();
  for (final variant in definition.variants) {
    final variantEnumValue = Naming.fieldName(variant.name);
    final variantClassName = '_${Naming.typeName(variant.name)}';
    buffer.writeln('case ${baseTypeName}Mode.$variantEnumValue:');
    buffer.indent();
    buffer.writeln('return $variantClassName();');
    buffer.unindent();
  }
  buffer.unindent();
  buffer.writeln('}');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  // Alias record type (if there are aliased collections)
  if (aliasedCollections.isNotEmpty) {
    final aliasFields = <String>[];
    for (final entry in aliasedCollections.entries) {
      final collectionName = entry.value;
      final typeName = '${Naming.typeName(collectionName)}Data';
      final fieldName = Naming.fieldName(collectionName);
      aliasFields.add('$typeName $fieldName');
    }
    buffer.writeln('late ({${aliasFields.join(', ')}}) alias;');
    buffer.writeln();
  }

  // Abstract getters for each variable
  for (var i = 0; i < definition.variables.length; i++) {
    final variable = definition.variables[i];
    final defaultValue = definition.variants.first.values[i];
    final name = Naming.fieldName(variable.name);
    final type = FlutterValueExporter.mapTypeName(defaultValue.whichType());
    buffer.writeln('$type get $name;');
  }

  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  // Private variant classes
  for (final variant in definition.variants) {
    final variantClassName = '_${Naming.typeName(variant.name)}';
    buffer.writeln('class $variantClassName extends $dataClassName {');
    buffer.indent();

    // Constructor
    buffer.writeln('$variantClassName();');

    // Override getters for each variable
    for (var i = 0; i < definition.variables.length; i++) {
      final variable = definition.variables[i];
      final value = variant.values[i];
      final name = Naming.fieldName(variable.name);

      buffer.writeln();
      buffer.writeln('@override');

      var alias = value.getAlias();
      if (alias != null && alias.whichType() == Alias_Type.variable) {
        // This is an alias to another collection's variable
        final varAlias = alias.variable;
        final targetCollection = context.collections.findVariableCollection(
          varAlias.collectionId,
        );
        if (targetCollection != null) {
          final targetVariable = targetCollection.findEntry(
            varAlias.variableId,
          );
          if (targetVariable != null) {
            final collectionFieldName = Naming.fieldName(targetCollection.name);
            final variableFieldName = Naming.fieldName(targetVariable.name);
            buffer.writeln(
              'get $name => alias.$collectionFieldName.$variableFieldName;',
            );
          }
        }
      } else {
        // This is a constant value
        final serializedValue = const FlutterValueExporter().serialize(
          context,
          value,
          value.whichType(),
        );
        buffer.writeln('final $name = $serializedValue;');
      }
    }

    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();
  }
}
