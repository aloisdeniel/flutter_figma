import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/base_node.dart';

class FigmaDecorated extends Widget {
  const FigmaDecorated({
    required this.shape,
    this.fills = const [],
    this.strokes = const [],
    this.strokeWeight = 1.0,
    this.strokeAlign = StrokeAlign.inside,
    this.strokeCap = StrokeCap.none,
    this.strokeJoin = StrokeJoin.miter,
    this.strokeMiterLimit = 4.0,
    this.effects = const [],
    this.isMask = false,
    this.maskType = MaskType.alpha,
  });

  final FigmaShape shape;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final double strokeWeight;
  final StrokeAlign strokeAlign;
  final StrokeCap strokeCap;
  final StrokeJoin strokeJoin;
  final double strokeMiterLimit;
  final bool isMask;
  final MaskType maskType;

  @override
  Element createElement() {
    return FigmaLayoutElement(this);
  }
}

sealed class FigmaShape {
  const FigmaShape();
}

class FigmaRectangleShape extends FigmaShape {
  const FigmaRectangleShape({
    this.topLeftRadius = 0,
    this.topRightRadius = 0,
    this.bottomLeftRadius = 0,
    this.bottomRightRadius = 0,
  });

  final double topLeftRadius;
  final double topRightRadius;
  final double bottomLeftRadius;
  final double bottomRightRadius;
}
