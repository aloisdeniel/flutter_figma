import 'dart:math' as math;

import '../../../definitions/variables.pb.dart';
import 'color.dart';

class CssGradientExporter {
  const CssGradientExporter();

  String serialize(Gradient gradient, ColorFormat colorFormat) {
    return switch (gradient.whichType()) {
      Gradient_Type.linear => _serializeLinear(gradient.linear, colorFormat),
      Gradient_Type.radial => _serializeRadial(gradient.radial, colorFormat),
      Gradient_Type.notSet => throw Exception('Gradient type not set'),
    };
  }

  String _serializeLinear(LinearGradient gradient, ColorFormat colorFormat) {
    // Convert Figma's alignment coordinates (-1 to 1) to CSS angle
    final angle = _calculateAngle(gradient.begin, gradient.end);
    final stops = _serializeStops(gradient.stops, colorFormat);
    return 'linear-gradient(${angle.toStringAsFixed(1)}deg, $stops)';
  }

  String _serializeRadial(RadialGradient gradient, ColorFormat colorFormat) {
    // Convert Figma's center alignment (-1 to 1) to CSS percentage (0-100%)
    final centerX = ((gradient.center.x + 1) / 2 * 100).toStringAsFixed(1);
    final centerY = ((gradient.center.y + 1) / 2 * 100).toStringAsFixed(1);
    final stops = _serializeStops(gradient.stops, colorFormat);
    return 'radial-gradient(circle at ${centerX}% ${centerY}%, $stops)';
  }

  String _serializeStops(List<GradientStop> stops, ColorFormat colorFormat) {
    final colorExporter = CssColorExporter();
    return stops.map((stop) {
      final color = colorExporter.serialize(stop.color, colorFormat);
      final position = (stop.offset * 100).toStringAsFixed(1);
      return '$color ${position}%';
    }).join(', ');
  }

  double _calculateAngle(Offset begin, Offset end) {
    // Calculate angle from begin to end point
    // Figma uses -1 to 1 coordinate system
    // CSS gradients measure angle from top (0deg = to top, 90deg = to right)
    final dx = end.x - begin.x;
    final dy = end.y - begin.y;

    // Calculate angle in radians, then convert to degrees
    final radians = math.atan2(dy, dx);
    var degrees = radians * 180 / math.pi;

    // Adjust for CSS gradient coordinate system (0deg = to top, clockwise)
    // Figma coordinate system has y increasing downward
    degrees = 90 + degrees;

    // Normalize to 0-360
    if (degrees < 0) degrees += 360;
    if (degrees >= 360) degrees -= 360;

    return degrees;
  }
}
