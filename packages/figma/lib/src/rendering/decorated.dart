import 'dart:math' as math;
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/foundation/foundation.dart' as figma;

class RenderFigmaDecorated extends RenderProxyBox {
  RenderFigmaDecorated({required FigmaDecoration decoration})
      : _decoration = decoration;

  FigmaDecoration _decoration;
  FigmaDecoration get decoration => _decoration;
  set decoration(FigmaDecoration value) {
    if (_decoration == value) return;
    _decoration = value;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.isEmpty) return;

    final canvas = context.canvas;
    final rect = offset & size;

    for (final fill in _decoration.fills) {
      if (!fill.visible) continue;
      _paintFill(canvas, rect, fill);
    }

    super.paint(context, offset);

    for (final stroke in _decoration.strokes) {
      if (!stroke.visible) continue;
      _paintStroke(canvas, rect, stroke);
    }
  }

  void _paintFill(Canvas canvas, Rect rect, FigmaPaint figmaPaint) {
    final paint = Paint()..style = PaintingStyle.fill;

    paint.blendMode = _convertBlendMode(figmaPaint.blendMode);
    _applyPaint(paint, rect, figmaPaint);

    final path = _createPath(rect);
    canvas.drawPath(path, paint);
  }

  void _paintStroke(Canvas canvas, Rect rect, FigmaPaint figmaPaint) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    paint.blendMode = _convertBlendMode(figmaPaint.blendMode);
    _applyPaint(paint, rect, figmaPaint);

    final path = _createPath(rect);
    canvas.drawPath(path, paint);
  }

  void _applyPaint(Paint paint, Rect rect, FigmaPaint figmaPaint) {
    switch (figmaPaint) {
      case SolidPaint(:final color, :final opacity):
        paint.color = color.withValues(alpha: opacity);
      case LinearGradientPaint(
          :final gradientStops,
          :final gradientTransform,
          :final opacity
        ):
        final colors = gradientStops.map((stop) => stop.color).toList();
        final stops = gradientStops.map((stop) => stop.position).toList();

        final matrix = _transformToMatrix4(gradientTransform, rect);
        final begin = _transformPoint(matrix, 0, 0);
        final end = _transformPoint(matrix, 1, 0);

        paint.shader = ui.Gradient.linear(
          begin,
          end,
          colors,
          stops,
        );
        paint.color = ui.Color.fromRGBO(255, 255, 255, opacity);
      case RadialGradientPaint(
          :final gradientStops,
          :final gradientTransform,
          :final opacity
        ):
        final colors = gradientStops.map((stop) => stop.color).toList();
        final stops = gradientStops.map((stop) => stop.position).toList();

        final matrix = _transformToMatrix4(gradientTransform, rect);
        final center = _transformPoint(matrix, 0.5, 0.5);
        final edge = _transformPoint(matrix, 1, 0.5);
        final radius = (edge - center).distance;

        paint.shader = ui.Gradient.radial(
          center,
          radius,
          colors,
          stops,
        );
        paint.color = ui.Color.fromRGBO(255, 255, 255, opacity);
      case AngularGradientPaint(
          :final gradientStops,
          :final gradientTransform,
          :final opacity
        ):
        final colors = gradientStops.map((stop) => stop.color).toList();
        final stops = gradientStops.map((stop) => stop.position).toList();

        final matrix = _transformToMatrix4(gradientTransform, rect);
        final center = _transformPoint(matrix, 0.5, 0.5);

        paint.shader = ui.Gradient.sweep(
          center,
          colors,
          stops,
        );
        paint.color = ui.Color.fromRGBO(255, 255, 255, opacity);
      case DiamondGradientPaint(:final opacity):
        paint.color = ui.Color.fromRGBO(255, 0, 255, opacity);
      case ImagePaint(:final opacity):
        paint.color = ui.Color.fromRGBO(0, 255, 255, opacity);
      case VideoPaint(:final opacity):
        paint.color = ui.Color.fromRGBO(255, 255, 0, opacity);
      case PatternPaint(:final opacity):
        paint.color = ui.Color.fromRGBO(0, 255, 0, opacity);
    }
  }

  ui.BlendMode _convertBlendMode(figma.BlendMode mode) {
    return switch (mode) {
      figma.BlendMode.normal => ui.BlendMode.srcOver,
      figma.BlendMode.darken => ui.BlendMode.darken,
      figma.BlendMode.multiply => ui.BlendMode.multiply,
      figma.BlendMode.colorBurn => ui.BlendMode.colorBurn,
      figma.BlendMode.lighten => ui.BlendMode.lighten,
      figma.BlendMode.screen => ui.BlendMode.screen,
      figma.BlendMode.colorDodge => ui.BlendMode.colorDodge,
      figma.BlendMode.overlay => ui.BlendMode.overlay,
      figma.BlendMode.softLight => ui.BlendMode.softLight,
      figma.BlendMode.hardLight => ui.BlendMode.hardLight,
      figma.BlendMode.difference => ui.BlendMode.difference,
      figma.BlendMode.exclusion => ui.BlendMode.exclusion,
      figma.BlendMode.hue => ui.BlendMode.hue,
      figma.BlendMode.saturation => ui.BlendMode.saturation,
      figma.BlendMode.color => ui.BlendMode.color,
      figma.BlendMode.luminosity => ui.BlendMode.luminosity,
      figma.BlendMode.passThrough => ui.BlendMode.srcOver,
      figma.BlendMode.linearBurn => ui.BlendMode.darken,
      figma.BlendMode.linearDodge => ui.BlendMode.plus,
    };
  }

  Offset _transformPoint(Matrix4 matrix, double x, double y) {
    final tx = matrix[0] * x + matrix[4] * y + matrix[12];
    final ty = matrix[1] * x + matrix[5] * y + matrix[13];
    return Offset(tx, ty);
  }

  Matrix4 _transformToMatrix4(dynamic transform, Rect rect) {
    final m00 = transform.m00;
    final m01 = transform.m01;
    final m02 = transform.m02;
    final m10 = transform.m10;
    final m11 = transform.m11;
    final m12 = transform.m12;

    return Matrix4(
      m00,
      m10,
      0,
      0,
      m01,
      m11,
      0,
      0,
      0,
      0,
      1,
      0,
      rect.left + m02 * rect.width,
      rect.top + m12 * rect.height,
      0,
      1,
    );
  }

  ui.Path _createPath(Rect rect) {
    final path = ui.Path();

    switch (_decoration.shape) {
      case FigmaRectangleShape(
          :final topLeftRadius,
          :final topRightRadius,
          :final bottomLeftRadius,
          :final bottomRightRadius,
          :final smoothing
        ):
        if (topLeftRadius == 0 &&
            topRightRadius == 0 &&
            bottomLeftRadius == 0 &&
            bottomRightRadius == 0) {
          path.addRect(rect);
        } else if (smoothing > 0) {
          _addSmoothRoundedRect(
            path,
            rect,
            topLeftRadius,
            topRightRadius,
            bottomRightRadius,
            bottomLeftRadius,
            smoothing,
          );
        } else {
          path.addRRect(RRect.fromRectAndCorners(
            rect,
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomRight: Radius.circular(bottomRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
          ));
        }
    }

    return path;
  }

  void _addSmoothRoundedRect(
    ui.Path path,
    Rect rect,
    double topLeft,
    double topRight,
    double bottomRight,
    double bottomLeft,
    double smoothing,
  ) {
    final left = rect.left;
    final top = rect.top;
    final right = rect.right;
    final bottom = rect.bottom;

    final p = (1 + smoothing) * 0.5;

    path.moveTo(left + topLeft, top);
    path.lineTo(right - topRight, top);

    if (topRight > 0) {
      _addSmoothCorner(
        path,
        right - topRight,
        top,
        right,
        top + topRight,
        topRight,
        p,
      );
    }

    path.lineTo(right, bottom - bottomRight);

    if (bottomRight > 0) {
      _addSmoothCorner(
        path,
        right,
        bottom - bottomRight,
        right - bottomRight,
        bottom,
        bottomRight,
        p,
      );
    }

    path.lineTo(left + bottomLeft, bottom);

    if (bottomLeft > 0) {
      _addSmoothCorner(
        path,
        left + bottomLeft,
        bottom,
        left,
        bottom - bottomLeft,
        bottomLeft,
        p,
      );
    }

    path.lineTo(left, top + topLeft);

    if (topLeft > 0) {
      _addSmoothCorner(
        path,
        left,
        top + topLeft,
        left + topLeft,
        top,
        topLeft,
        p,
      );
    }

    path.close();
  }

  void _addSmoothCorner(
    ui.Path path,
    double x1,
    double y1,
    double x2,
    double y2,
    double radius,
    double p,
  ) {
    final angle = math.atan2(y2 - y1, x2 - x1);
    final distance = math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

    final controlDistance = distance * p;

    final cx = x1 + math.cos(angle) * controlDistance;
    final cy = y1 + math.sin(angle) * controlDistance;

    path.quadraticBezierTo(cx, cy, x2, y2);
  }
}
