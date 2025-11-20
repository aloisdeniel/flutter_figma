import 'package:flutter/cupertino.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/paint/paint.dart';
import 'package:flutter_figma/src/rendering/vector/path.dart';

extension FigmaCanvasVectorExtensions on PaintingContext {
  void drawFigmaVectorPathsShape(
    Rect rect,
    FigmaVectorPathsShape shape,
    FigmaDecoration decoration,
    void drawContent(),
  ) {
    if (decoration.fills.isEmpty && decoration.strokes.isEmpty) return;
    final paint = Paint();

    // Fills
    Path? fill;
    if (decoration.fills.isNotEmpty) {
      fill = shape.toFlutterFill(rect);
      paint.style = PaintingStyle.fill;
      for (var fillPaint in decoration.fills) {
        paint.applyFigmaPaint(rect, fillPaint);
        canvas.drawPath(fill, paint);
      }
    }

    drawContent();

    // Strokes
    if (decoration.strokes.isNotEmpty) {
      final stroke = shape.toFlutterStroke(fill, rect);
      paint.style = PaintingStyle.stroke;
      for (var strokePaint in decoration.strokes) {
        paint.applyFigmaPaint(rect, strokePaint);
        canvas.drawPath(stroke, paint);
      }
    }
  }

  void drawFigmaTextShape(
    Rect rect,
    TextPainter painter,
    FigmaTextShape shape,
    FigmaDecoration decoration,
  ) {
    if (decoration.fills.isEmpty && decoration.strokes.isEmpty) return;
    // TODO fills...
    painter.paint(canvas, Offset.zero);
  }
}
