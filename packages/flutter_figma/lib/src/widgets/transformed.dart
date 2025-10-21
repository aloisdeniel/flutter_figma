import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/geometry.dart';
import 'package:flutter_figma/src/rendering/transformed.dart';

class FigmaTransformed extends SingleChildRenderObjectWidget {
  const FigmaTransformed({
    super.key,
    required this.transform,
    super.child,
  });

  final FigmaTransform transform;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaTransformed(transform: transform);
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaTransformed renderObject) {
    renderObject.transform = transform;
  }
}
