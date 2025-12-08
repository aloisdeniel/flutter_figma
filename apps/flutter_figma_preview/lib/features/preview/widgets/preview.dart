import 'package:flutter/widgets.dart';
import 'package:flutter_figma_preview/services/interpreter/interpreter.dart';

class Preview extends StatelessWidget {
  const Preview({super.key, required this.result});

  final InterpreterResult result;

  @override
  Widget build(BuildContext context) {
    if (result case SuccessInterpreterResult result) {
      return ListView(children: result.widgets);
    }
    return const SizedBox();
  }
}
