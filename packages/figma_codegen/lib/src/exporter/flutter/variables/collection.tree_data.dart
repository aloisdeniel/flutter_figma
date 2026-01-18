import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';
import 'package:figma_codegen/src/utils/dart/dart.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

class CollectionTreeVariable {
  const CollectionTreeVariable(this.name, this.variable, this.variants);
  final String name;
  final VariableCollectionEntry variable;
  final List<Value> variants;
}

class CollectionTreeNode {
  const CollectionTreeNode(
    this.name, {
    this.variables = const [],
    this.variants = const [],
    this.children = const {},
  });

  // Groups all variables by segments in their names seperated by '/' and builds a tree structure.
  factory CollectionTreeNode.fromCollection(VariableCollection definition) {
    final root = CollectionTreeNode(
      definition.name,
      variables: <CollectionTreeVariable>[],
      variants: definition.variants,
      children: <String, CollectionTreeNode>{},
    );

    for (var i = 0; i < definition.variables.length; i++) {
      final variable = definition.variables[i];
      final segments = variable.name
          .split('/')
          .map((segment) => segment.trim())
          .where((segment) => segment.isNotEmpty)
          .toList();
      final leafName = segments.isNotEmpty
          ? segments.last
          : variable.name.trim();

      final variantValues = <Value>[];
      for (final variant in definition.variants) {
        if (i < variant.values.length) {
          variantValues.add(variant.values[i]);
        }
      }

      final treeVariable = CollectionTreeVariable(
        leafName,
        variable,
        variantValues,
      );

      var node = root;
      for (var j = 0; j < segments.length - 1; j++) {
        final segment = segments[j];
        node = node.children.putIfAbsent(
          segment,
          () => CollectionTreeNode(
            segment,
            variables: <CollectionTreeVariable>[],
            variants: definition.variants,
            children: <String, CollectionTreeNode>{},
          ),
        );
      }
      node.variables.add(treeVariable);
    }

    return root;
  }
  final String name;
  final List<CollectionTreeVariable> variables;
  final List<VariableCollectionVariant> variants;
  final Map<String, CollectionTreeNode> children;
}

