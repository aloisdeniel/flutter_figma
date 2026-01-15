import '../../../definitions/variables.dart';
import '../exporter.dart';
import 'color.dart';
import 'gradient.dart';

class CssValueExporter {
  const CssValueExporter();

  /// Serialize a value to CSS format
  /// Returns a CSS value string (e.g., "#3366cc", "24px", "linear-gradient(...)")
  /// Returns null for text styles (they need special handling at collection level)
  String? serialize(CssExportContext context, Value value) {
    // Resolve aliases to their actual values
    return _serializeValue(context, value);
  }

  String? _serializeValue(CssExportContext context, Value value) {
    switch (value.whichType()) {
      case Value_Type.color:
        return CssColorExporter().serialize(
          value.color.value,
          context.colorFormat,
        );

      case Value_Type.doubleValue:
        // Return number as-is (consumers can add units if needed)
        final num = value.doubleValue.value;
        // Remove trailing zeros for cleaner output
        if (num == num.roundToDouble()) {
          return num.round().toString();
        }
        return num.toString();

      case Value_Type.stringValue:
        // Return string with quotes
        return '"${value.stringValue}"';

      case Value_Type.boolean:
        return value.boolean.toString();

      case Value_Type.gradient:
        return CssGradientExporter().serialize(
          value.gradient,
          context.colorFormat,
        );

      case Value_Type.textStyle:
        // Text styles need special handling - return null to signal this
        // The collection exporter will handle expanding to multiple properties
        return null;

      case Value_Type.cornerRadius:
        // CSS border-radius format: top-left top-right bottom-right bottom-left
        final r = value.cornerRadius;
        return '${r.topLeft}px ${r.topRight}px ${r.bottomRight}px ${r.bottomLeft}px';

      case Value_Type.borderSide:
        // Just return the width for simplicity
        return '${value.borderSide.width}px';

      case Value_Type.notSet:
        return null;
    }
  }
}
