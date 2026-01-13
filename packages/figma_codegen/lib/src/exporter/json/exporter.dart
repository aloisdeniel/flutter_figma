import 'dart:convert';

import 'package:figma_codegen/src/definitions/variables.pb.dart';

class JsonExporter {
  String exportVariableCollections(List<VariableCollection> collections) {
    final jsonCollections = <Object>[];

    for (final collection in collections) {
      final jsonCollection = collection.toProto3Json();
      if (jsonCollection case final jsonCollection?) {
        jsonCollections.add(jsonCollection);
      }
    }

    return jsonEncode(jsonCollections);
  }
}
