import 'dart:js_interop';

import 'package:figma_plugin/src/figma.dart';
import 'package:figma_plugin/src/generators/dart/flutter_code_generator.dart';

@JS('__html__')
external String get htmlContent;

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
}

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
    if (msg.type == 'close') {
      figma.closePlugin();
      return;
    }
  }.toJS);
}

void _generateCode() {
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

  final generator = FlutterCodeGenerator();
  final code = generator.generate(selection);

  print('Code successfully generated!');

  final message = {'type': 'code-generated', 'code': code}.jsify()!;

  figma.ui.postMessage(message);
}
