import 'package:binui/binui.dart';
import 'package:binui/binui.dart' as b;
import 'package:flutter/cupertino.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaVisualNodeWidget extends StatelessWidget {
  const FigmaVisualNodeWidget({super.key, required this.node});

  final VisualNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return switch (node.whichType()) {
      VisualNode_Type.text => FigmaText(config.resolve(node.text.characters)),
      VisualNode_Type.frame => FigmaFrame(
        layout: switch (node.frame.layoutMode) {
          b.LayoutMode.vertical => FigmaLayoutProperties.auto(
            axis: Axis.vertical,
            itemSpacing: config.resolve<double>(node.frame.itemSpacing),
            referenceWidth: node.frame.width,
            referenceHeight: node.frame.height,
          ),
        },
        size: ChildSize(width: node.frame.width, height: node.frame.height),
        strokes: node.frame.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
        effects: node.frame.effects
            .map((e) => config.resolve<FigmaEffect>(e))
            .toList(),
        opacity: config.resolve<double>(node.frame.opacity),
        visible: node.frame.visible,
        blendMode: node.frame.blendMode.toFigmaFlutter(),
        clipContent: node.frame.clipsContent,
        children: node.frame.children
            .map((child) => child.toFigmaFlutter())
            .toList(),
      ),
      _ => Text('Unsupported node type'),
    };
  }
}
