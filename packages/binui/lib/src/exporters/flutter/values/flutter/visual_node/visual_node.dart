import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/alias.dart';
import 'package:binui/src/exporters/flutter/values/flutter/paint.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';
import 'package:binui/src/utils/naming.dart';

class VisualNodeDartExporter {
  const VisualNodeDartExporter({required this.valueSerializer});

  final FlutterValueExporter valueSerializer;

  /// Checks if a visibility alias is a constant true value
  bool _isConstantVisible(Alias visible) {
    if (visible.whichType() == Alias_Type.constant) {
      final value = visible.constant.value;
      if (value.whichType() == Value_Type.boolean) {
        return value.boolean;
      }
    }
    // For variable/property aliases, we can't determine visibility statically
    return true;
  }

  /// Checks if visibility is dynamic (variable or property reference)
  bool _isDynamicVisibility(Alias visible) {
    return visible.whichType() == Alias_Type.variable ||
        visible.whichType() == Alias_Type.property;
  }

  /// Wraps a widget with visibility handling if needed
  String _wrapWithVisibility(
    Library library,
    Alias visible,
    String widgetCode,
  ) {
    // If constant false, return hidden widget
    if (visible.whichType() == Alias_Type.constant) {
      final value = visible.constant.value;
      if (value.whichType() == Value_Type.boolean && !value.boolean) {
        return 'const fl.SizedBox.shrink()';
      }
      // If constant true, no wrapper needed
      return widgetCode;
    }

    // For dynamic visibility (variable or property), wrap with Visibility widget
    final aliasExporter = AliasDartExporter(valueSerializer: valueSerializer);
    final visibilityExpr = aliasExporter.serialize(
      library,
      visible,
      Value_Type.boolean,
    );

    return 'fl.Visibility(visible: $visibilityExpr, child: $widgetCode, )';
  }

