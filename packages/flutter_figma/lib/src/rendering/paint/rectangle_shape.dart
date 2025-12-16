import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/paint/paint.dart';
import 'package:flutter_figma/src/rendering/paint/stroke.dart';

extension FigmaCanvasVectorExtensions on PaintingContext {
  void drawFigmaRectangleShape(
    Rect rect,
    FigmaRectangleShape shape,
    FigmaStroke stroke,
    FigmaDecoration decoration,
    void drawContent(),
  ) {
    if (decoration.fills.isEmpty && decoration.strokes.isEmpty) return;
    shape.asFlutterShape(
      rect,
      rect: (rect) {
        // Fills
        if (decoration.fills.isNotEmpty) {
          final paint = Paint()..style = PaintingStyle.fill;
          for (var fillPaint in decoration.fills) {
            paint.applyFigmaPaint(rect, fillPaint);
            canvas.drawRect(rect, paint);
          }
        }

        drawContent();

        // Strokes
        if (decoration.strokes.isNotEmpty) {
          if (stroke.isUniform) {
            drawRectFigmaStroke(rect, stroke, decoration.strokes);
          }
        }
      },
      rRect: (rrect) {
        // Fills
        if (decoration.fills.isNotEmpty) {
          final paint = Paint()..style = PaintingStyle.fill;
          for (var fillPaint in decoration.fills) {
            paint.applyFigmaPaint(rect, fillPaint);
            canvas.drawRRect(rrect, paint);
          }
        }

        drawContent();

        // Strokes
        if (decoration.strokes.isNotEmpty) {
          if (stroke.isUniform) {
            drawRRectFigmaStroke(rrect, stroke, decoration.strokes);
          }
        }
      },
      rSuperellipse: (ellipse) {
        // Fills
        if (decoration.fills.isNotEmpty) {
          final paint = Paint()..style = PaintingStyle.fill;
          for (var fillPaint in decoration.fills) {
            paint.applyFigmaPaint(rect, fillPaint);
            canvas.drawRSuperellipse(ellipse, paint);
          }
        }

        drawContent();

        // Strokes
        if (decoration.strokes.isNotEmpty) {
          if (stroke.isUniform) {
            drawRSuperellipseFigmaStroke(ellipse, stroke, decoration.strokes);
          }
        }
      },
    );
  }
}

extension FigmaRectangleShapeFlutterExtensions on FigmaRectangleShape {
  void asFlutterShape(
    Rect bounds, {
    void Function(Rect value)? rect,
    void Function(RRect value)? rRect,
    void Function(RSuperellipse value)? rSuperellipse,
  }) {
    final cr = cornerRadius;
    if (cr.isZero) {
      rect?.call(bounds);
    } else if (cr.smoothing <= 0) {
      rRect?.call(
        RRect.fromRectAndCorners(
          bounds,
          topLeft: Radius.circular(cr.topLeft),
          topRight: Radius.circular(cr.topRight),
          bottomRight: Radius.circular(cr.bottomRight),
          bottomLeft: Radius.circular(cr.bottomLeft),
        ),
      );
    } else {
      rSuperellipse?.call(
        RSuperellipse.fromRectAndCorners(
          bounds,
          topLeft: Radius.circular(cr.topLeft),
          topRight: Radius.circular(cr.topRight),
          bottomRight: Radius.circular(cr.bottomRight),
          bottomLeft: Radius.circular(cr.bottomLeft),
        ),
      );
    }
  }
}
