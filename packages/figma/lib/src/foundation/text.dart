enum TextCase {
  original,
  upper,
  lower,
  title,
  smallCaps,
  smallCapsForced,
}

enum TextDecoration {
  none,
  underline,
  strikethrough,
}

enum TextDecorationStyle {
  solid,
  wavy,
  dotted,
}

enum FontStyle {
  regular,
  italic,
}

class FontName {
  const FontName({
    required this.family,
    required this.style,
  });

  final String family;
  final String style;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FontName &&
          runtimeType == other.runtimeType &&
          family == other.family &&
          style == other.style;

  @override
  int get hashCode => Object.hash(family, style);

  @override
  String toString() => 'FontName(family: $family, style: $style)';
}

class LetterSpacing {
  const LetterSpacing({
    required this.value,
    required this.unit,
  });

  final double value;
  final LetterSpacingUnit unit;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LetterSpacing &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          unit == other.unit;

  @override
  int get hashCode => Object.hash(value, unit);

  @override
  String toString() => 'LetterSpacing(value: $value, unit: $unit)';
}

enum LetterSpacingUnit {
  pixels,
  percent,
}

sealed class LineHeight {
  const LineHeight();
}

class LineHeightPixels extends LineHeight {
  const LineHeightPixels(this.value);

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LineHeightPixels &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'LineHeightPixels($value)';
}

class LineHeightPercent extends LineHeight {
  const LineHeightPercent(this.value);

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LineHeightPercent &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'LineHeightPercent($value)';
}

class LineHeightAuto extends LineHeight {
  const LineHeightAuto();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LineHeightAuto && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'LineHeightAuto()';
}

enum LeadingTrim {
  capHeight,
  none,
}

class TextListOptions {
  const TextListOptions({required this.type});

  final TextListType type;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextListOptions &&
          runtimeType == other.runtimeType &&
          type == other.type;

  @override
  int get hashCode => type.hashCode;

  @override
  String toString() => 'TextListOptions(type: $type)';
}

enum TextListType {
  ordered,
  unordered,
  none,
}

class HyperlinkTarget {
  const HyperlinkTarget({
    required this.type,
    required this.value,
  });

  final HyperlinkType type;
  final String value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HyperlinkTarget &&
          runtimeType == other.runtimeType &&
          type == other.type &&
          value == other.value;

  @override
  int get hashCode => Object.hash(type, value);

  @override
  String toString() => 'HyperlinkTarget(type: $type, value: $value)';
}

enum HyperlinkType {
  url,
  node,
}

abstract class TextDecorationOffset {
  const TextDecorationOffset();
}

class TextDecorationOffsetPixels extends TextDecorationOffset {
  const TextDecorationOffsetPixels(this.value);

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextDecorationOffsetPixels &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TextDecorationOffsetPixels($value)';
}

class TextDecorationOffsetPercent extends TextDecorationOffset {
  const TextDecorationOffsetPercent(this.value);

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextDecorationOffsetPercent &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TextDecorationOffsetPercent($value)';
}

class TextDecorationOffsetAuto extends TextDecorationOffset {
  const TextDecorationOffsetAuto();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextDecorationOffsetAuto && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'TextDecorationOffsetAuto()';
}

abstract class TextDecorationThickness {
  const TextDecorationThickness();
}

class TextDecorationThicknessPixels extends TextDecorationThickness {
  const TextDecorationThicknessPixels(this.value);

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextDecorationThicknessPixels &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TextDecorationThicknessPixels($value)';
}

class TextDecorationThicknessPercent extends TextDecorationThickness {
  const TextDecorationThicknessPercent(this.value);

  final double value;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextDecorationThicknessPercent &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'TextDecorationThicknessPercent($value)';
}

class TextDecorationThicknessAuto extends TextDecorationThickness {
  const TextDecorationThicknessAuto();

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextDecorationThicknessAuto && runtimeType == other.runtimeType;

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() => 'TextDecorationThicknessAuto()';
}
