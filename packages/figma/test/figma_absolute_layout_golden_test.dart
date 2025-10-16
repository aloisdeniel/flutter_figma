import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/enums.dart';
import 'package:flutter_figma/src/rendering/layout.dart';
import 'package:flutter_figma/src/widgets/layout.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FigmaAbsoluteLayout - basic absolute positioning',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 20,
                  y: 20,
                  width: 60,
                  height: 60,
                  child: Container(color: Colors.red),
                ),
                FigmaPositioned(
                  x: 100,
                  y: 40,
                  width: 80,
                  height: 50,
                  child: Container(color: Colors.blue),
                ),
                FigmaPositioned(
                  x: 200,
                  y: 100,
                  width: 70,
                  height: 70,
                  child: Container(color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/absolute_basic.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - constraint type MIN (left/top pinned)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 10,
                  y: 10,
                  width: 80,
                  height: 60,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.min,
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text(
                        'MIN',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                FigmaPositioned(
                  x: 110,
                  y: 80,
                  width: 80,
                  height: 60,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.min,
                  child: Container(
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'MIN',
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
      matchesGoldenFile('goldens/absolute_constraint_min.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - constraint type MAX (right/bottom pinned)',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 210,
                  y: 10,
                  width: 80,
                  height: 60,
                  horizontalConstraint: ConstraintType.max,
                  verticalConstraint: ConstraintType.min,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text(
                        'MAX H',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                FigmaPositioned(
                  x: 10,
                  y: 130,
                  width: 80,
                  height: 60,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.max,
                  child: Container(
                    color: Colors.purple,
                    child: const Center(
                      child: Text(
                        'MAX V',
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
      matchesGoldenFile('goldens/absolute_constraint_max.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - constraint type CENTER',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 110,
                  y: 70,
                  width: 80,
                  height: 60,
                  horizontalConstraint: ConstraintType.center,
                  verticalConstraint: ConstraintType.center,
                  child: Container(
                    color: Colors.teal,
                    child: const Center(
                      child: Text(
                        'CENTER',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                FigmaPositioned(
                  x: 210,
                  y: 70,
                  width: 60,
                  height: 60,
                  horizontalConstraint: ConstraintType.center,
                  verticalConstraint: ConstraintType.min,
                  child: Container(
                    color: Colors.cyan,
                    child: const Center(
                      child: Text(
                        'H CTR',
                        style: TextStyle(color: Colors.white, fontSize: 10),
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
      matchesGoldenFile('goldens/absolute_constraint_center.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - constraint type STRETCH',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 20,
                  y: 20,
                  width: 260,
                  height: 50,
                  horizontalConstraint: ConstraintType.stretch,
                  verticalConstraint: ConstraintType.min,
                  child: Container(
                    color: Colors.indigo,
                    child: const Center(
                      child: Text(
                        'STRETCH HORIZONTAL',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                FigmaPositioned(
                  x: 20,
                  y: 90,
                  width: 60,
                  height: 90,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.stretch,
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Center(
                      child: Text(
                        'V\nS\nT\nR',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                        textAlign: TextAlign.center,
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
      matchesGoldenFile('goldens/absolute_constraint_stretch.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - constraint type SCALE',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 50,
                  y: 40,
                  width: 80,
                  height: 60,
                  horizontalConstraint: ConstraintType.scale,
                  verticalConstraint: ConstraintType.scale,
                  child: Container(
                    color: Colors.amber,
                    child: const Center(
                      child: Text(
                        'SCALE',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ),
                  ),
                ),
                FigmaPositioned(
                  x: 150,
                  y: 110,
                  width: 100,
                  height: 60,
                  horizontalConstraint: ConstraintType.scale,
                  verticalConstraint: ConstraintType.scale,
                  child: Container(
                    color: Colors.lime,
                    child: const Center(
                      child: Text(
                        'SCALE',
                        style: TextStyle(color: Colors.black, fontSize: 12),
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
      matchesGoldenFile('goldens/absolute_constraint_scale.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - all constraint types together',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[200],
          body: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: FigmaAbsoluteLayout(
                layout: const FigmaAbsoluteLayoutProperties(
                  width: 400,
                  height: 300,
                ),
                children: [
                  FigmaPositioned(
                    x: 10,
                    y: 10,
                    width: 70,
                    height: 50,
                    horizontalConstraint: ConstraintType.min,
                    verticalConstraint: ConstraintType.min,
                    child: Container(
                      color: Colors.red,
                      child: const Center(
                        child: Text('MIN', style: TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
                  ),
                  FigmaPositioned(
                    x: 320,
                    y: 10,
                    width: 70,
                    height: 50,
                    horizontalConstraint: ConstraintType.max,
                    verticalConstraint: ConstraintType.min,
                    child: Container(
                      color: Colors.orange,
                      child: const Center(
                        child: Text('MAX', style: TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
                  ),
                  FigmaPositioned(
                    x: 165,
                    y: 125,
                    width: 70,
                    height: 50,
                    horizontalConstraint: ConstraintType.center,
                    verticalConstraint: ConstraintType.center,
                    child: Container(
                      color: Colors.teal,
                      child: const Center(
                        child: Text('CTR', style: TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
                  ),
                  FigmaPositioned(
                    x: 10,
                    y: 80,
                    width: 380,
                    height: 40,
                    horizontalConstraint: ConstraintType.stretch,
                    verticalConstraint: ConstraintType.min,
                    child: Container(
                      color: Colors.indigo.withOpacity(0.7),
                      child: const Center(
                        child: Text('STRETCH H', style: TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
                  ),
                  FigmaPositioned(
                    x: 100,
                    y: 70,
                    width: 60,
                    height: 80,
                    horizontalConstraint: ConstraintType.scale,
                    verticalConstraint: ConstraintType.scale,
                    child: Container(
                      color: Colors.amber.withOpacity(0.8),
                      child: const Center(
                        child: Text('SCALE', style: TextStyle(color: Colors.black, fontSize: 10)),
                      ),
                    ),
                  ),
                  FigmaPositioned(
                    x: 10,
                    y: 240,
                    width: 70,
                    height: 50,
                    horizontalConstraint: ConstraintType.min,
                    verticalConstraint: ConstraintType.max,
                    child: Container(
                      color: Colors.purple,
                      child: const Center(
                        child: Text('MIN V', style: TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
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
      matchesGoldenFile('goldens/absolute_all_constraints.png'),
    );
  });

  testWidgets('FigmaAbsoluteLayout - overlapping elements',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 300,
                height: 200,
              ),
              children: [
                FigmaPositioned(
                  x: 50,
                  y: 50,
                  width: 120,
                  height: 100,
                  child: Container(
                    color: Colors.red.withOpacity(0.7),
                  ),
                ),
                FigmaPositioned(
                  x: 100,
                  y: 70,
                  width: 120,
                  height: 100,
                  child: Container(
                    color: Colors.blue.withOpacity(0.7),
                  ),
                ),
                FigmaPositioned(
                  x: 150,
                  y: 50,
                  width: 120,
                  height: 100,
                  child: Container(
                    color: Colors.green.withOpacity(0.7),
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
      matchesGoldenFile('goldens/absolute_overlapping.png'),
    );
  });

  testWidgets('Mixed Layout - AutoLayout inside AbsoluteLayout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 400,
                height: 300,
              ),
              children: [
                FigmaPositioned(
                  x: 20,
                  y: 20,
                  width: 150,
                  height: 120,
                  child: FigmaAutoLayout(
                    layout: const FigmaAutoLayoutProperties(
                      direction: Axis.vertical,
                      itemSpacing: 8,
                      paddingLeft: 10,
                      paddingRight: 10,
                      paddingTop: 10,
                      paddingBottom: 10,
                      primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                      counterAxisSizingMode: CounterAxisSizingMode.auto,
                    ),
                    children: [
                      Container(width: 130, height: 30, color: Colors.red),
                      Container(width: 130, height: 30, color: Colors.blue),
                      Container(width: 130, height: 30, color: Colors.green),
                    ],
                  ),
                ),
                FigmaPositioned(
                  x: 200,
                  y: 100,
                  width: 180,
                  height: 80,
                  child: FigmaAutoLayout(
                    layout: const FigmaAutoLayoutProperties(
                      direction: Axis.horizontal,
                      itemSpacing: 10,
                      paddingLeft: 12,
                      paddingRight: 12,
                      paddingTop: 12,
                      paddingBottom: 12,
                      primaryAxisAlignItems: LayoutAlign.center,
                      counterAxisAlignItems: LayoutAlign.center,
                    ),
                    children: [
                      Container(width: 40, height: 40, color: Colors.orange),
                      Container(width: 40, height: 40, color: Colors.purple),
                      Container(width: 40, height: 40, color: Colors.teal),
                    ],
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
      matchesGoldenFile('goldens/mixed_auto_in_absolute.png'),
    );
  });

  testWidgets('Mixed Layout - AbsoluteLayout inside AutoLayout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAutoLayout(
              layout: const FigmaAutoLayoutProperties(
                direction: Axis.vertical,
                itemSpacing: 20,
                paddingLeft: 20,
                paddingRight: 20,
                paddingTop: 20,
                paddingBottom: 20,
                primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                counterAxisSizingMode: CounterAxisSizingMode.auto,
              ),
              children: [
                Container(
                  width: 300,
                  height: 60,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Header')),
                ),
                FigmaAbsoluteLayout(
                  layout: const FigmaAbsoluteLayoutProperties(
                    width: 300,
                    height: 200,
                  ),
                  children: [
                    FigmaPositioned(
                      x: 10,
                      y: 10,
                      width: 80,
                      height: 80,
                      child: Container(color: Colors.red),
                    ),
                    FigmaPositioned(
                      x: 110,
                      y: 60,
                      width: 80,
                      height: 80,
                      child: Container(color: Colors.blue),
                    ),
                    FigmaPositioned(
                      x: 210,
                      y: 110,
                      width: 80,
                      height: 80,
                      child: Container(color: Colors.green),
                    ),
                  ],
                ),
                Container(
                  width: 300,
                  height: 60,
                  color: Colors.grey[300],
                  child: const Center(child: Text('Footer')),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await expectLater(
      find.byType(Scaffold),
      matchesGoldenFile('goldens/mixed_absolute_in_auto.png'),
    );
  });

  testWidgets('Mixed Layout - complex nested structure',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[100],
          body: Center(
            child: FigmaAbsoluteLayout(
              layout: const FigmaAbsoluteLayoutProperties(
                width: 500,
                height: 400,
              ),
              children: [
                FigmaPositioned(
                  x: 20,
                  y: 20,
                  width: 220,
                  height: 360,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.stretch,
                  child: FigmaAutoLayout(
                    layout: const FigmaAutoLayoutProperties(
                      direction: Axis.vertical,
                      itemSpacing: 12,
                      paddingLeft: 15,
                      paddingRight: 15,
                      paddingTop: 15,
                      paddingBottom: 15,
                      primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                      counterAxisSizingMode: CounterAxisSizingMode.fixed,
                    ),
                    children: [
                      Container(
                        width: 190,
                        height: 80,
                        color: Colors.indigo,
                        child: const Center(
                          child: Text('Item 1', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 80,
                        color: Colors.deepPurple,
                        child: const Center(
                          child: Text('Item 2', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      Container(
                        width: 190,
                        height: 80,
                        color: Colors.purple,
                        child: const Center(
                          child: Text('Item 3', style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ),
                FigmaPositioned(
                  x: 260,
                  y: 20,
                  width: 220,
                  height: 160,
                  horizontalConstraint: ConstraintType.max,
                  verticalConstraint: ConstraintType.min,
                  child: Container(
                    color: Colors.orange[300],
                    child: const Center(
                      child: Text('Pinned Right', style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
                FigmaPositioned(
                  x: 260,
                  y: 200,
                  width: 220,
                  height: 180,
                  horizontalConstraint: ConstraintType.max,
                  verticalConstraint: ConstraintType.max,
                  child: FigmaAutoLayout(
                    layout: const FigmaAutoLayoutProperties(
                      direction: Axis.horizontal,
                      layoutWrap: LayoutWrap.wrap,
                      itemSpacing: 8,
                      counterAxisSpacing: 8,
                      paddingLeft: 12,
                      paddingRight: 12,
                      paddingTop: 12,
                      paddingBottom: 12,
                      primaryAxisSizingMode: PrimaryAxisSizingMode.fixed,
                    ),
                    children: [
                      Container(width: 60, height: 60, color: Colors.red),
                      Container(width: 60, height: 60, color: Colors.blue),
                      Container(width: 60, height: 60, color: Colors.green),
                      Container(width: 60, height: 60, color: Colors.yellow),
                      Container(width: 60, height: 60, color: Colors.cyan),
                      Container(width: 60, height: 60, color: Colors.pink),
                    ],
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
      matchesGoldenFile('goldens/mixed_complex_nested.png'),
    );
  });

  testWidgets('Child Sizing - Hug content in AutoLayout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAutoLayout(
              layout: const FigmaAutoLayoutProperties(
                direction: Axis.horizontal,
                itemSpacing: 16,
                paddingLeft: 20,
                paddingRight: 20,
                paddingTop: 20,
                paddingBottom: 20,
                primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                counterAxisSizingMode: CounterAxisSizingMode.auto,
              ),
              children: [
                FigmaChildSize(
                  width: 100,
                  height: 80,
                  primaryAxisSizing: ChildSizingMode.fixed,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(
                    color: Colors.red,
                    child: const Center(
                      child: Text('FIXED', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                FigmaChildSize(
                  width: 0,
                  height: 80,
                  primaryAxisSizing: ChildSizingMode.hug,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Center(
                      child: Text('HUG', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                FigmaChildSize(
                  width: 120,
                  height: 80,
                  primaryAxisSizing: ChildSizingMode.fixed,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(
                    color: Colors.green,
                    child: const Center(
                      child: Text('FIXED', style: TextStyle(color: Colors.white)),
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
      matchesGoldenFile('goldens/child_sizing_hug_vs_fixed.png'),
    );
  });

  testWidgets('Child Sizing - Mixed hug and fixed in vertical layout',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAutoLayout(
              layout: const FigmaAutoLayoutProperties(
                direction: Axis.vertical,
                itemSpacing: 12,
                paddingLeft: 20,
                paddingRight: 20,
                paddingTop: 20,
                paddingBottom: 20,
                primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                counterAxisSizingMode: CounterAxisSizingMode.auto,
              ),
              children: [
                FigmaChildSize(
                  width: 200,
                  height: 60,
                  primaryAxisSizing: ChildSizingMode.fixed,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(
                    color: Colors.purple,
                    child: const Center(
                      child: Text('Fixed 200x60', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                FigmaChildSize(
                  width: 200,
                  height: 0,
                  primaryAxisSizing: ChildSizingMode.hug,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(
                    color: Colors.teal,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: const Center(
                      child: Text('Hug Height', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ),
                FigmaChildSize(
                  width: 200,
                  height: 80,
                  primaryAxisSizing: ChildSizingMode.fixed,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(
                    color: Colors.orange,
                    child: const Center(
                      child: Text('Fixed 200x80', style: TextStyle(color: Colors.white)),
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
      matchesGoldenFile('goldens/child_sizing_vertical_mixed.png'),
    );
  });

  testWidgets('Child Sizing - All hug content',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: FigmaAutoLayout(
              layout: const FigmaAutoLayoutProperties(
                direction: Axis.horizontal,
                itemSpacing: 10,
                paddingLeft: 15,
                paddingRight: 15,
                paddingTop: 15,
                paddingBottom: 15,
                primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                counterAxisSizingMode: CounterAxisSizingMode.auto,
              ),
              children: [
                FigmaChildSize(
                  primaryAxisSizing: ChildSizingMode.hug,
                  counterAxisSizing: ChildSizingMode.hug,
                  child: Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(15),
                    child: const Text('Short', style: TextStyle(color: Colors.white)),
                  ),
                ),
                FigmaChildSize(
                  primaryAxisSizing: ChildSizingMode.hug,
                  counterAxisSizing: ChildSizingMode.hug,
                  child: Container(
                    color: Colors.blue,
                    padding: const EdgeInsets.all(15),
                    child: const Text('Medium Text', style: TextStyle(color: Colors.white)),
                  ),
                ),
                FigmaChildSize(
                  primaryAxisSizing: ChildSizingMode.hug,
                  counterAxisSizing: ChildSizingMode.hug,
                  child: Container(
                    color: Colors.green,
                    padding: const EdgeInsets.all(15),
                    child: const Text('Longer Text Here', style: TextStyle(color: Colors.white)),
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
      matchesGoldenFile('goldens/child_sizing_all_hug.png'),
    );
  });
}
