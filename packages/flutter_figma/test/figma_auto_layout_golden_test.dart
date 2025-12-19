import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/layout.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FigmaLayout - horizontal layout with spacing',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FigmaLayout(
            layout: const FigmaAutoLayoutProperties(
              referenceWidth: 300,
              referenceHeight: 100,
              axis: Axis.horizontal,
              itemSpacing: 8,
              padding: EdgeInsets.all(16),
            ),
            children: [
              Container(width: 50, height: 50, color: Colors.red),
              Container(width: 60, height: 40, color: Colors.blue),
              Container(width: 70, height: 60, color: Colors.green),
            ],
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(FigmaLayout),
      matchesGoldenFile('goldens/horizontal_with_spacing.png'),
    );
  });

  testWidgets('FigmaLayout - vertical layout with spacing',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FigmaLayout(
            layout: const FigmaAutoLayoutProperties(
              referenceWidth: 200,
              referenceHeight: 300,
              axis: Axis.vertical,
              itemSpacing: 12,
              padding: EdgeInsets.all(20),
            ),
            children: [
              Container(width: 80, height: 40, color: Colors.orange),
              Container(width: 60, height: 50, color: Colors.purple),
              Container(width: 100, height: 30, color: Colors.teal),
            ],
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(FigmaLayout),
      matchesGoldenFile('goldens/vertical_with_spacing.png'),
    );
  });

  testWidgets('FigmaLayout - horizontal with center alignment',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 300,
              height: 200,
              child: FigmaLayout(
                layout: const FigmaAutoLayoutProperties(
                  referenceWidth: 300,
                  referenceHeight: 200,
                  axis: Axis.horizontal,
                  primaryAxisAlignItems: LayoutAlign.center,
                  counterAxisAlignItems: LayoutAlign.center,
                  itemSpacing: 10,
                  padding: EdgeInsets.all(10),
                ),
                children: [
                  Container(width: 40, height: 40, color: Colors.red),
                  Container(width: 40, height: 60, color: Colors.blue),
                  Container(width: 40, height: 50, color: Colors.green),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/horizontal_center_align.png'),
    );
  });

  testWidgets('FigmaLayout - wrap layout', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 200,
              height: 300,
              child: FigmaLayout(
                layout: const FigmaAutoLayoutProperties(
                  referenceWidth: 200,
                  referenceHeight: 300,
                  axis: Axis.horizontal,
                  layoutWrap: LayoutWrap.wrap,
                  itemSpacing: 8,
                  counterAxisSpacing: 8,
                  padding: EdgeInsets.all(12),
                ),
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 70, height: 50, color: Colors.blue),
                  Container(width: 50, height: 70, color: Colors.green),
                  Container(width: 50, height: 50, color: Colors.orange),
                  Container(width: 60, height: 50, color: Colors.purple),
                  Container(width: 50, height: 50, color: Colors.teal),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/wrap_layout.png'),
    );
  });

  testWidgets('FigmaLayout - space between alignment',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 300,
              height: 100,
              child: FigmaLayout(
                layout: const FigmaAutoLayoutProperties(
                  referenceWidth: 300,
                  referenceHeight: 100,
                  axis: Axis.horizontal,
                  primaryAxisAlignItems: LayoutAlign.spaceBetween,
                  counterAxisAlignItems: LayoutAlign.center,
                  padding: EdgeInsets.all(15),
                ),
                children: [
                  Container(width: 50, height: 50, color: Colors.red),
                  Container(width: 50, height: 50, color: Colors.blue),
                  Container(width: 50, height: 50, color: Colors.green),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/space_between.png'),
    );
  });

  testWidgets('FigmaLayout - various colors and sizes',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaLayout(
              layout: const FigmaAutoLayoutProperties(
                referenceWidth: 400,
                referenceHeight: 500,
                axis: Axis.vertical,
                itemSpacing: 16,
                padding: EdgeInsets.all(24),
              ),
              children: [
                FigmaLayout(
                  layout: const FigmaAutoLayoutProperties(
                    referenceWidth: 300,
                    referenceHeight: 100,
                    axis: Axis.horizontal,
                    itemSpacing: 8,
                  ),
                  children: [
                    Container(width: 60, height: 60, color: Colors.red),
                    Container(width: 80, height: 60, color: Colors.pink),
                    Container(width: 70, height: 60, color: Colors.deepOrange),
                  ],
                ),
                FigmaLayout(
                  layout: const FigmaAutoLayoutProperties(
                    referenceWidth: 300,
                    referenceHeight: 100,
                    axis: Axis.horizontal,
                    itemSpacing: 12,
                  ),
                  children: [
                    Container(width: 50, height: 50, color: Colors.blue),
                    Container(width: 90, height: 50, color: Colors.cyan),
                    Container(width: 60, height: 50, color: Colors.lightBlue),
                  ],
                ),
                FigmaLayout(
                  layout: const FigmaAutoLayoutProperties(
                    referenceWidth: 300,
                    referenceHeight: 100,
                    axis: Axis.horizontal,
                    itemSpacing: 10,
                  ),
                  children: [
                    Container(width: 70, height: 70, color: Colors.green),
                    Container(width: 60, height: 70, color: Colors.lightGreen),
                    Container(width: 80, height: 70, color: Colors.teal),
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
      matchesGoldenFile('goldens/various_colors_sizes.png'),
    );
  });
}
