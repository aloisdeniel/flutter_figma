import 'dart:async';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';

class BinaryExporter extends Exporter {
  const BinaryExporter({this.filename = 'library.bin'});

  final String filename;

  @override
  FutureOr<Bundle> export(Library library) {
    final content = library.writeToBuffer();
    return Bundle(
      name: library.name,
      files: [BinaryBundleFile('library.bin', content)],
    );
  }
}
