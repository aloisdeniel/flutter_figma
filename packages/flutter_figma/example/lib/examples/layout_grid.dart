part of '../main.dart';

class GridLayoutExample extends StatelessWidget implements Example {
  const GridLayoutExample({super.key});

  @override
  String get name => 'Grid Layout';

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
              layout: FigmaLayoutProperties.grid(
                padding: EdgeInsets.all(10),
                columnGap: 10,
                rowGap: 10,
                columnCount: 3,
                rowCount: 2,
              ),
              children: [
                FigmaPositioned.grid(
                  row: 0,
                  column: 0,
                  rowSpan: 1,
                  columnSpan: 1,
                  child: Container(color: Colors.red, child: Text('Hello')),
                ),
                FigmaPositioned.grid(
                  row: 1,
                  column: 1,
                  rowSpan: 2,
                  columnSpan: 1,
                  child: Container(color: Colors.green, child: Text('Example')),
                ),
                FigmaPositioned.grid(
                  row: 0,
                  column: 2,
                  rowSpan: 1,
                  columnSpan: 2,
                  child: Container(color: Colors.blue, child: Text('World')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
