import 'package:flutter_figma/src/base/base.dart';
import 'package:flutter_figma/src/rendering/layout.dart';
import 'package:flutter/widgets.dart';

import 'node.dart';

class FigmaText extends StatelessWidget implements FigmaNode {
  @override
  final String id;
  @override
  final String name;
  final double strokeWeight;
  final bool preserveRatio;
  final FigmaLayoutAlign layoutAlign;
  final FigmaLayoutConstraints constraints;
  final FigmaStrokeAlign strokeAlign;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final Size size;
  final FigmaTransform relativeTransform;
  final double opacity;
  final bool isRoot;
  final String characters;
  final FigmaTypeStyle style;
  final List<int> characterStyleOverrides;
  final Map<String, FigmaTypeStyle> styleOverrideTable;

  FigmaText({
    Key key,
    this.id,
    this.isRoot = false,
    this.name,
    this.size = Size.zero,
    this.layoutAlign = FigmaLayoutAlign.min,
    FigmaTransform relativeTransform,
    bool preserveRatio,
    this.strokeWeight = 1.0,
    this.opacity = 1.0,
    this.constraints = const FigmaLayoutConstraints(),
    this.characters = '',
    this.style,
    this.characterStyleOverrides = const <int>[],
    this.styleOverrideTable,
    this.strokeAlign = FigmaStrokeAlign.center,
    this.fills = const <FigmaPaint>[],
    this.strokes = const <FigmaPaint>[],
    this.effects = const <FigmaEffect>[],
  })  : relativeTransform = relativeTransform ?? FigmaTransform(),
        preserveRatio = preserveRatio ?? false,
        super(key: key ?? (id != null ? Key(id) : null));

  @override
  Widget build(BuildContext context) {
    final style = this.style != null ? this.style.withFills(fills) : null;

    Widget textWidget;

    if (characterStyleOverrides != null && characterStyleOverrides.isNotEmpty) {
      final spans = <TextSpan>[];
      var styleId = '0';
      var spanStyle = style;
      var slice = '';
      for (var i = 0; i < characters.length; i++) {
        var newStyleId = i < characterStyleOverrides.length
            ? characterStyleOverrides[i].toString()
            : '0';

        if (newStyleId != styleId) {
          if (slice.isNotEmpty) {
            spans.add(spanStyle.toTextSpan(slice));
          }
          styleId = newStyleId.toString();
          spanStyle = styleId == '0' ? style : styleOverrideTable[styleId];
          slice = '';
        }
        slice += characters[i];
      }
      if (slice.isNotEmpty) {
        spans.add(spanStyle.toTextSpan(slice));
      }
      textWidget = style.toRichText(spans);
    } else {
      textWidget = style.toText(characters);
    }

    final child = Opacity(
      opacity: opacity,
      child: textWidget,
    );

    if (isRoot) return child;

    return FigmaLayout(
      designSize: size,
      transform: relativeTransform,
      constraints: constraints,
      layoutAlign: layoutAlign,
      child: child,
    );
  }
}
