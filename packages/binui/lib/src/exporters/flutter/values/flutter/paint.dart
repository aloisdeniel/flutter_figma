import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/alias.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';

class PaintDartExporter {
  const PaintDartExporter({required this.valueSerializer});

  final FlutterValueExporter valueSerializer;

  /// Serializes a Paint to a FigmaPaint (SolidPaint, LinearGradientPaint, etc.)
  String serialize(Library library, Paint paint) {
    if (!paint.visible) return 'null';

    return switch (paint.whichType()) {
      Paint_Type.solid => _serializeSolidPaint(library, paint, paint.solid),
      Paint_Type.linearGradient => _serializeLinearGradientPaint(
        library,
        paint,
        paint.linearGradient,
      ),
      Paint_Type.radialGradient => _serializeRadialGradientPaint(
        library,
        paint,
        paint.radialGradient,
      ),
      Paint_Type.angularGradient => _serializeAngularGradientPaint(
        library,
        paint,
        paint.angularGradient,
      ),
      Paint_Type.diamondGradient => _serializeDiamondGradientPaint(
        library,
        paint,
        paint.diamondGradient,
      ),
      Paint_Type.image => _serializeImagePaint(library, paint, paint.image),
      Paint_Type.video || Paint_Type.pattern || Paint_Type.notSet => 'null',
    };
  }

  String _serializeSolidPaint(Library library, Paint paint, SolidPaint solid) {
    final color = AliasDartExporter(
      valueSerializer: valueSerializer,
    ).serialize(library, solid.color, Value_Type.color);

    final buffer = StringBuffer('figma.SolidPaint(');
    buffer.write('color: $color, ');
    buffer.write('visible: ${paint.visible}, ');
    buffer.write('opacity: ${paint.opacity}, ');
    buffer.write('blendMode: ${_serializeBlendMode(paint.blendMode)}, ');
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeLinearGradientPaint(
    Library library,
    Paint paint,
    LinearGradientPaint gradient,
  ) {
    final stops = _serializeColorStops(library, gradient.gradientStops);

    final buffer = StringBuffer('figma.LinearGradientPaint(');
    buffer.write('gradientStops: $stops, ');
    buffer.write('visible: ${paint.visible}, ');
    buffer.write('opacity: ${paint.opacity}, ');
    buffer.write('blendMode: ${_serializeBlendMode(paint.blendMode)}, ');
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeRadialGradientPaint(
    Library library,
    Paint paint,
    RadialGradientPaint gradient,
  ) {
    final stops = _serializeColorStops(library, gradient.gradientStops);

    final buffer = StringBuffer('figma.RadialGradientPaint(');
    buffer.write('gradientStops: $stops, ');
    buffer.write('visible: ${paint.visible}, ');
    buffer.write('opacity: ${paint.opacity}, ');
    buffer.write('blendMode: ${_serializeBlendMode(paint.blendMode)}, ');
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeAngularGradientPaint(
    Library library,
    Paint paint,
    AngularGradientPaint gradient,
  ) {
    final stops = _serializeColorStops(library, gradient.gradientStops);

    final buffer = StringBuffer('figma.AngularGradientPaint(');
    buffer.write('gradientStops: $stops, ');
    buffer.write('visible: ${paint.visible}, ');
    buffer.write('opacity: ${paint.opacity}, ');
    buffer.write('blendMode: ${_serializeBlendMode(paint.blendMode)}, ');
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeDiamondGradientPaint(
    Library library,
    Paint paint,
    DiamondGradientPaint gradient,
  ) {
    final stops = _serializeColorStops(library, gradient.gradientStops);

    final buffer = StringBuffer('figma.DiamondGradientPaint(');
    buffer.write('gradientStops: $stops, ');
    buffer.write('visible: ${paint.visible}, ');
    buffer.write('opacity: ${paint.opacity}, ');
    buffer.write('blendMode: ${_serializeBlendMode(paint.blendMode)}, ');
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeImagePaint(Library library, Paint paint, ImagePaint image) {
    // Image paint is complex and requires asset management
    // For now, return a placeholder
    return 'null /* ImagePaint not yet implemented */';
  }

  String _serializeColorStops(Library library, Iterable<ColorStop> stops) {
    final items = stops
        .map((stop) {
          final color = AliasDartExporter(
            valueSerializer: valueSerializer,
          ).serialize(library, stop.color, Value_Type.color);
          return 'figma.ColorStop(position: ${stop.position}, color: $color)';
        })
        .join(', ');
    return '[$items]';
  }

  String _serializeBlendMode(BlendMode mode) {
    return switch (mode) {
      BlendMode.BLEND_MODE_NORMAL => 'figma.BlendMode.normal',
      BlendMode.BLEND_MODE_DARKEN => 'figma.BlendMode.darken',
      BlendMode.BLEND_MODE_MULTIPLY => 'figma.BlendMode.multiply',
      BlendMode.BLEND_MODE_COLOR_BURN => 'figma.BlendMode.colorBurn',
      BlendMode.BLEND_MODE_LIGHTEN => 'figma.BlendMode.lighten',
      BlendMode.BLEND_MODE_SCREEN => 'figma.BlendMode.screen',
      BlendMode.BLEND_MODE_COLOR_DODGE => 'figma.BlendMode.colorDodge',
      BlendMode.BLEND_MODE_OVERLAY => 'figma.BlendMode.overlay',
      BlendMode.BLEND_MODE_SOFT_LIGHT => 'figma.BlendMode.softLight',
      BlendMode.BLEND_MODE_HARD_LIGHT => 'figma.BlendMode.hardLight',
      BlendMode.BLEND_MODE_DIFFERENCE => 'figma.BlendMode.difference',
      BlendMode.BLEND_MODE_EXCLUSION => 'figma.BlendMode.exclusion',
      BlendMode.BLEND_MODE_HUE => 'figma.BlendMode.hue',
      BlendMode.BLEND_MODE_SATURATION => 'figma.BlendMode.saturation',
      BlendMode.BLEND_MODE_COLOR => 'figma.BlendMode.color',
      BlendMode.BLEND_MODE_LUMINOSITY => 'figma.BlendMode.luminosity',
      BlendMode.BLEND_MODE_PASS_THROUGH => 'figma.BlendMode.passThrough',
      _ => 'figma.BlendMode.normal',
    };
  }

  /// Serializes a list of paints to a FigmaPaint list
  String serializeAsFigmaPaintList(Library library, List<Paint> paints) {
    final visiblePaints = paints.where((p) => p.visible).toList();
    if (visiblePaints.isEmpty) return 'const []';

    final items = visiblePaints
        .map((p) => serialize(library, p))
        .where((s) => s != 'null')
        .join(', ');
    return '[$items]';
  }
}
