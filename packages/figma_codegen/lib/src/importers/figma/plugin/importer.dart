import 'package:figma_codegen/src/definitions/library.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';
import 'package:figma_codegen/src/importers/figma/plugin/importer.variables.dart';
import 'package:figma_codegen/src/importers/figma/plugin/importer.vector_graphics.dart';

class FigmaImporter extends FigmaImporterBase {
  const FigmaImporter();

  @override
  Future<Library> import(ImportContext<FigmaImportOptions> context) async {
    final collections = await FigmaVariablesImporter().import(context);
    final vectorNetworks = await FigmaVectorNetworksImporter().import(context);
    return Library(variables: collections, vectorGraphics: vectorNetworks);
  }
}
