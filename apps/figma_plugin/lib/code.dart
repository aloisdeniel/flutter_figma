import 'dart:convert';
import 'dart:js_interop';

import 'package:figma_plugin/src/figma.dart';
import 'package:figma_plugin/src/generator.dart';

@JS('__html__')
external String get htmlContent;

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
}

void main() {
  figma.showUI(htmlContent, ShowUIOptions(width: 800, height: 600));

  figma.ui.onmessage = ((MessageData msg) {
    if (msg.type == 'generate') {
      _generateCode();
      return;
    }
    figma.closePlugin();
  }.toJS);
}

Future<void> _generateCode() async {
  print('Importing from Figma...');

  final generator = FlutterCodeGenerator();
  final code = generator.generate(figma.currentPage.selection.toDart);

  print('Code successfuly generated!');

  final message = {'type': 'code-generated', 'code': code}.jsify()!;

  figma.ui.postMessage(message);
}
