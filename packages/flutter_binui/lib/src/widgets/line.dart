import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiLine extends StatelessWidget {
  const BinuiLine({super.key, required this.node});

  final b.LineNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return FigmaDecorated(
      decoration: FigmaDecoration(
        strokes: node.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .nonNulls
            .toList(),
      ),
      shape: const FigmaRectangleShape(),
    );
  }
}
