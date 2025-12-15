import 'package:binui/src/definitions.dart';

class TextStyleDartExporter {
  const TextStyleDartExporter();

  String serialize(TextStyle value) {
    final buffer = StringBuffer('fl.TextStyle(');
    buffer.write("fontFamily: '${value.fontFamily}'");
    buffer.write(', fontSize: ${value.fontSize}');
    if (value.fontWeight != 0) {
      final fw = const FontWeightDartExporter().serialize(value.fontWeight);
      buffer.write(', fontWeight: $fw');
    }
    if (value.letterSpacing != 0) {
      buffer.write(', letterSpacing: ${value.letterSpacing}');
    }
    if (value.wordSpacing != 0) {
      buffer.write(', wordSpacing: ${value.wordSpacing}');
    }
    if (value.lineHeight != 0) {
      buffer.write(', height: ${value.lineHeight}');
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
