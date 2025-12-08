import 'package:dart_eval/dart_eval.dart';
import 'package:flutter_figma_preview/eval_plugin.dart';

sealed class InterpreterResult {
  const InterpreterResult();
}

class Interpreter {
  InterpreterResult evaluate(String code) {
    final compiler = Compiler();
    compiler.addPlugin(FlutterFigmaPreviewPlugin());

    final program = compiler.compile({
      'preview': {
        'main.dart': '''
      import 'package:preview/widgets.dart';
      void main() {
        final parentheses = findParentheses('Hello (world)');
        if (parentheses.isNotEmpty) print(parentheses); 
      }
    ''',
        'widgets.dart': r'''
      List<int> findParentheses(string) {
        final regex = RegExp(r'\((.*?)\)');
        final matches = regex.allMatches(string);
        return matches.map((match) => match.start).toList();
      }
    ''',
      },
    });
  }
}
