import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/text.dart';

class FigmaText extends LeafRenderObjectWidget {
  const FigmaText({
    super.key,
    required this.style,
    required this.characters,
    this.fills = const [],
    this.strokes = const [],
  });

  final FigmaTextStyle style;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaTextSpan> characters;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderFigmaText(
      style: style,
      characters: characters,
      fills: fills,
      strokes: strokes,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderFigmaText renderObject) {
    renderObject
      ..style = style
      ..characters = characters
      ..fills = fills
      ..strokes = strokes;
  }
}
