import 'dart:js_interop';

import 'package:binui/binui.dart';
import 'package:binui/src/importers/figma/plugin/figma.dart';

@JS('__html__')
external String get htmlContent;

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
  external String? get format;
}

enum OutputFormat { dart, binary }

OutputFormat _currentFormat = OutputFormat.dart;

void main() {
  figma.showUI(htmlContent, ShowUIOptions(width: 800, height: 600));

  // Generate code on initial load
  _generateCode();

  // Listen for selection changes
  figma.on(
      'selectionchange',
      (() {
        _generateCode();
      }.toJS));

  // Handle messages from UI
  figma.ui.onmessage = ((MessageData msg) {
    if (msg.type == 'generate') {
      _generateCode();
      return;
    }
    if (msg.type == 'format-changed') {
      _currentFormat =
          msg.format == 'binary' ? OutputFormat.binary : OutputFormat.dart;
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
  print('Generating code from selection...');

  final selection = figma.currentPage.selection.toDart;

  if (selection.isEmpty) {
    print('No selection - showing placeholder');
    final message = {
      'type': 'no-selection',
      'message': 'Select one or more layers to generate code'
    }.jsify()!;
    figma.ui.postMessage(message);
    return;
  }

  final importer = FigmaPluginImporter();
  final library = await importer.import();

  final Bundle code;
  switch (_currentFormat) {
    case OutputFormat.dart:
      final generator = FlutterExporter();
      code = await generator.export(library);
      break;
    case OutputFormat.binary:
      final generator = BinaryExporter(format: BinaryFormat.base64);
      code = await generator.export(library);
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
