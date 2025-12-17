import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_figma/widgets.dart';

class FigmaVisualNodeWidget extends StatelessWidget {
  const FigmaVisualNodeWidget({
    super.key,
    required this.node,
    this.isRoot = true,
    this.parentLayoutType = b.LayoutProperties_Type.notSet,
  });

  final b.VisualNode node;
  final bool isRoot;
  final b.LayoutProperties_Type parentLayoutType;

  @override
  Widget build(BuildContext context) {
    final config = BinuiProvider.of(context);
    Widget child = switch (node.whichType()) {
      b.VisualNode_Type.text => _buildText(config),
      b.VisualNode_Type.frame => _buildFrame(config),
      b.VisualNode_Type.rectangle => _buildRectangle(config),
      b.VisualNode_Type.ellipse => _buildEllipse(config),
      b.VisualNode_Type.group => _buildGroup(config),
      b.VisualNode_Type.line => _buildLine(config),
      b.VisualNode_Type.vector => _buildVector(config),
      b.VisualNode_Type.instance => _buildInstance(config),
      b.VisualNode_Type.booleanOperation => _buildBooleanOperation(config),
      _ => const SizedBox.shrink(),
    };

    if (isRoot) return child;

    return _wrapWithPositioning(child);
  }

  Widget _buildText(BinuiConfig config) {
    return FigmaText(config.resolve(node.text.characters, ''));
  }

  Widget _buildFrame(BinuiConfig config) {
    return FigmaFrame(
      layout: node.frame.layout.toFlutter(),
      fills: node.frame.fills
          .map((p) => p.toFigmaFlutter(config.library))
          .toList(),
      strokes: node.frame.strokes
          .map((p) => p.toFigmaFlutter(config.library))
          .toList(),
      cornerRadius: node.frame.cornerRadius.toFigmaFlutter(),
      //TODO effects: node.frame.effects,
      opacity: config.resolve<double>(node.frame.opacity, 1.0),
      visible: node.frame.visible,
      blendMode: node.frame.blendMode.toFigmaFlutter(),
      clipContent: node.frame.clipContent,
      children: node.frame.children
          .map(
            (child) => child.toFigmaFlutter(
              isRoot: false,
              parentLayoutType: node.frame.layout.whichType(),
            ),
          )
          .toList(),
    );
  }

  Widget _buildRectangle(BinuiConfig config) {
    final rect = node.rectangle;
    return FigmaDecorated(
      decoration: FigmaDecoration(
        fills: rect.fills.map((p) => p.toFigmaFlutter(config.library)).toList(),
        strokes: rect.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
      ),
      shape: FigmaRectangleShape(
        cornerRadius: rect.cornerRadius.toFigmaFlutter(),
      ),
    );
  }

  Widget _buildEllipse(BinuiConfig config) {
    final ellipse = node.ellipse;
    return FigmaDecorated(
      decoration: FigmaDecoration(
        fills: ellipse.fills
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
        strokes: ellipse.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
      ),
      // TODO: Add proper ellipse shape support
      shape: const FigmaRectangleShape(),
    );
  }

  Widget _buildGroup(BinuiConfig config) {
    // Groups are essentially frames without auto-layout
    return FigmaFrame(
      layout: FigmaLayoutProperties.freeform(
        referenceWidth: node.group.width,
        referenceHeight: node.group.height,
      ),
      opacity: config.resolve<double>(node.group.opacity, 1.0),
      visible: node.group.visible,
      blendMode: node.group.blendMode.toFigmaFlutter(),
      clipContent: false,
      children: node.group.children
          .map(
            (child) => child.toFigmaFlutter(
              isRoot: false,
              parentLayoutType: b.LayoutProperties_Type.freeform,
            ),
          )
          .toList(),
    );
  }

  Widget _buildLine(BinuiConfig config) {
    final line = node.line;
    return FigmaDecorated(
      decoration: FigmaDecoration(
        strokes: line.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
      ),
      shape: const FigmaRectangleShape(),
    );
  }

  Widget _buildVector(BinuiConfig config) {
    final vector = node.vector;
    return FigmaDecorated(
      decoration: FigmaDecoration(
        fills: vector.fills
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
        strokes: vector.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
      ),
      shape: const FigmaRectangleShape(),
    );
  }

  Widget _buildInstance(BinuiConfig config) {
    // Instance nodes render their visual representation
    // For now, treat as a frame with the instance's children
    final instance = node.instance;
    return FigmaFrame(
      layout: instance.layout.toFlutter(),
      fills: instance.fills
          .map((p) => p.toFigmaFlutter(config.library))
          .toList(),
      strokes: instance.strokes
          .map((p) => p.toFigmaFlutter(config.library))
          .toList(),
      cornerRadius: instance.cornerRadius.toFigmaFlutter(),
      opacity: config.resolve<double>(instance.opacity, 1.0),
      visible: instance.visible,
      blendMode: instance.blendMode.toFigmaFlutter(),
      clipContent: instance.clipContent,
      children: instance.children
          .map(
            (child) => child.toFigmaFlutter(
              isRoot: false,
              parentLayoutType: instance.layout.whichType(),
            ),
          )
          .toList(),
    );
  }

