import 'package:dart_eval/dart_eval.dart';
import 'package:flutter/widgets.dart' show Widget;
import 'package:flutter_figma_preview/eval_plugin.dart';

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

    final program = compiler.compile({
      'preview': {
        'widgets.dart':
            '''
import 'package:flutter_figma_preview/services/interpreter/bindings.dart';

abstract class StatelessWidget {
  const StatelessWidget();

  Widget build(BuildContext context);
}

class Example extends StatelessWidget {
  const Example();

  @override
  Widget build(BuildContext context){
    return FigmaText('Hello!');
  }
}

      //$code
    ''',
        'main.dart': '''
      import 'package:flutter_figma_preview/services/interpreter/bindings.dart';
      import 'package:preview/widgets.dart';
      List<Widget> main() {
        final context = BuildContext();
        return [
          // All widgets
          Example(),
        ].map((x) => x.build(context)).toList();
      }
    ''',
      },
    });

    final runtime = Runtime.ofProgram(program);
    runtime.addPlugin(FlutterFigmaPreviewPlugin());
    final result = runtime.executeLib('package:preview/main.dart', 'main');
    print(result);

    return SuccessInterpreterResult([]);
  }
}
