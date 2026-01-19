import 'package:figma_codegen/src/definitions/library.dart';
import 'package:figma_codegen/src/importers/context.dart';

class FigmaImportOptions {
  const FigmaImportOptions({
    this.importStyles = true,
    this.fileKey,
    this.personalAccessToken,
    this.naming = const (stylesCollection: 'Styles'),
  });

  /// Whether to import styles from the Figma file as a "Styles" collection.
  final bool importStyles;

  /// Naming options for the imported collections.
  final ({String stylesCollection}) naming;

  /// The Figma file key to import from.
  ///
  /// Only required when importing from the Figma API.
  final String? fileKey;

  /// The personal access token to use for authentication.
  ///
  /// Only required when importing from the Figma API.
  final String? personalAccessToken;
}

abstract class FigmaImporterBase {
  const FigmaImporterBase();

  Future<Library> import(ImportContext<FigmaImportOptions> context);
}
