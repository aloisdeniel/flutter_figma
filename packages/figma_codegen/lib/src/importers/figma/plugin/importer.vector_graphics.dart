import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';
import 'package:figma_codegen/src/importers/context.dart';
import 'package:figma_codegen/src/importers/figma/base.dart';

class FigmaVectorNetworksImporter {
  const FigmaVectorNetworksImporter();

  Future<List<VectorNetwork>> import(
    ImportContext<FigmaImportOptions> context,
  ) async {
    // TODO import the selected vector graphics from Figma and convert the vector nodes networks
    // into VectorNetwork instances.
    //
    // If multiple component definitions are selected, then create a VectorNetwork for each of them.
    // Else the list returns only one element.
    return const [];
  }
}
