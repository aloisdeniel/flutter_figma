import 'package:binui/binui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_figma_preview/features/preview/widgets/preview.dart';

class PreviewScreen extends StatefulWidget {
  const PreviewScreen({super.key});

  @override
  State<PreviewScreen> createState() => _PreviewScreenState();
}

class _PreviewScreenState extends State<PreviewScreen> {
  final _controller = TextEditingController(
    text: '''
''',
  );

  final _result = ValueNotifier<Library?>(null);

  @override
  void initState() {
    super.initState();
    _controller.addListener(_evaluate);
    _evaluate();
  }

  void _evaluate() async {
    try {
      final importer = BinaryImporter.base64(_controller.text);
      _result.value = await importer.import();
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
              maxLines: null,
              decoration: InputDecoration.collapsed(
                hintText: 'Enter code here...',
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.white,
            child: ValueListenableBuilder(
              valueListenable: _result,
              builder: (context, result, _) {
                if (result == null) {
                  return const Center(
                    child: Text('Enter base64 encoded data to preview'),
                  );
                }
                return Preview(result: result);
              },
            ),
          ),
        ),
      ],
    );
  }
}
