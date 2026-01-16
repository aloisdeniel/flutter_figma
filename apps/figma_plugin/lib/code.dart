import 'dart:js_interop';

import 'package:figma_codegen/figma_codegen.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart';

@JS('__html__')
external String get htmlContent;

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
  external String? get format;
  external JSObject? get options;
}

extension type ExportOptions._(JSObject _) implements JSObject {
  external bool? get prettyPrint;
  external String? get colorFormat;
  external bool? get includeComments;
}

enum OutputFormat { dart, json }

OutputFormat _currentFormat = OutputFormat.dart;
Map<String, dynamic> _currentOptions = {};

void main() {
  final uiOptions = ShowUIOptions(width: 800, height: 600)..themeColors = true;
  figma.showUI(htmlContent, uiOptions);

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

      // Store options if provided
      if (msg.options != null) {
        final opts = msg.options as ExportOptions;
        _currentOptions = {
          if (opts.prettyPrint != null) 'prettyPrint': opts.prettyPrint,
          if (opts.colorFormat != null) 'colorFormat': opts.colorFormat,
          if (opts.includeComments != null)
            'includeComments': opts.includeComments,
        };
      }

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
      final prettyPrint = _currentOptions['prettyPrint'] as bool? ?? true;
      variablesCode = await generator.exportVariableCollections(
        JsonExportContext(collections: library, prettyPrint: prettyPrint),
      );
      break;
  }

  print('Code successfully generated!');

  final message = {'type': 'code-generated', 'code': variablesCode}.jsify()!;

  figma.ui.postMessage(message);
}
