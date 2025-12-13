import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/importers/importer.dart';

class BinaryImportOptions {
  const BinaryImportOptions();
}

class BinaryImporter extends Importer<BinaryImportOptions> {
  const BinaryImporter(this.bytes);

  factory BinaryImporter.base64(String content) {
    return BinaryImporter(base64Decode(content));
  }
  final Uint8List bytes;

  @override
  FutureOr<Library> import(BinaryImportOptions options) {
    final result = Library();
    result.mergeFromBuffer(bytes);
    return result;
  }
}
