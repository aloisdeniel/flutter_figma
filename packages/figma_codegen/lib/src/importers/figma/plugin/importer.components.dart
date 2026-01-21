import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';

class FigmaComponentsImporter {
  const FigmaComponentsImporter();

  Future<List<Component>> import(
    ImportContext<FigmaImportOptions> context,
  ) async {
    // TODO import all component definitions from Figma
    throw UnimplementedError();
  }
}
