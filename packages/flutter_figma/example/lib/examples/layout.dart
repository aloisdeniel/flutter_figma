part of '../main.dart';

class LayoutExample extends StatelessWidget implements Example {
  const LayoutExample({super.key});

  @override
  String get name => 'Layout';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DecoratedBox(
        decoration: BoxDecoration(color: Color(0x33FF0000)),
        child: FigmaFrame(children: [FigmaText('Example'), FigmaText('World')]),
      ),
    );
  }
}
