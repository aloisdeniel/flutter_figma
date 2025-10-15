import 'dart:ui' as ui;
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/widgets/base_node.dart';
import 'package:flutter_figma/src/widgets/rectangle.dart';

class FigmaRectangleElement extends RenderObjectElement {
  FigmaRectangleElement(FigmaRectangle super.widget);

  @override
  FigmaRectangle get widget => super.widget as FigmaRectangle;

  @override
  RenderFigmaRectangle get renderObject =>
      super.renderObject as RenderFigmaRectangle;

  @override
  void insertRenderObjectChild(
      covariant RenderObject child, covariant Object? slot) {}

  @override
  void moveRenderObjectChild(covariant RenderObject child,
      covariant Object? oldSlot, covariant Object? newSlot) {}

  @override
  void removeRenderObjectChild(
      covariant RenderObject child, covariant Object? slot) {}
}

class RenderFigmaRectangle extends RenderBox {
  RenderFigmaRectangle({
    required double x,
    required double y,
    required double width,
    required double height,
    required List<FigmaPaint> fills,
    required List<FigmaPaint> strokes,
    required double strokeWeight,
    required StrokeAlign strokeAlign,
    required double cornerRadius,
    double? topLeftRadius,
    double? topRightRadius,
    double? bottomLeftRadius,
    double? bottomRightRadius,
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
        _cornerRadius = cornerRadius,
        _topLeftRadius = topLeftRadius,
        _topRightRadius = topRightRadius,
        _bottomLeftRadius = bottomLeftRadius,
        _bottomRightRadius = bottomRightRadius,
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

  double _cornerRadius;
  double get cornerRadius => _cornerRadius;
  set cornerRadius(double value) {
    if (_cornerRadius == value) return;
    _cornerRadius = value;
    markNeedsPaint();
  }

  double? _topLeftRadius;
  double? get topLeftRadius => _topLeftRadius;
  set topLeftRadius(double? value) {
    if (_topLeftRadius == value) return;
    _topLeftRadius = value;
    markNeedsPaint();
  }

  double? _topRightRadius;
  double? get topRightRadius => _topRightRadius;
  set topRightRadius(double? value) {
    if (_topRightRadius == value) return;
    _topRightRadius = value;
    markNeedsPaint();
  }

  double? _bottomLeftRadius;
  double? get bottomLeftRadius => _bottomLeftRadius;
  set bottomLeftRadius(double? value) {
    if (_bottomLeftRadius == value) return;
    _bottomLeftRadius = value;
    markNeedsPaint();
  }

  double? _bottomRightRadius;
  double? get bottomRightRadius => _bottomRightRadius;
  set bottomRightRadius(double? value) {
    if (_bottomRightRadius == value) return;
    _bottomRightRadius = value;
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
    final radii = ui.Radius.circular(_cornerRadius);
    final rrect = ui.RRect.fromRectAndCorners(
      rect,
      topLeft:
          _topLeftRadius != null ? ui.Radius.circular(_topLeftRadius!) : radii,
      topRight: _topRightRadius != null
          ? ui.Radius.circular(_topRightRadius!)
          : radii,
      bottomLeft: _bottomLeftRadius != null
          ? ui.Radius.circular(_bottomLeftRadius!)
          : radii,
      bottomRight: _bottomRightRadius != null
          ? ui.Radius.circular(_bottomRightRadius!)
          : radii,
    );

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
        canvas.drawRRect(rrect, paint);
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

        final adjustedRRect = ui.RRect.fromRectAndCorners(
          adjustedRect,
          topLeft: _topLeftRadius != null
              ? ui.Radius.circular(_topLeftRadius!)
              : radii,
          topRight: _topRightRadius != null
              ? ui.Radius.circular(_topRightRadius!)
              : radii,
          bottomLeft: _bottomLeftRadius != null
              ? ui.Radius.circular(_bottomLeftRadius!)
              : radii,
          bottomRight: _bottomRightRadius != null
              ? ui.Radius.circular(_bottomRightRadius!)
              : radii,
        );

        canvas.drawRRect(adjustedRRect, paint);
      }
    }

    if (_opacity < 1.0) {
      canvas.restore();
    }
    canvas.restore();
  }
}
