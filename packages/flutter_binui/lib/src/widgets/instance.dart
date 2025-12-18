import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_binui/src/widgets/frame.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiInstance extends StatelessWidget {
  const BinuiInstance({super.key, required this.node});

  final b.InstanceNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return FigmaFrame(
      layout: node.layout.toFlutter(),
      fills: node.fills
          .map((p) => p.toFigmaFlutter(config.library))
          .nonNulls
          .toList(),
      strokes: node.strokes
          .map((p) => p.toFigmaFlutter(config.library))
          .nonNulls
          .toList(),
      cornerRadius: node.cornerRadius.toFigmaFlutter(),
      opacity: config.resolve<double>(node.opacity, 1.0),
      visible: config.resolve<bool>(node.visible, true),
      blendMode: node.blendMode.toFigmaFlutter(),
      clipContent: node.clipContent,
      children: BinuiFrame.flattenGroups(
        config,
        node.children,
        node.layout.whichType(),
      ).toList(),
    );
  }
}
