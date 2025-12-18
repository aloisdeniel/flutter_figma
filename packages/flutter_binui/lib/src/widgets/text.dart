import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiText extends StatelessWidget {
  const BinuiText({super.key, required this.node});

  final b.TextNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return FigmaText(
      config.resolve(node.characters, ''),
      fills: node.fills
          .map(
            (p) => p.toFigmaFlutter(
              config.library,
              variableCollectionVariants: config.variableCollectionVariants,
              properties: config.componentProperties,
            ),
          )
          .nonNulls
          .toList(),
      strokes: node.strokes
          .map(
            (p) => p.toFigmaFlutter(
              config.library,
              variableCollectionVariants: config.variableCollectionVariants,
              properties: config.componentProperties,
            ),
          )
          .nonNulls
          .toList(),
    );
  }
}
