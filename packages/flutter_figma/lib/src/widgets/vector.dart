import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/widgets/blend.dart';
import 'package:flutter_figma/src/widgets/clip.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaVector extends StatelessWidget {
  const FigmaVector({
    super.key,
    this.size,
    required this.decoration,
    this.effects = const [],
    this.opacity = 1.0,
    this.visible = true,
    this.blendMode = BlendMode.passThrough,
    this.clipContent = true,
  });

  final ChildSize? size;
  final FigmaDecoration decoration;
  final List<FigmaEffect> effects;
  final double opacity;
  final bool visible;
  final BlendMode blendMode;
  final bool clipContent;

  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return const SizedBox.shrink();
    }

    Widget result = FigmaDecorated(
      decoration: decoration,
    );

    if (effects.isNotEmpty) {
      result = FigmaFiltered(
        effects: effects,
        shape: decoration.shape,
        child: result,
      );
    }

    if (opacity != 1.0) {
      result = Opacity(
        opacity: opacity.clamp(0.0, 1.0),
        child: result,
      );
    }
    if (clipContent) {
      result = FigmaClip(
        shape: decoration.shape,
        child: result,
      );
    }

    if (blendMode != BlendMode.passThrough) {
      result = FigmaBlend(
        mode: blendMode,
        child: result,
      );
    }

    if (size case final size?) {
      result = FigmaSized(
        size: size,
        child: result,
      );
    }

    return result;
  }
}
