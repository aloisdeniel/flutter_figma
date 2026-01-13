import 'dart:convert';

import 'package:figma_codegen/src/definitions/variables.pb.dart';

class JsonImporter {
  const JsonImporter();

  Future<List<VariableCollection>> importVariableCollections(
    String content,
  ) async {
    final decoded = jsonDecode(content);
    if (decoded is! List<dynamic>) {
      throw FormatException('Expected a JSON array of VariableCollections.');
    }

    return decoded
        .map<VariableCollection>((item) {
          if (item is! Map<String, dynamic>) {
            throw FormatException(
              'Expected each item to be a JSON object representing a VariableCollection.',
            );
          }
          return VariableCollection()..mergeFromProto3Json(item);
        })
        .whereType<VariableCollection>()
        .toList();
  }
}
