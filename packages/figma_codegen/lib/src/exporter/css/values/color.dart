import 'dart:math' as math;

import '../../../definitions/variables.pb.dart';

enum ColorFormat {
  hex,
  rgb,
  rgba,
  colorMix,
}

class CssColorExporter {
  const CssColorExporter();

  String serialize(Color color, ColorFormat format) {
    // For Display P3 colors, use color() function if format allows
    if (color.colorSpace == ColorSpace.COLOR_SPACE_DISPLAY_P3 &&
        format == ColorFormat.colorMix) {
      return _serializeDisplayP3(color);
    }

    // Otherwise use requested format
    switch (format) {
      case ColorFormat.hex:
        return _serializeHex(color);
      case ColorFormat.rgb:
        return _serializeRgb(color);
      case ColorFormat.rgba:
        return _serializeRgba(color);
      case ColorFormat.colorMix:
        // Fall back to rgb for non-P3 colors
        return _serializeRgb(color);
    }
  }

  String _serializeHex(Color color) {
    // Convert 0-1 float to 0-255 int
    final r = _clampAndRound(color.red * 255);
    final g = _clampAndRound(color.green * 255);
    final b = _clampAndRound(color.blue * 255);

    // Include alpha channel if not fully opaque
    if (color.alpha < 1.0) {
      final a = _clampAndRound(color.alpha * 255);
      return '#${_toHex(r)}${_toHex(g)}${_toHex(b)}${_toHex(a)}';
    }
    return '#${_toHex(r)}${_toHex(g)}${_toHex(b)}';
  }

  String _serializeRgb(Color color) {
    // Modern CSS rgb() syntax (space-separated, alpha with /)
    final r = _clampAndRound(color.red * 255);
    final g = _clampAndRound(color.green * 255);
    final b = _clampAndRound(color.blue * 255);

    if (color.alpha < 1.0) {
      return 'rgb($r $g $b / ${_formatAlpha(color.alpha)})';
    }
    return 'rgb($r $g $b)';
  }

  String _serializeRgba(Color color) {
    // Legacy rgba() syntax (comma-separated)
    final r = _clampAndRound(color.red * 255);
    final g = _clampAndRound(color.green * 255);
    final b = _clampAndRound(color.blue * 255);
    return 'rgba($r, $g, $b, ${_formatAlpha(color.alpha)})';
  }

  String _serializeDisplayP3(Color color) {
    // CSS Color Level 4: color(display-p3 r g b / a)
    // Values are 0-1, not 0-255
    if (color.alpha < 1.0) {
      return 'color(display-p3 ${_formatComponent(color.red)} ${_formatComponent(color.green)} ${_formatComponent(color.blue)} / ${_formatAlpha(color.alpha)})';
    }
    return 'color(display-p3 ${_formatComponent(color.red)} ${_formatComponent(color.green)} ${_formatComponent(color.blue)})';
  }

  String _toHex(int value) {
    return value.toRadixString(16).padLeft(2, '0');
  }

  int _clampAndRound(double value) {
    return math.max(0, math.min(255, value.round()));
  }

  String _formatAlpha(double alpha) {
    // Format alpha to 2 decimal places, removing trailing zeros
    if (alpha == 1.0) return '1';
    final formatted = alpha.toStringAsFixed(2);
    // Remove trailing zeros and decimal point if needed
    return formatted.replaceAll(RegExp(r'\.?0+$'), '');
  }

  String _formatComponent(double component) {
    // Format color component for color() function
    // Use up to 4 decimal places, removing trailing zeros
    final formatted = component.toStringAsFixed(4);
    return formatted.replaceAll(RegExp(r'\.?0+$'), '');
  }
}
