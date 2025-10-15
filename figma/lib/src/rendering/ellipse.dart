import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/base_node.dart';
import 'package:flutter_figma/src/widgets/ellipse.dart';

class FigmaEllipseElement extends RenderObjectElement {
  FigmaEllipseElement(FigmaEllipse super.widget);

  @override
  FigmaEllipse get widget => super.widget as FigmaEllipse;

  @override
  RenderFigmaEllipse get renderObject =>
      super.renderObject as RenderFigmaEllipse;

  @override
  void insertRenderObjectChild(
    covariant RenderObject child,
    covariant Object? slot,
  ) {}

  @override
  void moveRenderObjectChild(
    covariant RenderObject child,
    covariant Object? oldSlot,
    covariant Object? newSlot,
  ) {}

  @override
  void removeRenderObjectChild(
    covariant RenderObject child,
    covariant Object? slot,
  ) {}
}

class RenderFigmaEllipse extends RenderBox {
  RenderFigmaEllipse({
    required double x,
    required double y,
    required double width,
    required double height,
    required List<FigmaPaint> fills,
    required List<FigmaPaint> strokes,
    required double strokeWeight,
    required StrokeAlign strokeAlign,
    ArcData? arcData,
    required bool visible,
    required double opacity,
    required BlendMode blendMode,
  })  : _x = x,
        _y = y,
        _width = width,
        _height = height,
        _fills = fills,
        _strokes = strokes,
        _strokeWeight = strokeWeight,
        _strokeAlign = strokeAlign,
        _arcData = arcData,
        _visible = visible,
        _opacity = opacity,
        _blendMode = blendMode;

  double _x;
  double get x => _x;
  set x(double value) {
    if (_x == value) return;
    _x = value;
    markNeedsLayout();
  }

  double _y;
  double get y => _y;
  set y(double value) {
    if (_y == value) return;
    _y = value;
    markNeedsLayout();
  }

  double _width;
  double get width => _width;
  set width(double value) {
    if (_width == value) return;
    _width = value;
    markNeedsLayout();
  }

  double _height;
  double get height => _height;
  set height(double value) {
    if (_height == value) return;
    _height = value;
    markNeedsLayout();
  }

  List<FigmaPaint> _fills;
  List<FigmaPaint> get fills => _fills;
  set fills(List<FigmaPaint> value) {
    if (_fills == value) return;
    _fills = value;
    markNeedsPaint();
  }

  List<FigmaPaint> _strokes;
  List<FigmaPaint> get strokes => _strokes;
  set strokes(List<FigmaPaint> value) {
    if (_strokes == value) return;
    _strokes = value;
    markNeedsPaint();
  }

  double _strokeWeight;
  double get strokeWeight => _strokeWeight;
  set strokeWeight(double value) {
    if (_strokeWeight == value) return;
    _strokeWeight = value;
    markNeedsPaint();
  }

  StrokeAlign _strokeAlign;
  StrokeAlign get strokeAlign => _strokeAlign;
  set strokeAlign(StrokeAlign value) {
    if (_strokeAlign == value) return;
    _strokeAlign = value;
    markNeedsPaint();
  }

  ArcData? _arcData;
  ArcData? get arcData => _arcData;
  set arcData(ArcData? value) {
    if (_arcData == value) return;
    _arcData = value;
    markNeedsPaint();
  }

  bool _visible;
  bool get visible => _visible;
  set visible(bool value) {
    if (_visible == value) return;
    _visible = value;
    markNeedsPaint();
  }

  double _opacity;
  double get opacity => _opacity;
  set opacity(double value) {
    if (_opacity == value) return;
    _opacity = value;
    markNeedsPaint();
  }

  BlendMode _blendMode;
  BlendMode get blendMode => _blendMode;
  set blendMode(BlendMode value) {
    if (_blendMode == value) return;
    _blendMode = value;
    markNeedsPaint();
  }

  @override
  void performLayout() {
    size = Size(_width, _height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (!_visible || _opacity == 0) return;

    final canvas = context.canvas;
    canvas.save();

    if (_opacity < 1.0) {
      canvas.saveLayer(
        offset & size,
        ui.Paint()..color = ui.Color.fromRGBO(255, 255, 255, _opacity),
      );
    }

    final rect = offset & size;
    final center = rect.center;

    for (final fill in _fills) {
      if (fill is SolidPaint && fill.visible) {
        final paint = ui.Paint()
          ..color = ui.Color.fromRGBO(
            (fill.color.r * 255).toInt(),
            (fill.color.g * 255).toInt(),
            (fill.color.b * 255).toInt(),
            fill.opacity,
          )
          ..style = ui.PaintingStyle.fill;

        if (_arcData != null) {
          final path = ui.Path();
          final innerRadiusX = rect.width / 2 * _arcData!.innerRadius;
          final innerRadiusY = rect.height / 2 * _arcData!.innerRadius;

          path.arcTo(
            rect,
            _arcData!.startingAngle,
            _arcData!.endingAngle - _arcData!.startingAngle,
            false,
          );

          if (_arcData!.innerRadius > 0) {
            final innerRect = ui.Rect.fromCenter(
              center: center,
              width: innerRadiusX * 2,
              height: innerRadiusY * 2,
            );
            path.arcTo(
              innerRect,
              _arcData!.endingAngle,
              _arcData!.startingAngle - _arcData!.endingAngle,
              false,
            );
          } else {
            path.lineTo(center.dx, center.dy);
          }
          path.close();
          canvas.drawPath(path, paint);
        } else {
          canvas.drawOval(rect, paint);
        }
      }
    }

    for (final stroke in _strokes) {
      if (stroke is SolidPaint && stroke.visible) {
        final paint = ui.Paint()
          ..color = ui.Color.fromRGBO(
            (stroke.color.r * 255).toInt(),
            (stroke.color.g * 255).toInt(),
            (stroke.color.b * 255).toInt(),
            stroke.opacity,
          )
          ..style = ui.PaintingStyle.stroke
          ..strokeWidth = _strokeWeight;

        final adjustedRect = switch (_strokeAlign) {
          StrokeAlign.inside => rect.deflate(_strokeWeight / 2),
          StrokeAlign.outside => rect.inflate(_strokeWeight / 2),
          StrokeAlign.center => rect,
        };

        if (_arcData != null) {
          final path = ui.Path();
          final adjustedCenter = adjustedRect.center;
          final innerRadiusX = adjustedRect.width / 2 * _arcData!.innerRadius;
          final innerRadiusY = adjustedRect.height / 2 * _arcData!.innerRadius;

          path.arcTo(
            adjustedRect,
            _arcData!.startingAngle,
            _arcData!.endingAngle - _arcData!.startingAngle,
            false,
          );

          if (_arcData!.innerRadius > 0) {
            final innerRect = ui.Rect.fromCenter(
              center: adjustedCenter,
              width: innerRadiusX * 2,
              height: innerRadiusY * 2,
            );
            path.arcTo(
              innerRect,
              _arcData!.endingAngle,
              _arcData!.startingAngle - _arcData!.endingAngle,
              false,
            );
          } else {
            path.lineTo(adjustedCenter.dx, adjustedCenter.dy);
          }
          path.close();
          canvas.drawPath(path, paint);
        } else {
          canvas.drawOval(adjustedRect, paint);
        }
      }
    }

    if (_opacity < 1.0) {
      canvas.restore();
    }
    canvas.restore();
  }
}
