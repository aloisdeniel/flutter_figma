import 'dart:async';
import 'dart:convert';

import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';

class JsonExportOptions {
  const JsonExportOptions({this.prettyPrint = false});

  final bool prettyPrint;
}

class JsonExportContext extends ExportContext {
  const JsonExportContext(
    super.library, [
    this.options = const JsonExportOptions(),
  ]);

  final JsonExportOptions options;
}

class JsonExporter extends Exporter<JsonExportContext> {
  const JsonExporter();

  @override
  FutureOr<Bundle> export(JsonExportContext context) {
    final library = context.library;
    final json = library.toProto3Json();

    final String content;
    if (context.options.prettyPrint) {
      content = const JsonEncoder.withIndent('  ').convert(json);
    } else {
      content = jsonEncode(json);
    }

    return Bundle(
      name: library.name,
      files: [StringBundleFile('library.json', content)],
    );
  }
}
