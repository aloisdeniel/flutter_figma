import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';

class GradientFlutterExporter {
  const GradientFlutterExporter();

  String serialize(FlutterExportContext context, Gradient value) {
    return switch (value.whichType()) {
      Gradient_Type.linear => _serializeLinearGradient(context, value.linear),
      Gradient_Type.radial => _serializeRadialGradient(context, value.radial),
      Gradient_Type.notSet => throw Exception('Gradient type not set'),
    };
  }

  String _serializeLinearGradient(
    FlutterExportContext context,
    LinearGradient gradient,
  ) {
    final stops = gradient.stops.map((stop) => stop.offset).join(', ');
    final colors = gradient.stops
        .map((stop) {
          return const ColorValueExporter().serialize(context, stop.color);
        })
        .join(', ');

    final begin = 'fl.Alignment(${gradient.begin.x}, ${gradient.begin.y})';
    final end = 'fl.Alignment(${gradient.end.x}, ${gradient.end.y})';

    return 'fl.LinearGradient(colors: [$colors], stops: [$stops], begin: $begin, end: $end)';
  }

  String _serializeRadialGradient(
    FlutterExportContext context,
    RadialGradient gradient,
  ) {
    final stops = gradient.stops.map((stop) => stop.offset).join(', ');
    final colors = gradient.stops
        .map((stop) {
          return const ColorValueExporter().serialize(context, stop.color);
        })
        .join(', ');

    final center = 'fl.Alignment(${gradient.center.x}, ${gradient.center.y})';

    return 'fl.RadialGradient(colors: [$colors], stops: [$stops], center: $center, radius: ${gradient.radius})';
  }
}
