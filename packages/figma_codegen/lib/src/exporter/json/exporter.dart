import 'dart:convert';

import 'package:figma_codegen/src/definitions/library.dart';

class JsonExportContext {
  const JsonExportContext({required this.prettyPrint, required this.library});
  final bool prettyPrint;
  final Library library;
}

class JsonExporter {
  String export(JsonExportContext context) {
    final jsonCollections = <Object>[];

    for (final collection in context.library.variables) {
      final jsonCollection = collection.toProto3Json();
      if (jsonCollection case final jsonCollection?) {
        jsonCollections.add(jsonCollection);
      }
    }

    final jsonVectorGraphics = <Object>[];

    for (final vectorGraphics in context.library.vectorGraphics) {
      final jsonVector = vectorGraphics.toProto3Json();
      if (jsonVector case final jsonVector?) {
        jsonVectorGraphics.add(jsonVector);
      }
    }

    final jsonComponents = <Object>[];

    for (final component in context.library.components) {
      final jsonComponent = component.toProto3Json();
      if (jsonComponent case final jsonComponent?) {
        jsonComponents.add(jsonComponent);
      }
    }
    final result = {
      'variables': jsonCollections,
      'vectorGraphics': jsonVectorGraphics,
      'components': jsonComponents,
    };

    if (context.prettyPrint) {
      return const JsonEncoder.withIndent('  ').convert(result);
    }
    return jsonEncode(result);
  }
}
