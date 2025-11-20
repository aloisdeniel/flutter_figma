part of '../main.dart';

class FreeformLayoutExample extends StatelessWidget implements Example {
  const FreeformLayoutExample({super.key});

  @override
  String get name => 'Freeform layout';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          Container(
            color: Color(0x11000000),
            width: 300,
            height: 200,
            child: FigmaLayout(
              layout: FigmaLayoutProperties.freeform(
                referenceWidth: 300,
                referenceHeight: 200,
              ),
              children: [
                FigmaPositioned.freeform(
                  x: 0,
                  y: 0,
                  width: 100,
                  height: 100,
                  child: Text('Example'),
                ),
                FigmaPositioned.freeform(
                  x: 50,
                  y: 50,
                  width: 100,
                  height: 100,
                  child: Text('World'),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0x11000000),
            width: 300,
            height: 200,
            child: FigmaLayout(
              layout: FigmaLayoutProperties.freeform(
                referenceWidth: 300,
                referenceHeight: 200,
              ),
              children: [
                FigmaPositioned.freeform(
                  x: 0,
                  y: 0,
                  width: 100,
                  height: 100,
                  child: Container(color: Colors.red),
                ),
                FigmaPositioned.freeform(
                  x: 50,
                  y: 50,
                  width: 100,
                  height: 100,
                  child: Container(color: Colors.blue),
                ),
              ],
            ),
          ),

          Container(
            color: Color(0x11000000),
            width: 400,
            height: 300,
            child: FigmaLayout(
              layout: FigmaLayoutProperties.freeform(
                referenceWidth: 100,
                referenceHeight: 100,
              ),
              children: [
                FigmaPositioned.freeform(
                  x: 10,
                  y: 10,
                  width: 80,
                  height: 80,
                  horizontalConstraint: ConstraintType.scale,
                  verticalConstraint: ConstraintType.scale,
                  child: Container(color: Colors.orange.withValues(alpha: 0.2)),
                ),
                FigmaPositioned.freeform(
                  x: 10,
                  y: 10,
                  width: 80,
                  height: 80,
                  horizontalConstraint: ConstraintType.stretch,
                  verticalConstraint: ConstraintType.stretch,
                  child: Container(color: Colors.pink.withValues(alpha: 0.2)),
                ),
                FigmaPositioned.freeform(
                  x: 0,
                  y: 0,
                  width: 100,
                  height: 100,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.min,
                  child: Container(color: Colors.red),
                ),
                FigmaPositioned.freeform(
                  x: 0,
                  y: 0,
                  width: 100,
                  height: 100,
                  horizontalConstraint: ConstraintType.center,
                  verticalConstraint: ConstraintType.center,
                  child: Container(color: Colors.blue),
                ),
                FigmaPositioned.freeform(
                  x: 0,
                  y: 0,
                  width: 100,
                  height: 100,
                  horizontalConstraint: ConstraintType.max,
                  verticalConstraint: ConstraintType.max,
                  child: Container(color: Colors.green),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0x11000000),
            width: 400,
            height: 300,
            child: FigmaLayout(
              layout: FigmaLayoutProperties.freeform(
                referenceWidth: 100,
                referenceHeight: 100,
              ),
              children: [
                FigmaPositioned.freeform(
                  x: -10,
                  y: -10,
                  width: 100,
                  height: 100,
                  horizontalConstraint: ConstraintType.min,
                  verticalConstraint: ConstraintType.min,
                  child: Container(color: Colors.red),
                ),
                FigmaPositioned.freeform(
                  x: 10,
                  y: 10,
                  width: 100,
                  height: 100,
                  horizontalConstraint: ConstraintType.max,
                  verticalConstraint: ConstraintType.max,
                  child: Container(color: Colors.green),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
