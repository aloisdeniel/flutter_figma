import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/rendering/paint/blend_mode.dart';
import 'package:flutter_figma/widgets.dart';

extension FigmaPaintGradientExtensions on Paint {
  void applyFigmaPaint(Rect rect, FigmaPaint figmaPaint) {
    blendMode = figmaPaint.blendMode.toFlutter();

    switch (figmaPaint) {
      case SolidPaint(:final color, :final opacity):
        this.color = color.withValues(alpha: color.a * opacity);
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

        print('begin: $begin');
        print('end: $end');
        print('colors: ${colors.join(', ')}');
        print('stops: ${stops.join(', ')}');

        shader = ui.Gradient.linear(
          Offset.zero, // TODO
          Offset(rect.size.width, 0), //TODO
          colors,
          stops,
        );
        color = ui.Color.fromRGBO(255, 255, 255, opacity);
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

        shader = ui.Gradient.radial(
          center,
          radius,
          colors,
          stops,
        );
        color = ui.Color.fromRGBO(255, 255, 255, opacity);
      case AngularGradientPaint(
          :final gradientStops,
          :final gradientTransform,
          :final opacity
        ):
        final colors = gradientStops.map((stop) => stop.color).toList();
        final stops = gradientStops.map((stop) => stop.position).toList();

        final matrix = _transformToMatrix4(gradientTransform, rect);
        final center = _transformPoint(matrix, 0.5, 0.5);

        shader = ui.Gradient.sweep(
          center,
          colors,
          stops,
        );
        color = ui.Color.fromRGBO(255, 255, 255, opacity);
      case DiamondGradientPaint(:final opacity):
        color = ui.Color.fromRGBO(255, 0, 255, opacity);
      case ImagePaint(:final opacity):
        color = ui.Color.fromRGBO(0, 255, 255, opacity);
      case VideoPaint(:final opacity):
        color = ui.Color.fromRGBO(255, 255, 0, opacity);
      case PatternPaint(:final opacity):
        color = ui.Color.fromRGBO(0, 255, 0, opacity);
    }
  }
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
