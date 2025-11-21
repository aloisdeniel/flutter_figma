import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart' as fl;
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/clip.dart';

class RenderFigmaFiltered extends RenderProxyBox {
  RenderFigmaFiltered({
    required FigmaShape shape,
    required List<FigmaEffect> effects,
  })  : _effects = effects,
        _shape = shape;

  FigmaShape _shape;
  FigmaShape get shape => _shape;
  set shape(FigmaShape value) {
    if (_shape == value) return;
    _shape = value;
    markNeedsPaint();
  }

  List<FigmaEffect> _effects;
  List<FigmaEffect> get effects => _effects;
  set effects(List<FigmaEffect> value) {
    if (listEquals(_effects, value)) return;
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

    var paint = super.paint;
    for (final effect in visibleEffects) {
      switch (effect) {
        case LayerBlurEffect(:final radius):
          paint = (context, offset) {
            if (child != null) {
              layer ??= ImageFilterLayer();
              if (layer case ImageFilterLayer layer?) {
                layer.imageFilter = ui.ImageFilter.blur(
                  sigmaX: radius,
                  sigmaY: radius,
                );
              }
              context.pushLayer(layer!, super.paint, offset);
            } else {
              layer = null;
            }
          };
        case BackgroundBlurEffect(:final radius):
          paint = (context, offset) {
            context.clipFigmaShape(
              offset & size,
              null,
              offset & size,
              shape,
              () {
                if (child != null) {
                  layer ??= BackdropFilterLayer();
                  if (layer case BackdropFilterLayer layer?) {
                    layer.filter = ui.ImageFilter.blur(
                      sigmaX: radius,
                      sigmaY: radius,
                    );
                    layer.blendMode = fl.BlendMode.srcOver;
                  }
                  context.pushLayer(layer!, super.paint, offset);
                } else {
                  layer = null;
                }
              },
            );
          };

        default:
      }
    }
    paint(context, offset);
  }
}