  /// Wraps a widget with FigmaPositioned for layout positioning
  String _wrapWithPositioning(
    Library library,
    String widgetCode, {
    required double x,
    required double y,
    required double width,
    required double height,
    required LayoutConstraints constraints,
    required ChildLayoutData layoutData,
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    if (isRoot) return widgetCode;

    final isAbsolute =
        parentLayoutType == LayoutProperties_Type.freeform ||
        parentLayoutType == LayoutProperties_Type.notSet ||
        layoutData.mode == PositioningMode.POSITIONING_MODE_ABSOLUTE;

    if (isAbsolute) {
      return '''figma.FigmaPositioned.freeform(
        x: $x,
        y: $y,
        width: $width,
        height: $height,
        horizontalConstraint: ${_serializeConstraintType(constraints.horizontal)},
        verticalConstraint: ${_serializeConstraintType(constraints.vertical)},
        child: $widgetCode,
      )''';
    }

    if (parentLayoutType == LayoutProperties_Type.autoLayout) {
      return '''figma.FigmaPositioned.auto(
        width: $width,
        height: $height,
        primaryAxisSizing: ${_serializeChildSizingMode(layoutData.primaryAxisSizing)},
        counterAxisSizing: ${_serializeChildSizingMode(layoutData.counterAxisSizing)},
        child: $widgetCode,
      )''';
    }

    if (parentLayoutType == LayoutProperties_Type.grid) {
      return '''figma.FigmaPositioned.grid(
        column: ${layoutData.gridColumn},
        row: ${layoutData.gridRow},
        columnSpan: ${layoutData.gridColumnSpan},
        rowSpan: ${layoutData.gridRowSpan},
        child: $widgetCode,
      )''';
    }

    return widgetCode;
  }

  String _serializeConstraintType(ConstraintType type) {
    return switch (type) {
      ConstraintType.CONSTRAINT_TYPE_MIN => 'figma.ConstraintType.min',
      ConstraintType.CONSTRAINT_TYPE_CENTER => 'figma.ConstraintType.center',
      ConstraintType.CONSTRAINT_TYPE_MAX => 'figma.ConstraintType.max',
      ConstraintType.CONSTRAINT_TYPE_STRETCH => 'figma.ConstraintType.stretch',
      ConstraintType.CONSTRAINT_TYPE_SCALE => 'figma.ConstraintType.scale',
      _ => 'figma.ConstraintType.min',
    };
  }

  String _serializeChildSizingMode(ChildSizingMode mode) {
    return switch (mode) {
      ChildSizingMode.CHILD_SIZING_HUG => 'figma.ChildSizingMode.hug',
      _ => 'figma.ChildSizingMode.fixed',
    };
  }

  /// Serializes a VisualNode to a Flutter Widget
  String serialize(
    Library library,
    VisualNode node, {
    bool isRoot = true,
    LayoutProperties_Type parentLayoutType = LayoutProperties_Type.notSet,
  }) {
    return switch (node.whichType()) {
      VisualNode_Type.frame => _serializeFrameNode(
        library,
        node.frame,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.group => _serializeGroupNode(
        library,
        node.group,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.rectangle => _serializeRectangleNode(
        library,
        node.rectangle,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.ellipse => _serializeEllipseNode(
        library,
        node.ellipse,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.line => _serializeLineNode(
        library,
        node.line,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.vector => _serializeVectorNode(
        library,
        node.vector,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.text => _serializeTextNode(
        library,
        node.text,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.instance => _serializeInstanceNode(
        library,
        node.instance,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.booleanOperation => _serializeBooleanOperationNode(
        library,
        node.booleanOperation,
        isRoot: isRoot,
        parentLayoutType: parentLayoutType,
      ),
      VisualNode_Type.notSet => 'const fl.SizedBox.shrink()',
    };
  }

  String _serializeLayoutProperties(LayoutProperties layout) {
    final layoutType = layout.whichType();

    return switch (layoutType) {
      LayoutProperties_Type.freeform =>
        '''figma.FigmaLayoutProperties.freeform(
        referenceWidth: ${layout.freeform.referenceWidth},
        referenceHeight: ${layout.freeform.referenceHeight},
      )''',
      LayoutProperties_Type.autoLayout =>
        '''figma.FigmaLayoutProperties.auto(
        referenceWidth: ${layout.autoLayout.referenceWidth},
        referenceHeight: ${layout.autoLayout.referenceHeight},
        axis: ${layout.autoLayout.isVertical ? 'fl.Axis.vertical' : 'fl.Axis.horizontal'},
        itemSpacing: ${layout.autoLayout.itemSpacing},
        counterAxisSpacing: ${layout.autoLayout.counterAxisSpacing},
        padding: const fl.EdgeInsets.only(
          left: ${layout.autoLayout.padding.left},
          right: ${layout.autoLayout.padding.right},
          top: ${layout.autoLayout.padding.top},
          bottom: ${layout.autoLayout.padding.bottom},
        ),
        primaryAxisSizingMode: ${_serializePrimaryAxisSizingMode(layout.autoLayout.primaryAxisSizingMode)},
        counterAxisSizingMode: ${_serializeCounterAxisSizingMode(layout.autoLayout.counterAxisSizingMode)},
        primaryAxisAlignItems: ${_serializeLayoutAlign(layout.autoLayout.primaryAxisAlignItems)},
        counterAxisAlignItems: ${_serializeLayoutAlign(layout.autoLayout.counterAxisAlignItems)},
        layoutWrap: ${_serializeLayoutWrap(layout.autoLayout.layoutWrap)},
      )''',
      LayoutProperties_Type.grid =>
        '''figma.FigmaLayoutProperties.grid(
        columnCount: ${layout.grid.columnCount},
        rowCount: ${layout.grid.rowCount},
        columnGap: ${layout.grid.columnGap},
        rowGap: ${layout.grid.rowGap},
        padding: const fl.EdgeInsets.only(
          left: ${layout.grid.padding.left},
          right: ${layout.grid.padding.right},
          top: ${layout.grid.padding.top},
          bottom: ${layout.grid.padding.bottom},
        ),
      )''',
      LayoutProperties_Type.notSet =>
        '''figma.FigmaLayoutProperties.freeform(
        referenceWidth: 0,
        referenceHeight: 0,
      )''',
    };
  }

  String _serializePrimaryAxisSizingMode(PrimaryAxisSizingMode mode) {
    return switch (mode) {
      PrimaryAxisSizingMode.PRIMARY_AXIS_SIZING_FIXED =>
        'figma.PrimaryAxisSizingMode.fixed',
      _ => 'figma.PrimaryAxisSizingMode.auto',
    };
  }

  String _serializeCounterAxisSizingMode(CounterAxisSizingMode mode) {
    return switch (mode) {
      CounterAxisSizingMode.COUNTER_AXIS_SIZING_FIXED =>
        'figma.CounterAxisSizingMode.fixed',
      _ => 'figma.CounterAxisSizingMode.auto',
    };
  }

  String _serializeLayoutAlign(LayoutAlign align) {
    return switch (align) {
      LayoutAlign.LAYOUT_ALIGN_CENTER => 'figma.LayoutAlign.center',
      LayoutAlign.LAYOUT_ALIGN_MAX => 'figma.LayoutAlign.max',
      LayoutAlign.LAYOUT_ALIGN_SPACE_BETWEEN =>
        'figma.LayoutAlign.spaceBetween',
      _ => 'figma.LayoutAlign.min',
    };
  }

  String _serializeLayoutWrap(LayoutWrap wrap) {
    return switch (wrap) {
      LayoutWrap.LAYOUT_WRAP_WRAP => 'figma.LayoutWrap.wrap',
      _ => 'figma.LayoutWrap.noWrap',
    };
  }

  String _serializeCornerRadius(CornerRadius cornerRadius) {
    if (cornerRadius.topLeft == cornerRadius.topRight &&
        cornerRadius.topRight == cornerRadius.bottomLeft &&
        cornerRadius.bottomLeft == cornerRadius.bottomRight) {
      return 'figma.CornerRadius.all(${cornerRadius.topLeft}, smoothing: ${cornerRadius.smoothing})';
    }
    return '''figma.CornerRadius(
      topLeft: ${cornerRadius.topLeft},
      topRight: ${cornerRadius.topRight},
      bottomLeft: ${cornerRadius.bottomLeft},
      bottomRight: ${cornerRadius.bottomRight},
      smoothing: ${cornerRadius.smoothing},
    )''';
  }

  String _serializeBlendMode(BlendMode mode) {
    return switch (mode) {
      BlendMode.BLEND_MODE_PASS_THROUGH => 'figma.BlendMode.passThrough',
      BlendMode.BLEND_MODE_NORMAL => 'figma.BlendMode.normal',
      BlendMode.BLEND_MODE_DARKEN => 'figma.BlendMode.darken',
      BlendMode.BLEND_MODE_MULTIPLY => 'figma.BlendMode.multiply',
      BlendMode.BLEND_MODE_COLOR_BURN => 'figma.BlendMode.colorBurn',
      BlendMode.BLEND_MODE_LIGHTEN => 'figma.BlendMode.lighten',
      BlendMode.BLEND_MODE_SCREEN => 'figma.BlendMode.screen',
      BlendMode.BLEND_MODE_COLOR_DODGE => 'figma.BlendMode.colorDodge',
      BlendMode.BLEND_MODE_OVERLAY => 'figma.BlendMode.overlay',
      BlendMode.BLEND_MODE_SOFT_LIGHT => 'figma.BlendMode.softLight',
      BlendMode.BLEND_MODE_HARD_LIGHT => 'figma.BlendMode.hardLight',
      BlendMode.BLEND_MODE_DIFFERENCE => 'figma.BlendMode.difference',
      BlendMode.BLEND_MODE_EXCLUSION => 'figma.BlendMode.exclusion',
      BlendMode.BLEND_MODE_HUE => 'figma.BlendMode.hue',
      BlendMode.BLEND_MODE_SATURATION => 'figma.BlendMode.saturation',
      BlendMode.BLEND_MODE_COLOR => 'figma.BlendMode.color',
      BlendMode.BLEND_MODE_LUMINOSITY => 'figma.BlendMode.luminosity',
      _ => 'figma.BlendMode.passThrough',
    };
  }

  String _serializeFrameNode(
    Library library,
    FrameNode frame, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(frame.visible) &&
        !_isDynamicVisibility(frame.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final aliasExporter = AliasDartExporter(valueSerializer: valueSerializer);

    final fills = paintExporter.serializeAsFigmaPaintList(
      library,
      frame.fills.toList(),
    );
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      frame.strokes.toList(),
    );
    final layout = _serializeLayoutProperties(frame.layout);
    final cornerRadius = _serializeCornerRadius(frame.cornerRadius);
    final opacity = aliasExporter.serialize(
      library,
      frame.opacity,
      Value_Type.doubleValue,
    );
    final blendMode = _serializeBlendMode(frame.blendMode);

    // Serialize children
    final childLayoutType = frame.layout.whichType();
    final children = frame.children
        .map((child) {
          return serialize(
            library,
            child,
            isRoot: false,
            parentLayoutType: childLayoutType,
          );
        })
        .join(', ');

    final widgetCode =
        '''figma.FigmaFrame(
      layout: $layout,
      fills: $fills,
      strokes: $strokes,
      cornerRadius: $cornerRadius,
      opacity: $opacity,
      blendMode: $blendMode,
      clipContent: ${frame.clipContent},
      children: [$children],
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      frame.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: frame.x,
      y: frame.y,
      width: frame.width,
      height: frame.height,
      constraints: frame.constraints,
      layoutData: frame.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeGroupNode(
    Library library,
    GroupNode group, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(group.visible) &&
        !_isDynamicVisibility(group.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final aliasExporter = AliasDartExporter(valueSerializer: valueSerializer);
    final opacity = aliasExporter.serialize(
      library,
      group.opacity,
      Value_Type.doubleValue,
    );
    final blendMode = _serializeBlendMode(group.blendMode);

    // Groups render as FigmaFrame with freeform layout
    final children = group.children
        .map((child) {
          return serialize(
            library,
            child,
            isRoot: false,
            parentLayoutType: LayoutProperties_Type.freeform,
          );
        })
        .join(', ');

    final widgetCode =
        '''figma.FigmaFrame(
      layout: figma.FigmaLayoutProperties.freeform(
        referenceWidth: ${group.width},
        referenceHeight: ${group.height},
      ),
      opacity: $opacity,
      blendMode: $blendMode,
      clipContent: false,
      children: [$children],
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      group.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: group.x,
      y: group.y,
      width: group.width,
      height: group.height,
      constraints: group.constraints,
      layoutData: group.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeRectangleNode(
    Library library,
    RectangleNode rectangle, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(rectangle.visible) &&
        !_isDynamicVisibility(rectangle.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final fills = paintExporter.serializeAsFigmaPaintList(
      library,
      rectangle.fills.toList(),
    );
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      rectangle.strokes.toList(),
    );
    final cornerRadius = _serializeCornerRadius(rectangle.cornerRadius);

    final widgetCode =
        '''figma.FigmaDecorated(
      decoration: figma.FigmaDecoration(
        fills: $fills,
        strokes: $strokes,
      ),
      shape: figma.FigmaRectangleShape(cornerRadius: $cornerRadius),
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      rectangle.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: rectangle.x,
      y: rectangle.y,
      width: rectangle.width,
      height: rectangle.height,
      constraints: rectangle.constraints,
      layoutData: rectangle.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeEllipseNode(
    Library library,
    EllipseNode ellipse, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(ellipse.visible) &&
        !_isDynamicVisibility(ellipse.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final fills = paintExporter.serializeAsFigmaPaintList(
      library,
      ellipse.fills.toList(),
    );
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      ellipse.strokes.toList(),
    );

    final widgetCode =
        '''figma.FigmaDecorated(
      decoration: figma.FigmaDecoration(
        fills: $fills,
        strokes: $strokes,
      ),
      shape: const figma.FigmaRectangleShape(), // TODO: Add ellipse shape support
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      ellipse.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: ellipse.x,
      y: ellipse.y,
      width: ellipse.width,
      height: ellipse.height,
      constraints: ellipse.constraints,
      layoutData: ellipse.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeLineNode(
    Library library,
    LineNode line, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(line.visible) &&
        !_isDynamicVisibility(line.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      line.strokes.toList(),
    );

    final widgetCode =
        '''figma.FigmaDecorated(
      decoration: figma.FigmaDecoration(
        strokes: $strokes,
      ),
      shape: const figma.FigmaRectangleShape(),
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      line.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: line.x,
      y: line.y,
      width: line.width,
      height: line.height,
      constraints: line.constraints,
      layoutData: line.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeVectorNode(
    Library library,
    VectorNode vector, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(vector.visible) &&
        !_isDynamicVisibility(vector.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final fills = paintExporter.serializeAsFigmaPaintList(
      library,
      vector.fills.toList(),
    );
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      vector.strokes.toList(),
    );

    final widgetCode =
        '''figma.FigmaDecorated(
      decoration: figma.FigmaDecoration(
        fills: $fills,
        strokes: $strokes,
      ),
      shape: const figma.FigmaRectangleShape(), // TODO: Vector path support
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      vector.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: vector.x,
      y: vector.y,
      width: vector.width,
      height: vector.height,
      constraints: vector.constraints,
      layoutData: vector.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeTextNode(
    Library library,
    TextNode text, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(text.visible) &&
        !_isDynamicVisibility(text.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final aliasExporter = AliasDartExporter(valueSerializer: valueSerializer);
    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);

    final characters = aliasExporter.serialize(
      library,
      text.characters,
      Value_Type.stringValue,
    );
    final fills = paintExporter.serializeAsFigmaPaintList(
      library,
      text.fills.toList(),
    );
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      text.strokes.toList(),
    );
    final style = _serializeTextStyle(text.style);

    final widgetCode =
        '''figma.FigmaText(
      $characters,
      style: $style,
      fills: $fills,
      strokes: $strokes,
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      text.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: text.x,
      y: text.y,
      width: text.width,
      height: text.height,
      constraints: text.constraints,
      layoutData: text.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeTextStyle(TextStyle style) {
    final fontStyle = switch (style.fontName.style) {
      FontStyle.FONT_STYLE_ITALIC => 'figma.FigmaFontStyle.italic',
      _ => 'figma.FigmaFontStyle.regular',
    };

    return '''figma.FigmaTextStyle(
      fontName: figma.FontName(
        family: '${style.fontName.family}',
        style: $fontStyle,
        weight: fl.FontWeight.w${style.fontName.weight},
      ),
      fontSize: ${style.fontSize},
    )''';
  }

  String _serializeInstanceNode(
    Library library,
    InstanceNode instance, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(instance.visible) &&
        !_isDynamicVisibility(instance.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    // Instance nodes reference components - generate the component widget call
    String widgetCode;
    if (instance.hasMainComponentId()) {
      final componentName = Naming.typeName(instance.name);
      widgetCode = '$componentName()';
    } else {
      widgetCode = 'const fl.SizedBox.shrink()';
    }

    final visibleWidget = _wrapWithVisibility(
      library,
      instance.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: instance.x,
      y: instance.y,
      width: instance.width,
      height: instance.height,
      constraints: instance.constraints,
      layoutData: instance.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }

  String _serializeBooleanOperationNode(
    Library library,
    BooleanOperationNode booleanOp, {
    required bool isRoot,
    required LayoutProperties_Type parentLayoutType,
  }) {
    // Check for constant hidden visibility
    if (!_isConstantVisible(booleanOp.visible) &&
        !_isDynamicVisibility(booleanOp.visible)) {
      return 'const fl.SizedBox.shrink()';
    }

    final paintExporter = PaintDartExporter(valueSerializer: valueSerializer);
    final fills = paintExporter.serializeAsFigmaPaintList(
      library,
      booleanOp.fills.toList(),
    );
    final strokes = paintExporter.serializeAsFigmaPaintList(
      library,
      booleanOp.strokes.toList(),
    );

    // Boolean operations require custom painting or complex clipping
    final widgetCode =
        '''figma.FigmaDecorated(
      decoration: figma.FigmaDecoration(
        fills: $fills,
        strokes: $strokes,
      ),
      shape: const figma.FigmaRectangleShape(), // TODO: Boolean operation path support
    )''';

    final visibleWidget = _wrapWithVisibility(
      library,
      booleanOp.visible,
      widgetCode,
    );

    return _wrapWithPositioning(
      library,
      visibleWidget,
      x: booleanOp.x,
      y: booleanOp.y,
      width: booleanOp.width,
      height: booleanOp.height,
      constraints: booleanOp.constraints,
      layoutData: booleanOp.layoutData,
      isRoot: isRoot,
      parentLayoutType: parentLayoutType,
    );
  }
}
