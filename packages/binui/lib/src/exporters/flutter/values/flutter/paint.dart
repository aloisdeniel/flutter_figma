import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/alias.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';

class PaintDartExporter {
  const PaintDartExporter({required this.valueSerializer});

  final FlutterValueExporter valueSerializer;

  /// Serializes a Paint to Flutter BoxDecoration color/gradient
  String serialize(Library library, Paint paint) {
    if (!paint.visible) return 'null';

    return switch (paint.whichType()) {
      Paint_Type.solid => _serializeSolidPaint(library, paint.solid),
      Paint_Type.linearGradient => _serializeLinearGradientPaint(
        library,
        paint.linearGradient,
      ),
      Paint_Type.radialGradient => _serializeRadialGradientPaint(
        library,
        paint.radialGradient,
      ),
      Paint_Type.angularGradient => _serializeAngularGradientPaint(
        library,
        paint.angularGradient,
      ),
      Paint_Type.diamondGradient => _serializeDiamondGradientPaint(
        library,
        paint.diamondGradient,
      ),
      Paint_Type.image => _serializeImagePaint(library, paint.image),
      Paint_Type.video || Paint_Type.pattern || Paint_Type.notSet => 'null',
    };
  }

  String _serializeSolidPaint(Library library, SolidPaint solid) {
    return AliasDartExporter(
      valueSerializer: valueSerializer,
      alwaysFallback: true,
    ).serialize(library, solid.color);
  }

  String _serializeLinearGradientPaint(
    Library library,
    LinearGradientPaint gradient,
  ) {
    final stops = gradient.gradientStops
        .map((stop) => stop.position)
        .join(', ');
    final colors = gradient.gradientStops
        .map((stop) {
          return AliasDartExporter(
            valueSerializer: valueSerializer,
            alwaysFallback: true,
          ).serialize(library, stop.color);
        })
        .join(', ');

    return 'fl.LinearGradient(colors: [$colors], stops: [$stops])';
  }

  String _serializeRadialGradientPaint(
    Library library,
    RadialGradientPaint gradient,
  ) {
    final stops = gradient.gradientStops
        .map((stop) => stop.position)
        .join(', ');
    final colors = gradient.gradientStops
        .map((stop) {
          return AliasDartExporter(
            valueSerializer: valueSerializer,
            alwaysFallback: true,
          ).serialize(library, stop.color);
        })
        .join(', ');

    return 'fl.RadialGradient(colors: [$colors], stops: [$stops])';
  }

  String _serializeAngularGradientPaint(
    Library library,
    AngularGradientPaint gradient,
  ) {
    final stops = gradient.gradientStops
        .map((stop) => stop.position)
        .join(', ');
    final colors = gradient.gradientStops
        .map((stop) {
          return AliasDartExporter(
            valueSerializer: valueSerializer,
            alwaysFallback: true,
          ).serialize(library, stop.color);
        })
        .join(', ');

    return 'fl.SweepGradient(colors: [$colors], stops: [$stops])';
  }

  String _serializeDiamondGradientPaint(
    Library library,
    DiamondGradientPaint gradient,
  ) {
    final stops = gradient.gradientStops
        .map((stop) => stop.position)
        .join(', ');
    final colors = gradient.gradientStops
        .map((stop) {
          return AliasDartExporter(
            valueSerializer: valueSerializer,
            alwaysFallback: true,
          ).serialize(library, stop.color);
        })
        .join(', ');

    // Flutter doesn't have diamond gradient, use RadialGradient as fallback
    return 'fl.RadialGradient(colors: [$colors], stops: [$stops])';
  }

  String _serializeImagePaint(Library library, ImagePaint image) {
    // Image paint is complex and requires asset management
    // For now, return a placeholder
    return 'null /* ImagePaint not yet implemented */';
  }

  /// Generates BoxDecoration with fills
  String serializeAsBoxDecoration(Library library, List<Paint> fills) {
    if (fills.isEmpty) return 'null';

    // Use the first visible paint
    final firstVisiblePaint = fills.firstWhere(
      (p) => p.visible,
      orElse: () => fills.first,
    );

    return switch (firstVisiblePaint.whichType()) {
      Paint_Type.solid =>
        'fl.BoxDecoration(color: ${_serializeSolidPaint(library, firstVisiblePaint.solid)})',
      Paint_Type.linearGradient =>
        'fl.BoxDecoration(gradient: ${_serializeLinearGradientPaint(library, firstVisiblePaint.linearGradient)})',
      Paint_Type.radialGradient =>
        'fl.BoxDecoration(gradient: ${_serializeRadialGradientPaint(library, firstVisiblePaint.radialGradient)})',
      Paint_Type.angularGradient =>
        'fl.BoxDecoration(gradient: ${_serializeAngularGradientPaint(library, firstVisiblePaint.angularGradient)})',
      Paint_Type.diamondGradient =>
        'fl.BoxDecoration(gradient: ${_serializeDiamondGradientPaint(library, firstVisiblePaint.diamondGradient)})',
      Paint_Type.image =>
        'fl.BoxDecoration() /* ImagePaint not yet implemented */',
      Paint_Type.video || Paint_Type.pattern || Paint_Type.notSet => 'null',
    };
  }
}
