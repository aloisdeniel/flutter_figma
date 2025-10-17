import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/decoration.dart';
import 'package:flutter_figma/src/foundation/geometry.dart';
import 'package:flutter_figma/src/foundation/paint.dart';
import 'package:flutter_figma/src/widgets/decoration.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FigmaDecorated - solid fill with no corner radius',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(51, 153, 230, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/decorated_solid_fill.png'),
    );
  });

  testWidgets('FigmaDecorated - solid fill with corner radius',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(230, 77, 77, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 20,
                    topRightRadius: 20,
                    bottomLeftRadius: 20,
                    bottomRightRadius: 20,
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
      matchesGoldenFile('goldens/decorated_rounded_corners.png'),
    );
  });

  testWidgets('FigmaDecorated - mixed corner radii',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(102, 204, 102, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 40,
                    topRightRadius: 10,
                    bottomLeftRadius: 10,
                    bottomRightRadius: 40,
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
      matchesGoldenFile('goldens/decorated_mixed_corners.png'),
    );
  });

  testWidgets('FigmaDecorated - corner smoothing', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  height: 150,
                  child: FigmaDecorated(
                    decoration: const FigmaDecoration(
                      fills: [
                        SolidPaint(
                          color: Color.fromRGBO(128, 128, 230, 1.0),
                          opacity: 1.0,
                        ),
                      ],
                      shape: FigmaRectangleShape(
                        topLeftRadius: 40,
                        topRightRadius: 40,
                        bottomLeftRadius: 40,
                        bottomRightRadius: 40,
                        smoothing: 0.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: FigmaDecorated(
                    decoration: const FigmaDecoration(
                      fills: [
                        SolidPaint(
                          color: Color.fromRGBO(230, 128, 128, 1.0),
                          opacity: 1.0,
                        ),
                      ],
                      shape: FigmaRectangleShape(
                        topLeftRadius: 40,
                        topRightRadius: 40,
                        bottomLeftRadius: 40,
                        bottomRightRadius: 40,
                        smoothing: 0.6,
                      ),
                    ),
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
      matchesGoldenFile('goldens/decorated_corner_smoothing.png'),
    );
  });

  testWidgets('FigmaDecorated - solid fill with stroke',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(255, 230, 153, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                  strokes: [
                    SolidPaint(
                      color: Color.fromRGBO(51, 51, 204, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 15,
                    topRightRadius: 15,
                    bottomLeftRadius: 15,
                    bottomRightRadius: 15,
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
      matchesGoldenFile('goldens/decorated_fill_and_stroke.png'),
    );
  });

  testWidgets('FigmaDecorated - linear gradient', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    LinearGradientPaint(
                      gradientTransform: FigmaTransform.identity,
                      gradientStops: [
                        ColorStop(
                          position: 0.0,
                          color: Color.fromRGBO(255, 77, 77, 1.0),
                        ),
                        ColorStop(
                          position: 1.0,
                          color: Color.fromRGBO(77, 77, 255, 1.0),
                        ),
                      ],
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 20,
                    topRightRadius: 20,
                    bottomLeftRadius: 20,
                    bottomRightRadius: 20,
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
      matchesGoldenFile('goldens/decorated_linear_gradient.png'),
    );
  });

  testWidgets('FigmaDecorated - radial gradient', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    RadialGradientPaint(
                      gradientTransform: FigmaTransform.identity,
                      gradientStops: [
                        ColorStop(
                          position: 0.0,
                          color: Color.fromRGBO(255, 255, 77, 1.0),
                        ),
                        ColorStop(
                          position: 1.0,
                          color: Color.fromRGBO(255, 128, 0, 1.0),
                        ),
                      ],
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/decorated_radial_gradient.png'),
    );
  });

  testWidgets('FigmaDecorated - angular gradient', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 200,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    AngularGradientPaint(
                      gradientTransform: FigmaTransform.identity,
                      gradientStops: [
                        ColorStop(
                          position: 0.0,
                          color: Color.fromRGBO(255, 0, 0, 1.0),
                        ),
                        ColorStop(
                          position: 0.33,
                          color: Color.fromRGBO(0, 255, 0, 1.0),
                        ),
                        ColorStop(
                          position: 0.66,
                          color: Color.fromRGBO(0, 0, 255, 1.0),
                        ),
                        ColorStop(
                          position: 1.0,
                          color: Color.fromRGBO(255, 0, 0, 1.0),
                        ),
                      ],
                      opacity: 1.0,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 100,
                    topRightRadius: 100,
                    bottomLeftRadius: 100,
                    bottomRightRadius: 100,
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
      matchesGoldenFile('goldens/decorated_angular_gradient.png'),
    );
  });

  testWidgets('FigmaDecorated - multiple fills', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 150,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(51, 153, 230, 1.0),
                      opacity: 1.0,
                    ),
                    SolidPaint(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      opacity: 0.3,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 20,
                    topRightRadius: 20,
                    bottomLeftRadius: 20,
                    bottomRightRadius: 20,
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
      matchesGoldenFile('goldens/decorated_multiple_fills.png'),
    );
  });

  testWidgets('FigmaDecorated - opacity variations',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 100,
                  height: 100,
                  child: FigmaDecorated(
                    decoration: const FigmaDecoration(
                      fills: [
                        SolidPaint(
                          color: Color.fromRGBO(255, 0, 0, 1.0),
                          opacity: 1.0,
                        ),
                      ],
                      shape: FigmaRectangleShape(
                        topLeftRadius: 15,
                        topRightRadius: 15,
                        bottomLeftRadius: 15,
                        bottomRightRadius: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: FigmaDecorated(
                    decoration: const FigmaDecoration(
                      fills: [
                        SolidPaint(
                          color: Color.fromRGBO(255, 0, 0, 1.0),
                          opacity: 0.6,
                        ),
                      ],
                      shape: FigmaRectangleShape(
                        topLeftRadius: 15,
                        topRightRadius: 15,
                        bottomLeftRadius: 15,
                        bottomRightRadius: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 100,
                  child: FigmaDecorated(
                    decoration: const FigmaDecoration(
                      fills: [
                        SolidPaint(
                          color: Color.fromRGBO(255, 0, 0, 1.0),
                          opacity: 0.3,
                        ),
                      ],
                      shape: FigmaRectangleShape(
                        topLeftRadius: 15,
                        topRightRadius: 15,
                        bottomLeftRadius: 15,
                        bottomRightRadius: 15,
                      ),
                    ),
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
      matchesGoldenFile('goldens/decorated_opacity_variations.png'),
    );
  });

  testWidgets('FigmaDecorated - with child content',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 250,
              height: 100,
              child: FigmaDecorated(
                decoration: const FigmaDecoration(
                  fills: [
                    LinearGradientPaint(
                      gradientTransform: FigmaTransform.identity,
                      gradientStops: [
                        ColorStop(
                          position: 0.0,
                          color: Color.fromRGBO(153, 77, 230, 1.0),
                        ),
                        ColorStop(
                          position: 1.0,
                          color: Color.fromRGBO(77, 153, 230, 1.0),
                        ),
                      ],
                      opacity: 1.0,
                    ),
                  ],
                  strokes: [
                    SolidPaint(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      opacity: 0.5,
                    ),
                  ],
                  shape: FigmaRectangleShape(
                    topLeftRadius: 25,
                    topRightRadius: 25,
                    bottomLeftRadius: 25,
                    bottomRightRadius: 25,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Figma Decorated',
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
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/decorated_with_child.png'),
    );
  });
}
