import 'dart:js_interop';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/importers/importer.dart';
import 'package:binui/src/importers/figma_plugin/figma.dart' as figma_api;

part 'importer.components.dart';
part 'importer.variables.dart';
part 'importer.visual_nodes.dart';

class FigmaPluginImporter extends Importer {
  FigmaPluginImporter();

  @override
  Future<Library> import() async {
    final fileKey = figma_api.figma.fileKey ?? 'unknown';
    final fileName = figma_api.figma.root.name;

    final components = await _importComponents();
    final variableCollections = await _importVariableCollections();
    final visualNodes = await _importSelectedVisualNodes();

    return Library(
      name: fileName,
      documentation: 'Imported from Figma file: $fileKey',
      variables: variableCollections,
      components: components,
      visualNodes: visualNodes,
    );
  }
}
