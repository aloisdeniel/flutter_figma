import 'dart:ui';

enum FigmaTextCase {
  original,
  upper,
  lower,
  title,
  smallCaps,
  smallCapsForced,
}

enum FigmaTextDecoration {
  none,
  underline,
  strikethrough,
}

enum FigmaTextDecorationStyle {
  solid,
  wavy,
  dotted,
}

enum FigmaFontStyle {
  regular,
  italic,
}

class FigmaTextStyle {
  const FigmaTextStyle({
    required this.fontName,
    required this.fontSize,
    this.letterSpacing = const LetterSpacing(
      value: 1,
      unit: LetterSpacingUnit.percent,
    ),
    this.lineHeight = const LineHeightAuto(),
  });

  FigmaTextStyle.system({
    required this.fontSize,
    FontWeight weight = FontWeight.normal,
    FigmaFontStyle style = FigmaFontStyle.regular,
    this.letterSpacing = const LetterSpacing(
      value: 1,
      unit: LetterSpacingUnit.percent,
    ),
    this.lineHeight = const LineHeightAuto(),
  }) : fontName = FontName(
          family: 'system',
          weight: weight,
          style: style,
        );

  final FontName fontName;
  final double fontSize;
  final LetterSpacing letterSpacing;
  final LineHeight lineHeight;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaTextStyle &&
          runtimeType == other.runtimeType &&
          fontName == other.fontName &&
          fontSize == other.fontSize &&
          letterSpacing == other.letterSpacing &&
          lineHeight == other.lineHeight;

  @override
  int get hashCode =>
      Object.hash(fontName, fontSize, letterSpacing, lineHeight);

  @override
  String toString() {
    return 'FigmaTextStyle(fontName: $fontName, fontSize: $fontSize, letterSpacing: $letterSpacing, lineHeight: $lineHeight)';
  }
}

class FigmaTextSpan {
  const FigmaTextSpan({
    required this.text,
    this.style,
  });

  final String text;
  final FigmaTextStyle? style;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaTextSpan &&
          runtimeType == other.runtimeType &&
          text == other.text &&
          style == other.style;

  @override
  int get hashCode => Object.hash(text, style);
}

class FontName {
  const FontName({
    required this.family,
    this.style = FigmaFontStyle.regular,
    this.weight = FontWeight.normal,
  });

  final String family;
  final FigmaFontStyle style;
  final FontWeight weight;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FontName &&
          runtimeType == other.runtimeType &&
          family == other.family &&
          weight == other.weight &&
          style == other.style;

  @override
  int get hashCode => Object.hash(family, style, weight);

  @override
  String toString() =>
      'FontName(family: $family, style: $style, weight: $weight)';
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
  const factory LineHeight.percent(double value) = LineHeightPercent;

  const factory LineHeight.pixels(double value) = LineHeightPixels;

  const factory LineHeight.auto() = LineHeightAuto;
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
