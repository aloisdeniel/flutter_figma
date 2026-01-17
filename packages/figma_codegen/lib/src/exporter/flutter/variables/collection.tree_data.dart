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
    throw UnimplementedError();
  }
  final String name;
  final List<VariableCollectionEntry> variables;
  final List<VariableCollectionVariant> variants;
  final Map<String, CollectionTreeNode> children;
}

void writeTreeCollectionDataClasse(
  FlutterExportContext context,
  DartBuffer buffer,
  VariableCollection definition,
) {
  final root = CollectionTreeNode.fromCollection(definition);
  // TODO
  // Generates a tree-structured class for collections with hierarchical variable names.
  // It should lools like the flat alternative for the leaf nodes, but creates intermediate
  // abstract classes and implementations for each tree node to allow a hierarchical access.
  throw UnimplementedError();
}
