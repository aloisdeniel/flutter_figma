import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/decorated.dart';
import 'package:flutter_figma/src/widgets/layout.dart';
import 'package:flutter_figma/src/widgets/transformed.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Combined - FigmaLayout with FigmaDecorated children',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaLayout(
              layout: const FigmaLayoutProperties.auto(
                referenceWidth: 400,
                referenceHeight: 120,
                axis: Axis.horizontal,
                itemSpacing: 12,
                padding: EdgeInsets.all(20),
              ),
              children: [
                FigmaDecorated(
                  shape: FigmaRectangleShape.corners(
                    topLeftRadius: 15,
                    topRightRadius: 15,
                    bottomLeftRadius: 15,
                    bottomRightRadius: 15,
                  ),
                  decoration: const FigmaDecoration(
                    fills: [
                      SolidPaint(
                        color: Color.fromRGBO(255, 77, 77, 1.0),
                        opacity: 1.0,
                      ),
                    ],
                  ),
                  child: const SizedBox(width: 80, height: 80),
                ),
                FigmaDecorated(
                  shape: FigmaRectangleShape.corners(
                    topLeftRadius: 15,
                    topRightRadius: 15,
                    bottomLeftRadius: 15,
                    bottomRightRadius: 15,
                  ),
                  decoration: const FigmaDecoration(
                    fills: [
                      LinearGradientPaint(
                        gradientTransform: FigmaTransform.identity,
                        gradientStops: [
                          ColorStop(
                            position: 0.0,
                            color: Color.fromRGBO(77, 153, 255, 1.0),
                          ),
                          ColorStop(
                            position: 1.0,
                            color: Color.fromRGBO(153, 77, 255, 1.0),
                          ),
                        ],
                        opacity: 1.0,
                      ),
                    ],
                  ),
                  child: const SizedBox(width: 80, height: 80),
                ),
                FigmaDecorated(
                  shape: FigmaRectangleShape.corners(
                    topLeftRadius: 15,
                    topRightRadius: 15,
                    bottomLeftRadius: 15,
                    bottomRightRadius: 15,
                  ),
                  decoration: const FigmaDecoration(
                    fills: [
                      SolidPaint(
                        color: Color.fromRGBO(77, 230, 77, 1.0),
                        opacity: 1.0,
                      ),
                    ],
                    strokes: [
                      SolidPaint(
                        color: Color.fromRGBO(0, 128, 0, 1.0),
                        opacity: 1.0,
                      ),
                    ],
                  ),
                  child: const SizedBox(width: 80, height: 80),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/combined_layout_decorated.png'),
    );
  });

  testWidgets('Combined - FigmaTransformed with FigmaDecorated',
      (WidgetTester tester) async {
    final angle = math.pi / 6;
    final cos = math.cos(angle);
    final sin = math.sin(angle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[100],
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: FigmaDecorated(
                shape: FigmaRectangleShape.corners(
                  topLeftRadius: 20,
                  topRightRadius: 20,
                  bottomLeftRadius: 20,
                  bottomRightRadius: 20,
                ),
                decoration: const FigmaDecoration(
                  fills: [
                    RadialGradientPaint(
                      gradientTransform: FigmaTransform.identity,
                      gradientStops: [
                        ColorStop(
                          position: 0.0,
                          color: Color.fromRGBO(255, 204, 77, 1.0),
                        ),
                        ColorStop(
                          position: 1.0,
                          color: Color.fromRGBO(230, 77, 153, 1.0),
                        ),
                      ],
                      opacity: 1.0,
                    ),
                  ],
                  strokes: [
                    SolidPaint(
                      color: Color.fromRGBO(128, 0, 128, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                ),
                child: const SizedBox(
                  width: 150,
                  height: 150,
                  child: Center(
                    child: Text(
                      'Rotated',
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
      matchesGoldenFile('goldens/combined_transformed_decorated.png'),
    );
  });

  testWidgets('Combined - FigmaLayout with FigmaTransformed children',
      (WidgetTester tester) async {
    final angle45 = math.pi / 4;
    final cos45 = math.cos(angle45);
    final sin45 = math.sin(angle45);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaLayout(
              layout: const FigmaAutoLayoutProperties(
                referenceWidth: 400,
                referenceHeight: 200,
                axis: Axis.horizontal,
                itemSpacing: 30,
                padding: EdgeInsets.all(40),
                primaryAxisAlignItems: LayoutAlign.center,
                counterAxisAlignItems: LayoutAlign.center,
              ),
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
                  transform: FigmaTransform(cos45, sin45, 0, -sin45, cos45, 0),
                  child: Container(
                    width: 60,
                    height: 60,
                    color: const Color.fromRGBO(102, 255, 102, 1.0),
                  ),
                ),
                FigmaTransformed(
                  transform: const FigmaTransform(1.5, 0, 0, 0, 1.5, 0),
                  child: Container(
                    width: 40,
                    height: 40,
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
      matchesGoldenFile('goldens/combined_layout_transformed.png'),
    );
  });

  testWidgets('Combined - All widgets together: Layout, Transformed, Decorated',
      (WidgetTester tester) async {
    final angle = math.pi / 8;
    final cos = math.cos(angle);
    final sin = math.sin(angle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Center(
            child: FigmaLayout(
              layout: const FigmaAutoLayoutProperties(
                referenceWidth: 400,
                referenceHeight: 500,
                axis: Axis.vertical,
                itemSpacing: 20,
                padding: EdgeInsets.all(30),
              ),
              children: [
                FigmaLayout(
                  layout: const FigmaAutoLayoutProperties(
                    referenceWidth: 300,
                    referenceHeight: 100,
                    axis: Axis.horizontal,
                    itemSpacing: 15,
                  ),
                  children: [
                    FigmaTransformed(
                      transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
                      child: FigmaDecorated(
                        shape: FigmaRectangleShape.corners(
                          topLeftRadius: 12,
                          topRightRadius: 12,
                          bottomLeftRadius: 12,
                          bottomRightRadius: 12,
                        ),
                        decoration: const FigmaDecoration(
                          fills: [
                            SolidPaint(
                              color: Color.fromRGBO(255, 77, 77, 1.0),
                              opacity: 1.0,
                            ),
                          ],
                        ),
                        child: const SizedBox(width: 70, height: 70),
                      ),
                    ),
                    FigmaDecorated(
                      shape: FigmaRectangleShape.corners(
                        topLeftRadius: 12,
                        topRightRadius: 12,
                        bottomLeftRadius: 12,
                        bottomRightRadius: 12,
                      ),
                      decoration: const FigmaDecoration(
                        fills: [
                          LinearGradientPaint(
                            gradientTransform: FigmaTransform.identity,
                            gradientStops: [
                              ColorStop(
                                position: 0.0,
                                color: Color.fromRGBO(77, 153, 255, 1.0),
                              ),
                              ColorStop(
                                position: 1.0,
                                color: Color.fromRGBO(153, 77, 255, 1.0),
                              ),
                            ],
                            opacity: 1.0,
                          ),
                        ],
                      ),
                      child: const SizedBox(width: 70, height: 70),
                    ),
                  ],
                ),
                FigmaTransformed(
                  transform: const FigmaTransform(1.2, 0, 0, 0, 1.2, 0),
                  child: FigmaDecorated(
                    shape: FigmaRectangleShape.corners(
                      topLeftRadius: 20,
                      topRightRadius: 20,
                      bottomLeftRadius: 20,
                      bottomRightRadius: 20,
                    ),
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
                      strokes: [
                        SolidPaint(
                          color: Color.fromRGBO(128, 64, 0, 1.0),
                          opacity: 1.0,
                        ),
                      ],
                    ),
                    child: const SizedBox(
                      width: 120,
                      height: 60,
                      child: Center(
                        child: Text(
                          'Combined',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
      matchesGoldenFile('goldens/combined_all_widgets.png'),
    );
  });

  testWidgets('Combined - Complex nested structure',
      (WidgetTester tester) async {
    final angle30 = math.pi / 6;
    final cos30 = math.cos(angle30);
    final sin30 = math.sin(angle30);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaDecorated(
              shape: FigmaRectangleShape.corners(
                topLeftRadius: 25,
                topRightRadius: 25,
                bottomLeftRadius: 25,
                bottomRightRadius: 25,
              ),
              decoration: const FigmaDecoration(
                fills: [
                  SolidPaint(
                    color: Color.fromRGBO(240, 240, 240, 1.0),
                    opacity: 1.0,
                  ),
                ],
                strokes: [
                  SolidPaint(
                    color: Color.fromRGBO(200, 200, 200, 1.0),
                    opacity: 1.0,
                  ),
                ],
              ),
              child: SizedBox(
                width: 320,
                height: 280,
                child: FigmaLayout(
                  layout: const FigmaAutoLayoutProperties(
                    referenceWidth: 320,
                    referenceHeight: 280,
                    axis: Axis.vertical,
                    itemSpacing: 15,
                    padding: EdgeInsets.all(25),
                  ),
                  children: [
                    FigmaDecorated(
                      shape: FigmaRectangleShape.corners(
                        topLeftRadius: 15,
                        topRightRadius: 15,
                        bottomLeftRadius: 15,
                        bottomRightRadius: 15,
                      ),
                      decoration: const FigmaDecoration(
                        fills: [
                          LinearGradientPaint(
                            gradientTransform: FigmaTransform.identity,
                            gradientStops: [
                              ColorStop(
                                position: 0.0,
                                color: Color.fromRGBO(102, 153, 255, 1.0),
                              ),
                              ColorStop(
                                position: 1.0,
                                color: Color.fromRGBO(153, 102, 255, 1.0),
                              ),
                            ],
                            opacity: 1.0,
                          ),
                        ],
                      ),
                      child: const SizedBox(
                        height: 60,
                        child: Center(
                          child: Text(
                            'Header',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FigmaLayout(
                      layout: const FigmaAutoLayoutProperties(
                        referenceWidth: 270,
                        referenceHeight: 80,
                        axis: Axis.horizontal,
                        itemSpacing: 12,
                        primaryAxisAlignItems: LayoutAlign.center,
                      ),
                      children: [
                        FigmaTransformed(
                          transform:
                              FigmaTransform(cos30, sin30, 0, -sin30, cos30, 0),
                          child: FigmaDecorated(
                            shape: FigmaRectangleShape.corners(
                              topLeftRadius: 10,
                              topRightRadius: 10,
                              bottomLeftRadius: 10,
                              bottomRightRadius: 10,
                            ),
                            decoration: const FigmaDecoration(
                              fills: [
                                SolidPaint(
                                  color: Color.fromRGBO(255, 102, 102, 1.0),
                                  opacity: 1.0,
                                ),
                              ],
                            ),
                            child: const SizedBox(width: 60, height: 60),
                          ),
                        ),
                        FigmaTransformed(
                          transform: const FigmaTransform(1, 0, 0, 0, -1, 0),
                          child: FigmaDecorated(
                            shape: FigmaRectangleShape.corners(
                              topLeftRadius: 10,
                              topRightRadius: 10,
                              bottomLeftRadius: 10,
                              bottomRightRadius: 10,
                            ),
                            decoration: const FigmaDecoration(
                              fills: [
                                SolidPaint(
                                  color: Color.fromRGBO(102, 255, 102, 1.0),
                                  opacity: 1.0,
                                ),
                              ],
                            ),
                            child: const SizedBox(
                              width: 60,
                              height: 60,
                              child: Center(
                                child: Text(
                                  'Flip',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        FigmaDecorated(
                          shape: FigmaRectangleShape.corners(
                            topLeftRadius: 30,
                            topRightRadius: 30,
                            bottomLeftRadius: 30,
                            bottomRightRadius: 30,
                          ),
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
                                    position: 0.5,
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
                          ),
                          child: const SizedBox(width: 60, height: 60),
                        ),
                      ],
                    ),
                    FigmaDecorated(
                      shape: FigmaRectangleShape.corners(
                        topLeftRadius: 15,
                        topRightRadius: 15,
                        bottomLeftRadius: 15,
                        bottomRightRadius: 15,
                      ),
                      decoration: const FigmaDecoration(
                        fills: [
                          SolidPaint(
                            color: Color.fromRGBO(255, 204, 102, 1.0),
                            opacity: 1.0,
                          ),
                        ],
                        strokes: [
                          SolidPaint(
                            color: Color.fromRGBO(204, 102, 0, 1.0),
                            opacity: 1.0,
                          ),
                        ],
                      ),
                      child: const SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            'Footer',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/combined_complex_nested.png'),
    );
  });

  testWidgets('Combined - Card-like component with all features',
      (WidgetTester tester) async {
    final rotationAngle = -math.pi / 36;
    final cos = math.cos(rotationAngle);
    final sin = math.sin(rotationAngle);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromRGBO(245, 245, 250, 1.0),
          body: Center(
            child: FigmaTransformed(
              transform: FigmaTransform(cos, sin, 0, -sin, cos, 0),
              child: FigmaDecorated(
                shape: FigmaRectangleShape.corners(
                  topLeftRadius: 20,
                  topRightRadius: 20,
                  bottomLeftRadius: 20,
                  bottomRightRadius: 20,
                  smoothing: 0.6,
                ),
                decoration: const FigmaDecoration(
                  fills: [
                    SolidPaint(
                      color: Color.fromRGBO(255, 255, 255, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                  strokes: [
                    SolidPaint(
                      color: Color.fromRGBO(220, 220, 230, 1.0),
                      opacity: 1.0,
                    ),
                  ],
                ),
                child: SizedBox(
                  width: 280,
                  height: 200,
                  child: FigmaLayout(
                    layout: const FigmaAutoLayoutProperties(
                      referenceWidth: 280,
                      referenceHeight: 200,
                      axis: Axis.vertical,
                      itemSpacing: 16,
                      padding: EdgeInsets.all(20),
                    ),
                    children: [
                      FigmaLayout(
                        layout: const FigmaAutoLayoutProperties(
                          referenceWidth: 240,
                          referenceHeight: 70,
                          axis: Axis.horizontal,
                          itemSpacing: 12,
                          counterAxisAlignItems: LayoutAlign.center,
                        ),
                        children: [
                          FigmaDecorated(
                            shape: FigmaRectangleShape.corners(
                              topLeftRadius: 25,
                              topRightRadius: 25,
                              bottomLeftRadius: 25,
                              bottomRightRadius: 25,
                            ),
                            decoration: const FigmaDecoration(
                              fills: [
                                LinearGradientPaint(
                                  gradientTransform: FigmaTransform.identity,
                                  gradientStops: [
                                    ColorStop(
                                      position: 0.0,
                                      color: Color.fromRGBO(102, 153, 255, 1.0),
                                    ),
                                    ColorStop(
                                      position: 1.0,
                                      color: Color.fromRGBO(153, 102, 255, 1.0),
                                    ),
                                  ],
                                  opacity: 1.0,
                                ),
                              ],
                            ),
                            child: const SizedBox(width: 50, height: 50),
                          ),
                          const SizedBox(
                            width: 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Figma Components',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(30, 30, 30, 1.0),
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Combined widgets',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(120, 120, 130, 1.0),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      FigmaLayout(
                        layout: const FigmaAutoLayoutProperties(
                          referenceWidth: 240,
                          referenceHeight: 50,
                          axis: Axis.horizontal,
                          primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                          counterAxisSizingMode: CounterAxisSizingMode.auto,
                          itemSpacing: 8,
                          primaryAxisAlignItems: LayoutAlign.spaceBetween,
                        ),
                        children: [
                          FigmaTransformed(
                            transform:
                                const FigmaTransform(1.1, 0, 0, 0, 1.1, 0),
                            child: FigmaDecorated(
                              shape: FigmaRectangleShape.corners(
                                topLeftRadius: 8,
                                topRightRadius: 8,
                                bottomLeftRadius: 8,
                                bottomRightRadius: 8,
                              ),
                              decoration: const FigmaDecoration(
                                fills: [
                                  SolidPaint(
                                    color: Color.fromRGBO(255, 102, 102, 1.0),
                                    opacity: 1.0,
                                  ),
                                ],
                              ),
                              child: const SizedBox(width: 30, height: 30),
                            ),
                          ),
                          FigmaDecorated(
                            shape: FigmaRectangleShape.corners(
                              topLeftRadius: 8,
                              topRightRadius: 8,
                              bottomLeftRadius: 8,
                              bottomRightRadius: 8,
                            ),
                            decoration: const FigmaDecoration(
                              fills: [
                                SolidPaint(
                                  color: Color.fromRGBO(102, 255, 102, 1.0),
                                  opacity: 1.0,
                                ),
                              ],
                            ),
                            child: const SizedBox(width: 30, height: 30),
                          ),
                          FigmaDecorated(
                            shape: FigmaRectangleShape.corners(
                              topLeftRadius: 8,
                              topRightRadius: 8,
                              bottomLeftRadius: 8,
                              bottomRightRadius: 8,
                            ),
                            decoration: const FigmaDecoration(
                              fills: [
                                SolidPaint(
                                  color: Color.fromRGBO(255, 204, 102, 1.0),
                                  opacity: 1.0,
                                ),
                              ],
                            ),
                            child: const SizedBox(width: 30, height: 30),
                          ),
                        ],
                      ),
                      FigmaDecorated(
                        shape: FigmaRectangleShape.corners(
                          topLeftRadius: 12,
                          topRightRadius: 12,
                          bottomLeftRadius: 12,
                          bottomRightRadius: 12,
                        ),
                        decoration: const FigmaDecoration(
                          fills: [
                            LinearGradientPaint(
                              gradientTransform: FigmaTransform.identity,
                              gradientStops: [
                                ColorStop(
                                  position: 0.0,
                                  color: Color.fromRGBO(102, 153, 255, 1.0),
                                ),
                                ColorStop(
                                  position: 1.0,
                                  color: Color.fromRGBO(153, 102, 255, 1.0),
                                ),
                              ],
                              opacity: 1.0,
                            ),
                          ],
                        ),
                        child: const SizedBox(
                          height: 40,
                          child: Center(
                            child: Text(
                              'Action Button',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
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
      matchesGoldenFile('goldens/combined_card_component.png'),
    );
  });
}
