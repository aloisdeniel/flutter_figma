part of '../main.dart';

class DecoratedExample extends StatelessWidget implements Example {
  const DecoratedExample({super.key});

  @override
  String get name => 'Decorated';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          FigmaDecorated(
            decoration: FigmaDecoration(
              fills: [SolidPaint(color: Color(0xFFFF0000))],
            ),
            child: SizedBox(width: 500, height: 200),
          ),
          FigmaDecorated(
            decoration: FigmaDecoration(
              fills: [
                SolidPaint(color: Color(0xFFFF0000)),
                LinearGradientPaint(
                  gradientStops: [
                    ColorStop(
                      position: 0.0,
                      color: Color.fromRGBO(255, 77, 77, 0.4),
                    ),
                    ColorStop(
                      position: 1.0,
                      color: Color.fromRGBO(77, 77, 255, 0.4),
                    ),
                  ],
                  opacity: 1.0,
                ),
              ],
            ),
            child: SizedBox(width: 500, height: 200),
          ),
          FigmaDecorated(
            shape: FigmaRectangleShape.all(24.0, smoothing: 0),
            decoration: FigmaDecoration(
              fills: [SolidPaint(color: Color(0xFFFF0000))],
            ),
            child: SizedBox(width: 500, height: 200),
          ),
          for (var align in FigmaStrokeAlignment.values)
            FigmaDecorated(
              stroke: FigmaStroke.uniform(weight: 20, alignment: align),
              shape: FigmaRectangleShape.all(24.0, smoothing: 0),
              decoration: FigmaDecoration(
                fills: [SolidPaint(color: Color(0xFFFF0000))],
                strokes: [SolidPaint(color: Color(0xCC00FF00))],
              ),
              child: SizedBox(width: 500, height: 200),
            ),
          FigmaDecorated(
            decoration: FigmaDecoration(
              fills: [SolidPaint(color: Color(0xFFFF0000))],
            ),
            child: Padding(padding: EdgeInsets.all(24), child: Text('Hello')),
          ),
        ],
      ),
    );
  }
}
