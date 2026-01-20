import 'dart:convert';

import 'package:figma_codegen/src/definitions/library.dart';

class JsonExportContext {
  const JsonExportContext({required this.prettyPrint, required this.library});
  final bool prettyPrint;
  final Library library;
}

class JsonExporter {
  String exportVariableCollections(JsonExportContext context) {
    final jsonCollections = <Object>[];

    for (final collection in context.library.variables) {
      final jsonCollection = collection.toProto3Json();
      if (jsonCollection case final jsonCollection?) {
        jsonCollections.add(jsonCollection);
      }
    }

    if (context.prettyPrint) {
      return const JsonEncoder.withIndent('  ').convert(jsonCollections);
    }

    return jsonEncode(jsonCollections);
  }

  String exportVectorGraphics(JsonExportContext context) {
    final jsonCollections = <Object>[];

    for (final collection in context.library.vectorGraphics) {
      final jsonCollection = collection.toProto3Json();
      if (jsonCollection case final jsonCollection?) {
        jsonCollections.add(jsonCollection);
      }
    }

    if (context.prettyPrint) {
      return const JsonEncoder.withIndent('  ').convert(jsonCollections);
    }

    return jsonEncode(jsonCollections);
  }
}
