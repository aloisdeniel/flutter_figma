import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/variables.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';

enum VariableCollectionDataStructure { flat, tree }

class FlutterExportContext {
  const FlutterExportContext({
    required this.collections,
    this.currentCollectionId,
    this.naming = const (root: 'Variables'),
    this.collectionStructure = VariableCollectionDataStructure.flat,
  });
  final ({String root}) naming;
  final List<VariableCollection> collections;
  final int? currentCollectionId;
  final VariableCollectionDataStructure collectionStructure;

  /// Returns a new context with the specified current collection ID.
  ///
  /// This affects how aliased variables are referenced.
  FlutterExportContext withCurrentCollectionId(int collectionId) {
    return FlutterExportContext(
      collections: collections,
      currentCollectionId: collectionId,
      naming: naming,
      collectionStructure: collectionStructure,
    );
  }

  /// Collects aliased collections as a map of collectionId -> collectionName.
  Map<int, String> collectAliasedCollectionsMap(VariableCollection definition) {
    final aliasedCollections = <int, String>{};
    void addAliasedCollection(Alias alias) {
      if (alias.whichType() == Alias_Type.variable) {
        final collectionId = alias.variable.collectionId;
        if (collectionId != definition.id &&
            !aliasedCollections.containsKey(collectionId)) {
          final collection = collections.findVariableCollection(collectionId);
          if (collection != null) {
            aliasedCollections[collectionId] = collection.name;
          }
        }
      }
    }

    for (final variant in definition.variants) {
      for (var i = 0; i < variant.values.length; i++) {
        final value = variant.values[i];
        final aliases = value.getDescendantAliases();
        if (aliases.isNotEmpty) {
          for (final alias in aliases) {
            addAliasedCollection(alias);
          }
        }
      }
    }
    return aliasedCollections;
  }
}

class FlutterExporter {
  String exportVariableCollections(FlutterExportContext context) {
    final buffer = DartBuffer();

    buffer.writeln("import 'dart:ui' as ui;");
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln();

    final exporter = VariablesDartExporter();
    exporter.serialize(context, buffer);

    return buffer.toString();
  }
}
