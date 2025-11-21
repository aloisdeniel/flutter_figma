import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/paint/rectangle_shape.dart';
import 'package:flutter_figma/src/rendering/vector/path.dart';

extension FigmaClipPaintingContext on PaintingContext {
  void clipFigmaShape(Rect rect, Clip? clipBehavior, Rect bounds,
      FigmaShape shape, VoidCallback painter) {
    switch (shape) {
      case FigmaRectangleShape shape:
        shape.asFlutterShape(
          bounds,
          rect: (rect) {
            clipRectAndPaint(
              bounds,
              clipBehavior ?? Clip.hardEdge,
              bounds,
              painter,
            );
          },
          rRect: (rRect) {
            clipRRectAndPaint(
              rRect,
              clipBehavior ?? Clip.antiAlias,
              bounds,
              painter,
            );
          },
          rSuperellipse: (ellipse) {
            clipRSuperellipseAndPaint(
              ellipse,
              clipBehavior ?? Clip.antiAlias,
              bounds,
              painter,
            );
          },
        );
      default:
        final fill = shape.toFlutterFill(bounds);
        clipPathAndPaint(
          fill,
          clipBehavior ?? Clip.antiAlias,
          bounds,
          painter,
        );
    }
  }
}

class RenderFigmaClip extends RenderProxyBox {
  RenderFigmaClip({required FigmaShape shape}) : _shape = shape;

  FigmaShape _shape;
  FigmaShape get shape => _shape;
  set shape(FigmaShape value) {
    if (_shape == value) return;
    _shape = value;
    markNeedsPaint();
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.isEmpty) return;

    final bounds = offset & size;
    final clip = Clip.antiAlias;
    context.clipFigmaShape(
      bounds,
      clip,
      bounds,
      shape,
      () => super.paint(context, offset),
    );
    switch (shape) {
      case FigmaRectangleShape shape:
        shape.asFlutterShape(
          bounds,
          rect: (rect) {
            context.clipRectAndPaint(
              bounds,
              Clip.hardEdge,
              bounds,
              () => super.paint(context, offset),
            );
          },
          rRect: (rRect) {
            context.clipRRectAndPaint(
              rRect,
              clip,
              bounds,
              () => super.paint(context, offset),
            );
          },
          rSuperellipse: (ellipse) {
            context.clipRSuperellipseAndPaint(
              ellipse,
              clip,
              bounds,
              () => super.paint(context, offset),
            );
          },
        );
      default:
        final fill = shape.toFlutterFill(offset & size);
        context.clipPathAndPaint(
          fill,
          clip,
          bounds,
          () => super.paint(context, offset),
        );
    }
  }
}