void writeTreeCollectionDataClasse(
  FlutterExportContext context,
  DartBuffer buffer,
  VariableCollection definition,
) {
  final root = CollectionTreeNode.fromCollection(definition);
  final baseTypeName = Naming.typeName(definition.name);
  final dataClassName = '${baseTypeName}Data';
  final aliasedCollections = context.collectAliasedCollectionsMap(definition);

  String nodeTypeName(List<String> pathSegments) {
    if (pathSegments.isEmpty) {
      return dataClassName;
    }
    final segmentType = Naming.typeName(pathSegments.join(' '));
    return '${dataClassName}$segmentType';
  }

  String nodeFieldName(String segment) {
    return Naming.fieldName(segment);
  }

  void writeAliasField({required bool isLate}) {
    if (aliasedCollections.isEmpty) return;
    final aliasFields = <String>[];
    for (final entry in aliasedCollections.entries) {
      final collectionName = entry.value;
      final typeName = '${Naming.typeName(collectionName)}Data';
      final fieldName = Naming.fieldName(collectionName);
      aliasFields.add('$typeName $fieldName');
    }
    final modifier = isLate ? 'late ' : 'final ';
    buffer.writeln('${modifier}({${aliasFields.join(', ')}}) alias;');
    if (isLate) {
      buffer.writeln();
    }
  }

  void writeVariantEnum() {
    if (definition.variants.length <= 1) return;
    final modeValues = <String>[];
    for (var variant in definition.variants) {
      modeValues.add(Naming.fieldName(variant.name));
    }
    final modeEnum = DartEnum(name: '${baseTypeName}Mode', values: modeValues);
    buffer.writeEnum(modeEnum);
    buffer.writeln();
  }

  void writeSingleModeLeafFields(CollectionTreeNode node) {
    for (final variable in node.variables) {
      final value = variable.variants.first;
      final name = Naming.fieldName(variable.name);
      final serializedValue = const FlutterValueExporter().serialize(
        context,
        value,
        value.whichType(),
      );
      final aliases = value.getDescendantAliases();
      if (aliases.isNotEmpty) {
        buffer.writeln('late final $name = $serializedValue;');
      } else {
        buffer.writeln('final $name = $serializedValue;');
      }
    }
  }

  String? serializedAliasValue(Value value) {
    final alias = value.getAlias();
    if (alias != null && alias.whichType() == Alias_Type.variable) {
      final varAlias = alias.variable;
      final targetCollection = context.collections.findVariableCollection(
        varAlias.collectionId,
      );
      if (targetCollection == null) return null;
      final targetVariable = targetCollection.findEntry(varAlias.variableId);
      if (targetVariable == null) return null;
      final collectionFieldName = Naming.fieldName(targetCollection.name);
      final variableFieldName = Naming.fieldName(targetVariable.name);
      return 'alias.$collectionFieldName.$variableFieldName';
    }
    return null;
  }

  void writeMultiModeLeafGetter(
    CollectionTreeVariable variable,
    VariableCollectionVariant variant,
  ) {
    final name = Naming.fieldName(variable.name);
    buffer.writeln();
    buffer.writeln('@override');
    final value = variable.variants[definition.variants.indexOf(variant)];
    final aliasValue = serializedAliasValue(value);
    if (aliasValue != null) {
      buffer.writeln('get $name => $aliasValue;');
      return;
    }
    final serializedValue = const FlutterValueExporter().serialize(
      context,
      value,
      value.whichType(),
    );
    buffer.writeln('final $name = $serializedValue;');
  }

  void writeAbstractLeafGetters(CollectionTreeNode node) {
    for (final variable in node.variables) {
      final defaultValue = variable.variants.first;
      final name = Naming.fieldName(variable.name);
      final type = FlutterValueExporter.mapTypeName(defaultValue.whichType());
      buffer.writeln('$type get $name;');
    }
  }

  void writeChildrenGetters(
    CollectionTreeNode node,
    List<String> pathSegments,
    bool useOverride, {
    VariableCollectionVariant? variant,
  }) {
    final childEntries = node.children.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    for (final entry in childEntries) {
      final childSegment = entry.key;
      final childTypeName = nodeTypeName([...pathSegments, childSegment]);
      final fieldName = nodeFieldName(childSegment);
      if (useOverride) {
        buffer.writeln();
        buffer.writeln('@override');
        final implementationType = variant == null
            ? childTypeName
            : '_${childTypeName.replaceFirst(dataClassName, '')}${Naming.typeName(variant.name)}';
        final constructorArgs = variant != null && aliasedCollections.isNotEmpty
            ? '(alias: alias)'
            : '()';
        buffer.writeln(
          'final $childTypeName $fieldName = $implementationType$constructorArgs;',
        );
      } else {
        buffer.writeln('$childTypeName get $fieldName;');
      }
    }
  }

  void writeSingleModeNode(CollectionTreeNode node, List<String> pathSegments) {
    final typeName = nodeTypeName(pathSegments);
    buffer.writeln('class $typeName {');
    buffer.indent();
    buffer.writeln('$typeName();');
    buffer.writeln();

    if (pathSegments.isEmpty) {
      writeAliasField(isLate: true);
    }

    writeChildrenGetters(node, pathSegments, true);
    if (node.children.isNotEmpty && node.variables.isNotEmpty) {
      buffer.writeln();
    }
    writeSingleModeLeafFields(node);

    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    final childEntries = node.children.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    for (final entry in childEntries) {
      writeSingleModeNode(entry.value, [...pathSegments, entry.key]);
    }
  }

  void writeMultiModeBaseNode(
    CollectionTreeNode node,
    List<String> pathSegments,
    bool includeFactory,
  ) {
    final typeName = nodeTypeName(pathSegments);
    buffer.writeln('sealed class $typeName {');
    buffer.indent();
    buffer.writeln('$typeName();');
    buffer.writeln();

    if (includeFactory) {
      buffer.writeln('factory $typeName.fromMode(${baseTypeName}Mode mode) {');
      buffer.indent();
      buffer.writeln('switch (mode) {');
      buffer.indent();
      for (final variant in definition.variants) {
        final variantEnumValue = Naming.fieldName(variant.name);
        final variantClassName =
            '_${typeName.replaceFirst(dataClassName, '')}${Naming.typeName(variant.name)}';
        buffer.writeln('case ${baseTypeName}Mode.$variantEnumValue:');
        buffer.indent();
        if (aliasedCollections.isNotEmpty) {
          buffer.writeln('return $variantClassName(alias: alias);');
        } else {
          buffer.writeln('return $variantClassName();');
        }
        buffer.unindent();
      }
      buffer.unindent();
      buffer.writeln('}');
      buffer.unindent();
      buffer.writeln('}');
      buffer.writeln();

      writeAliasField(isLate: true);
    }

    writeChildrenGetters(node, pathSegments, false);
    if (node.children.isNotEmpty && node.variables.isNotEmpty) {
      buffer.writeln();
    }
    writeAbstractLeafGetters(node);

    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    final childEntries = node.children.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    for (final entry in childEntries) {
      writeMultiModeBaseNode(entry.value, [...pathSegments, entry.key], false);
    }
  }

  void writeMultiModeVariantNode(
    CollectionTreeNode node,
    List<String> pathSegments,
    VariableCollectionVariant variant,
  ) {
    final baseTypeNameLocal = nodeTypeName(pathSegments);
    final variantTypeSuffix = Naming.typeName(variant.name);
    final variantClassName =
        '_${baseTypeNameLocal.replaceFirst(dataClassName, '')}$variantTypeSuffix';
    buffer.writeln('class $variantClassName extends $baseTypeNameLocal {');
    buffer.indent();
    if (aliasedCollections.isNotEmpty) {
      buffer.writeln('$variantClassName({required this.alias});');
      writeAliasField(isLate: false);
      buffer.writeln();
    } else {
      buffer.writeln('$variantClassName();');
    }

    writeChildrenGetters(node, pathSegments, true, variant: variant);
    for (final variable in node.variables) {
      writeMultiModeLeafGetter(variable, variant);
    }

    buffer.unindent();
    buffer.writeln('}');
    buffer.writeln();

    final childEntries = node.children.entries.toList()
      ..sort((a, b) => a.key.compareTo(b.key));
    for (final entry in childEntries) {
      writeMultiModeVariantNode(entry.value, [
        ...pathSegments,
        entry.key,
      ], variant);
    }
  }

  writeVariantEnum();

  if (definition.variants.length == 1) {
    writeSingleModeNode(root, const []);
    return;
  }

  writeMultiModeBaseNode(root, const [], true);
  for (final variant in definition.variants) {
    writeMultiModeVariantNode(root, const [], variant);
  }
}
