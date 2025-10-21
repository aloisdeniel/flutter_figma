import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/paint.dart';
import 'package:flutter_figma/src/foundation/text.dart';
import 'package:flutter_figma/src/widgets/text.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FigmaText - basic text with solid fill',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Regular'),
                fontSize: 24,
                letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Hello Figma'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_basic.png'),
    );
  });

  testWidgets('FigmaText - colored text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Regular'),
                fontSize: 32,
                letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Colored Text'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(51, 153, 230, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_colored.png'),
    );
  });

  testWidgets('FigmaText - bold text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Bold'),
                fontSize: 28,
                letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Bold Text'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_bold.png'),
    );
  });

  testWidgets('FigmaText - italic text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Italic'),
                fontSize: 28,
                letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Italic Text'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_italic.png'),
    );
  });

  testWidgets('FigmaText - with letter spacing in pixels',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Regular'),
                fontSize: 24,
                letterSpacing: LetterSpacing(value: 5, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Spaced Text'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_letter_spacing_pixels.png'),
    );
  });

  testWidgets('FigmaText - with letter spacing in percent',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Regular'),
                fontSize: 24,
                letterSpacing: LetterSpacing(value: 10, unit: LetterSpacingUnit.percent),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Spaced 10%'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_letter_spacing_percent.png'),
    );
  });

  testWidgets('FigmaText - with line height in pixels',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              child: FigmaText(
                style: FigmaTextStyle(
                  fontName: FontName(family: 'Roboto', style: 'Regular'),
                  fontSize: 20,
                  letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                  lineHeight: LineHeightPixels(40),
                ),
                characters: [
                  FigmaTextSpan(text: 'Line one\nLine two\nLine three'),
                ],
                fills: [
                  SolidPaint(
                    color: Color.fromRGBO(0, 0, 0, 1.0),
                    opacity: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_line_height_pixels.png'),
    );
  });

  testWidgets('FigmaText - with line height in percent',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              child: FigmaText(
                style: FigmaTextStyle(
                  fontName: FontName(family: 'Roboto', style: 'Regular'),
                  fontSize: 20,
                  letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                  lineHeight: LineHeightPercent(150),
                ),
                characters: [
                  FigmaTextSpan(text: 'Line one\nLine two\nLine three'),
                ],
                fills: [
                  SolidPaint(
                    color: Color.fromRGBO(0, 0, 0, 1.0),
                    opacity: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_line_height_percent.png'),
    );
  });

  testWidgets('FigmaText - mixed text spans',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Regular'),
                fontSize: 24,
                letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Regular '),
                FigmaTextSpan(
                  text: 'Bold ',
                  style: FigmaTextStyle(
                    fontName: FontName(family: 'Roboto', style: 'Bold'),
                    fontSize: 24,
                    letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                    lineHeight: LineHeightAuto(),
                  ),
                ),
                FigmaTextSpan(
                  text: 'Italic',
                  style: FigmaTextStyle(
                    fontName: FontName(family: 'Roboto', style: 'Italic'),
                    fontSize: 24,
                    letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                    lineHeight: LineHeightAuto(),
                  ),
                ),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  opacity: 1.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_mixed_spans.png'),
    );
  });

  testWidgets('FigmaText - opacity variation',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaText(
              style: FigmaTextStyle(
                fontName: FontName(family: 'Roboto', style: 'Regular'),
                fontSize: 28,
                letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                lineHeight: LineHeightAuto(),
              ),
              characters: [
                FigmaTextSpan(text: 'Semi-transparent'),
              ],
              fills: [
                SolidPaint(
                  color: Color.fromRGBO(230, 77, 77, 1.0),
                  opacity: 0.5,
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_opacity.png'),
    );
  });

  testWidgets('FigmaText - different font sizes',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FigmaText(
                  style: FigmaTextStyle(
                    fontName: FontName(family: 'Roboto', style: 'Regular'),
                    fontSize: 16,
                    letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                    lineHeight: LineHeightAuto(),
                  ),
                  characters: [
                    FigmaTextSpan(text: 'Size 16'),
                  ],
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                FigmaText(
                  style: FigmaTextStyle(
                    fontName: FontName(family: 'Roboto', style: 'Regular'),
                    fontSize: 24,
                    letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                    lineHeight: LineHeightAuto(),
                  ),
                  characters: [
                    FigmaTextSpan(text: 'Size 24'),
                  ],
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                FigmaText(
                  style: FigmaTextStyle(
                    fontName: FontName(family: 'Roboto', style: 'Regular'),
                    fontSize: 32,
                    letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                    lineHeight: LineHeightAuto(),
                  ),
                  characters: [
                    FigmaTextSpan(text: 'Size 32'),
                  ],
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(0, 0, 0, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_font_sizes.png'),
    );
  });

  testWidgets('FigmaText - multiline text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 300,
              child: FigmaText(
                style: FigmaTextStyle(
                  fontName: FontName(family: 'Roboto', style: 'Regular'),
                  fontSize: 20,
                  letterSpacing: LetterSpacing(value: 0, unit: LetterSpacingUnit.pixels),
                  lineHeight: LineHeightAuto(),
                ),
                characters: [
                  FigmaTextSpan(
                    text: 'This is a longer text that should wrap across multiple lines to demonstrate how FigmaText handles multiline content.',
                  ),
                ],
                fills: [
                  SolidPaint(
                    color: Color.fromRGBO(0, 0, 0, 1.0),
                    opacity: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/text_multiline.png'),
    );
  });
}
