import 'package:binui/binui.dart' as b;
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/config.dart';
import 'package:flutter_binui/src/providers.dart';
import 'package:flutter_binui/src/value.dart';
import 'package:flutter_binui/src/widgets/boolean_operation.dart';
import 'package:flutter_binui/src/widgets/ellipse.dart';
import 'package:flutter_binui/src/widgets/frame.dart';
import 'package:flutter_binui/src/widgets/instance.dart';
import 'package:flutter_binui/src/widgets/line.dart';
import 'package:flutter_binui/src/widgets/rectangle.dart';
import 'package:flutter_binui/src/widgets/text.dart';
import 'package:flutter_binui/src/widgets/vector.dart';
import 'package:flutter_figma/widgets.dart';

class BinuiVisualNode extends StatelessWidget {
  const BinuiVisualNode({
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
      b.VisualNode_Type.text => BinuiText(node: node.text),
      b.VisualNode_Type.frame => BinuiFrame(node: node.frame),
      b.VisualNode_Type.rectangle => BinuiRectangle(node: node.rectangle),
      b.VisualNode_Type.ellipse => BinuiEllipse(node: node.ellipse),
      b.VisualNode_Type.line => BinuiLine(node: node.line),
      b.VisualNode_Type.vector => BinuiVector(node: node.vector),
      b.VisualNode_Type.instance => BinuiInstance(node: node.instance),
      b.VisualNode_Type.booleanOperation => BinuiBooleanOperation(
        node: node.booleanOperation,
      ),
      b.VisualNode_Type.group => _buildGroup(config),
      _ => const SizedBox.shrink(),
    };

    if (isRoot) return child;

    return _wrapWithPositioning(child);
  }

  Widget _buildGroup(BinuiConfig config) {
    // This is a fallback, groups should already been flattened at this stage by the
    // parent frame.
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
