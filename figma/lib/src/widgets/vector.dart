import 'dart:ui' as ui;
import 'package:flutter/rendering.dart' hide Constraints;
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

class FigmaVectorNode extends FigmaGeometryNode {
  const FigmaVectorNode({
    super.visible,
    super.opacity,
    super.blendMode,
    super.fills,
    super.strokes,
    super.strokeWeight,
    super.strokeAlign,
    super.strokeCap,
    super.strokeJoin,
    super.strokeMiterLimit,
    super.effects,
    super.isMask,
    super.maskType,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.constraints,
    this.relativeTransform,
    this.vectorNetwork,
    this.vectorPaths,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final VectorNetwork? vectorNetwork;
  final List<VectorPath>? vectorPaths;

  @override
  Element createElement() {
    return FigmaVectorElement(this);
  }
}

class FigmaVectorElement extends RenderObjectElement {
  FigmaVectorElement(FigmaVectorNode super.widget);

  @override
  FigmaVectorNode get widget => super.widget as FigmaVectorNode;

  @override
  RenderFigmaVector get renderObject => super.renderObject as RenderFigmaVector;

  @override
  RenderFigmaVector createRenderObject(BuildContext context) {
    return RenderFigmaVector(
      x: widget.x,
      y: widget.y,
      width: widget.width,
      height: widget.height,
      fills: widget.fills,
      strokes: widget.strokes,
      strokeWeight: widget.strokeWeight,
      strokeAlign: widget.strokeAlign,
      strokeCap: widget.strokeCap,
      strokeJoin: widget.strokeJoin,
      vectorNetwork: widget.vectorNetwork,
      vectorPaths: widget.vectorPaths,
      visible: widget.visible,
      opacity: widget.opacity,
      blendMode: widget.blendMode,
    );
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderFigmaVector renderObject) {
    renderObject
      ..x = widget.x
      ..y = widget.y
      ..width = widget.width
      ..height = widget.height
      ..fills = widget.fills
      ..strokes = widget.strokes
      ..strokeWeight = widget.strokeWeight
      ..strokeAlign = widget.strokeAlign
      ..strokeCap = widget.strokeCap
      ..strokeJoin = widget.strokeJoin
      ..vectorNetwork = widget.vectorNetwork
      ..vectorPaths = widget.vectorPaths
      ..visible = widget.visible
      ..opacity = widget.opacity
      ..blendMode = widget.blendMode;
  }
}

class RenderFigmaVector extends RenderBox {
  RenderFigmaVector({
    required double x,
    required double y,
    required double width,
    required double height,
    required List<FigmaPaint> fills,
    required List<FigmaPaint> strokes,
    required double strokeWeight,
    required StrokeAlign strokeAlign,
    required StrokeCap strokeCap,
    required StrokeJoin strokeJoin,
    VectorNetwork? vectorNetwork,
    List<VectorPath>? vectorPaths,
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
        _strokeCap = strokeCap,
        _strokeJoin = strokeJoin,
        _vectorNetwork = vectorNetwork,
        _vectorPaths = vectorPaths,
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
    _cachedPath = null;
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

  StrokeCap _strokeCap;
  StrokeCap get strokeCap => _strokeCap;
  set strokeCap(StrokeCap value) {
    if (_strokeCap == value) return;
    _strokeCap = value;
    markNeedsPaint();
  }

  StrokeJoin _strokeJoin;
  StrokeJoin get strokeJoin => _strokeJoin;
  set strokeJoin(StrokeJoin value) {
    if (_strokeJoin == value) return;
    _strokeJoin = value;
    markNeedsPaint();
  }

  VectorNetwork? _vectorNetwork;
  VectorNetwork? get vectorNetwork => _vectorNetwork;
  set vectorNetwork(VectorNetwork? value) {
    if (_vectorNetwork == value) return;
    _vectorNetwork = value;
    _cachedPath = null;
    markNeedsPaint();
  }

  List<VectorPath>? _vectorPaths;
  List<VectorPath>? get vectorPaths => _vectorPaths;
  set vectorPaths(List<VectorPath>? value) {
    if (_vectorPaths == value) return;
    _vectorPaths = value;
    _cachedPath = null;
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

  ui.Path? _cachedPath;

  @override
  void performLayout() {
    size = Size(_width, _height);
  }

  ui.Path _buildPath() {
    if (_cachedPath != null) return _cachedPath!;

    final path = ui.Path();

    if (_vectorPaths != null && _vectorPaths!.isNotEmpty) {
      for (final vectorPath in _vectorPaths!) {
        final pathData = vectorPath.data;
      }
    } else if (_vectorNetwork != null) {
      final network = _vectorNetwork!;
      for (final region in network.regions) {
        for (final loop in region.loops) {
          if (loop.isEmpty) continue;

          final firstVertex = network.vertices[loop[0]];
          path.moveTo(firstVertex.x * _width, firstVertex.y * _height);

          for (var i = 1; i < loop.length; i++) {
            final vertex = network.vertices[loop[i]];
            path.lineTo(vertex.x * _width, vertex.y * _height);
          }
          path.close();
        }
      }
    }

    _cachedPath = path;
    return path;
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

    canvas.translate(offset.dx, offset.dy);
    final path = _buildPath();

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
        canvas.drawPath(path, paint);
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
          ..strokeWidth = _strokeWeight
          ..strokeCap = _convertStrokeCap(_strokeCap)
          ..strokeJoin = _convertStrokeJoin(_strokeJoin);
        canvas.drawPath(path, paint);
      }
    }

    if (_opacity < 1.0) {
      canvas.restore();
    }
    canvas.restore();
  }

  ui.StrokeCap _convertStrokeCap(StrokeCap cap) {
    return switch (cap) {
      StrokeCap.none => ui.StrokeCap.butt,
      StrokeCap.round => ui.StrokeCap.round,
      StrokeCap.square => ui.StrokeCap.square,
      _ => ui.StrokeCap.butt,
    };
  }

  ui.StrokeJoin _convertStrokeJoin(StrokeJoin join) {
    return switch (join) {
      StrokeJoin.miter => ui.StrokeJoin.miter,
      StrokeJoin.bevel => ui.StrokeJoin.bevel,
      StrokeJoin.round => ui.StrokeJoin.round,
    };
  }
}
