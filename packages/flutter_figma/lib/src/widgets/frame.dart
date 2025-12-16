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
    this.fills = const [],
    this.strokes = const [],
    this.effects = const [],
    this.opacity = 1.0,
    this.visible = true,
    this.blendMode = BlendMode.passThrough,
    this.cornerRadius = const CornerRadius.all(0),
    this.stroke = const FigmaStroke.uniform(weight: 1),
    this.clipContent = true,
    this.children = const [],
  });

  final ChildSize? size;
  final FigmaLayoutProperties layout;
  final CornerRadius cornerRadius;
  final FigmaStroke stroke;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
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

    final shape = FigmaRectangleShape(cornerRadius: cornerRadius);

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

    if (fills.isNotEmpty || strokes.isNotEmpty) {
      result = FigmaDecorated(
        decoration: FigmaDecoration(
          fills: fills,
          strokes: strokes,
        ),
        shape: shape,
        child: result,
      );
    }

    if (effects.isNotEmpty && fills.isNotEmpty) {
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
