import 'package:flutter/material.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaTypeStyle {
  final String fontFamily;
  final String fontPostScriptName;
  final double paragraphSpacing;
  final double paragraphIndent;
  final bool italic;
  final int fontWeight;
  final double fontSize;
  final FigmaTextCase textCase;
  final FigmaTextDecoration textDecoration;
  final double letterSpacing;
  final FigmaTextAlignHorizontal textAlignHorizontal;
  final FigmaTextAlignVertical textAlignVertical;
  final FigmaTextAutoResize textAutoResize;
  final List<FigmaPaint> fills;
  final double lineHeightPx;
  final double lineHeightPercent;
  final double lineHeightPercentFontSize;
  final FigmaLineHeightUnit lineHeightUnit;

  const FigmaTypeStyle({
    this.fontFamily,
    this.fontPostScriptName,
    this.paragraphSpacing = 0.0,
    this.paragraphIndent = 0.0,
    this.italic = false,
    this.fontWeight = 400,
    this.fontSize,
    this.textCase = FigmaTextCase.original,
    this.fills = const <FigmaPaint>[],
    this.letterSpacing = 0.0,
    this.lineHeightPercent = 100.0,
    this.lineHeightPercentFontSize,
    this.lineHeightPx,
    this.lineHeightUnit = FigmaLineHeightUnit.pixels,
    this.textAlignHorizontal = FigmaTextAlignHorizontal.left,
    this.textAlignVertical = FigmaTextAlignVertical.top,
    this.textAutoResize = FigmaTextAutoResize.none,
    this.textDecoration = FigmaTextDecoration.none,
  });

  FigmaTypeStyle withFills(List<FigmaPaint> fills) {
    return FigmaTypeStyle(
      fontFamily: fontFamily,
      fontPostScriptName: fontPostScriptName,
      paragraphSpacing: paragraphSpacing,
      paragraphIndent: paragraphIndent,
      italic: italic,
      fontWeight: fontWeight,
      fontSize: fontSize,
      textCase: textCase,
      fills: fills,
      letterSpacing: letterSpacing,
      lineHeightPercent: lineHeightPercent,
      lineHeightPercentFontSize: lineHeightPercentFontSize,
      lineHeightPx: lineHeightPx,
      lineHeightUnit: lineHeightUnit,
      textAlignHorizontal: textAlignHorizontal,
      textAlignVertical: textAlignVertical,
      textAutoResize: textAutoResize,
      textDecoration: textDecoration,
    );
  }

  /// This is a temporary solution that supports only plain colors. We should be able
  /// to use a shader instead for gradients, but we have to deal with bounding size.
  Color _findColorCandidate() {
    if (fills != null) {
      for (var fill in fills) {
        if (fill is FigmaColorPaint) {
          return fill.color;
        }

        if (fill is FigmaGradientLinearPaint) {
          return fill.gradientStops.first.color;
        }

        if (fill is FigmaGradientRadialPaint) {
          return fill.gradientStops.first.color;
        }
      }
    }

    return Colors.black;
  }

  TextAlign toTextAlign() {
    switch (textAlignHorizontal) {
      case FigmaTextAlignHorizontal.right:
        return TextAlign.right;
      case FigmaTextAlignHorizontal.center:
        return TextAlign.center;
      case FigmaTextAlignHorizontal.justified:
        return TextAlign.justify;
      default:
        return TextAlign.left;
    }
  }

  Text toText(String characters) {
    final style = toTextStyle();
    return Text(
      characters,
      style: style,
      textAlign: toTextAlign(),
    );
  }

  Text toRichText(List<TextSpan> spans) {
    final style = toTextStyle();
    final inline = TextSpan(
      style: style,
      children: spans,
    );
    return Text.rich(
      inline,
      style: style,
      textAlign: toTextAlign(),
    );
  }

  TextSpan toTextSpan(String characters) {
    final style = toTextStyle();
    return TextSpan(
      text: characters,
      style: style,
    );
  }

  TextStyle toTextStyle() {
    final color = _findColorCandidate();

    TextDecoration decoration;
    TextDecorationStyle decorationStyle;

    switch (textDecoration) {
      case FigmaTextDecoration.underline:
        decoration = TextDecoration.underline;
        decorationStyle = TextDecorationStyle.solid;
        break;
      case FigmaTextDecoration.strikethrough:
        decoration = TextDecoration.lineThrough;
        decorationStyle = TextDecorationStyle.solid;
        break;
      default:
        decoration = TextDecoration.none;
        break;
    }

    return TextStyle(
        fontFamily: fontFamily,
        color: color,
        decoration: decoration,
        fontSize: fontSize ?? 11,
        letterSpacing: letterSpacing,
        decorationColor: decoration != TextDecoration.none ? color : null,
        decorationStyle:
            decoration != TextDecoration.none ? decorationStyle : null,
        fontWeight: () {
          switch (fontWeight) {
            case 900:
              return FontWeight.w900;
            case 800:
              return FontWeight.w800;
            case 700:
              return FontWeight.w700;
            case 600:
              return FontWeight.w600;
            case 500:
              return FontWeight.w500;
            case 300:
              return FontWeight.w300;
            case 200:
              return FontWeight.w200;
            case 100:
              return FontWeight.w100;
            default:
              return FontWeight.w400;
          }
        }());
  }
}

enum FigmaTextCase {
  original,
  upper,
  lower,
  title,
  smallCaps,
  smallCapsForced,
}

extension FigmaTextCaseExtensions on String {
  String withTextCase(FigmaTextCase textCase) {
    switch (textCase) {
      case FigmaTextCase.lower:
        return toLowerCase();
      case FigmaTextCase.smallCaps:
      case FigmaTextCase.smallCapsForced:
      case FigmaTextCase.upper:
        return toUpperCase();
      case FigmaTextCase.title:
        return '${this[0].toUpperCase()}${substring(1)}';
      default:
        return this;
    }
  }
}

enum FigmaTextDecoration {
  none,
  strikethrough,
  underline,
}

enum FigmaTextAutoResize {
  none,
  height,
  widthAndHeight,
}

enum FigmaTextAlignHorizontal {
  left,
  right,
  center,
  justified,
}

enum FigmaTextAlignVertical {
  top,
  center,
  bottom,
}

enum FigmaLineHeightUnit {
  pixels,
  fontSizePercent,
  intrinsicPercent,
}
