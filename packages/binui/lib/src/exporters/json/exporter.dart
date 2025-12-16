import 'dart:async';
import 'dart:convert';

import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';

class JsonExporter extends Exporter {
  const JsonExporter();

  @override
  FutureOr<Bundle> export(ExportContext context) {
    final library = context.library;
    return Bundle(
      name: library.name,
      files: [
        StringBundleFile('library.json', jsonEncode(library.toProto3Json())),
      ],
    );
  }
}
