import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiBooleanOperation extends StatelessWidget {
  const BinuiBooleanOperation({super.key, required this.node});

  final b.BooleanOperationNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return FigmaDecorated(
      decoration: FigmaDecoration(
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
      ),
      shape: const FigmaRectangleShape(),
    );
  }
}
