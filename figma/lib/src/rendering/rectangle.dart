import 'dart:math' as math;
import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:vector_math/vector_math_64.dart';

import 'frame.dart';

class RenderFigmaRectangle extends RenderBox {
  RenderFigmaRectangle({
    Size designSize,
    FigmaTransform designTransform,
    ImageConfiguration configuration,
    FigmaLayoutAlign layoutAlign,
    double opacity,
    FigmaLayoutConstraints designConstraints,
    FigmaPaintDecoration decoration,
  })  : _designSize = designSize,
        _configuration = configuration,
        _opacity = opacity ?? 1.0,
        _designConstraints = designConstraints,
        _designLayoutAlign = layoutAlign,
        _designTransform = designTransform,
        _decoration = decoration {
    _updateParentData();
  }

  void _updateParentData() {
    parentData ??= FigmaLayoutParentData();
    final data = parentData as FigmaLayoutParentData;
    data.constraints = _designConstraints;
    data.layoutAlign = _designLayoutAlign;
    data.transform = _designTransform;
  }

  Size get designSize => _designSize;
  Size _designSize;
  set designSize(Size value) {
    assert(value != null);
    if (_designSize != value) {
      _designSize = value;
      markNeedsLayout();
    }
  }

  FigmaTransform get designTransform => _designTransform;
  FigmaTransform _designTransform;
  set designTransform(FigmaTransform value) {
    assert(value != null);
    if (_designTransform != value) {
      _designTransform = value;
      _updateParentData();
      markNeedsLayout();
    }
  }

  FigmaLayoutConstraints get designConstraints => _designConstraints;
  FigmaLayoutConstraints _designConstraints;
  set designConstraints(FigmaLayoutConstraints value) {
    assert(value != null);
    if (_designConstraints != value) {
      _designConstraints = value;
      _updateParentData();
      markNeedsLayout();
    }
  }

  FigmaLayoutAlign get designLayoutAlign => _designLayoutAlign;
  FigmaLayoutAlign _designLayoutAlign;
  set designLayoutAlign(FigmaLayoutAlign value) {
    assert(value != null);
    if (_designLayoutAlign != value) {
      _designLayoutAlign = value;
      _updateParentData();
      markNeedsLayout();
    }
  }

  BoxPainter _painter;

  FigmaPaintDecoration get decoration => _decoration;
  FigmaPaintDecoration _decoration;
  set decoration(FigmaPaintDecoration value) {
    assert(value != null);
    if (_decoration != value) {
      _painter?.dispose();
      _painter = null;
      _decoration = value;
      markNeedsPaint();
    }
  }

  double get opacity => _opacity;
  double _opacity;
  set opacity(double value) {
    assert(value != null);
    if (_opacity != value) {
      _opacity = value;
      markNeedsPaint();
    }
  }

  ImageConfiguration get configuration => _configuration;
  ImageConfiguration _configuration;
  set configuration(ImageConfiguration value) {
    assert(value != null);
    if (value == _configuration) return;
    _configuration = value;
    markNeedsPaint();
  }

  @override
  void detach() {
    _painter?.dispose();
    _painter = null;
    super.detach();
    // Since we're disposing of our painter, we won't receive change
    // notifications. We mark ourselves as needing paint so that we will
    // resubscribe to change notifications. If we didn't do this, then, for
    // example, animated GIFs would stop animating when a DecoratedBox gets
    // moved around the tree due to GlobalKey reparenting.
    markNeedsPaint();
  }

  @override
  double computeMinIntrinsicWidth(double height) {
    final bounds = designTransform.calculateBounds(designSize);
    return bounds.width;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    final bounds = designTransform.calculateBounds(designSize);
    return bounds.width;
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    final bounds = designTransform.calculateBounds(designSize);
    return bounds.height;
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    final bounds = designTransform.calculateBounds(designSize);
    return bounds.height;
  }

  @override
  void performLayout() {
    final bounds = designTransform.calculateBounds(designSize);
    final biggest = constraints.biggest;
    final smallest = constraints.smallest;
    size = Size(
      bounds.width.clamp(smallest.width, biggest.width),
      bounds.height.clamp(smallest.height, biggest.height),
    );
  }

  void _transformedPaint(
      PaintingContext context, Offset offset, bool hasTransform) {
    assert(size.width != null);
    assert(size.height != null);
    _painter ??= _decoration.createBoxPainter(markNeedsPaint);
    final filledConfiguration = configuration.copyWith(
      size: hasTransform ? designSize : size, // TODO Replace with bounds invert
    );

    // Painting background decoration
    int debugSaveCount;
    assert(() {
      debugSaveCount = context.canvas.getSaveCount();
      return true;
    }());
    _painter.paint(context.canvas, offset, filledConfiguration);
    assert(() {
      if (debugSaveCount != context.canvas.getSaveCount()) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary(
              '${_decoration.runtimeType} painter had mismatching save and restore calls.'),
          ErrorDescription(
              'Before painting the decoration, the canvas save count was $debugSaveCount. '
              'After painting it, the canvas save count was ${context.canvas.getSaveCount()}. '
              'Every call to save() or saveLayer() must be matched by a call to restore().'),
          DiagnosticsProperty<Decoration>('The decoration was', decoration,
              style: DiagnosticsTreeStyle.errorProperty),
          DiagnosticsProperty<BoxPainter>('The painter was', _painter,
              style: DiagnosticsTreeStyle.errorProperty),
        ]);
      }
      return true;
    }());
    if (decoration.isComplex) context.setIsComplexHint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (designTransform.hasRotationOrScale) {
      // Applying transform
      final originalSize = designSize;

      var transform = Matrix4.translationValues(
            (size.width / 2),
            (size.height / 2),
            0,
          ) *
          designTransform.matrixWithoutTranslate *
          Matrix4.translationValues(
            -(originalSize.width / 2),
            -(originalSize.height / 2),
            0,
          );

      layer = context.pushTransform(
        needsCompositing,
        offset,
        transform,
        (c, o) => _transformedPaint(c, o, true),
        oldLayer: layer as TransformLayer,
      );
    } else {
      _transformedPaint(context, offset, false);
    }
  }
}
