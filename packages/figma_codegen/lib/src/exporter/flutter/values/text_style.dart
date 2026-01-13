import 'package:figma_codegen/src/definitions/variables.pb.dart';

class TextStyleDartExporter {
  const TextStyleDartExporter();

  String serialize(TextStyle value) {
    final buffer = StringBuffer('fl.TextStyle(');
    if (value.hasFontName()) {
      buffer.write("fontFamily: '${value.fontName.family}'");
    }
    buffer.write(', fontSize: ${value.fontSize}');
    if (value.hasFontName() && value.fontName.weight != 0) {
      final fw = const FontWeightDartExporter().serialize(
        value.fontName.weight,
      );
      buffer.write(', fontWeight: $fw');
    }
    if (value.hasLetterSpacing() && value.letterSpacing.value != 0) {
      buffer.write(', letterSpacing: ${value.letterSpacing.value}');
    }
    if (value.hasLineHeight()) {
      final lineHeight = value.lineHeight;
      if (lineHeight.hasPixels()) {
        // Convert pixel line height to a multiplier based on fontSize
        final height = lineHeight.pixels / value.fontSize;
        buffer.write(', height: $height');
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
