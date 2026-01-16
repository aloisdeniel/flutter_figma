part of 'variables.dart';

void _generateInheritedWidget(DartBuffer buffer, FlutterExportContext context) {
  // Check if we have any multi-mode collections
  final hasMultiModeCollections = context.collections.any(
    (c) => c.variants.length > 1,
  );

  if (hasMultiModeCollections) {
    // Generate VariableMode typedef (record of all mode enums for multi-mode collections)
    _writeVariableModeTypedef(buffer, context);
    buffer.writeln();

    // Generate extension with copyWith for VariableMode
    _writeVariableModeExtension(buffer, context);
    buffer.writeln();
  }

  // Generate VariableCollections class
  _writeVariableCollectionsClass(buffer, context, hasMultiModeCollections);
  buffer.writeln();

  // Generate Variables InheritedWidget
  _writeVariablesWidget(buffer, context, hasMultiModeCollections);
}

void _writeVariableModeTypedef(
  DartBuffer buffer,
  FlutterExportContext context,
) {
  final modeFields = <String>[];
  for (final collection in context.collections) {
    // Only include multi-mode collections in the typedef
    if (collection.variants.length > 1) {
      final typeName = Naming.typeName(collection.name);
      final fieldName = Naming.fieldName(collection.name);
      modeFields.add('${typeName}Mode $fieldName');
    }
  }
  if (modeFields.isNotEmpty) {
    buffer.writeln('typedef VariableMode = ({${modeFields.join(', ')}});');
  }
}

void _writeVariableModeExtension(
  DartBuffer buffer,
  FlutterExportContext context,
) {
  final modeFields = <({String typeName, String fieldName})>[];
  for (final collection in context.collections) {
    if (collection.variants.length > 1) {
      modeFields.add((
        typeName: Naming.typeName(collection.name),
        fieldName: Naming.fieldName(collection.name),
      ));
    }
  }

  if (modeFields.isEmpty) {
    return;
  }

  buffer.writeln('extension VariableModeExtension on VariableMode {');
  buffer.indent();
  buffer.writeln('VariableMode copyWith({');
  buffer.indent();
  for (final field in modeFields) {
    buffer.writeln('${field.typeName}Mode? ${field.fieldName},');
  }
  buffer.unindent();
  buffer.writeln('}) {');
  buffer.indent();
  buffer.writeln('return (');
  buffer.indent();
  for (final field in modeFields) {
    buffer.writeln(
      '${field.fieldName}: ${field.fieldName} ?? this.${field.fieldName},',
    );
  }
  buffer.unindent();
  buffer.writeln(');');
  buffer.unindent();
  buffer.writeln('}');
  buffer.unindent();
  buffer.writeln('}');
}

void _writeVariableCollectionsClass(
  DartBuffer buffer,
  FlutterExportContext context,
  bool hasMultiModeCollections,
) {
  buffer.writeln('class VariableCollections {');
  buffer.indent();

  // Private constructor
  final constructorArgs = <String>[];
  for (final collection in context.collections) {
    final fieldName = Naming.fieldName(collection.name);
    constructorArgs.add('required this.$fieldName');
  }
  buffer.writeln(
    'const VariableCollections._({${constructorArgs.join(', ')}});',
  );
  buffer.writeln();

  // Factory - different signature based on whether we have multi-mode collections
  if (hasMultiModeCollections) {
    buffer.writeln(
      'factory VariableCollections.fromModes(VariableMode mode) {',
    );
  } else {
    buffer.writeln('factory VariableCollections() {');
  }
  buffer.indent();

  // Create data instances for each collection
  for (final collection in context.collections) {
    final typeName = Naming.typeName(collection.name);
    final fieldName = Naming.fieldName(collection.name);
    if (collection.variants.length > 1) {
      // Multi-mode: use fromMode with mode parameter
      buffer.writeln(
        'final $fieldName = ${typeName}Data.fromMode(mode.$fieldName);',
      );
    } else {
      // Single-mode: just instantiate directly
      buffer.writeln('final $fieldName = ${typeName}Data();');
    }
  }
  buffer.writeln();

  // Resolve aliases - need to determine which collections alias which
  final aliasAssignments = _buildAliasAssignments(buffer, context);
  if (aliasAssignments.isNotEmpty) {
    buffer.writeln('// Resolving aliases');
    for (final assignment in aliasAssignments) {
      buffer.writeln(assignment);
    }
    buffer.writeln();
  }

  // Return statement
  final returnArgs = <String>[];
  for (final collection in context.collections) {
    final fieldName = Naming.fieldName(collection.name);
    returnArgs.add('$fieldName: $fieldName');
  }
  buffer.writeln('return VariableCollections._(${returnArgs.join(', ')});');

  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  // Fields
  for (final collection in context.collections) {
    final typeName = Naming.typeName(collection.name);
    final fieldName = Naming.fieldName(collection.name);
    buffer.writeln('final ${typeName}Data $fieldName;');
  }

  buffer.unindent();
  buffer.writeln('}');
}

/// Builds alias assignment statements by analyzing which collections
/// reference which other collections.
List<String> _buildAliasAssignments(
  DartBuffer buffer,
  FlutterExportContext context,
) {
  final assignments = <String>[];

  for (final collection in context.collections) {
    // Collect alias information
    final aliasedCollections = context.collectAliasedCollectionsMap(collection);

    if (aliasedCollections.isNotEmpty) {
      final collectionFieldName = Naming.fieldName(collection.name);
      final aliasFields = <String>[];

      for (final entry in aliasedCollections.entries) {
        final collectionName = entry.value;
        final fieldName = Naming.fieldName(collectionName);
        aliasFields.add('$fieldName: $fieldName');
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

void _writeVariablesWidget(
  DartBuffer buffer,
  FlutterExportContext context,
  bool hasMultiModeCollections,
) {
  buffer.writeln('class Variables extends fl.InheritedWidget {');
  buffer.indent();

  if (hasMultiModeCollections) {
    // Constructor with mode parameter
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
  } else {
    // Constructor without mode parameter (all single-mode)
    buffer.writeln('Variables({super.key, required super.child})');
    buffer.indent();
    buffer.writeln(': data = VariableCollections();');
    buffer.unindent();
    buffer.writeln();

    // Fields
    buffer.writeln('final VariableCollections data;');
  }
  buffer.writeln();

  // updateShouldNotify
  buffer.writeln('@override');
  buffer.writeln('bool updateShouldNotify(covariant Variables oldWidget) {');
  buffer.indent();
  if (hasMultiModeCollections) {
    buffer.writeln('return mode != oldWidget.mode;');
  } else {
    buffer.writeln('return false;');
  }
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

  if (hasMultiModeCollections) {
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
  }

  buffer.unindent();
  buffer.writeln('}');
}
