import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/exporter.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';
import 'package:binui/src/utils/dart/buffer.dart';
import 'package:binui/src/utils/dart/dart.dart';
import 'package:binui/src/utils/naming.dart';

class VariableCollectionDartExporter {
  const VariableCollectionDartExporter();

  String serialize(FlutterExportContext context, VariableCollection value) {
    final buffer = DartBuffer();

    // Collect all aliased collections for imports
    final aliasedCollections = _collectAliasedCollections(context, value);
    for (final collectionId in aliasedCollections) {
      final collection = context.library.findVariableCollection(collectionId);
      if (collection != null) {
        final fileName = Naming.fileName(collection.name);
        final packageName = Naming.fileName(context.library.name);
        buffer.writeln(
          "import 'package:$packageName/src/variables/$fileName.dart' as ${Naming.fieldName(collection.name)};",
        );
      }
    }

    buffer.writeln("import 'dart:ui' as ui;");
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();
    write(buffer, context, value);
    return buffer.toString();
  }

  /// Collects all unique collection IDs that are referenced as aliases.
  Set<int> _collectAliasedCollections(
    FlutterExportContext context,
    VariableCollection definition,
  ) {
    final collectionIds = <int>{};
    for (final variant in definition.variants) {
      for (final value in variant.values) {
        if (value.whichType() == Value_Type.alias &&
            value.alias.whichType() == Alias_Type.variable) {
          final collectionId = value.alias.variable.collectionId;
          if (collectionId != definition.id) {
            collectionIds.add(collectionId);
          }
        }
      }
    }
    return collectionIds;
  }

  static void write(
    DartBuffer buffer,
    FlutterExportContext context,
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
    final aliasedCollections = <int, String>{};
    for (final variant in definition.variants) {
      for (var i = 0; i < variant.values.length; i++) {
        final value = variant.values[i];
        if (value.whichType() == Value_Type.alias &&
            value.alias.whichType() == Alias_Type.variable) {
          final collectionId = value.alias.variable.collectionId;
          if (collectionId != definition.id &&
              !aliasedCollections.containsKey(collectionId)) {
            final collection = context.library.findVariableCollection(
              collectionId,
            );
            if (collection != null) {
              aliasedCollections[collectionId] = collection.name;
            }
          }
        }
      }
    }

    // Sealed base class
    buffer.writeln('sealed class $dataClassName {');
    buffer.indent();

    // Constructor
    buffer.writeln('$dataClassName();');
    buffer.writeln();

    // Factory fromMode
    buffer.writeln(
      'factory $dataClassName.fromMode(${baseTypeName}Mode mode) {',
    );
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
        final prefix = Naming.fieldName(collectionName);
        final typeName = '${Naming.typeName(collectionName)}Data';
        final fieldName = Naming.fieldName(collectionName);
        aliasFields.add('$prefix.$typeName $fieldName');
      }
      buffer.writeln('late ({${aliasFields.join(', ')}}) alias;');
      buffer.writeln();
    }

    // Abstract getters for each variable
    for (var i = 0; i < definition.variables.length; i++) {
      final variable = definition.variables[i];
      final defaultValue = definition.variants.first.values[i];
      final name = Naming.fieldName(variable.name);
      final type = FlutterValueExporter.getTypeName(
        context.library,
        defaultValue,
      );
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

        if (value.whichType() == Value_Type.alias &&
            value.alias.whichType() == Alias_Type.variable) {
          // This is an alias to another collection's variable
          final alias = value.alias.variable;
          final targetCollection = context.library.findVariableCollection(
            alias.collectionId,
          );
          if (targetCollection != null) {
            final targetVariable = targetCollection.findEntry(alias.variableId);
            if (targetVariable != null) {
              final collectionFieldName = Naming.fieldName(
                targetCollection.name,
              );
              final variableFieldName = Naming.fieldName(targetVariable.name);
              buffer.writeln(
                'get $name => alias.$collectionFieldName.$variableFieldName;',
              );
            }
          }
        } else {
          // This is a constant value
          final serializedValue = const FlutterValueExporter().serialize(
            context.library,
            value,
          );
          buffer.writeln('final $name = $serializedValue;');
        }
      }

      buffer.unindent();
      buffer.writeln('}');
      buffer.writeln();
    }
  }
}
