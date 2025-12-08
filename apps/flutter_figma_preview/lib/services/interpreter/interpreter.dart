import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:flutter/widgets.dart' show Widget;
import 'package:flutter_figma_preview/eval_plugin.dart';
import 'package:flutter_figma_preview/services/interpreter/bindings_conversions.dart';

import 'bindings.dart' as b;

sealed class InterpreterResult {
  const InterpreterResult();
}

class EmptyInterpreterResult extends InterpreterResult {
  const EmptyInterpreterResult();
}

class SuccessInterpreterResult extends InterpreterResult {
  const SuccessInterpreterResult(this.widgets);
  final List<Widget> widgets;
}

class Interpreter {
  InterpreterResult evaluate(String code) {
    final compiler = Compiler();
    compiler.addPlugin(FlutterFigmaPreviewPlugin());

    final widgetNames = RegExp(
      r'([A-Za-z-a0-9_$]+)\s+extends\s+StatelessWidget',
    ).allMatches(code).map((x) => x.group(1));

    final program = compiler.compile({
      'preview': {
        'main.dart':
            '''
import 'package:flutter_figma_preview/services/interpreter/bindings.dart';

abstract class StatelessWidget {
  const StatelessWidget();

  Widget build(BuildContext context);
}

$code

List<Widget> main() {
  final context = BuildContext();
  return [
    // All widgets
    ${widgetNames.map((x) => '$x(),').join()}
  ].map((x) => x.build(context)).toList();
}
    ''',
      },
    });

    final runtime = Runtime.ofProgram(program);
    runtime.addPlugin(FlutterFigmaPreviewPlugin());
    final result = runtime.executeLib('package:preview/main.dart', 'main');
    final widgets = (result as List<$Value?>)
        .map((x) => x?.$value as b.Widget?)
        .nonNulls
        .map((x) => x.build())
        .toList();
    for (var w in widgets) {
      print(w);
    }

    return SuccessInterpreterResult(widgets);
  }
}
