import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';

class FigmaImporter extends FigmaImporterBase {
  const FigmaImporter();

  @override
  Future<List<VariableCollection>> importVariableCollections(
    ImportContext<FigmaImportOptions> context,
  ) async {
    throw UnimplementedError('Figma API importer is not implemented yet.');
  }
}
