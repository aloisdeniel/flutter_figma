import 'package:flutter/material.dart';
import 'package:flutter_figma/widgets.dart';
import 'package:collection/collection.dart';

/// Allows to override node default behaviours.
class FigmaData {
  final String text;
  final List<TextSpan> richText;
  final FigmaTypeStyle textStyle;
  final double opacity;
  final double strokeWeight;
  final FigmaCornerRadii rectangleCornerRadii;
  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;
  final List<FigmaEffect> effects;
  final WidgetBuilder builder;
  final TransitionBuilder decoratorBuilder;

  const FigmaData({
    this.text,
    this.richText,
    this.textStyle,
    this.fills,
    this.opacity,
    this.rectangleCornerRadii,
    this.strokeWeight,
    this.strokes,
    this.effects,
    this.builder,
    this.decoratorBuilder,
  });

  static FigmaData of(BuildContext context, String nodeName) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<FigmaDataProvider>();
    if (provider != null) {
      return provider.data[nodeName];
    }

    return null;
  }

  // TODO equals and hash (freezed?)
}

class FigmaDataProvider extends InheritedWidget {
  final Map<String, FigmaData> data;

  const FigmaDataProvider({
    Key key,
    @required this.data,
    Widget child,
  })  : assert(data != null),
        super(
          key: key,
          child: child,
        );

  @override
  bool updateShouldNotify(FigmaDataProvider oldWidget) {
    return const ListEquality().equals(
      data.entries.toList(),
      oldWidget.data.entries.toList(),
    );
  }
}
