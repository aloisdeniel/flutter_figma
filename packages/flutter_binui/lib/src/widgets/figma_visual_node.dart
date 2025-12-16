import 'package:binui/binui.dart' as b;
import 'package:flutter/cupertino.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaVisualNodeWidget extends StatelessWidget {
  const FigmaVisualNodeWidget({super.key, required this.node});

  final b.VisualNode node;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    return switch (node.whichType()) {
      b.VisualNode_Type.text => FigmaText(
        config.resolve(node.text.characters, ''),
      ),
      b.VisualNode_Type.frame => FigmaFrame(
        layout: node.frame.layout.toFlutter(),
        size: ChildSize(width: node.frame.width, height: node.frame.height),
        strokes: node.frame.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
        //TODO effects: node.frame.effects,
        opacity: config.resolve<double>(node.frame.opacity, 1.0),
        visible: node.frame.visible,
        blendMode: node.frame.blendMode.toFigmaFlutter(),
        clipContent: node.frame.clipContent,
        children: node.frame.children
            .map((child) => child.toFigmaFlutter())
            .toList(),
      ),
      _ => Text('Unsupported node type ${node.whichType()}'),
    };
  }
}

extension on b.LayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return switch (whichType()) {
      b.LayoutProperties_Type.autoLayout => autoLayout.toFlutter(),
      b.LayoutProperties_Type.grid => grid.toFlutter(),
      _ => freeform.toFlutter(),
    };
  }
}

extension on b.FreeformLayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return FigmaLayoutProperties.freeform(
      referenceWidth: referenceWidth,
      referenceHeight: referenceHeight,
    );
  }
}

extension on b.AutoLayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return FigmaLayoutProperties.auto(
      axis: isVertical ? Axis.vertical : Axis.horizontal,
      itemSpacing: itemSpacing,
      primaryAxisSizingMode: switch (primaryAxisSizingMode) {
        b.PrimaryAxisSizingMode.PRIMARY_AXIS_SIZING_FIXED =>
          PrimaryAxisSizingMode.fixed,
        _ => PrimaryAxisSizingMode.auto,
      },
      counterAxisSizingMode: switch (counterAxisSizingMode) {
        b.CounterAxisSizingMode.COUNTER_AXIS_SIZING_FIXED =>
          CounterAxisSizingMode.fixed,
        _ => CounterAxisSizingMode.auto,
      },
      primaryAxisAlignItems: switch (primaryAxisAlignItems) {
        b.LayoutAlign.LAYOUT_ALIGN_CENTER => LayoutAlign.center,
        b.LayoutAlign.LAYOUT_ALIGN_MAX => LayoutAlign.max,
        b.LayoutAlign.LAYOUT_ALIGN_SPACE_BETWEEN => LayoutAlign.spaceBetween,
        _ => LayoutAlign.min,
      },
      counterAxisAlignItems: switch (counterAxisAlignItems) {
        b.LayoutAlign.LAYOUT_ALIGN_CENTER => LayoutAlign.center,
        b.LayoutAlign.LAYOUT_ALIGN_MAX => LayoutAlign.max,
        b.LayoutAlign.LAYOUT_ALIGN_SPACE_BETWEEN => LayoutAlign.spaceBetween,
        _ => LayoutAlign.min,
      },
      layoutWrap: switch (layoutWrap) {
        b.LayoutWrap.LAYOUT_WRAP_WRAP => LayoutWrap.wrap,
        _ => LayoutWrap.noWrap,
      },
      referenceWidth: referenceWidth,
      referenceHeight: referenceHeight,
    );
  }
}

extension on b.GridLayoutProperties {
  FigmaLayoutProperties toFlutter() {
    return FigmaLayoutProperties.grid(
      columnCount: columnCount,
      rowCount: rowCount,
      columns: columns
          .map(
            (c) => GridTrack(
              size: c.size,
              sizingMode: switch (c.sizingMode) {
                b.GridTrackSizingMode.GRID_TRACK_SIZING_FIXED =>
                  GridTrackSizingMode.fixed,
                _ => GridTrackSizingMode.auto,
              },
            ),
          )
          .toList(),

      rows: rows
          .map(
            (c) => GridTrack(
              size: c.size,
              sizingMode: switch (c.sizingMode) {
                b.GridTrackSizingMode.GRID_TRACK_SIZING_FIXED =>
                  GridTrackSizingMode.fixed,
                _ => GridTrackSizingMode.auto,
              },
            ),
          )
          .toList(),
    );
  }
}
