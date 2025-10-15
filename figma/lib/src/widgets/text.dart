import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/text.dart';
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
  RenderObjectElement createElement() {
    return FigmaTextElement(this);
  }

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaText(
      x: x,
      y: y,
      width: width,
      height: height,
      characters: characters,
      fontName: fontName,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      textDecoration: textDecoration,
      textCase: textCase,
      lineHeight: lineHeight,
      letterSpacing: letterSpacing,
      textAlign: textAlign,
      textAlignVertical: textAlignVertical,
      fills: fills,
      strokes: strokes,
      strokeWeight: strokeWeight,
      visible: visible,
      opacity: opacity,
      blendMode: blendMode,
    );
  }

  @override
  void updateRenderObject(BuildContext context, covariant RenderFigmaText renderObject) {
    renderObject
      ..x = x
      ..y = y
      ..width = width
      ..height = height
      ..characters = characters
      ..fontName = fontName
      ..fontSize = fontSize
      ..fontWeight = fontWeight
      ..fontStyle = fontStyle
      ..textDecoration = textDecoration
      ..textCase = textCase
      ..lineHeight = lineHeight
      ..letterSpacing = letterSpacing
      ..textAlign = textAlign
      ..textAlignVertical = textAlignVertical
      ..fills = fills
      ..strokes = strokes
      ..strokeWeight = strokeWeight
      ..visible = visible
      ..opacity = opacity
      ..blendMode = blendMode;
  }
}


