import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/values/color.dart';

class GradientDartExporter {
  const GradientDartExporter();

  String serialize(Gradient value) {
    return switch (value.whichType()) {
      Gradient_Type.linear => _serializeLinearGradient(value.linear),
      Gradient_Type.radial => _serializeRadialGradient(value.radial),
      Gradient_Type.notSet => throw Exception('Gradient type not set'),
    };
  }

  String _serializeLinearGradient(LinearGradient gradient) {
    final stops = gradient.stops.map((stop) => stop.offset).join(', ');
    final colors = gradient.stops
        .map((stop) {
          return const ColorDartExporter().serialize(stop.color);
        })
        .join(', ');

    final begin = 'fl.Alignment(${gradient.begin.x}, ${gradient.begin.y})';
    final end = 'fl.Alignment(${gradient.end.x}, ${gradient.end.y})';

    return 'fl.LinearGradient(colors: [$colors], stops: [$stops], begin: $begin, end: $end)';
  }

  String _serializeRadialGradient(RadialGradient gradient) {
    final stops = gradient.stops.map((stop) => stop.offset).join(', ');
    final colors = gradient.stops
        .map((stop) {
          return const ColorDartExporter().serialize(stop.color);
        })
        .join(', ');

    final center = 'fl.Alignment(${gradient.center.x}, ${gradient.center.y})';

    return 'fl.RadialGradient(colors: [$colors], stops: [$stops], center: $center, radius: ${gradient.radius})';
  }
}
