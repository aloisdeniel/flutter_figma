import 'package:dart_eval/dart_eval.dart';
import 'package:flutter/material.dart';
import 'package:flutter_figma_preview/features/preview/widgets/preview.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  final _controller = TextEditingController();

  final ValueNotifier<Program> _program;

  @override
  void initState() {
    _controller.addListener(() {
      try {
        final compiler = Compiler();

        final program = compiler.compile({
          'preview': {
            'main.dart': '''
      import 'package:my_package/finder.dart';
      void main() {
        final parentheses = findParentheses('Hello (world)');
        if (parentheses.isNotEmpty) print(parentheses); 
      }
    ''',
            'finder.dart': r'''
      List<int> findParentheses(string) {
        final regex = RegExp(r'\((.*?)\)');
        final matches = regex.allMatches(string);
        return matches.map((match) => match.start).toList();
      }
    ''',
          },
        });
        _program.value = eval(_controller.text);
      } catch (e) {}
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration.collapsed(
              hintText: 'Enter code here...',
            ),
          ),
        ),
        Expanded(child: Preview()),
      ],
    );
  }
}
