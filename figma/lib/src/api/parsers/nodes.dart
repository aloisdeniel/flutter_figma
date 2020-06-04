import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/widgets/node.dart';
import 'package:flutter_figma/src/widgets/vector.dart';
import 'package:flutter_figma/widgets.dart';

import 'base.dart' as base;

class FigmaNodeParser {
  const FigmaNodeParser();

  FigmaNode parse(dynamic json) {
    return _node(json);
  }

  static FigmaNode _node(dynamic json) {
    switch (json['type']) {
      case 'RECTANGLE':
        return _rectangle(json);
      case 'INSTANCE':
      case 'COMPONENT':
      case 'FRAME':
        return _frame(json);
      case 'TEXT':
        return _text(json);
      case 'VECTOR':
      case 'REGULAR_POLYGON':
      case 'ELLIPSE':
      case 'STAR':
        return _vector(json);
      default:
        return null;
    }
  }

  static FigmaVector _vector(dynamic json) {
    return FigmaVector(
      id: json['id'],
      name: json['name'],
      fillGeometry: base.path(json['fillGeometry']),
      fills: base.paintList(json['fills']),
      strokes: base.paintList(json['strokes']),
      effects: base.effectList(json['effects']),
      strokeWeight: base.number(json['strokeWeight']),
      strokeAlign: base.strokeAlign(json['strokeAlign']),
      layoutAlign: base.layoutAlign(json['layoutAlign']),
      preserveRatio: json['preserveRatio'],
      opacity: base.number(json['opacity']) ?? 1.0,
      size: base.sizeFromVector(json['size']),
      relativeTransform: base.relativeTransform(json),
      constraints: base.layoutConstraints(json),
      rectangleCornerRadii: base.cornerRadii(json),
    );
  }

  static FigmaFrame _frame(dynamic json) {
    return FigmaFrame(
      id: json['id'],
      name: json['name'],
      fills: base.paintList(json['fills']),
      strokes: base.paintList(json['strokes']),
      effects: base.effectList(json['effects']),
      strokeWeight: base.number(json['strokeWeight']),
      strokeAlign: base.strokeAlign(json['strokeAlign']),
      layoutAlign: base.layoutAlign(json['layoutAlign']),
      opacity: base.number(json['opacity']) ?? 1.0,
      size: base.sizeFromVector(json['size']),
      clipsContent: json['clipsContent'] ?? false,
      preserveRatio: json['preserveRatio'],
      itemSpacing: base.number(json['itemSpacing']),
      verticalPadding: base.number(json['verticalPadding']),
      horizontalPadding: base.number(json['horizontalPadding']),
      counterAxisSizingMode:
          base.counterAxisSizingMode(json['counterAxisSizingMode']),
      layoutMode: base.layoutMode(json['layoutMode']),
      relativeTransform: base.relativeTransform(json),
      constraints: base.layoutConstraints(json),
      rectangleCornerRadii: base.cornerRadii(json),
      children: json['children']?.map<Widget>((x) => _node(x))?.toList(),
    );
  }

  static FigmaRectangle _rectangle(dynamic json) {
    return FigmaRectangle(
      id: json['id'],
      name: json['name'],
      fills: base.paintList(json['fills']),
      strokes: base.paintList(json['strokes']),
      effects: base.effectList(json['effects']),
      strokeWeight: base.number(json['strokeWeight']),
      strokeAlign: base.strokeAlign(json['strokeAlign']),
      layoutAlign: base.layoutAlign(json['layoutAlign']),
      preserveRatio: json['preserveRatio'],
      opacity: base.number(json['opacity']) ?? 1.0,
      size: base.sizeFromVector(json['size']),
      relativeTransform: base.relativeTransform(json),
      constraints: base.layoutConstraints(json),
      rectangleCornerRadii: base.cornerRadii(json),
    );
  }

  static FigmaText _text(dynamic json) {
    return FigmaText(
      id: json['id'],
      name: json['name'],
      fills: base.paintList(json['fills']),
      strokes: base.paintList(json['strokes']),
      effects: base.effectList(json['effects']),
      strokeWeight: base.number(json['strokeWeight']),
      strokeAlign: base.strokeAlign(json['strokeAlign']),
      layoutAlign: base.layoutAlign(json['layoutAlign']),
      preserveRatio: json['preserveRatio'],
      opacity: base.number(json['opacity']) ?? 1.0,
      size: base.sizeFromVector(json['size']),
      relativeTransform: base.relativeTransform(json),
      constraints: base.layoutConstraints(json),
      characters: json['characters'],
      style: base.typeStyle(json['style']),
      characterStyleOverrides: json['characterStyleOverrides']
          .map<int>((x) => x?.toInt() as int)
          .toList(),
      styleOverrideTable: json['styleOverrideTable']
          ?.map<String, FigmaTypeStyle>(
              (i, x) => MapEntry<String, FigmaTypeStyle>(i, base.typeStyle(x))),
    );
  }
}
