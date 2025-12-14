import 'dart:async';
import 'dart:convert';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/importers/importer.dart';

class JsonImportOptions {
  const JsonImportOptions();
}

class JsonImporter extends Importer<JsonImportOptions> {
  const JsonImporter(this.content);

  final String content;

  @override
  FutureOr<Library> import(JsonImportOptions options) {
    final result = Library();
    result.mergeFromProto3Json(jsonDecode(content));
    return result;
  }
}
