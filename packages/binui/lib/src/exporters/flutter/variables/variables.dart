import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/exporter.dart';
import 'package:binui/src/utils/dart/buffer.dart';
import 'package:binui/src/utils/naming.dart';

/// Generates the aggregated variables.dart file that combines all variable
/// collections and provides an InheritedWidget for accessing them.
class VariablesDartExporter {
  const VariablesDartExporter();

  String serialize(FlutterExportContext context) {
    final library = context.library;
    final buffer = DartBuffer();
    final packageName = Naming.fileName(library.name);

    // Flutter import
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();

    // Import all variable collection files
    for (final collection in library.variables) {
      final fileName = Naming.fileName(collection.name);
      buffer.writeln(
        "import 'package:$packageName/src/variables/$fileName.dart';",
      );
    }
    buffer.writeln();

    // Generate VariableMode typedef (record of all mode enums)
    _writeVariableModeTypedef(buffer, library);
    buffer.writeln();

    // Generate VariableCollections class
    _writeVariableCollectionsClass(buffer, library);
    buffer.writeln();

    // Generate Variables InheritedWidget
    _writeVariablesWidget(buffer, library);

    return buffer.toString();
  }

  void _writeVariableModeTypedef(DartBuffer buffer, Library library) {
    final modeFields = <String>[];
    for (final collection in library.variables) {
      final typeName = Naming.typeName(collection.name);
      final fieldName = Naming.fieldName(collection.name);
      modeFields.add('${typeName}Mode $fieldName');
    }
    buffer.writeln('typedef VariableMode = ({${modeFields.join(', ')}});');
  }

  void _writeVariableCollectionsClass(DartBuffer buffer, Library library) {
    buffer.writeln('class VariableCollections {');
    buffer.indent();

    // Private constructor
    final constructorArgs = <String>[];
    for (final collection in library.variables) {
      final fieldName = Naming.fieldName(collection.name);
      constructorArgs.add('required this.$fieldName');
    }
    buffer.writeln(
      'const VariableCollections._({${constructorArgs.join(', ')}});',
    );
    buffer.writeln();

    // Factory fromModes
    buffer.writeln(
      'factory VariableCollections.fromModes(VariableMode mode) {',
    );
    buffer.indent();

    // Create data instances for each collection
    for (final collection in library.variables) {
      final typeName = Naming.typeName(collection.name);
      final fieldName = Naming.fieldName(collection.name);
      buffer.writeln(
        'final $fieldName = ${typeName}Data.fromMode(mode.$fieldName);',
      );
    }
    buffer.writeln();

    // Resolve aliases - need to determine which collections alias which
    final aliasAssignments = _buildAliasAssignments(library);
    if (aliasAssignments.isNotEmpty) {
      buffer.writeln('// Resolving aliases');
      for (final assignment in aliasAssignments) {
        buffer.writeln(assignment);
      }
      buffer.writeln();
    }

    // Return statement
    final returnArgs = <String>[];
    for (final collection in library.variables) {
      final fieldName = Naming.fieldName(collection.name);
      returnArgs.add('$fieldName: $fieldName');
    }
    buffer.writeln('return VariableCollections._(${returnArgs.join(', ')});');

    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    // Fields
    for (final collection in library.variables) {
      final typeName = Naming.typeName(collection.name);
      final fieldName = Naming.fieldName(collection.name);
      buffer.writeln('final ${typeName}Data $fieldName;');
    }

    buffer.unindent();
    buffer.writeln('}');
  }

  /// Builds alias assignment statements by analyzing which collections
  /// reference which other collections.
  List<String> _buildAliasAssignments(Library library) {
    final assignments = <String>[];

    for (final collection in library.variables) {
      final aliasedCollectionIds = <int>{};

      // Find all collections referenced by this collection's variants
      for (final variant in collection.variants) {
        for (final value in variant.values) {
          if (value.whichType() == Value_Type.alias &&
              value.alias.whichType() == Alias_Type.variable) {
            final collectionId = value.alias.variable.collectionId;
            if (collectionId != collection.id) {
              aliasedCollectionIds.add(collectionId);
            }
          }
        }
      }

      if (aliasedCollectionIds.isNotEmpty) {
        final collectionFieldName = Naming.fieldName(collection.name);
        final aliasFields = <String>[];

        for (final aliasedId in aliasedCollectionIds) {
          final aliasedCollection = library.findVariableCollection(aliasedId);
          if (aliasedCollection != null) {
            final aliasedFieldName = Naming.fieldName(aliasedCollection.name);
            aliasFields.add('$aliasedFieldName: $aliasedFieldName');
          }
        }

        if (aliasFields.isNotEmpty) {
          assignments.add(
            '$collectionFieldName.alias = (${aliasFields.join(', ')});',
          );
        }
      }
    }

    return assignments;
  }

  void _writeVariablesWidget(DartBuffer buffer, Library library) {
    buffer.writeln('class Variables extends fl.InheritedWidget {');
    buffer.indent();

    // Constructor
    buffer.writeln(
      'Variables({super.key, required super.child, required this.mode})',
    );
    buffer.indent();
    buffer.writeln(': data = VariableCollections.fromModes(mode);');
    buffer.unindent();
    buffer.writeln();

    // Fields
    buffer.writeln('final VariableMode mode;');
    buffer.writeln('final VariableCollections data;');
    buffer.writeln();

    // updateShouldNotify
    buffer.writeln('@override');
    buffer.writeln('bool updateShouldNotify(covariant Variables oldWidget) {');
    buffer.indent();
    buffer.writeln('return mode != oldWidget.mode;');
    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    // maybeOf
    buffer.writeln(
      'static VariableCollections? maybeOf(fl.BuildContext context) {',
    );
    buffer.indent();
    buffer.writeln(
      'final instance = context.dependOnInheritedWidgetOfExactType<Variables>();',
    );
    buffer.writeln('return instance?.data;');
    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    // of
    buffer.writeln('static VariableCollections of(fl.BuildContext context) {');
    buffer.indent();
    buffer.writeln('final data = maybeOf(context);');
    buffer.writeln("assert(data != null, 'No Variables found in context');");
    buffer.writeln('return data!;');
    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    // modeOf
    buffer.writeln('static VariableMode? modeOf(fl.BuildContext context) {');
    buffer.indent();
    buffer.writeln(
      'final instance = context.dependOnInheritedWidgetOfExactType<Variables>();',
    );
    buffer.writeln('return instance?.mode;');
    buffer.unindent();
    buffer.writeln('}');

    buffer.unindent();
    buffer.writeln('}');
  }
}
