part of '../main.dart';

class ClipExample extends StatelessWidget implements Example {
  const ClipExample({super.key});

  @override
  String get name => 'Clip';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          _OverflowingChild(),
          FigmaClip(shape: FigmaRectangleShape(), child: _OverflowingChild()),
          FigmaClip(
            shape: FigmaRectangleShape.all(24.0, smoothing: 0),
            child: _OverflowingChild(),
          ),
        ],
      ),
    );
  }
}

class _OverflowingChild extends StatelessWidget {
  const _OverflowingChild();

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(width: 500, height: 200, color: Color(0xFFFF0000)),
        Positioned(
          top: -100,
          left: -100,
          child: Container(width: 200, height: 200, color: Color(0xFF00FF00)),
        ),
      ],
    );
  }
}
