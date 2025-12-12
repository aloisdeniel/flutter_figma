import 'dart:async';
import 'dart:convert';

import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';
import 'package:binui/src/utils/naming.dart';

class BinaryExporter extends Exporter {
  const BinaryExporter();

  @override
  FutureOr<Bundle> export(ExportContext context) {
    final library = context.library;
    return Bundle(
      name: library.name,
      files: [
        StringBundleFile(
          'metadata.json',
          jsonEncode({
            'name': library.name,
            'version': library.version.toProto3Json(),
            'documentation': library.documentation,
          }),
        ),
        for (final item in library.components)
          StringBundleFile(
            'components/${Naming.fileName(item.name)}.json',
            jsonEncode(item.toProto3Json()),
          ),
        for (final item in library.variables)
          StringBundleFile(
            'variables/${Naming.fileName(item.name)}.json',
            jsonEncode(item.toProto3Json()),
          ),
        for (final item in library.visualNodes)
          StringBundleFile(
            'visual_nodes/${Naming.fileName(item.hashCode.toString())}.json',
            jsonEncode(item.toProto3Json()),
          ),
      ],
    );
  }
}
