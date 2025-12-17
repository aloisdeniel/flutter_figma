import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiVector extends StatelessWidget {
  const BinuiVector({super.key, required this.node});

  final b.VectorNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return FigmaDecorated(
      decoration: FigmaDecoration(
        fills: node.fills.map((p) => p.toFigmaFlutter(config.library)).toList(),
        strokes: node.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
      ),
      shape: const FigmaRectangleShape(),
    );
  }
}
