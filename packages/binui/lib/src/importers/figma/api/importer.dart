import 'package:binui/binui.dart';

class FigmaPluginImporter extends Importer {
  FigmaPluginImporter();

  @override
  Future<Library> import() async {
    // TODO
    return Library(name: '', documentation: 'Imported from Figma file');
  }
}
