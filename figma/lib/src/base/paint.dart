import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:flutter_figma/src/base/base.dart';

enum FigmaScaleMode {
  fill,
  fit,
  tile,
  stretch,
}

@immutable
abstract class FigmaPaint {
  final double opacity;
  const FigmaPaint({
    double opacity,
  }) : this.opacity = opacity ?? 1.0;
}

@immutable
abstract class FigmaEffect {
  const FigmaEffect();
}

class FigmaDropShadowEffect extends FigmaEffect {
  final double radius;
  final Color color;
  final Offset offset;
  const FigmaDropShadowEffect({
    @required this.radius,
    @required this.color,
    @required this.offset,
  });
}

class FigmaColorPaint extends FigmaPaint {
  final Color color;
  const FigmaColorPaint({
    double opacity,
    @required this.color,
  }) : super(opacity: opacity);
}

class FigmaGradientStop {
  final double position;
  final Color color;

  const FigmaGradientStop({
    @required this.position,
    @required this.color,
  });
}

class FigmaGradientLinearPaint extends FigmaPaint {
  final List<FigmaGradientStop> gradientStops;
  final List<Offset> gradientHandlePositions;
  const FigmaGradientLinearPaint({
    double opacity,
    @required this.gradientStops,
    @required this.gradientHandlePositions,
  }) : super(opacity: opacity);
}

class FigmaGradientRadialPaint extends FigmaPaint {
  final List<FigmaGradientStop> gradientStops;
  final List<Offset> gradientHandlePositions;
  const FigmaGradientRadialPaint({
    double opacity,
    @required this.gradientStops,
    @required this.gradientHandlePositions,
  }) : super(opacity: opacity);
}

abstract class FigmaPaintShape {
  const FigmaPaintShape();
}

class FigmaBoxPaintShape extends FigmaPaintShape {
  final FigmaCornerRadii rectangleCornerRadii;

  const FigmaBoxPaintShape({
    this.rectangleCornerRadii = FigmaCornerRadii.zero,
  }) : assert(rectangleCornerRadii != null);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    return other is FigmaBoxPaintShape &&
        other.rectangleCornerRadii == rectangleCornerRadii;
  }

  @override
  int get hashCode {
    return rectangleCornerRadii.hashCode;
  }
}

class FigmaPathPaintShape extends FigmaPaintShape {}

class FigmaPaintDecoration extends Decoration {
  final FigmaPaintShape shape;
  final List<FigmaEffect> effects;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;

  const FigmaPaintDecoration({
    this.effects = const <FigmaEffect>[],
    this.shape = const FigmaBoxPaintShape(),
    this.fills = const <FigmaPaint>[],
    this.strokes = const <FigmaPaint>[],
  })  : assert(shape != null),
        assert(fills != null),
        assert(strokes != null),
        assert(effects != null);

  @override
  BoxPainter createBoxPainter([onChanged]) {
    return _FigmaPaintDecoration(this, onChanged);
  }

  @override
  Path getClipPath(Rect rect, TextDirection textDirection) {
    Path clipPath;
    final shape = this.shape;
    if (shape is FigmaBoxPaintShape) {
      clipPath = Path()
        ..addRRect(
          RRect.fromRectAndCorners(
            rect,
            topLeft: Radius.circular(shape.rectangleCornerRadii.topLeft),
            topRight: Radius.circular(shape.rectangleCornerRadii.topRight),
            bottomRight:
                Radius.circular(shape.rectangleCornerRadii.bottomRight),
            bottomLeft: Radius.circular(shape.rectangleCornerRadii.bottomLeft),
          ),
        );
    } else {
      clipPath = Path();
    }

    return clipPath;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    final equality = const ListEquality().equals;
    return other is FigmaPaintDecoration &&
        other.shape == shape &&
        equality(other.fills, fills) &&
        equality(other.strokes, strokes) &&
        equality(other.effects, effects);
  }

  @override
  int get hashCode {
    return hashValues(
      shape,
      hashList(fills),
      hashList(strokes),
      hashList(effects),
    );
  }
}

BoxDecoration df;

class _FigmaPaintDecoration extends BoxPainter {
  final FigmaPaintDecoration _decoration;

  _FigmaPaintDecoration(this._decoration, VoidCallback onChanged)
      : assert(_decoration != null),
        super(onChanged);

  void _paintDropShadows(Canvas canvas, Path path) {
    for (final shadow
        in _decoration.effects.whereType<FigmaDropShadowEffect>()) {
      final paint = Paint()
        ..color = shadow.color
        ..maskFilter = MaskFilter.blur(
            BlurStyle.normal, convertRadiusToSigma(shadow.radius));
      if (shadow.offset != Offset.zero) {
        path = path.transform(Matrix4.translationValues(
          shadow.offset.dx,
          shadow.offset.dx,
          0,
        ).storage);
      }
      canvas.drawPath(path, paint);
    }
  }

  // TODO caching of paints
  Paint _paint(PaintingStyle style, FigmaPaint paint, Rect frame) {
    final result = Paint()..style = style;

    if (paint is FigmaColorPaint) {
      result.color = paint.color;
    } else if (paint is FigmaGradientLinearPaint) {
      var begin = paint.gradientHandlePositions[0];
      var end = paint.gradientHandlePositions[1];
      final beginAlign =
          Alignment((begin.dx - 0.5) * 2.0, (begin.dy - 0.5) * 2.0);
      final endAlign = Alignment((end.dx - 0.5) * 2.0, (end.dy - 0.5) * 2.0);
      final gradient = LinearGradient(
        begin: beginAlign,
        end: endAlign,
        colors: paint.gradientStops.map((x) => x.color).toList(),
        stops: paint.gradientStops.map((x) => x.position).toList(),
        tileMode: TileMode.clamp,
      );
      result.shader = gradient.createShader(frame);
    } else if (paint is FigmaGradientRadialPaint) {
      var begin = paint.gradientHandlePositions[0];
      var end = paint.gradientHandlePositions[1];
      final beginAlign =
          Alignment((begin.dx - 0.5) * 2.0, (begin.dy - 0.5) * 2.0);
      final endAlign = Alignment((end.dx - 0.5) * 2.0, (end.dy - 0.5) * 2.0);
      final gradient = RadialGradient(
        center: beginAlign,
        radius: (endAlign.x - beginAlign.x).abs(),
        colors: paint.gradientStops.map((x) => x.color).toList(),
        stops: paint.gradientStops.map((x) => x.position).toList(),
        tileMode: TileMode.clamp,
      );
      result.shader = gradient.createShader(frame);
    }

    return result;
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final rect = offset & configuration.size;
    final path = _decoration.getClipPath(rect, null);

    _paintDropShadows(canvas, path);

    for (var fill in _decoration.fills) {
      final paint = _paint(PaintingStyle.fill, fill, rect);
      canvas.drawPath(path, paint);
    }

    for (var stroke in _decoration.strokes) {
      final paint = _paint(PaintingStyle.stroke, stroke, rect);
      canvas.drawPath(path, paint);
    }
  }
}

double convertRadiusToSigma(double radius) {
  return radius * 0.57735 + 0.5;
}
