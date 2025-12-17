import 'dart:convert';
import 'dart:typed_data';

import 'package:archive/archive.dart';

class Bundle {
  const Bundle({required this.name, required this.files});
  final String name;
  final List<BundleFile> files;

  /// Serializes the bundle as a zip archive.
  ///
  /// Returns the zip file contents as a [Uint8List].
  Uint8List toZip() {
    final archive = Archive();

    for (final file in files) {
      final Uint8List bytes = switch (file) {
        StringBundleFile(:final content) => Uint8List.fromList(
          utf8.encode(content),
        ),
        BinaryBundleFile(:final content) => content,
      };

      archive.addFile(ArchiveFile(file.path, bytes.length, bytes));
    }

    final encoder = ZipEncoder();
    final zipData = encoder.encode(archive);

    return Uint8List.fromList(zipData);
  }

  /// Creates a bundle from a zip archive.
  ///
  /// Text files (based on extension) are decoded as UTF-8 strings,
  /// while binary files are kept as raw bytes.
  static Bundle fromZip(Uint8List zipData, {String name = 'bundle'}) {
    final archive = ZipDecoder().decodeBytes(zipData);
    final files = <BundleFile>[];

    for (final file in archive) {
      if (file.isFile) {
        final content = file.content;

        if (_isTextFile(file.name)) {
          files.add(StringBundleFile(file.name, utf8.decode(content)));
        } else {
          files.add(BinaryBundleFile(file.name, content));
        }
      }
    }

    return Bundle(name: name, files: files);
  }

  /// Checks if a file should be treated as text based on its extension.
  static bool _isTextFile(String path) {
    final textExtensions = {
      '.dart',
      '.yaml',
      '.yml',
      '.json',
      '.txt',
      '.md',
      '.xml',
      '.html',
      '.css',
      '.js',
      '.ts',
      '.tsx',
      '.jsx',
      '.proto',
      '.gitignore',
      '.env',
    };

    final lowerPath = path.toLowerCase();
    return textExtensions.any((ext) => lowerPath.endsWith(ext));
  }
}

sealed class BundleFile {
  const BundleFile(this.path);
  final String path;
}

class StringBundleFile extends BundleFile {
  const StringBundleFile(super.path, this.content);
  final String content;
}

class BinaryBundleFile extends BundleFile {
  const BinaryBundleFile(super.path, this.content);
  final Uint8List content;
}
