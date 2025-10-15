import 'dart:ui' as ui;
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'base_node.dart';

enum FigmaTextCase {
  original,
  upper,
  lower,
  title,
  smallCaps,
  smallCapsForced,
}

enum TextAlignHorizontal {
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

class FigmaText extends FigmaGeometryNode {
  const FigmaText({
    super.visible,
    super.opacity,
    super.blendMode,
    super.fills,
    super.strokes,
    super.strokeWeight,
    super.strokeAlign,
    super.strokeCap,
    super.strokeJoin,
    super.strokeMiterLimit,
    super.effects,
    super.isMask,
    super.maskType,
    required this.x,
    required this.y,
    required this.width,
    required this.height,
    this.constraints,
    this.relativeTransform,
    required this.characters,
    required this.fontName,
    required this.fontSize,
    this.fontWeight = 400,
    this.fontStyle = FontStyle.regular,
    this.textDecoration = TextDecoration.none,
    this.textCase = FigmaTextCase.original,
    this.lineHeight,
    this.letterSpacing,
    this.textAlign = TextAlignHorizontal.left,
    this.textAlignVertical = FigmaTextAlignVertical.top,
    this.paragraphSpacing = 0,
    this.paragraphIndent = 0,
    this.listOptions,
    this.hyperlink,
  });

  final double x;
  final double y;
  final double width;
  final double height;
  final Constraints? constraints;
  final FigmaTransform? relativeTransform;
  final String characters;
  final FontName fontName;
  final double fontSize;
  final double fontWeight;
  final FontStyle fontStyle;
  final TextDecoration textDecoration;
  final FigmaTextCase textCase;
  final LineHeight? lineHeight;
  final LetterSpacing? letterSpacing;
  final TextAlignHorizontal textAlign;
  final FigmaTextAlignVertical textAlignVertical;
  final double paragraphSpacing;
  final double paragraphIndent;
  final TextListOptions? listOptions;
  final HyperlinkTarget? hyperlink;

  @override
  Element createElement() {
    return FigmaTextElement(this);
  }
}

class FigmaTextElement extends RenderObjectElement {
  FigmaTextElement(FigmaText super.widget);

  @override
  FigmaText get widget => super.widget as FigmaText;

  @override
  RenderFigmaText get renderObject => super.renderObject as RenderFigmaText;

  @override
  RenderFigmaText createRenderObject(BuildContext context) {
    return RenderFigmaText(
      x: widget.x,
      y: widget.y,
      width: widget.width,
      height: widget.height,
      characters: widget.characters,
      fontName: widget.fontName,
      fontSize: widget.fontSize,
      fontWeight: widget.fontWeight,
      fontStyle: widget.fontStyle,
      textDecoration: widget.textDecoration,
      textCase: widget.textCase,
      lineHeight: widget.lineHeight,
      letterSpacing: widget.letterSpacing,
      textAlign: widget.textAlign,
      textAlignVertical: widget.textAlignVertical,
      fills: widget.fills,
      strokes: widget.strokes,
      strokeWeight: widget.strokeWeight,
      visible: widget.visible,
      opacity: widget.opacity,
      blendMode: widget.blendMode,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderFigmaText renderObject) {
    renderObject
      ..x = widget.x
      ..y = widget.y
      ..width = widget.width
      ..height = widget.height
      ..characters = widget.characters
      ..fontName = widget.fontName
      ..fontSize = widget.fontSize
      ..fontWeight = widget.fontWeight
      ..fontStyle = widget.fontStyle
      ..textDecoration = widget.textDecoration
      ..textCase = widget.textCase
      ..lineHeight = widget.lineHeight
      ..letterSpacing = widget.letterSpacing
      ..textAlign = widget.textAlign
      ..textAlignVertical = widget.textAlignVertical
      ..fills = widget.fills
      ..strokes = widget.strokes
      ..strokeWeight = widget.strokeWeight
      ..visible = widget.visible
      ..opacity = widget.opacity
      ..blendMode = widget.blendMode;
  }
}

class RenderFigmaText extends RenderBox {
  RenderFigmaText({
    required double x,
    required double y,
    required double width,
    required double height,
    required String characters,
    required FontName fontName,
    required double fontSize,
    required double fontWeight,
    required FontStyle fontStyle,
    required TextDecoration textDecoration,
    required FigmaTextCase textCase,
    LineHeight? lineHeight,
    LetterSpacing? letterSpacing,
    required TextAlignHorizontal textAlign,
    required FigmaTextAlignVertical textAlignVertical,
    required List<FigmaPaint> fills,
    required List<FigmaPaint> strokes,
    required double strokeWeight,
    required bool visible,
    required double opacity,
    required BlendMode blendMode,
  })  : _x = x,
        _y = y,
        _width = width,
        _height = height,
        _characters = characters,
        _fontName = fontName,
        _fontSize = fontSize,
        _fontWeight = fontWeight,
        _fontStyle = fontStyle,
        _textDecoration = textDecoration,
        _textCase = textCase,
        _lineHeight = lineHeight,
        _letterSpacing = letterSpacing,
        _textAlign = textAlign,
        _textAlignVertical = textAlignVertical,
        _fills = fills,
        _strokes = strokes,
        _strokeWeight = strokeWeight,
        _visible = visible,
        _opacity = opacity,
        _blendMode = blendMode;

