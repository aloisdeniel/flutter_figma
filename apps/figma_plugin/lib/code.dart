import 'dart:js_interop';

import 'package:figma_codegen/figma_codegen.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart';

@JS('__html__')
external String get htmlContent;

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
  external String? get format;
}

enum OutputFormat { dart, json }

OutputFormat _currentFormat = OutputFormat.dart;

void main() {
  figma.showUI(htmlContent, ShowUIOptions(width: 800, height: 600));

  // Listen for selection changes
  figma.on(
      'selectionchange',
      (() {
        _generateCode();
      }).toJS);

  // Handle messages from UI
  figma.ui.onmessage = ((MessageData msg) {
    if (msg.type == 'generate') {
      _generateCode();
      return;
    }
    if (msg.type == 'format-changed') {
      _currentFormat = switch (msg.format) {
        'json' => OutputFormat.json,
        _ => OutputFormat.dart,
      };
      _generateCode();
      return;
    }
    if (msg.type == 'close') {
      figma.closePlugin();
      return;
    }
  }.toJS);
}

Future<void> _generateCode() async {
  print('Generating code...');

  final importer = FigmaImporter();
  final library = await importer.importVariableCollections(
    ImportContext(const FigmaImportOptions()),
  );

  String variablesCode;
  switch (_currentFormat) {
    case OutputFormat.dart:
      final generator = FlutterExporter();
      variablesCode = await generator.exportVariableCollections(
          FlutterExportContext(collections: library));
      break;
    case OutputFormat.json:
      final generator = JsonExporter();
      variablesCode = await generator.exportVariableCollections(
        JsonExportContext(collections: library, prettyPrint: true),
      );
      break;
  }

  print('Code successfully generated!');
  final files = [
    {
      'path': 'variables.g.dart',
      'content': variablesCode,
    },
  ];

  final message = {'type': 'code-generated', 'files': files}.jsify()!;

  figma.ui.postMessage(message);
}
