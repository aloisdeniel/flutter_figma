import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';
import 'package:flutter_figma/src/rendering/text.dart';

class DefaultFigmaTextStyle extends InheritedWidget {
  const DefaultFigmaTextStyle({
    required super.child,
    required this.style,
    required this.fills,
    required this.strokes,
  });

  final FigmaTextStyle style;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;

  static FigmaTextStyle fallbackStyle = FigmaTextStyle(
    fontName: FontName(family: 'system', style: 'regular'),
    fontSize: 12,
    letterSpacing: LetterSpacing(
      value: 0,
      unit: LetterSpacingUnit.pixels,
    ),
    lineHeight: LineHeightAuto(),
  );

  static List<FigmaPaint> fallbackFills(BuildContext context) {
    final brightness = MediaQuery.platformBrightnessOf(context);
    return switch (brightness) {
      Brightness.dark => const [
          SolidPaint(
            color: Color.from(alpha: 1, red: 1, green: 1, blue: 1),
          ),
        ],
      Brightness.light => const [
          SolidPaint(
            color: Color.from(alpha: 1, red: 0, green: 0, blue: 0),
          ),
        ],
    };
  }

  static DefaultFigmaTextStyle? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DefaultFigmaTextStyle>();
  }

  @override
  bool updateShouldNotify(covariant DefaultFigmaTextStyle oldWidget) {
    return style != oldWidget.style ||
        !listEquals(fills, oldWidget.fills) ||
        !listEquals(strokes, oldWidget.strokes);
  }
}

class FigmaText extends LeafRenderObjectWidget {
  const FigmaText({
    super.key,
    required this.characters,
    this.style,
    this.fills = const [],
    this.strokes = const [],
  });

  final FigmaTextStyle? style;
  final List<FigmaPaint>? fills;
  final List<FigmaPaint>? strokes;
  final List<FigmaTextSpan> characters;

  @override
  RenderObject createRenderObject(BuildContext context) {
    late final defaultStyle = DefaultFigmaTextStyle.maybeOf(context);
    final style = this.style ??
        defaultStyle?.style ??
        DefaultFigmaTextStyle.fallbackStyle;
    final fills = this.fills ??
        defaultStyle?.fills ??
        DefaultFigmaTextStyle.fallbackFills(context);
    final strokes = this.strokes ?? defaultStyle?.strokes ?? const [];
    return RenderFigmaText(
      style: style,
      characters: characters,
      fills: fills,
      strokes: strokes,
    );
  }

  @override
  void updateRenderObject(BuildContext context, RenderFigmaText renderObject) {
    late final defaultStyle = DefaultFigmaTextStyle.maybeOf(context);
    final style = this.style ??
        defaultStyle?.style ??
        DefaultFigmaTextStyle.fallbackStyle;
    final fills = this.fills ??
        defaultStyle?.fills ??
        DefaultFigmaTextStyle.fallbackFills(context);
    final strokes = this.strokes ?? defaultStyle?.strokes ?? const [];
    renderObject
      ..style = style
      ..characters = characters
      ..fills = fills
      ..strokes = strokes;
  }
}
