import 'package:dart_eval/dart_eval.dart';

sealed class InterpreterResult {
  const InterpreterResult();
}

class Interpreter {
  InterpreterResult evaluate(String code) {
    final compiler = Compiler();

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
