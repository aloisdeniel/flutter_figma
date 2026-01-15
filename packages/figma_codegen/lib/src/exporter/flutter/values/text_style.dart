import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';

class TextStyleDartExporter {
  const TextStyleDartExporter();

  String serialize(FlutterExportContext context, TextStyle value) {
    final buffer = StringBuffer('fl.TextStyle(');
    if (value.hasFontName()) {
      final fontFamily = const FlutterValueExporter().serialize(
        context,
        Value(stringValue: value.fontName.family),
        Value_Type.stringValue,
      );
      buffer.write("fontFamily: $fontFamily");
    }
    final fontSize = const FlutterValueExporter().serialize(
      context,
      Value(doubleValue: value.fontSize),
      Value_Type.doubleValue,
    );
    buffer.write(', fontSize: $fontSize');
    if (value.hasFontName() && value.fontName.weight.value != 0) {
      final fw = const FontWeightDartExporter().serialize(
        value.fontName.weight.value.toInt(),
      );
      buffer.write(', fontWeight: $fw');
    }
    if (value.hasLetterSpacing() && value.letterSpacing.value.value != 0) {
      final letterSpacing = const FlutterValueExporter().serialize(
        context,
        Value(doubleValue: value.letterSpacing.value),
        Value_Type.doubleValue,
      );
      buffer.write(', letterSpacing: $letterSpacing');
    }
    if (value.hasLineHeight()) {
      final lineHeight = value.lineHeight;
      if (lineHeight.hasPixels()) {
        // Convert pixel line height to a multiplier based on fontSize
        buffer.write(', height: ${lineHeight.pixels} / $fontSize');
      } else if (lineHeight.hasPercent()) {
        buffer.write(', height: ${lineHeight.percent / 100}');
      }
    }
    buffer.write(')');
    return buffer.toString();
  }
}

class FontWeightDartExporter {
  const FontWeightDartExporter();

  String serialize(int value) {
    return 'fl.FontWeight.w$value';
  }
}
