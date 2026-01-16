part of 'variables.dart';

void _generateInheritedWidget(DartBuffer buffer, FlutterExportContext context) {
  final rootTypeName = _rootTypeName(context);
  final rootSingularTypeName = _rootSingularTypeName(context);

  // Check if we have any multi-mode collections
  final hasMultiModeCollections = context.collections.any(
    (c) => c.variants.length > 1,
  );

  if (hasMultiModeCollections) {
    // Generate mode typedef (record of all mode enums for multi-mode collections)
    _writeVariableModeTypedef(buffer, context, rootSingularTypeName);
    buffer.writeln();

    // Generate extension with copyWith for mode
    _writeVariableModeExtension(buffer, context, rootSingularTypeName);
    buffer.writeln();
  }

  // Generate collections class
  _writeVariableCollectionsClass(
    buffer,
    context,
    hasMultiModeCollections,
    rootSingularTypeName,
  );
  buffer.writeln();

  // Generate root InheritedWidget
  _writeVariablesWidget(
    buffer,
    context,
    hasMultiModeCollections,
    rootTypeName,
    rootSingularTypeName,
  );
}

String _rootTypeName(FlutterExportContext context) {
  return Naming.typeName(context.naming.root);
}

String _rootSingularTypeName(FlutterExportContext context) {
  final rootTypeName = _rootTypeName(context);
  if (rootTypeName.endsWith('s') && rootTypeName.length > 1) {
    return rootTypeName.substring(0, rootTypeName.length - 1);
  }
  return rootTypeName;
}

void _writeVariableModeTypedef(
  DartBuffer buffer,
  FlutterExportContext context,
  String rootSingularTypeName,
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
    buffer.writeln(
      'typedef ${rootSingularTypeName}Mode = ({${modeFields.join(', ')}});',
    );
  }
}

void _writeVariableModeExtension(
  DartBuffer buffer,
  FlutterExportContext context,
  String rootSingularTypeName,
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

  buffer.writeln(
    'extension ${rootSingularTypeName}ModeExtension on ${rootSingularTypeName}Mode {',
  );
  buffer.indent();
  buffer.writeln('${rootSingularTypeName}Mode copyWith({');
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
  String rootSingularTypeName,
) {
  buffer.writeln('class ${rootSingularTypeName}Collections {');
  buffer.indent();

  // Private constructor
  final constructorArgs = <String>[];
  for (final collection in context.collections) {
    final fieldName = Naming.fieldName(collection.name);
    constructorArgs.add('required this.$fieldName');
  }
  buffer.writeln(
    'const ${rootSingularTypeName}Collections._({${constructorArgs.join(', ')}});',
  );
  buffer.writeln();

  // Factory - different signature based on whether we have multi-mode collections
  if (hasMultiModeCollections) {
    buffer.writeln(
      'factory ${rootSingularTypeName}Collections.fromModes(${rootSingularTypeName}Mode mode) {',
    );
  } else {
    buffer.writeln('factory ${rootSingularTypeName}Collections() {');
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
  buffer.writeln(
    'return ${rootSingularTypeName}Collections._(${returnArgs.join(', ')});',
  );

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
  String rootTypeName,
  String rootSingularTypeName,
) {
  buffer.writeln('class ${rootTypeName} extends fl.InheritedWidget {');
  buffer.indent();

  if (hasMultiModeCollections) {
    // Constructor with mode parameter
    buffer.writeln(
      '${rootTypeName}({super.key, required super.child, required this.mode})',
    );
    buffer.indent();
    buffer.writeln(
      ': data = ${rootSingularTypeName}Collections.fromModes(mode);',
    );
    buffer.unindent();
    buffer.writeln();

    // Fields
    buffer.writeln('final ${rootSingularTypeName}Mode mode;');
    buffer.writeln('final ${rootSingularTypeName}Collections data;');
    buffer.writeln();

    // Factory override constructor
    buffer.writeln('factory ${rootTypeName}.override(');
    buffer.indent();
    buffer.writeln('fl.BuildContext context, {');
    buffer.indent();
    buffer.writeln('fl.Key? key,');
    buffer.writeln('required fl.Widget child,');
    for (final collection in context.collections) {
      if (collection.variants.length > 1) {
        final typeName = Naming.typeName(collection.name);
        final fieldName = Naming.fieldName(collection.name);
        buffer.writeln('${typeName}Mode? $fieldName,');
      }
    }
    buffer.unindent();
    buffer.writeln('}) {');
    buffer.indent();
    buffer.writeln('final mode = ${rootTypeName}.modeOf(context);');
    buffer.writeln('return ${rootTypeName}(');
    buffer.indent();
    buffer.writeln('key: key,');
    buffer.writeln('mode: mode!.copyWith(');
    buffer.indent();
    for (final collection in context.collections) {
      if (collection.variants.length > 1) {
        final fieldName = Naming.fieldName(collection.name);
        buffer.writeln('$fieldName: $fieldName,');
      }
    }
    buffer.unindent();
    buffer.writeln('),');
    buffer.writeln('child: child,');
    buffer.unindent();
    buffer.writeln(');');
    buffer.unindent();
    buffer.writeln('}');
    buffer.unindent();
  } else {
    // Constructor without mode parameter (all single-mode)
    buffer.writeln('${rootTypeName}({super.key, required super.child})');
    buffer.indent();
    buffer.writeln(': data = ${rootSingularTypeName}Collections();');
    buffer.unindent();
    buffer.writeln();

    // Fields
    buffer.writeln('final ${rootSingularTypeName}Collections data;');
  }
  buffer.writeln();

  // updateShouldNotify
  buffer.writeln('@override');
  buffer.writeln(
    'bool updateShouldNotify(covariant ${rootTypeName} oldWidget) {',
  );
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
    'static ${rootSingularTypeName}Collections? maybeOf(fl.BuildContext context) {',
  );
  buffer.indent();
  buffer.writeln(
    'final instance = context.dependOnInheritedWidgetOfExactType<${rootTypeName}>();',
  );
  buffer.writeln('return instance?.data;');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();

  // of
  buffer.writeln(
    'static ${rootSingularTypeName}Collections of(fl.BuildContext context) {',
  );
  buffer.indent();
  buffer.writeln('final data = maybeOf(context);');
  buffer.writeln(
    "assert(data != null, 'No ${rootTypeName} found in context');",
  );
  buffer.writeln('return data!;');
  buffer.unindent();
  buffer.writeln('}');

  if (hasMultiModeCollections) {
    buffer.writeln();
    // modeOf
    buffer.writeln(
      'static ${rootSingularTypeName}Mode? modeOf(fl.BuildContext context) {',
    );
    buffer.indent();
    buffer.writeln(
      'final instance = context.dependOnInheritedWidgetOfExactType<${rootTypeName}>();',
    );
    buffer.writeln('return instance?.mode;');
    buffer.unindent();
    buffer.writeln('}');
  }

  buffer.unindent();
  buffer.writeln('}');
}
