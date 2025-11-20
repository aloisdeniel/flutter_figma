import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/paint/paint.dart';

extension StrokeJoinFlutterExtension on FigmaStrokeJoin {
  ui.StrokeJoin toFlutter() {
    return switch (this) {
      FigmaStrokeJoin.miter => ui.StrokeJoin.miter,
      FigmaStrokeJoin.bevel => ui.StrokeJoin.bevel,
      FigmaStrokeJoin.round => ui.StrokeJoin.round,
    };
  }
}

extension FimaStrokeAlignmentFlutterExtension on FigmaStrokeAlignment {
  double toFlutter(double weight) {
    return switch (this) {
      FigmaStrokeAlignment.outside => weight * 0.5,
      FigmaStrokeAlignment.center => 0.0,
      FigmaStrokeAlignment.inside => -weight * 0.5,
    };
  }
}

extension FigmaStrokeRenderExtension on PaintingContext {
  void drawRectFigmaStroke(
      Rect rect, FigmaStroke stroke, List<FigmaPaint> paints) {
    if (stroke.isUniform) {
      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeJoin = stroke.join.toFlutter()
        ..strokeWidth = stroke.topWeight;
      final inflated =
          rect.inflate(stroke.alignment.toFlutter(stroke.topWeight));
      for (var fillPaint in paints) {
        paint.applyFigmaPaint(rect, fillPaint);
        canvas.drawRect(inflated, paint);
      }
    }
  }

  void drawRRectFigmaStroke(
      RRect rect, FigmaStroke stroke, List<FigmaPaint> paints) {
    if (stroke.isUniform) {
      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeJoin = stroke.join.toFlutter()
        ..strokeWidth = stroke.topWeight;
      final inflated =
          rect.inflate(stroke.alignment.toFlutter(stroke.topWeight));
      for (var fillPaint in paints) {
        paint.applyFigmaPaint(rect.outerRect, fillPaint);
        canvas.drawRRect(inflated, paint);
      }
    }
  }

  void drawRSuperellipseFigmaStroke(
      RSuperellipse rect, FigmaStroke stroke, List<FigmaPaint> paints) {
    if (stroke.isUniform) {
      final paint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeJoin = stroke.join.toFlutter()
        ..strokeWidth = stroke.topWeight;
      final inflated =
          rect.inflate(stroke.alignment.toFlutter(stroke.topWeight));
      for (var fillPaint in paints) {
        paint.applyFigmaPaint(rect.outerRect, fillPaint);
        canvas.drawRSuperellipse(inflated, paint);
      }
    }
  }
}
