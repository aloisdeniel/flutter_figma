import 'package:flutter/material.dart';
import 'package:flutter_figma_preview/features/preview/widgets/preview.dart';
import 'package:flutter_figma_preview/services/interpreter/interpreter.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  final _controller = TextEditingController();

  final _interpreter = Interpreter();
  final ValueNotifier<InterpreterResult> _result =
      ValueNotifier<InterpreterResult>(EmptyInterpreterResult());

  @override
  void initState() {
    super.initState();
    _controller.addListener(_evaluate);
    _evaluate();
  }

  void _evaluate() {
    try {
      _result.value = _interpreter.evaluate(_controller.text);
    } catch (e) {
      print(e);
    }
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
          child: Material(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration.collapsed(
                hintText: 'Enter code here...',
              ),
            ),
          ),
        ),
        Expanded(
          child: ValueListenableBuilder(
            valueListenable: _result,
            builder: (context, result, _) {
              return Preview(result: result);
            },
          ),
        ),
      ],
    );
  }
}
