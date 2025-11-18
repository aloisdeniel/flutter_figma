part of '../main.dart';

class TextExample extends StatelessWidget implements Example {
  const TextExample({super.key});

  @override
  String get name => 'Text';

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FigmaText.rich(
        characters: [
          FigmaTextSpan(
            text: 'Hello',
            style: FigmaTextStyle(
              fontName: FontName(family: 'Arial'),
              fontSize: 32,
              lineHeight: LineHeight.auto(),
              letterSpacing: LetterSpacing(
                value: 25,
                unit: LetterSpacingUnit.pixels,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
