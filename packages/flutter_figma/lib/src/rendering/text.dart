import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

class RenderFigmaText extends RenderProxyBox {
  RenderFigmaText({
    required FigmaTextStyle style,
    required List<FigmaTextSpan> characters,
    required List<FigmaPaint> fills,
    required List<FigmaPaint> strokes,
  })  : _style = style,
        _characters = characters,
        _fills = fills,
        _strokes = strokes;

  FigmaTextStyle _style;
  FigmaTextStyle get style => _style;
  set style(FigmaTextStyle value) {
    if (_style == value) return;
    _style = value;
    _textPainter = null;
    markNeedsLayout();
  }

  List<FigmaTextSpan> _characters;
  List<FigmaTextSpan> get characters => _characters;
  set characters(List<FigmaTextSpan> value) {
    if (_characters == value) return;
    _characters = value;
    _textPainter = null;
    markNeedsLayout();
  }

  List<FigmaPaint> _fills;
  List<FigmaPaint> get fills => _fills;
  set fills(List<FigmaPaint> value) {
    if (_fills == value) return;
    _fills = value;
    markNeedsPaint();
  }

  List<FigmaPaint> _strokes;
  List<FigmaPaint> get strokes => _strokes;
  set strokes(List<FigmaPaint> value) {
    if (_strokes == value) return;
    _strokes = value;
    markNeedsPaint();
  }

  TextPainter? _textPainter;

  TextPainter _getTextPainter() {
    if (_textPainter != null) return _textPainter!;

    final spans = <InlineSpan>[];
    for (final span in _characters) {
      final spanStyle = span.style ?? _style;
      spans.add(
        TextSpan(
          text: span.text,
          style: _convertTextStyle(spanStyle),
        ),
      );
    }

    _textPainter = TextPainter(
      text: TextSpan(children: spans),
      textDirection: TextDirection.ltr,
      textHeightBehavior: TextHeightBehavior(
        applyHeightToFirstAscent: false,
        applyHeightToLastDescent: false,
        leadingDistribution: TextLeadingDistribution.even,
      ),
    );

    return _textPainter!;
  }

  TextStyle _convertTextStyle(FigmaTextStyle figmaStyle) {
    final fontFamily = figmaStyle.fontName.family;
    final fontStyle = figmaStyle.fontName.style == FigmaFontStyle.italic
        ? ui.FontStyle.italic
        : ui.FontStyle.normal;
    final fontWeight = figmaStyle.fontName.weight;

    final letterSpacing =
        figmaStyle.letterSpacing.unit == LetterSpacingUnit.pixels
            ? figmaStyle.letterSpacing.value
            : figmaStyle.fontSize * figmaStyle.letterSpacing.value / 100;

    final height = switch (figmaStyle.lineHeight) {
      LineHeightPixels(:final value) => value / figmaStyle.fontSize,
      LineHeightPercent(:final value) => value / 100,
      LineHeightAuto() => null,
    };

    return TextStyle(
      fontFamily: fontFamily,
      fontSize: figmaStyle.fontSize,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      color: _getPrimaryColor(),
    );
  }

  ui.Color _getPrimaryColor() {
    if (_fills.isEmpty) return const ui.Color(0xFF000000);
    final visibleFill = _fills.firstWhere(
      (fill) => fill.visible,
      orElse: () => _fills.first,
    );
    if (visibleFill is SolidPaint) {
      return visibleFill.color.withValues(alpha: visibleFill.opacity);
    }
    return const ui.Color(0xFF000000);
  }

  @override
  void performLayout() {
    final textPainter = _getTextPainter();
    textPainter.layout(maxWidth: constraints.maxWidth);
    size = constraints.constrain(Size(textPainter.width, textPainter.height));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (size.isEmpty) return;

    final canvas = context.canvas;
    final textPainter = _getTextPainter();

    canvas.save();
    canvas.translate(offset.dx, offset.dy);

    textPainter.paint(canvas, Offset.zero);

    canvas.restore();
  }

  @override
  void detach() {
    _textPainter = null;
    super.detach();
  }
}
