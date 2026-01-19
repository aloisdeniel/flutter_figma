import 'package:figma_codegen/src/definitions/library.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';

class FigmaImporter extends FigmaImporterBase {
  const FigmaImporter();

  @override
  Future<Library> import(ImportContext<FigmaImportOptions> context) async {
    throw UnimplementedError('Figma API importer is not implemented yet.');
  }
}
