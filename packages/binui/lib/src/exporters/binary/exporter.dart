import 'dart:async';
import 'dart:convert';

import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';

enum BinaryFormat { bytes, base64 }

class BinaryExporter extends Exporter {
  const BinaryExporter({
    this.filename = 'library.bin',
    this.format = BinaryFormat.bytes,
  });

  final String filename;
  final BinaryFormat format;

  @override
  FutureOr<Bundle> export(ExportContext context) {
    final content = context.library.writeToBuffer();
    return Bundle(
      name: context.library.name,
      files: [
        switch (format) {
          BinaryFormat.bytes => BinaryBundleFile('library.bin', content),
          BinaryFormat.base64 => StringBundleFile(
            'library.base64',
            base64Encode(content),
          ),
        },
      ],
    );
  }
}
