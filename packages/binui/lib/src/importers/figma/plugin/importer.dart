import 'dart:js_interop';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/importers/figma/options.dart';
import 'package:binui/src/importers/importer.dart';
import 'package:binui/src/importers/figma/plugin/figma.dart' as figma_api;

part 'importer.components.dart';
part 'importer.styles.dart';
part 'importer.variables.dart';
part 'importer.visual_nodes.dart';

class FigmaPluginImporter extends Importer<FigmaImportOptions> {
  FigmaPluginImporter();

  @override
  Future<Library> import(ImporterContext<FigmaImportOptions> context) async {
    final options = context.options;

    final fileKey = figma_api.figma.fileKey ?? 'unknown';
    final fileName = figma_api.figma.root.name;

    final components = options.components
        ? await _importComponents()
        : <Component>[];
    final variableCollections = options.variables
        ? await _importVariableCollections(context)
        : <VariableCollection>[];
    final visualNodes = options.visualNodes
        ? await _importSelectedVisualNodes()
        : <VisualNode>[];

    // Import styles as a dedicated variable collection
    if (options.styles) {
      final stylesCollection = await _importStyles();
      if (stylesCollection != null) {
        variableCollections.add(stylesCollection);
      }
    }

    return Library(
      name: fileName,
      documentation: 'Imported from Figma file: $fileKey',
      variables: variableCollections,
      components: components,
      visualNodes: visualNodes,
    );
  }
}
