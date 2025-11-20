import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/clip.dart';

class FigmaClip extends SingleChildRenderObjectWidget {
  const FigmaClip({
    super.key,
    required this.shape,
    super.child,
  });

  final FigmaShape shape;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaClip(shape: shape);
  }

  @override
  void updateRenderObject(BuildContext context, RenderFigmaClip renderObject) {
    renderObject.shape = shape;
  }
}
