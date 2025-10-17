import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/filtered.dart';

class FigmaFiltered extends SingleChildRenderObjectWidget {
  const FigmaFiltered({
    super.key,
    required this.effects,
    required this.shape,
    super.child,
  });

  final List<FigmaEffect> effects;
  final FigmaDecorationShape shape;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaFiltered(effects: effects);
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaFiltered renderObject) {
    renderObject.effects = effects;
  }
}
