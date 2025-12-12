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
      Paint_Type.gradient => _serializeGradientPaint(library, paint.gradient),
      Paint_Type.image => _serializeImagePaint(library, paint.image),
      Paint_Type.notSet => 'null',
    };
  }

  String _serializeSolidPaint(Library library, SolidPaint solid) {
    return AliasDartExporter(
      valueSerializer: valueSerializer,
      alwaysFallback: true,
    ).serialize(library, solid.color);
  }

  String _serializeGradientPaint(Library library, GradientPaint gradient) {
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

    return switch (gradient.type) {
      GradientType.linear =>
        'fl.LinearGradient(colors: [$colors], stops: [$stops])',
      GradientType.radial =>
        'fl.RadialGradient(colors: [$colors], stops: [$stops])',
      GradientType.angular =>
        'fl.SweepGradient(colors: [$colors], stops: [$stops])',
      GradientType.diamond =>
        'fl.RadialGradient(colors: [$colors], stops: [$stops])', // Flutter doesn't have diamond gradient
      _ =>
        'fl.LinearGradient(colors: [$colors], stops: [$stops])', // default fallback
    };
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
      Paint_Type.gradient =>
        'fl.BoxDecoration(gradient: ${_serializeGradientPaint(library, firstVisiblePaint.gradient)})',
      Paint_Type.image =>
        'fl.BoxDecoration() /* ImagePaint not yet implemented */',
      Paint_Type.notSet => 'null',
    };
  }
}
