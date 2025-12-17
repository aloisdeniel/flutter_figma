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
    final fileKey = figma_api.figma.fileKey ?? 'unknown';
    final fileName = figma_api.figma.root.name;

    // Check if the selected node is a component declaration
    final selection = figma_api.figma.currentPage.selection.toDart;
    final isComponentDeclaration =
        selection.isNotEmpty &&
        selection.every(
          (node) => node.type == 'COMPONENT' || node.type == 'COMPONENT_SET',
        );

    // Always import styles and variables
    final variableCollections = await _importVariableCollections(context);
    final stylesCollection = await _importStyles(context);
    if (stylesCollection != null) {
      variableCollections.add(stylesCollection);
    }

    // Import as component or visual node based on selection type
    final components = isComponentDeclaration
        ? await _importSelectedComponents()
        : <Component>[];

    return Library(
      name: fileName,
      documentation: 'Imported from Figma file: $fileKey',
      variables: variableCollections,
      components: components,
    );
  }
}
