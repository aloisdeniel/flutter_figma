import 'dart:convert';

import 'package:figma_codegen/src/definitions/variables.pb.dart';

class JsonExportContext {
  const JsonExportContext({
    required this.prettyPrint,
    required this.collections,
  });
  final bool prettyPrint;
  final List<VariableCollection> collections;
}

class JsonExporter {
  String exportVariableCollections(JsonExportContext context) {
    final jsonCollections = <Object>[];

    for (final collection in context.collections) {
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