  Widget _buildBooleanOperation(BinuiConfig config) {
    final boolOp = node.booleanOperation;
    return FigmaDecorated(
      decoration: FigmaDecoration(
        fills: boolOp.fills
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
        strokes: boolOp.strokes
            .map((p) => p.toFigmaFlutter(config.library))
            .toList(),
      ),
      shape: const FigmaRectangleShape(),
    );
  }

  Widget _wrapWithPositioning(Widget child) {
    // Get layout data from node if available
    double x = 0, y = 0, width = 0, height = 0;
    b.LayoutConstraints? constraints;
    b.ChildLayoutData? layoutData;

    switch (node.whichType()) {
      case b.VisualNode_Type.frame:
        x = node.frame.x;
        y = node.frame.y;
        width = node.frame.width;
        height = node.frame.height;
        constraints = node.frame.constraints;
        layoutData = node.frame.layoutData;
        break;
      case b.VisualNode_Type.text:
        x = node.text.x;
        y = node.text.y;
        width = node.text.width;
        height = node.text.height;
        constraints = node.text.constraints;
        layoutData = node.text.layoutData;
        break;
      case b.VisualNode_Type.rectangle:
        x = node.rectangle.x;
        y = node.rectangle.y;
        width = node.rectangle.width;
        height = node.rectangle.height;
        constraints = node.rectangle.constraints;
        layoutData = node.rectangle.layoutData;
        break;
      case b.VisualNode_Type.ellipse:
        x = node.ellipse.x;
        y = node.ellipse.y;
        width = node.ellipse.width;
        height = node.ellipse.height;
        constraints = node.ellipse.constraints;
        layoutData = node.ellipse.layoutData;
        break;
      case b.VisualNode_Type.line:
        x = node.line.x;
        y = node.line.y;
        width = node.line.width;
        height = node.line.height;
        constraints = node.line.constraints;
        layoutData = node.line.layoutData;
        break;
      case b.VisualNode_Type.vector:
        x = node.vector.x;
        y = node.vector.y;
        width = node.vector.width;
        height = node.vector.height;
        constraints = node.vector.constraints;
        layoutData = node.vector.layoutData;
        break;
      case b.VisualNode_Type.group:
        x = node.group.x;
        y = node.group.y;
        width = node.group.width;
        height = node.group.height;
        constraints = node.group.constraints;
        layoutData = node.group.layoutData;
        break;
      case b.VisualNode_Type.instance:
        x = node.instance.x;
        y = node.instance.y;
        width = node.instance.width;
        height = node.instance.height;
        constraints = node.instance.constraints;
        layoutData = node.instance.layoutData;
        break;
      case b.VisualNode_Type.booleanOperation:
        x = node.booleanOperation.x;
        y = node.booleanOperation.y;
        width = node.booleanOperation.width;
        height = node.booleanOperation.height;
        constraints = node.booleanOperation.constraints;
        layoutData = node.booleanOperation.layoutData;
        break;
      default:
        return child;
    }

    // Determine if absolute positioning is needed
    // 1. Parent is freeform -> Always absolute
    // 2. Child has layoutData.mode == ABSOLUTE -> Absolute
    final isAbsolute =
        parentLayoutType == b.LayoutProperties_Type.freeform ||
        parentLayoutType == b.LayoutProperties_Type.notSet ||
        (layoutData.mode == b.PositioningMode.POSITIONING_MODE_ABSOLUTE);

    if (isAbsolute) {
      return FigmaPositioned.freeform(
        x: x,
        y: y,
        width: width,
        height: height,
        horizontalConstraint: constraints.horizontal.toFigmaFlutter(),
        verticalConstraint: constraints.vertical.toFigmaFlutter(),
        child: child,
      );
    }

    // If parent is Auto Layout (and not absolute child)
    if (parentLayoutType == b.LayoutProperties_Type.autoLayout) {
      return FigmaPositioned.auto(
        width: width,
        height: height,
        primaryAxisSizing: layoutData.primaryAxisSizing.toFigmaFlutter(),
        counterAxisSizing: layoutData.counterAxisSizing.toFigmaFlutter(),
        child: child,
      );
    }

    // Grid support if needed
    if (parentLayoutType == b.LayoutProperties_Type.grid) {
      return FigmaPositioned.grid(
        column: layoutData.gridColumn,
        row: layoutData.gridRow,
        columnSpan: layoutData.gridColumnSpan,
        rowSpan: layoutData.gridRowSpan,
        child: child,
      );
    }

    return child;
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
