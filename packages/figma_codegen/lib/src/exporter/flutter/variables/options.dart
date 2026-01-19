import 'package:figma_codegen/src/definitions/variables.dart';

enum VariableCollectionDataStructure { flat, tree }

class FlutterVariablesExportOptions {
  const FlutterVariablesExportOptions({
    required this.collections,
    this.currentCollectionId,
    this.naming = const (root: 'Variables'),
    this.collectionStructure = VariableCollectionDataStructure.flat,
    this.useGoogleFonts = false,
  });

  final ({String root}) naming;
  final List<VariableCollection> collections;
  final int? currentCollectionId;
  final VariableCollectionDataStructure collectionStructure;
  final bool useGoogleFonts;

  FlutterVariablesExportOptions copyWith({
    ({String root})? naming,
    List<VariableCollection>? collections,
    int? currentCollectionId,
    VariableCollectionDataStructure? collectionStructure,
    bool? useGoogleFonts,
  }) {
    return FlutterVariablesExportOptions(
      naming: naming ?? this.naming,
      collections: collections ?? this.collections,
      currentCollectionId: currentCollectionId ?? this.currentCollectionId,
      collectionStructure: collectionStructure ?? this.collectionStructure,
      useGoogleFonts: useGoogleFonts ?? this.useGoogleFonts,
    );
  }

  /// Returns a new context with the specified current collection ID.
  ///
  /// This affects how aliased variables are referenced.
  FlutterVariablesExportOptions withCurrentCollectionId(int collectionId) {
    return FlutterVariablesExportOptions(
      collections: collections,
      currentCollectionId: collectionId,
      naming: naming,
      collectionStructure: collectionStructure,
      useGoogleFonts: useGoogleFonts,
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
