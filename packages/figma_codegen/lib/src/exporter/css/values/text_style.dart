import '../../../definitions/variables.pb.dart';

class CssTextStyleExporter {
  const CssTextStyleExporter();

  /// Returns a map of CSS property suffixes to their values
  /// e.g., {"font-family": "'Inter'", "font-size": "24px", "font-weight": "700"}
  Map<String, String> serialize(TextStyle style) {
    final properties = <String, String>{};

    // Font family and related properties
    if (style.hasFontName()) {
      final fontName = style.fontName;

      // Font family with quotes for safety
      if (fontName.family.isNotEmpty) {
        properties['font-family'] = "'${fontName.family}'";
      }

      // Font weight (100-900)
      if (fontName.weight != 0) {
        properties['font-weight'] = '${fontName.weight}';
      }

      // Font style (italic/normal)
      if (fontName.style == FontStyle.FONT_STYLE_ITALIC) {
        properties['font-style'] = 'italic';
      }
    }

    // Font size
    if (style.fontSize != 0) {
      properties['font-size'] = '${style.fontSize}px';
    }

    // Letter spacing
    if (style.hasLetterSpacing() && style.letterSpacing.value != 0) {
      final letterSpacing = style.letterSpacing;
      final unit =
          letterSpacing.unit == LetterSpacingUnit.LETTER_SPACING_PERCENT
              ? '%'
              : 'px';
      properties['letter-spacing'] = '${letterSpacing.value}$unit';
    }

    // Line height
    if (style.hasLineHeight()) {
      final lineHeight = style.lineHeight;
      switch (lineHeight.whichType()) {
        case LineHeight_Type.pixels:
          properties['line-height'] = '${lineHeight.pixels}px';
          break;
        case LineHeight_Type.percent:
          // Convert percentage to unitless value (120% -> 1.2)
          final unitless = lineHeight.percent / 100;
          properties['line-height'] = unitless.toStringAsFixed(2);
          break;
        case LineHeight_Type.autoHeight:
          properties['line-height'] = 'normal';
          break;
        case LineHeight_Type.notSet:
          // Don't add line-height property
          break;
      }
    }

    return properties;
  }
}
