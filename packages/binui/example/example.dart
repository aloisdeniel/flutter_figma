import 'dart:convert';
import 'dart:io';

import 'package:binui/binui.dart';

void main() async {
  print('Tokens');
  final tokens = await importVariableCollection('tokens');
  print(tokens);

  print('Theme');
  final theme = await importVariableCollection('theme');
  print(theme);

  final library = Library()
    ..name = 'Example'
    ..variables.addAll([tokens, theme]);
  final exporter = FlutterExporter();

  final dart = await exporter.export(
    FlutterExportContext(library, FlutterExportOptions()),
  );

  final outputDir = Directory('output');
  if (!outputDir.existsSync()) {
    outputDir.createSync(recursive: true);
  }
  for (final file in dart.files) {
    final outputFile = File('${outputDir.path}/${file.path}');
    outputFile.createSync(recursive: true);
    if (file is StringBundleFile) {
      await outputFile.writeAsString(file.content);
    } else if (file is BinaryBundleFile) {
      await outputFile.writeAsBytes(file.content);
    }
  }
}

Future<VariableCollection> importVariableCollection(String name) async {
  final content = await File('input/$name.json').readAsString();
  final result = VariableCollection();
  result.mergeFromProto3Json(jsonDecode(content));
  return result;
}
