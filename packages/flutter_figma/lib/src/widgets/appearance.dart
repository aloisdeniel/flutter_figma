import 'package:flutter/widgets.dart' hide BlendMode;
import 'package:flutter_figma/src/rendering/paint/blend_mode.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaAppearance extends StatelessWidget {
  const FigmaAppearance({
    super.key,
    required this.child,
    this.opacity = 1.0,
    this.mode = BlendMode.normal,
  });

  final double opacity;
  final BlendMode mode;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    // TODO
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        const Color(0x00000000),
        mode.toFlutter(),
      ),
      child: child,
    );
  }
}