  double _x;
  double get x => _x;
  set x(double value) {
    if (_x == value) return;
    _x = value;
    markNeedsLayout();
  }

  double _y;
  double get y => _y;
  set y(double value) {
    if (_y == value) return;
    _y = value;
    markNeedsLayout();
  }

  double _width;
  double get width => _width;
  set width(double value) {
    if (_width == value) return;
    _width = value;
    _textPainter = null;
    markNeedsLayout();
  }

  double _height;
  double get height => _height;
  set height(double value) {
    if (_height == value) return;
    _height = value;
    markNeedsLayout();
  }

  String _characters;
  String get characters => _characters;
  set characters(String value) {
    if (_characters == value) return;
    _characters = value;
    _textPainter = null;
    markNeedsLayout();
  }

  FontName _fontName;
  FontName get fontName => _fontName;
  set fontName(FontName value) {
    if (_fontName == value) return;
    _fontName = value;
    _textPainter = null;
    markNeedsLayout();
  }

  double _fontSize;
  double get fontSize => _fontSize;
  set fontSize(double value) {
    if (_fontSize == value) return;
    _fontSize = value;
    _textPainter = null;
    markNeedsLayout();
  }

  double _fontWeight;
  double get fontWeight => _fontWeight;
  set fontWeight(double value) {
    if (_fontWeight == value) return;
    _fontWeight = value;
    _textPainter = null;
    markNeedsLayout();
  }

  FontStyle _fontStyle;
  FontStyle get fontStyle => _fontStyle;
  set fontStyle(FontStyle value) {
    if (_fontStyle == value) return;
    _fontStyle = value;
    _textPainter = null;
    markNeedsLayout();
  }

  TextDecoration _textDecoration;
  TextDecoration get textDecoration => _textDecoration;
  set textDecoration(TextDecoration value) {
    if (_textDecoration == value) return;
    _textDecoration = value;
    _textPainter = null;
    markNeedsPaint();
  }

  FigmaTextCase _textCase;
  FigmaTextCase get textCase => _textCase;
  set textCase(FigmaTextCase value) {
    if (_textCase == value) return;
    _textCase = value;
    _textPainter = null;
    markNeedsLayout();
  }

  LineHeight? _lineHeight;
  LineHeight? get lineHeight => _lineHeight;
  set lineHeight(LineHeight? value) {
    if (_lineHeight == value) return;
    _lineHeight = value;
    _textPainter = null;
    markNeedsLayout();
  }

  LetterSpacing? _letterSpacing;
  LetterSpacing? get letterSpacing => _letterSpacing;
  set letterSpacing(LetterSpacing? value) {
    if (_letterSpacing == value) return;
    _letterSpacing = value;
    _textPainter = null;
    markNeedsLayout();
  }

  TextAlignHorizontal _textAlign;
  TextAlignHorizontal get textAlign => _textAlign;
  set textAlign(TextAlignHorizontal value) {
    if (_textAlign == value) return;
    _textAlign = value;
    _textPainter = null;
    markNeedsPaint();
  }

  FigmaTextAlignVertical _textAlignVertical;
  FigmaTextAlignVertical get textAlignVertical => _textAlignVertical;
  set textAlignVertical(FigmaTextAlignVertical value) {
    if (_textAlignVertical == value) return;
    _textAlignVertical = value;
    markNeedsPaint();
  }

  List<FigmaPaint> _fills;
  List<FigmaPaint> get fills => _fills;
  set fills(List<FigmaPaint> value) {
    if (_fills == value) return;
    _fills = value;
    _textPainter = null;
    markNeedsPaint();
  }

  List<FigmaPaint> _strokes;
  List<FigmaPaint> get strokes => _strokes;
  set strokes(List<FigmaPaint> value) {
    if (_strokes == value) return;
    _strokes = value;
    markNeedsPaint();
  }

  double _strokeWeight;
  double get strokeWeight => _strokeWeight;
  set strokeWeight(double value) {
    if (_strokeWeight == value) return;
    _strokeWeight = value;
    markNeedsPaint();
  }

  bool _visible;
  bool get visible => _visible;
  set visible(bool value) {
    if (_visible == value) return;
    _visible = value;
    markNeedsPaint();
  }

  double _opacity;
  double get opacity => _opacity;
  set opacity(double value) {
    if (_opacity == value) return;
    _opacity = value;
    markNeedsPaint();
  }

