import 'package:flutter/foundation.dart';

import 'paint.dart';

class FigmaDecoration {
  const FigmaDecoration({
    this.fills = const [],
    this.strokes = const [],
  });

  final List<FigmaPaint> fills;
  final List<FigmaPaint> strokes;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaDecoration &&
          runtimeType == other.runtimeType &&
          listEquals(fills, other.fills) &&
          listEquals(strokes, other.strokes);

  @override
  int get hashCode =>
      Object.hash(Object.hashAll(fills), Object.hashAll(strokes));

  @override
  String toString() => 'FigmaDecoration(fills: $fills, strokes: $strokes)';
}
