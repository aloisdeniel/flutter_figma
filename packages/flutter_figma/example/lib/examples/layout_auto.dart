part of '../main.dart';

class AutoLayoutExample extends StatelessWidget implements Example {
  const AutoLayoutExample({super.key});

  @override
  String get name => 'Auto Layout';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          for (var axis in Axis.values)
            Container(
              color: Color(0x11000000),
              child: FigmaLayout(
                layout: FigmaLayoutProperties.auto(
                  axis: axis,
                  referenceWidth: 300,
                  referenceHeight: 200,
                  padding: EdgeInsets.all(10),
                  itemSpacing: 10,
                ),
                children: [
                  FigmaPositioned.auto(
                    width: 100,
                    height: 100,
                    primaryAxisSizing: ChildSizingMode.fixed,
                    counterAxisSizing: ChildSizingMode.fixed,
                    child: Container(color: Colors.red, child: Text('Hello')),
                  ),
                  FigmaPositioned.auto(
                    width: 100,
                    height: 100,
                    primaryAxisSizing: ChildSizingMode.fixed,
                    child: Container(
                      color: Colors.green,
                      child: Text('Example'),
                    ),
                  ),
                  FigmaPositioned.auto(
                    width: 100,
                    height: 100,
                    counterAxisSizing: ChildSizingMode.fixed,
                    child: Container(color: Colors.blue, child: Text('World')),
                  ),
                ],
              ),
            ),
          Container(
            color: Color(0x11000000),
            child: FigmaLayout(
              layout: FigmaLayoutProperties.auto(
                axis: Axis.horizontal,
                referenceWidth: 300,
                referenceHeight: 200,
                padding: EdgeInsets.all(10),
                itemSpacing: 10,
              ),
              children: [
                FigmaPositioned.auto(
                  width: 100,
                  height: 100,
                  primaryAxisSizing: ChildSizingMode.fixed,
                  counterAxisSizing: ChildSizingMode.fixed,
                  child: Container(color: Colors.red, child: Text('Hello')),
                ),
                FigmaPositioned.auto(
                  width: 100,
                  height: 100,
                  primaryAxisSizing: ChildSizingMode.fixed,
                  child: Container(color: Colors.green, child: Text('Example')),
                ),
                FigmaPositioned.freeform(
                  x: 140,
                  y: 20,
                  width: 140,
                  height: 100,
                  horizontalConstraint: ConstraintType.max,
                  child: Container(color: Colors.orange.withValues(alpha: 0.5)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
