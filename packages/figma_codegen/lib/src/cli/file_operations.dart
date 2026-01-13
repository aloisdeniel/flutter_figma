import 'dart:io';

import 'package:figma_codegen/src/cli/exceptions.dart';

class FileOperations {
  static Future<String> readFile(String path) async {
    try {
      final file = File(path);
      if (!await file.exists()) {
        throw InvalidInputException('Input file not found: $path');
      }
      return await file.readAsString();
    } catch (e) {
      if (e is InvalidInputException) rethrow;
      throw InvalidInputException('Failed to read file: $e');
    }
  }

  static Future<void> writeFile(String path, String content) async {
    try {
      final file = File(path);
      await file.parent.create(recursive: true);
      await file.writeAsString(content);
    } catch (e) {
      throw ExportException('Failed to write file: $e');
    }
  }
}