  BlendMode _blendMode;
  BlendMode get blendMode => _blendMode;
  set blendMode(BlendMode value) {
    if (_blendMode == value) return;
    _blendMode = value;
    markNeedsPaint();
  }

  TextPainter? _textPainter;

  String _applyTextCase(String text) {
    return switch (_textCase) {
      FigmaTextCase.original => text,
      FigmaTextCase.upper => text.toUpperCase(),
      FigmaTextCase.lower => text.toLowerCase(),
      FigmaTextCase.title => text.split(' ').map((word) {
          if (word.isEmpty) return word;
          return word[0].toUpperCase() + word.substring(1).toLowerCase();
        }).join(' '),
      FigmaTextCase.smallCaps => text.toUpperCase(),
      FigmaTextCase.smallCapsForced => text.toUpperCase(),
    };
  }

  TextPainter _createTextPainter() {
    if (_textPainter != null) return _textPainter!;

    final processedText = _applyTextCase(_characters);
    
    ui.Color? textColor;
    if (_fills.isNotEmpty) {
      final fill = _fills.first;
      if (fill is SolidPaint) {
        textColor = ui.Color.fromRGBO(
          (fill.color.r * 255).toInt(),
          (fill.color.g * 255).toInt(),
          (fill.color.b * 255).toInt(),
          fill.opacity,
        );
      }
    }

    double? letterSpacingValue;
    if (_letterSpacing != null) {
      letterSpacingValue = switch (_letterSpacing!.unit) {
        LetterSpacingUnit.pixels => _letterSpacing!.value,
        LetterSpacingUnit.percent => _letterSpacing!.value * _fontSize / 100,
      };
    }

    double? heightValue;
    if (_lineHeight != null) {
      heightValue = switch (_lineHeight!) {
        LineHeightPixels() => (_lineHeight! as LineHeightPixels).value / _fontSize,
        LineHeightPercent() => (_lineHeight! as LineHeightPercent).value / 100,
        LineHeightAuto() => null,
      };
    }

    final textStyle = ui.TextStyle(
      color: textColor ?? const ui.Color(0xFF000000),
      fontSize: _fontSize,
      fontWeight: _convertFontWeight(_fontWeight),
      fontStyle: _fontStyle == FontStyle.italic ? ui.FontStyle.italic : ui.FontStyle.normal,
      letterSpacing: letterSpacingValue,
      height: heightValue,
      fontFamily: _fontName.family,
      decoration: _convertTextDecoration(_textDecoration),
    );

    final textPainter = TextPainter(
      text: TextSpan(text: processedText, style: textStyle),
      textAlign: _convertTextAlign(_textAlign),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: _width);
    _textPainter = textPainter;
    return textPainter;
  }

  @override
  void performLayout() {
    size = Size(_width, _height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (!_visible || _opacity == 0) return;

    final canvas = context.canvas;
    canvas.save();
    
    if (_opacity < 1.0) {
      canvas.saveLayer(
        offset & size,
        ui.Paint()..color = ui.Color.fromRGBO(255, 255, 255, _opacity),
      );
    }

    final textPainter = _createTextPainter();
    
    final verticalOffset = switch (_textAlignVertical) {
      FigmaTextAlignVertical.top => 0.0,
      FigmaTextAlignVertical.center => (_height - textPainter.height) / 2,
      FigmaTextAlignVertical.bottom => _height - textPainter.height,
    };

    textPainter.paint(canvas, offset + Offset(0, verticalOffset));

    if (_opacity < 1.0) {
      canvas.restore();
    }
    canvas.restore();
  }

  ui.FontWeight _convertFontWeight(double weight) {
    if (weight <= 100) return ui.FontWeight.w100;
    if (weight <= 200) return ui.FontWeight.w200;
    if (weight <= 300) return ui.FontWeight.w300;
    if (weight <= 400) return ui.FontWeight.w400;
    if (weight <= 500) return ui.FontWeight.w500;
    if (weight <= 600) return ui.FontWeight.w600;
    if (weight <= 700) return ui.FontWeight.w700;
    if (weight <= 800) return ui.FontWeight.w800;
    return ui.FontWeight.w900;
  }

  ui.TextDecoration _convertTextDecoration(TextDecoration decoration) {
    return switch (decoration) {
      TextDecoration.none => ui.TextDecoration.none,
      TextDecoration.underline => ui.TextDecoration.underline,
      TextDecoration.strikethrough => ui.TextDecoration.lineThrough,
    };
  }

  ui.TextAlign _convertTextAlign(TextAlignHorizontal align) {
    return switch (align) {
      TextAlignHorizontal.left => ui.TextAlign.left,
      TextAlignHorizontal.right => ui.TextAlign.right,
      TextAlignHorizontal.center => ui.TextAlign.center,
      TextAlignHorizontal.justified => ui.TextAlign.justify,
    };
  }
}
