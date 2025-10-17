import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

class RenderFigmaFiltered extends RenderProxyBox {
  RenderFigmaFiltered({required List<FigmaEffect> effects})
      : _effects = effects;

  List<FigmaEffect> _effects;
  List<FigmaEffect> get effects => _effects;
  set effects(List<FigmaEffect> value) {
    if (_effects == value) return;
    _effects = value;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.isEmpty) return;

    final visibleEffects = _effects.where((e) => e.visible).toList();
    if (visibleEffects.isEmpty) {
      super.paint(context, offset);
      return;
    }

    for (final effect in visibleEffects) {
      switch (effect) {
        case LayerBlurEffect(:final radius):
          _paintWithLayerBlur(context, offset, radius);
        case BackgroundBlurEffect(:final radius):
          _paintWithBackgroundBlur(context, offset, radius);
        default:
          super.paint(context, offset);
      }
    }
  }

  void _paintWithLayerBlur(
      PaintingContext context, Offset offset, double radius) {
    final canvas = context.canvas;
    final rect = offset & size;

    canvas.saveLayer(
      rect,
      Paint()
        ..imageFilter = ui.ImageFilter.blur(sigmaX: radius, sigmaY: radius),
    );
    super.paint(context, offset);
    canvas.restore();
  }

  void _paintWithBackgroundBlur(
      PaintingContext context, Offset offset, double radius) {
    final canvas = context.canvas;
    final rect = offset & size;

    canvas.saveLayer(
      rect,
      Paint()
        ..imageFilter = ui.ImageFilter.blur(
          sigmaX: radius,
          sigmaY: radius,
          tileMode: TileMode.decal,
        ),
    );
    super.paint(context, offset);
    canvas.restore();
  }
}
