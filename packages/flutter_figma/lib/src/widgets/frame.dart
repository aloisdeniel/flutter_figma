import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/appearance.dart';
import 'package:flutter_figma/src/widgets/clip.dart';
import 'package:flutter_figma/src/widgets/decorated.dart';
import 'package:flutter_figma/src/widgets/filtered.dart';
import 'package:flutter_figma/src/widgets/layout.dart';

class FigmaFrame extends StatelessWidget {
  const FigmaFrame({
    super.key,
    required this.layout,
    this.size,
    this.decoration,
    this.effects = const [],
    this.opacity = 1.0,
    this.visible = true,
    this.blendMode = BlendMode.passThrough,
    this.shape = const FigmaRectangleShape(),
    this.stroke = const FigmaStroke.uniform(weight: 1),
    this.clipContent = true,
    this.children = const [],
  });

  final ChildSize? size;
  final FigmaLayoutProperties layout;
  final FigmaRectangleShape shape;
  final FigmaStroke stroke;
  final FigmaDecoration? decoration;
  final List<FigmaEffect> effects;
  final double opacity;
  final bool visible;
  final BlendMode blendMode;
  final bool clipContent;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    if (!visible) {
      return const SizedBox.shrink();
    }

    Widget result = FigmaLayout(
      layout: layout,
      children: children,
    );

    if (clipContent) {
      result = FigmaClip(
        shape: shape,
        child: result,
      );
    }

    if (decoration case final decoration?) {
      result = FigmaDecorated(
        decoration: decoration,
        shape: shape,
        child: result,
      );
    }

    if (effects.isNotEmpty && decoration != null) {
      result = FigmaFiltered(
        effects: effects,
        shape: shape,
        child: result,
      );
    }

    if (blendMode != BlendMode.passThrough || opacity < 1) {
      result = FigmaAppearance(
        opacity: opacity.clamp(0.0, 1.0),
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
