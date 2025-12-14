import 'package:binui/src/definitions.dart';
import 'package:binui/src/importers/figma/options.dart';
import 'package:binui/src/importers/importer.dart';

class FigmaPluginImporter extends Importer<FigmaImportOptions> {
  FigmaPluginImporter();

  @override
  Future<Library> import(ImporterContext<FigmaImportOptions> options) async {
    throw UnimplementedError('Figma plugin importer is not implemented yet.');
  }
}
