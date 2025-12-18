import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/config.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_binui/src/widgets/visual_node.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiFrame extends StatelessWidget {
  const BinuiFrame({super.key, required this.node});

  final b.FrameNode node;

  /// Flatten all group nodes
  static Iterable<Widget> flattenGroups(
    BinuiConfig config,
    Iterable<b.VisualNode> children,
    b.LayoutProperties_Type parentLayoutType,
  ) sync* {
    for (var child in children) {
      if (child.whichType() == b.VisualNode_Type.group) {
        final groupOpacity = config.resolve<double>(child.group.opacity, 1.0);
        final groupChildren = flattenGroups(
          config,
          child.group.children,
          parentLayoutType,
        );
        for (var groupChild in groupChildren) {
          yield FigmaAppearance(opacity: groupOpacity, child: groupChild);
        }
      } else {
        yield BinuiVisualNode(
          node: child,
          parentLayoutType: parentLayoutType,
          isRoot: false,
        );
      }
    }
  }

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
      //TODO effects: node.frame.effects,
      opacity: config.resolve<double>(node.opacity, 1.0),
      visible: config.resolve<bool>(node.visible, true),
      blendMode: node.blendMode.toFigmaFlutter(),
      clipContent: node.clipContent,
      children: flattenGroups(
        config,
        node.children,
        node.layout.whichType(),
      ).toList(),
    );
  }
}
