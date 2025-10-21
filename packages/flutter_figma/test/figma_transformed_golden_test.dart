import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/geometry.dart';
import 'package:flutter_figma/src/widgets/transformed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FigmaTransformed - identity transform',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform.identity,
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(51, 153, 230, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_identity.png'),
    );
  });

  testWidgets('FigmaTransformed - scale 2x', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(2, 0, 0, 0, 2, 0),
              child: Container(
                width: 50,
                height: 50,
                color: const Color.fromRGBO(230, 77, 77, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_scale_2x.png'),
    );
  });

  testWidgets('FigmaTransformed - scale 0.5x', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(0.5, 0, 0, 0, 0.5, 0),
              child: Container(
                width: 200,
                height: 200,
                color: const Color.fromRGBO(102, 204, 102, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_scale_half.png'),
    );
  });

  testWidgets('FigmaTransformed - non-uniform scale',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1.5, 0, 0, 0, 0.5, 0),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(255, 153, 51, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_scale_non_uniform.png'),
    );
  });

  testWidgets('FigmaTransformed - translation', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1, 0, 50, 0, 1, 30),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(153, 51, 230, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_translation.png'),
    );
  });

  testWidgets('FigmaTransformed - negative translation',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1, 0, -50, 0, 1, -30),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(51, 204, 204, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_translation_negative.png'),
    );
  });

  testWidgets('FigmaTransformed - 45 degree rotation',
      (WidgetTester tester) async {
    final angle = math.pi / 4;
    final cos = math.cos(angle);
    final sin = math.sin(angle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(230, 128, 51, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_rotation_45.png'),
    );
  });

  testWidgets('FigmaTransformed - 90 degree rotation',
      (WidgetTester tester) async {
    final angle = math.pi / 2;
    final cos = math.cos(angle);
    final sin = math.sin(angle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: Container(
                width: 100,
                height: 60,
                color: const Color.fromRGBO(77, 179, 230, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_rotation_90.png'),
    );
  });

  testWidgets('FigmaTransformed - 180 degree rotation',
      (WidgetTester tester) async {
    final angle = math.pi;
    final cos = math.cos(angle);
    final sin = math.sin(angle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: Container(
                width: 120,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(204, 102, 204, 1.0),
                ),
                child: const Center(
                  child: Text(
                    '180°',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_rotation_180.png'),
    );
  });

  testWidgets('FigmaTransformed - rotation with scale',
      (WidgetTester tester) async {
    final angle = math.pi / 6;
    final scale = 1.5;
    final cos = math.cos(angle) * scale;
    final sin = math.sin(angle) * scale;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: Container(
                width: 80,
                height: 80,
                color: const Color.fromRGBO(255, 204, 77, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_rotation_with_scale.png'),
    );
  });

  testWidgets('FigmaTransformed - skew horizontal',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1, 0, 0, 0.5, 1, 0),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(128, 230, 179, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_skew_horizontal.png'),
    );
  });

  testWidgets('FigmaTransformed - skew vertical',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1, 0.5, 0, 0, 1, 0),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(230, 179, 128, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_skew_vertical.png'),
    );
  });

  testWidgets('FigmaTransformed - combined transform',
      (WidgetTester tester) async {
    final angle = math.pi / 8;
    final scale = 1.2;
    final cos = math.cos(angle) * scale;
    final sin = math.sin(angle) * scale;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 20, -sin, cos, -10),
              child: Container(
                width: 100,
                height: 100,
                color: const Color.fromRGBO(179, 128, 230, 1.0),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_combined.png'),
    );
  });

  testWidgets('FigmaTransformed - flip horizontal',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(-1, 0, 0, 0, 1, 0),
              child: Container(
                width: 120,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(77, 153, 230, 1.0),
                ),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'FLIP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_flip_horizontal.png'),
    );
  });

  testWidgets('FigmaTransformed - flip vertical', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1, 0, 0, 0, -1, 0),
              child: Container(
                width: 120,
                height: 80,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(230, 77, 153, 1.0),
                ),
                child: const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'FLIP',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_flip_vertical.png'),
    );
  });

  testWidgets('FigmaTransformed - multiple transforms side by side',
      (WidgetTester tester) async {
    final angle30 = math.pi / 6;
    final cos30 = math.cos(angle30);
    final sin30 = math.sin(angle30);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FigmaTransformed(
                  transform: FigmaTransform.identity,
                  child: Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromRGBO(255, 102, 102, 1.0),
                  ),
                ),
                FigmaTransformed(
                  transform: const FigmaTransform(1.5, 0, 0, 0, 1.5, 0),
                  child: Container(
                    width: 40,
                    height: 40,
                    color: const Color.fromRGBO(102, 255, 102, 1.0),
                  ),
                ),
                FigmaTransformed(
                  transform: FigmaTransform(cos30, sin30, 0, -sin30, cos30, 0),
                  child: Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromRGBO(102, 102, 255, 1.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_multiple_side_by_side.png'),
    );
  });

  testWidgets('FigmaTransformed - nested transforms',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: FigmaTransformed(
              transform: const FigmaTransform(1.5, 0, 0, 0, 1.5, 0),
              child: FigmaTransformed(
                transform: FigmaTransform(
                  math.cos(math.pi / 4),
                  math.sin(math.pi / 4),
                  0,
                  -math.sin(math.pi / 4),
                  math.cos(math.pi / 4),
                  0,
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  color: const Color.fromRGBO(204, 153, 255, 1.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_nested.png'),
    );
  });

  testWidgets('FigmaTransformed - with complex child content',
      (WidgetTester tester) async {
    final angle = math.pi / 12;
    final cos = math.cos(angle);
    final sin = math.sin(angle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color.fromRGBO(102, 153, 255, 1.0),
                      Color.fromRGBO(153, 102, 255, 1.0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.transform,
                        size: 48,
                        color: Colors.white,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Transformed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/transformed_complex_child.png'),
    );
  });
}
