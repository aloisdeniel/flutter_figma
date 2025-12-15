import 'dart:js_interop';

import 'package:binui/binui.dart';
import 'package:binui/src/importers/figma/options.dart';
import 'package:binui/src/importers/figma/plugin/figma.dart';

@JS('__html__')
external String get htmlContent;

extension type ImportOptionsData._(JSObject _) implements JSObject {
  external bool? get components;
  external bool? get variables;
  external bool? get visualNodes;
  external bool? get styles;
}

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
  external String? get format;
  external ImportOptionsData? get options;
}

enum OutputFormat { dart, json, binary }

OutputFormat _currentFormat = OutputFormat.dart;
FigmaImportOptions _currentImportOptions = const FigmaImportOptions();

FigmaImportOptions _parseImportOptions(ImportOptionsData? options) {
  if (options == null) {
    return const FigmaImportOptions();
  }
  return FigmaImportOptions(
    components: options.components ?? true,
    variables: options.variables ?? true,
    visualNodes: options.visualNodes ?? true,
    styles: options.styles ?? true,
  );
}

void main() {
  figma.showUI(htmlContent, ShowUIOptions(width: 800, height: 600));

  // Handle messages from UI
  figma.ui.onmessage = ((MessageData msg) {
    if (msg.type == 'generate') {
      _currentImportOptions = _parseImportOptions(msg.options);
      _generateCode();
      return;
    }
    if (msg.type == 'format-changed') {
      _currentFormat = switch (msg.format) {
        'binary' => OutputFormat.binary,
        'json' => OutputFormat.json,
        _ => OutputFormat.dart,
      };
      _currentImportOptions = _parseImportOptions(msg.options);
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

  final importer = FigmaPluginImporter();
  final library = await importer.import(ImporterContext(_currentImportOptions));

  final Bundle code;
  switch (_currentFormat) {
    case OutputFormat.dart:
      final generator = FlutterExporter();
      code = await generator
          .export(FlutterExportContext(library, FlutterExportOptions()));
      break;
    case OutputFormat.json:
      final generator = JsonExporter();
      code = await generator.export(ExportContext(library));
      break;
    case OutputFormat.binary:
      final generator = BinaryExporter(format: BinaryFormat.base64);
      code = await generator.export(ExportContext(library));
      break;
  }

  print('Code successfully generated!');
  final files = code.files.whereType<StringBundleFile>().map(
        (x) => {
          'path': x.path,
          'content': x.content,
        },
      );

  final message = {'type': 'code-generated', 'files': files}.jsify()!;

  figma.ui.postMessage(message);
}
