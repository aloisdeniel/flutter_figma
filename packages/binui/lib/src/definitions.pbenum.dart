// This is a generated file - do not edit.
//
// Generated from definitions.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ColorSpace extends $pb.ProtobufEnum {
  static const ColorSpace COLOR_SPACE_SRGB =
      ColorSpace._(0, _omitEnumNames ? '' : 'COLOR_SPACE_SRGB');
  static const ColorSpace COLOR_SPACE_EXTENDED_SRGB =
      ColorSpace._(1, _omitEnumNames ? '' : 'COLOR_SPACE_EXTENDED_SRGB');
  static const ColorSpace COLOR_SPACE_DISPLAY_P3 =
      ColorSpace._(2, _omitEnumNames ? '' : 'COLOR_SPACE_DISPLAY_P3');

  static const $core.List<ColorSpace> values = <ColorSpace>[
    COLOR_SPACE_SRGB,
    COLOR_SPACE_EXTENDED_SRGB,
    COLOR_SPACE_DISPLAY_P3,
  ];

  static final $core.List<ColorSpace?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ColorSpace? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ColorSpace._(super.value, super.name);
}

class BlendMode extends $pb.ProtobufEnum {
  static const BlendMode BLEND_MODE_PASS_THROUGH =
      BlendMode._(0, _omitEnumNames ? '' : 'BLEND_MODE_PASS_THROUGH');
  static const BlendMode BLEND_MODE_NORMAL =
      BlendMode._(1, _omitEnumNames ? '' : 'BLEND_MODE_NORMAL');
  static const BlendMode BLEND_MODE_DARKEN =
      BlendMode._(2, _omitEnumNames ? '' : 'BLEND_MODE_DARKEN');
  static const BlendMode BLEND_MODE_MULTIPLY =
      BlendMode._(3, _omitEnumNames ? '' : 'BLEND_MODE_MULTIPLY');
  static const BlendMode BLEND_MODE_LINEAR_BURN =
      BlendMode._(4, _omitEnumNames ? '' : 'BLEND_MODE_LINEAR_BURN');
  static const BlendMode BLEND_MODE_COLOR_BURN =
      BlendMode._(5, _omitEnumNames ? '' : 'BLEND_MODE_COLOR_BURN');
  static const BlendMode BLEND_MODE_LIGHTEN =
      BlendMode._(6, _omitEnumNames ? '' : 'BLEND_MODE_LIGHTEN');
  static const BlendMode BLEND_MODE_SCREEN =
      BlendMode._(7, _omitEnumNames ? '' : 'BLEND_MODE_SCREEN');
  static const BlendMode BLEND_MODE_LINEAR_DODGE =
      BlendMode._(8, _omitEnumNames ? '' : 'BLEND_MODE_LINEAR_DODGE');
  static const BlendMode BLEND_MODE_COLOR_DODGE =
      BlendMode._(9, _omitEnumNames ? '' : 'BLEND_MODE_COLOR_DODGE');
  static const BlendMode BLEND_MODE_OVERLAY =
      BlendMode._(10, _omitEnumNames ? '' : 'BLEND_MODE_OVERLAY');
  static const BlendMode BLEND_MODE_SOFT_LIGHT =
      BlendMode._(11, _omitEnumNames ? '' : 'BLEND_MODE_SOFT_LIGHT');
  static const BlendMode BLEND_MODE_HARD_LIGHT =
      BlendMode._(12, _omitEnumNames ? '' : 'BLEND_MODE_HARD_LIGHT');
  static const BlendMode BLEND_MODE_DIFFERENCE =
      BlendMode._(13, _omitEnumNames ? '' : 'BLEND_MODE_DIFFERENCE');
  static const BlendMode BLEND_MODE_EXCLUSION =
      BlendMode._(14, _omitEnumNames ? '' : 'BLEND_MODE_EXCLUSION');
  static const BlendMode BLEND_MODE_HUE =
      BlendMode._(15, _omitEnumNames ? '' : 'BLEND_MODE_HUE');
  static const BlendMode BLEND_MODE_SATURATION =
      BlendMode._(16, _omitEnumNames ? '' : 'BLEND_MODE_SATURATION');
  static const BlendMode BLEND_MODE_COLOR =
      BlendMode._(17, _omitEnumNames ? '' : 'BLEND_MODE_COLOR');
  static const BlendMode BLEND_MODE_LUMINOSITY =
      BlendMode._(18, _omitEnumNames ? '' : 'BLEND_MODE_LUMINOSITY');

  static const $core.List<BlendMode> values = <BlendMode>[
    BLEND_MODE_PASS_THROUGH,
    BLEND_MODE_NORMAL,
    BLEND_MODE_DARKEN,
    BLEND_MODE_MULTIPLY,
    BLEND_MODE_LINEAR_BURN,
    BLEND_MODE_COLOR_BURN,
    BLEND_MODE_LIGHTEN,
    BLEND_MODE_SCREEN,
    BLEND_MODE_LINEAR_DODGE,
    BLEND_MODE_COLOR_DODGE,
    BLEND_MODE_OVERLAY,
    BLEND_MODE_SOFT_LIGHT,
    BLEND_MODE_HARD_LIGHT,
    BLEND_MODE_DIFFERENCE,
    BLEND_MODE_EXCLUSION,
    BLEND_MODE_HUE,
    BLEND_MODE_SATURATION,
    BLEND_MODE_COLOR,
    BLEND_MODE_LUMINOSITY,
  ];

  static final $core.List<BlendMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 18);
  static BlendMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlendMode._(super.value, super.name);
}

class MaskType extends $pb.ProtobufEnum {
  static const MaskType MASK_TYPE_ALPHA =
      MaskType._(0, _omitEnumNames ? '' : 'MASK_TYPE_ALPHA');
  static const MaskType MASK_TYPE_VECTOR =
      MaskType._(1, _omitEnumNames ? '' : 'MASK_TYPE_VECTOR');
  static const MaskType MASK_TYPE_LUMINANCE =
      MaskType._(2, _omitEnumNames ? '' : 'MASK_TYPE_LUMINANCE');

  static const $core.List<MaskType> values = <MaskType>[
    MASK_TYPE_ALPHA,
    MASK_TYPE_VECTOR,
    MASK_TYPE_LUMINANCE,
  ];

  static final $core.List<MaskType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static MaskType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const MaskType._(super.value, super.name);
}

class ConstraintType extends $pb.ProtobufEnum {
  static const ConstraintType CONSTRAINT_TYPE_MIN =
      ConstraintType._(0, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_MIN');
  static const ConstraintType CONSTRAINT_TYPE_CENTER =
      ConstraintType._(1, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_CENTER');
  static const ConstraintType CONSTRAINT_TYPE_MAX =
      ConstraintType._(2, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_MAX');
  static const ConstraintType CONSTRAINT_TYPE_STRETCH =
      ConstraintType._(3, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_STRETCH');
  static const ConstraintType CONSTRAINT_TYPE_SCALE =
      ConstraintType._(4, _omitEnumNames ? '' : 'CONSTRAINT_TYPE_SCALE');

  static const $core.List<ConstraintType> values = <ConstraintType>[
    CONSTRAINT_TYPE_MIN,
    CONSTRAINT_TYPE_CENTER,
    CONSTRAINT_TYPE_MAX,
    CONSTRAINT_TYPE_STRETCH,
    CONSTRAINT_TYPE_SCALE,
  ];

  static final $core.List<ConstraintType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ConstraintType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConstraintType._(super.value, super.name);
}

class StrokeCap extends $pb.ProtobufEnum {
  static const StrokeCap STROKE_CAP_NONE =
      StrokeCap._(0, _omitEnumNames ? '' : 'STROKE_CAP_NONE');
  static const StrokeCap STROKE_CAP_ROUND =
      StrokeCap._(1, _omitEnumNames ? '' : 'STROKE_CAP_ROUND');
  static const StrokeCap STROKE_CAP_SQUARE =
      StrokeCap._(2, _omitEnumNames ? '' : 'STROKE_CAP_SQUARE');
  static const StrokeCap STROKE_CAP_ARROW_LINES =
      StrokeCap._(3, _omitEnumNames ? '' : 'STROKE_CAP_ARROW_LINES');
  static const StrokeCap STROKE_CAP_ARROW_EQUILATERAL =
      StrokeCap._(4, _omitEnumNames ? '' : 'STROKE_CAP_ARROW_EQUILATERAL');
  static const StrokeCap STROKE_CAP_DIAMOND_FILLED =
      StrokeCap._(5, _omitEnumNames ? '' : 'STROKE_CAP_DIAMOND_FILLED');
  static const StrokeCap STROKE_CAP_TRIANGLE_FILLED =
      StrokeCap._(6, _omitEnumNames ? '' : 'STROKE_CAP_TRIANGLE_FILLED');
  static const StrokeCap STROKE_CAP_CIRCLE_FILLED =
      StrokeCap._(7, _omitEnumNames ? '' : 'STROKE_CAP_CIRCLE_FILLED');

  static const $core.List<StrokeCap> values = <StrokeCap>[
    STROKE_CAP_NONE,
    STROKE_CAP_ROUND,
    STROKE_CAP_SQUARE,
    STROKE_CAP_ARROW_LINES,
    STROKE_CAP_ARROW_EQUILATERAL,
    STROKE_CAP_DIAMOND_FILLED,
    STROKE_CAP_TRIANGLE_FILLED,
    STROKE_CAP_CIRCLE_FILLED,
  ];

  static final $core.List<StrokeCap?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static StrokeCap? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeCap._(super.value, super.name);
}

class StrokeJoin extends $pb.ProtobufEnum {
  static const StrokeJoin STROKE_JOIN_MITER =
      StrokeJoin._(0, _omitEnumNames ? '' : 'STROKE_JOIN_MITER');
  static const StrokeJoin STROKE_JOIN_BEVEL =
      StrokeJoin._(1, _omitEnumNames ? '' : 'STROKE_JOIN_BEVEL');
  static const StrokeJoin STROKE_JOIN_ROUND =
      StrokeJoin._(2, _omitEnumNames ? '' : 'STROKE_JOIN_ROUND');

  static const $core.List<StrokeJoin> values = <StrokeJoin>[
    STROKE_JOIN_MITER,
    STROKE_JOIN_BEVEL,
    STROKE_JOIN_ROUND,
  ];

  static final $core.List<StrokeJoin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StrokeJoin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeJoin._(super.value, super.name);
}

class StrokeAlign extends $pb.ProtobufEnum {
  static const StrokeAlign STROKE_ALIGN_CENTER =
      StrokeAlign._(0, _omitEnumNames ? '' : 'STROKE_ALIGN_CENTER');
  static const StrokeAlign STROKE_ALIGN_INSIDE =
      StrokeAlign._(1, _omitEnumNames ? '' : 'STROKE_ALIGN_INSIDE');
  static const StrokeAlign STROKE_ALIGN_OUTSIDE =
      StrokeAlign._(2, _omitEnumNames ? '' : 'STROKE_ALIGN_OUTSIDE');

  static const $core.List<StrokeAlign> values = <StrokeAlign>[
    STROKE_ALIGN_CENTER,
    STROKE_ALIGN_INSIDE,
    STROKE_ALIGN_OUTSIDE,
  ];

  static final $core.List<StrokeAlign?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StrokeAlign? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeAlign._(super.value, super.name);
}

class HandleMirroring extends $pb.ProtobufEnum {
  static const HandleMirroring HANDLE_MIRRORING_NONE =
      HandleMirroring._(0, _omitEnumNames ? '' : 'HANDLE_MIRRORING_NONE');
  static const HandleMirroring HANDLE_MIRRORING_ANGLE =
      HandleMirroring._(1, _omitEnumNames ? '' : 'HANDLE_MIRRORING_ANGLE');
  static const HandleMirroring HANDLE_MIRRORING_ANGLE_AND_LENGTH =
      HandleMirroring._(
          2, _omitEnumNames ? '' : 'HANDLE_MIRRORING_ANGLE_AND_LENGTH');

  static const $core.List<HandleMirroring> values = <HandleMirroring>[
    HANDLE_MIRRORING_NONE,
    HANDLE_MIRRORING_ANGLE,
    HANDLE_MIRRORING_ANGLE_AND_LENGTH,
  ];

  static final $core.List<HandleMirroring?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static HandleMirroring? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HandleMirroring._(super.value, super.name);
}

class WindingRule extends $pb.ProtobufEnum {
  static const WindingRule WINDING_RULE_NONZERO =
      WindingRule._(0, _omitEnumNames ? '' : 'WINDING_RULE_NONZERO');
  static const WindingRule WINDING_RULE_EVENODD =
      WindingRule._(1, _omitEnumNames ? '' : 'WINDING_RULE_EVENODD');

  static const $core.List<WindingRule> values = <WindingRule>[
    WINDING_RULE_NONZERO,
    WINDING_RULE_EVENODD,
  ];

  static final $core.List<WindingRule?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static WindingRule? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WindingRule._(super.value, super.name);
}

class ConnectorMagnet extends $pb.ProtobufEnum {
  static const ConnectorMagnet CONNECTOR_MAGNET_NONE =
      ConnectorMagnet._(0, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_NONE');
  static const ConnectorMagnet CONNECTOR_MAGNET_AUTO =
      ConnectorMagnet._(1, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_AUTO');
  static const ConnectorMagnet CONNECTOR_MAGNET_TOP =
      ConnectorMagnet._(2, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_TOP');
  static const ConnectorMagnet CONNECTOR_MAGNET_LEFT =
      ConnectorMagnet._(3, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_LEFT');
  static const ConnectorMagnet CONNECTOR_MAGNET_BOTTOM =
      ConnectorMagnet._(4, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_BOTTOM');
  static const ConnectorMagnet CONNECTOR_MAGNET_RIGHT =
      ConnectorMagnet._(5, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_RIGHT');
  static const ConnectorMagnet CONNECTOR_MAGNET_CENTER =
      ConnectorMagnet._(6, _omitEnumNames ? '' : 'CONNECTOR_MAGNET_CENTER');

  static const $core.List<ConnectorMagnet> values = <ConnectorMagnet>[
    CONNECTOR_MAGNET_NONE,
    CONNECTOR_MAGNET_AUTO,
    CONNECTOR_MAGNET_TOP,
    CONNECTOR_MAGNET_LEFT,
    CONNECTOR_MAGNET_BOTTOM,
    CONNECTOR_MAGNET_RIGHT,
    CONNECTOR_MAGNET_CENTER,
  ];

  static final $core.List<ConnectorMagnet?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static ConnectorMagnet? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConnectorMagnet._(super.value, super.name);
}

class ConnectorStrokeCap extends $pb.ProtobufEnum {
  static const ConnectorStrokeCap CONNECTOR_STROKE_CAP_NONE =
      ConnectorStrokeCap._(
          0, _omitEnumNames ? '' : 'CONNECTOR_STROKE_CAP_NONE');
  static const ConnectorStrokeCap CONNECTOR_STROKE_CAP_ARROW_EQUILATERAL =
      ConnectorStrokeCap._(
          1, _omitEnumNames ? '' : 'CONNECTOR_STROKE_CAP_ARROW_EQUILATERAL');
  static const ConnectorStrokeCap CONNECTOR_STROKE_CAP_ARROW_LINES =
      ConnectorStrokeCap._(
          2, _omitEnumNames ? '' : 'CONNECTOR_STROKE_CAP_ARROW_LINES');
  static const ConnectorStrokeCap CONNECTOR_STROKE_CAP_TRIANGLE_FILLED =
      ConnectorStrokeCap._(
          3, _omitEnumNames ? '' : 'CONNECTOR_STROKE_CAP_TRIANGLE_FILLED');
  static const ConnectorStrokeCap CONNECTOR_STROKE_CAP_DIAMOND_FILLED =
      ConnectorStrokeCap._(
          4, _omitEnumNames ? '' : 'CONNECTOR_STROKE_CAP_DIAMOND_FILLED');
  static const ConnectorStrokeCap CONNECTOR_STROKE_CAP_CIRCLE_FILLED =
      ConnectorStrokeCap._(
          5, _omitEnumNames ? '' : 'CONNECTOR_STROKE_CAP_CIRCLE_FILLED');

  static const $core.List<ConnectorStrokeCap> values = <ConnectorStrokeCap>[
    CONNECTOR_STROKE_CAP_NONE,
    CONNECTOR_STROKE_CAP_ARROW_EQUILATERAL,
    CONNECTOR_STROKE_CAP_ARROW_LINES,
    CONNECTOR_STROKE_CAP_TRIANGLE_FILLED,
    CONNECTOR_STROKE_CAP_DIAMOND_FILLED,
    CONNECTOR_STROKE_CAP_CIRCLE_FILLED,
  ];

  static final $core.List<ConnectorStrokeCap?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static ConnectorStrokeCap? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConnectorStrokeCap._(super.value, super.name);
}

class ScaleMode extends $pb.ProtobufEnum {
  static const ScaleMode SCALE_MODE_FILL =
      ScaleMode._(0, _omitEnumNames ? '' : 'SCALE_MODE_FILL');
  static const ScaleMode SCALE_MODE_FIT =
      ScaleMode._(1, _omitEnumNames ? '' : 'SCALE_MODE_FIT');
  static const ScaleMode SCALE_MODE_CROP =
      ScaleMode._(2, _omitEnumNames ? '' : 'SCALE_MODE_CROP');
  static const ScaleMode SCALE_MODE_TILE =
      ScaleMode._(3, _omitEnumNames ? '' : 'SCALE_MODE_TILE');

  static const $core.List<ScaleMode> values = <ScaleMode>[
    SCALE_MODE_FILL,
    SCALE_MODE_FIT,
    SCALE_MODE_CROP,
    SCALE_MODE_TILE,
  ];

  static final $core.List<ScaleMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ScaleMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ScaleMode._(super.value, super.name);
}

class OverflowDirection extends $pb.ProtobufEnum {
  static const OverflowDirection OVERFLOW_DIRECTION_NONE =
      OverflowDirection._(0, _omitEnumNames ? '' : 'OVERFLOW_DIRECTION_NONE');
  static const OverflowDirection OVERFLOW_DIRECTION_HORIZONTAL =
      OverflowDirection._(
          1, _omitEnumNames ? '' : 'OVERFLOW_DIRECTION_HORIZONTAL');
  static const OverflowDirection OVERFLOW_DIRECTION_VERTICAL =
      OverflowDirection._(
          2, _omitEnumNames ? '' : 'OVERFLOW_DIRECTION_VERTICAL');
  static const OverflowDirection OVERFLOW_DIRECTION_BOTH =
      OverflowDirection._(3, _omitEnumNames ? '' : 'OVERFLOW_DIRECTION_BOTH');

  static const $core.List<OverflowDirection> values = <OverflowDirection>[
    OVERFLOW_DIRECTION_NONE,
    OVERFLOW_DIRECTION_HORIZONTAL,
    OVERFLOW_DIRECTION_VERTICAL,
    OVERFLOW_DIRECTION_BOTH,
  ];

  static final $core.List<OverflowDirection?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static OverflowDirection? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OverflowDirection._(super.value, super.name);
}

class OverlayPositionType extends $pb.ProtobufEnum {
  static const OverlayPositionType OVERLAY_POSITION_CENTER =
      OverlayPositionType._(0, _omitEnumNames ? '' : 'OVERLAY_POSITION_CENTER');
  static const OverlayPositionType OVERLAY_POSITION_TOP_LEFT =
      OverlayPositionType._(
          1, _omitEnumNames ? '' : 'OVERLAY_POSITION_TOP_LEFT');
  static const OverlayPositionType OVERLAY_POSITION_TOP_CENTER =
      OverlayPositionType._(
          2, _omitEnumNames ? '' : 'OVERLAY_POSITION_TOP_CENTER');
  static const OverlayPositionType OVERLAY_POSITION_TOP_RIGHT =
      OverlayPositionType._(
          3, _omitEnumNames ? '' : 'OVERLAY_POSITION_TOP_RIGHT');
  static const OverlayPositionType OVERLAY_POSITION_BOTTOM_LEFT =
      OverlayPositionType._(
          4, _omitEnumNames ? '' : 'OVERLAY_POSITION_BOTTOM_LEFT');
  static const OverlayPositionType OVERLAY_POSITION_BOTTOM_CENTER =
      OverlayPositionType._(
          5, _omitEnumNames ? '' : 'OVERLAY_POSITION_BOTTOM_CENTER');
  static const OverlayPositionType OVERLAY_POSITION_BOTTOM_RIGHT =
      OverlayPositionType._(
          6, _omitEnumNames ? '' : 'OVERLAY_POSITION_BOTTOM_RIGHT');
  static const OverlayPositionType OVERLAY_POSITION_MANUAL =
      OverlayPositionType._(7, _omitEnumNames ? '' : 'OVERLAY_POSITION_MANUAL');

  static const $core.List<OverlayPositionType> values = <OverlayPositionType>[
    OVERLAY_POSITION_CENTER,
    OVERLAY_POSITION_TOP_LEFT,
    OVERLAY_POSITION_TOP_CENTER,
    OVERLAY_POSITION_TOP_RIGHT,
    OVERLAY_POSITION_BOTTOM_LEFT,
    OVERLAY_POSITION_BOTTOM_CENTER,
    OVERLAY_POSITION_BOTTOM_RIGHT,
    OVERLAY_POSITION_MANUAL,
  ];

  static final $core.List<OverlayPositionType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static OverlayPositionType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const OverlayPositionType._(super.value, super.name);
}

class LayoutMode extends $pb.ProtobufEnum {
  static const LayoutMode LAYOUT_MODE_FREEFORM =
      LayoutMode._(0, _omitEnumNames ? '' : 'LAYOUT_MODE_FREEFORM');
  static const LayoutMode LAYOUT_MODE_HORIZONTAL =
      LayoutMode._(1, _omitEnumNames ? '' : 'LAYOUT_MODE_HORIZONTAL');
  static const LayoutMode LAYOUT_MODE_VERTICAL =
      LayoutMode._(2, _omitEnumNames ? '' : 'LAYOUT_MODE_VERTICAL');
  static const LayoutMode LAYOUT_MODE_GRID =
      LayoutMode._(3, _omitEnumNames ? '' : 'LAYOUT_MODE_GRID');

  static const $core.List<LayoutMode> values = <LayoutMode>[
    LAYOUT_MODE_FREEFORM,
    LAYOUT_MODE_HORIZONTAL,
    LAYOUT_MODE_VERTICAL,
    LAYOUT_MODE_GRID,
  ];

  static final $core.List<LayoutMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LayoutMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LayoutMode._(super.value, super.name);
}

class PrimaryAxisSizingMode extends $pb.ProtobufEnum {
  static const PrimaryAxisSizingMode PRIMARY_AXIS_SIZING_FIXED =
      PrimaryAxisSizingMode._(
          0, _omitEnumNames ? '' : 'PRIMARY_AXIS_SIZING_FIXED');
  static const PrimaryAxisSizingMode PRIMARY_AXIS_SIZING_AUTO =
      PrimaryAxisSizingMode._(
          1, _omitEnumNames ? '' : 'PRIMARY_AXIS_SIZING_AUTO');

  static const $core.List<PrimaryAxisSizingMode> values =
      <PrimaryAxisSizingMode>[
    PRIMARY_AXIS_SIZING_FIXED,
    PRIMARY_AXIS_SIZING_AUTO,
  ];

  static final $core.List<PrimaryAxisSizingMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static PrimaryAxisSizingMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PrimaryAxisSizingMode._(super.value, super.name);
}

class CounterAxisSizingMode extends $pb.ProtobufEnum {
  static const CounterAxisSizingMode COUNTER_AXIS_SIZING_FIXED =
      CounterAxisSizingMode._(
          0, _omitEnumNames ? '' : 'COUNTER_AXIS_SIZING_FIXED');
  static const CounterAxisSizingMode COUNTER_AXIS_SIZING_AUTO =
      CounterAxisSizingMode._(
          1, _omitEnumNames ? '' : 'COUNTER_AXIS_SIZING_AUTO');

  static const $core.List<CounterAxisSizingMode> values =
      <CounterAxisSizingMode>[
    COUNTER_AXIS_SIZING_FIXED,
    COUNTER_AXIS_SIZING_AUTO,
  ];

  static final $core.List<CounterAxisSizingMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static CounterAxisSizingMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const CounterAxisSizingMode._(super.value, super.name);
}

class LayoutWrap extends $pb.ProtobufEnum {
  static const LayoutWrap LAYOUT_WRAP_NO_WRAP =
      LayoutWrap._(0, _omitEnumNames ? '' : 'LAYOUT_WRAP_NO_WRAP');
  static const LayoutWrap LAYOUT_WRAP_WRAP =
      LayoutWrap._(1, _omitEnumNames ? '' : 'LAYOUT_WRAP_WRAP');

  static const $core.List<LayoutWrap> values = <LayoutWrap>[
    LAYOUT_WRAP_NO_WRAP,
    LAYOUT_WRAP_WRAP,
  ];

  static final $core.List<LayoutWrap?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static LayoutWrap? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LayoutWrap._(super.value, super.name);
}

class LayoutAlign extends $pb.ProtobufEnum {
  static const LayoutAlign LAYOUT_ALIGN_MIN =
      LayoutAlign._(0, _omitEnumNames ? '' : 'LAYOUT_ALIGN_MIN');
  static const LayoutAlign LAYOUT_ALIGN_CENTER =
      LayoutAlign._(1, _omitEnumNames ? '' : 'LAYOUT_ALIGN_CENTER');
  static const LayoutAlign LAYOUT_ALIGN_MAX =
      LayoutAlign._(2, _omitEnumNames ? '' : 'LAYOUT_ALIGN_MAX');
  static const LayoutAlign LAYOUT_ALIGN_STRETCH =
      LayoutAlign._(3, _omitEnumNames ? '' : 'LAYOUT_ALIGN_STRETCH');
  static const LayoutAlign LAYOUT_ALIGN_SPACE_BETWEEN =
      LayoutAlign._(4, _omitEnumNames ? '' : 'LAYOUT_ALIGN_SPACE_BETWEEN');

  static const $core.List<LayoutAlign> values = <LayoutAlign>[
    LAYOUT_ALIGN_MIN,
    LAYOUT_ALIGN_CENTER,
    LAYOUT_ALIGN_MAX,
    LAYOUT_ALIGN_STRETCH,
    LAYOUT_ALIGN_SPACE_BETWEEN,
  ];

  static final $core.List<LayoutAlign?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static LayoutAlign? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LayoutAlign._(super.value, super.name);
}

class ChildSizingMode extends $pb.ProtobufEnum {
  static const ChildSizingMode CHILD_SIZING_FIXED =
      ChildSizingMode._(0, _omitEnumNames ? '' : 'CHILD_SIZING_FIXED');
  static const ChildSizingMode CHILD_SIZING_HUG =
      ChildSizingMode._(1, _omitEnumNames ? '' : 'CHILD_SIZING_HUG');

  static const $core.List<ChildSizingMode> values = <ChildSizingMode>[
    CHILD_SIZING_FIXED,
    CHILD_SIZING_HUG,
  ];

  static final $core.List<ChildSizingMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static ChildSizingMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ChildSizingMode._(super.value, super.name);
}

class GridTrackSizingMode extends $pb.ProtobufEnum {
  static const GridTrackSizingMode GRID_TRACK_SIZING_AUTO =
      GridTrackSizingMode._(0, _omitEnumNames ? '' : 'GRID_TRACK_SIZING_AUTO');
  static const GridTrackSizingMode GRID_TRACK_SIZING_FIXED =
      GridTrackSizingMode._(1, _omitEnumNames ? '' : 'GRID_TRACK_SIZING_FIXED');

  static const $core.List<GridTrackSizingMode> values = <GridTrackSizingMode>[
    GRID_TRACK_SIZING_AUTO,
    GRID_TRACK_SIZING_FIXED,
  ];

  static final $core.List<GridTrackSizingMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static GridTrackSizingMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GridTrackSizingMode._(super.value, super.name);
}

class PositioningMode extends $pb.ProtobufEnum {
  static const PositioningMode POSITIONING_MODE_AUTO =
      PositioningMode._(0, _omitEnumNames ? '' : 'POSITIONING_MODE_AUTO');
  static const PositioningMode POSITIONING_MODE_ABSOLUTE =
      PositioningMode._(1, _omitEnumNames ? '' : 'POSITIONING_MODE_ABSOLUTE');

  static const $core.List<PositioningMode> values = <PositioningMode>[
    POSITIONING_MODE_AUTO,
    POSITIONING_MODE_ABSOLUTE,
  ];

  static final $core.List<PositioningMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static PositioningMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PositioningMode._(super.value, super.name);
}

class TextAlignHorizontal extends $pb.ProtobufEnum {
  static const TextAlignHorizontal TEXT_ALIGN_HORIZONTAL_LEFT =
      TextAlignHorizontal._(
          0, _omitEnumNames ? '' : 'TEXT_ALIGN_HORIZONTAL_LEFT');
  static const TextAlignHorizontal TEXT_ALIGN_HORIZONTAL_CENTER =
      TextAlignHorizontal._(
          1, _omitEnumNames ? '' : 'TEXT_ALIGN_HORIZONTAL_CENTER');
  static const TextAlignHorizontal TEXT_ALIGN_HORIZONTAL_RIGHT =
      TextAlignHorizontal._(
          2, _omitEnumNames ? '' : 'TEXT_ALIGN_HORIZONTAL_RIGHT');
  static const TextAlignHorizontal TEXT_ALIGN_HORIZONTAL_JUSTIFIED =
      TextAlignHorizontal._(
          3, _omitEnumNames ? '' : 'TEXT_ALIGN_HORIZONTAL_JUSTIFIED');

  static const $core.List<TextAlignHorizontal> values = <TextAlignHorizontal>[
    TEXT_ALIGN_HORIZONTAL_LEFT,
    TEXT_ALIGN_HORIZONTAL_CENTER,
    TEXT_ALIGN_HORIZONTAL_RIGHT,
    TEXT_ALIGN_HORIZONTAL_JUSTIFIED,
  ];

  static final $core.List<TextAlignHorizontal?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TextAlignHorizontal? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextAlignHorizontal._(super.value, super.name);
}

class TextAlignVertical extends $pb.ProtobufEnum {
  static const TextAlignVertical TEXT_ALIGN_VERTICAL_TOP =
      TextAlignVertical._(0, _omitEnumNames ? '' : 'TEXT_ALIGN_VERTICAL_TOP');
  static const TextAlignVertical TEXT_ALIGN_VERTICAL_CENTER =
      TextAlignVertical._(
          1, _omitEnumNames ? '' : 'TEXT_ALIGN_VERTICAL_CENTER');
  static const TextAlignVertical TEXT_ALIGN_VERTICAL_BOTTOM =
      TextAlignVertical._(
          2, _omitEnumNames ? '' : 'TEXT_ALIGN_VERTICAL_BOTTOM');

  static const $core.List<TextAlignVertical> values = <TextAlignVertical>[
    TEXT_ALIGN_VERTICAL_TOP,
    TEXT_ALIGN_VERTICAL_CENTER,
    TEXT_ALIGN_VERTICAL_BOTTOM,
  ];

  static final $core.List<TextAlignVertical?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextAlignVertical? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextAlignVertical._(super.value, super.name);
}

class TextCase extends $pb.ProtobufEnum {
  static const TextCase TEXT_CASE_ORIGINAL =
      TextCase._(0, _omitEnumNames ? '' : 'TEXT_CASE_ORIGINAL');
  static const TextCase TEXT_CASE_UPPER =
      TextCase._(1, _omitEnumNames ? '' : 'TEXT_CASE_UPPER');
  static const TextCase TEXT_CASE_LOWER =
      TextCase._(2, _omitEnumNames ? '' : 'TEXT_CASE_LOWER');
  static const TextCase TEXT_CASE_TITLE =
      TextCase._(3, _omitEnumNames ? '' : 'TEXT_CASE_TITLE');
  static const TextCase TEXT_CASE_SMALL_CAPS =
      TextCase._(4, _omitEnumNames ? '' : 'TEXT_CASE_SMALL_CAPS');
  static const TextCase TEXT_CASE_SMALL_CAPS_FORCED =
      TextCase._(5, _omitEnumNames ? '' : 'TEXT_CASE_SMALL_CAPS_FORCED');

  static const $core.List<TextCase> values = <TextCase>[
    TEXT_CASE_ORIGINAL,
    TEXT_CASE_UPPER,
    TEXT_CASE_LOWER,
    TEXT_CASE_TITLE,
    TEXT_CASE_SMALL_CAPS,
    TEXT_CASE_SMALL_CAPS_FORCED,
  ];

  static final $core.List<TextCase?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 5);
  static TextCase? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextCase._(super.value, super.name);
}

class TextDecoration extends $pb.ProtobufEnum {
  static const TextDecoration TEXT_DECORATION_NONE =
      TextDecoration._(0, _omitEnumNames ? '' : 'TEXT_DECORATION_NONE');
  static const TextDecoration TEXT_DECORATION_UNDERLINE =
      TextDecoration._(1, _omitEnumNames ? '' : 'TEXT_DECORATION_UNDERLINE');
  static const TextDecoration TEXT_DECORATION_STRIKETHROUGH = TextDecoration._(
      2, _omitEnumNames ? '' : 'TEXT_DECORATION_STRIKETHROUGH');

  static const $core.List<TextDecoration> values = <TextDecoration>[
    TEXT_DECORATION_NONE,
    TEXT_DECORATION_UNDERLINE,
    TEXT_DECORATION_STRIKETHROUGH,
  ];

  static final $core.List<TextDecoration?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextDecoration? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextDecoration._(super.value, super.name);
}

class TextDecorationStyle extends $pb.ProtobufEnum {
  static const TextDecorationStyle TEXT_DECORATION_STYLE_SOLID =
      TextDecorationStyle._(
          0, _omitEnumNames ? '' : 'TEXT_DECORATION_STYLE_SOLID');
  static const TextDecorationStyle TEXT_DECORATION_STYLE_WAVY =
      TextDecorationStyle._(
          1, _omitEnumNames ? '' : 'TEXT_DECORATION_STYLE_WAVY');
  static const TextDecorationStyle TEXT_DECORATION_STYLE_DOTTED =
      TextDecorationStyle._(
          2, _omitEnumNames ? '' : 'TEXT_DECORATION_STYLE_DOTTED');

  static const $core.List<TextDecorationStyle> values = <TextDecorationStyle>[
    TEXT_DECORATION_STYLE_SOLID,
    TEXT_DECORATION_STYLE_WAVY,
    TEXT_DECORATION_STYLE_DOTTED,
  ];

  static final $core.List<TextDecorationStyle?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextDecorationStyle? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextDecorationStyle._(super.value, super.name);
}

class FontStyle extends $pb.ProtobufEnum {
  static const FontStyle FONT_STYLE_REGULAR =
      FontStyle._(0, _omitEnumNames ? '' : 'FONT_STYLE_REGULAR');
  static const FontStyle FONT_STYLE_ITALIC =
      FontStyle._(1, _omitEnumNames ? '' : 'FONT_STYLE_ITALIC');

  static const $core.List<FontStyle> values = <FontStyle>[
    FONT_STYLE_REGULAR,
    FONT_STYLE_ITALIC,
  ];

  static final $core.List<FontStyle?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static FontStyle? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const FontStyle._(super.value, super.name);
}

class LetterSpacingUnit extends $pb.ProtobufEnum {
  static const LetterSpacingUnit LETTER_SPACING_PIXELS =
      LetterSpacingUnit._(0, _omitEnumNames ? '' : 'LETTER_SPACING_PIXELS');
  static const LetterSpacingUnit LETTER_SPACING_PERCENT =
      LetterSpacingUnit._(1, _omitEnumNames ? '' : 'LETTER_SPACING_PERCENT');

  static const $core.List<LetterSpacingUnit> values = <LetterSpacingUnit>[
    LETTER_SPACING_PIXELS,
    LETTER_SPACING_PERCENT,
  ];

  static final $core.List<LetterSpacingUnit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static LetterSpacingUnit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LetterSpacingUnit._(super.value, super.name);
}

class LeadingTrim extends $pb.ProtobufEnum {
  static const LeadingTrim LEADING_TRIM_CAP_HEIGHT =
      LeadingTrim._(0, _omitEnumNames ? '' : 'LEADING_TRIM_CAP_HEIGHT');
  static const LeadingTrim LEADING_TRIM_NONE =
      LeadingTrim._(1, _omitEnumNames ? '' : 'LEADING_TRIM_NONE');

  static const $core.List<LeadingTrim> values = <LeadingTrim>[
    LEADING_TRIM_CAP_HEIGHT,
    LEADING_TRIM_NONE,
  ];

  static final $core.List<LeadingTrim?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static LeadingTrim? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LeadingTrim._(super.value, super.name);
}

class TextListType extends $pb.ProtobufEnum {
  static const TextListType TEXT_LIST_ORDERED =
      TextListType._(0, _omitEnumNames ? '' : 'TEXT_LIST_ORDERED');
  static const TextListType TEXT_LIST_UNORDERED =
      TextListType._(1, _omitEnumNames ? '' : 'TEXT_LIST_UNORDERED');
  static const TextListType TEXT_LIST_NONE =
      TextListType._(2, _omitEnumNames ? '' : 'TEXT_LIST_NONE');

  static const $core.List<TextListType> values = <TextListType>[
    TEXT_LIST_ORDERED,
    TEXT_LIST_UNORDERED,
    TEXT_LIST_NONE,
  ];

  static final $core.List<TextListType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextListType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextListType._(super.value, super.name);
}

class HyperlinkType extends $pb.ProtobufEnum {
  static const HyperlinkType HYPERLINK_URL =
      HyperlinkType._(0, _omitEnumNames ? '' : 'HYPERLINK_URL');
  static const HyperlinkType HYPERLINK_NODE =
      HyperlinkType._(1, _omitEnumNames ? '' : 'HYPERLINK_NODE');

  static const $core.List<HyperlinkType> values = <HyperlinkType>[
    HYPERLINK_URL,
    HYPERLINK_NODE,
  ];

  static final $core.List<HyperlinkType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static HyperlinkType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HyperlinkType._(super.value, super.name);
}

class PatternTileType extends $pb.ProtobufEnum {
  static const PatternTileType PATTERN_TILE_RECTANGULAR =
      PatternTileType._(0, _omitEnumNames ? '' : 'PATTERN_TILE_RECTANGULAR');
  static const PatternTileType PATTERN_TILE_HORIZONTAL_HEXAGONAL =
      PatternTileType._(
          1, _omitEnumNames ? '' : 'PATTERN_TILE_HORIZONTAL_HEXAGONAL');
  static const PatternTileType PATTERN_TILE_VERTICAL_HEXAGONAL =
      PatternTileType._(
          2, _omitEnumNames ? '' : 'PATTERN_TILE_VERTICAL_HEXAGONAL');

  static const $core.List<PatternTileType> values = <PatternTileType>[
    PATTERN_TILE_RECTANGULAR,
    PATTERN_TILE_HORIZONTAL_HEXAGONAL,
    PATTERN_TILE_VERTICAL_HEXAGONAL,
  ];

  static final $core.List<PatternTileType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PatternTileType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PatternTileType._(super.value, super.name);
}

class PatternHorizontalAlignment extends $pb.ProtobufEnum {
  static const PatternHorizontalAlignment PATTERN_ALIGN_START =
      PatternHorizontalAlignment._(
          0, _omitEnumNames ? '' : 'PATTERN_ALIGN_START');
  static const PatternHorizontalAlignment PATTERN_ALIGN_CENTER =
      PatternHorizontalAlignment._(
          1, _omitEnumNames ? '' : 'PATTERN_ALIGN_CENTER');
  static const PatternHorizontalAlignment PATTERN_ALIGN_END =
      PatternHorizontalAlignment._(
          2, _omitEnumNames ? '' : 'PATTERN_ALIGN_END');

  static const $core.List<PatternHorizontalAlignment> values =
      <PatternHorizontalAlignment>[
    PATTERN_ALIGN_START,
    PATTERN_ALIGN_CENTER,
    PATTERN_ALIGN_END,
  ];

  static final $core.List<PatternHorizontalAlignment?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PatternHorizontalAlignment? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PatternHorizontalAlignment._(super.value, super.name);
}

class BlurType extends $pb.ProtobufEnum {
  static const BlurType BLUR_TYPE_LAYER =
      BlurType._(0, _omitEnumNames ? '' : 'BLUR_TYPE_LAYER');
  static const BlurType BLUR_TYPE_BACKGROUND =
      BlurType._(1, _omitEnumNames ? '' : 'BLUR_TYPE_BACKGROUND');

  static const $core.List<BlurType> values = <BlurType>[
    BLUR_TYPE_LAYER,
    BLUR_TYPE_BACKGROUND,
  ];

  static final $core.List<BlurType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static BlurType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlurType._(super.value, super.name);
}

class LabelVariableType extends $pb.ProtobufEnum {
  static const LabelVariableType LABEL_VARIABLE_STRING =
      LabelVariableType._(0, _omitEnumNames ? '' : 'LABEL_VARIABLE_STRING');
  static const LabelVariableType LABEL_VARIABLE_NUMBER =
      LabelVariableType._(1, _omitEnumNames ? '' : 'LABEL_VARIABLE_NUMBER');

  static const $core.List<LabelVariableType> values = <LabelVariableType>[
    LABEL_VARIABLE_STRING,
    LABEL_VARIABLE_NUMBER,
  ];

  static final $core.List<LabelVariableType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static LabelVariableType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LabelVariableType._(super.value, super.name);
}

class LabelStyle extends $pb.ProtobufEnum {
  static const LabelStyle LABEL_STYLE_NONE =
      LabelStyle._(0, _omitEnumNames ? '' : 'LABEL_STYLE_NONE');
  static const LabelStyle LABEL_STYLE_BOLD =
      LabelStyle._(1, _omitEnumNames ? '' : 'LABEL_STYLE_BOLD');
  static const LabelStyle LABEL_STYLE_ITALIC =
      LabelStyle._(2, _omitEnumNames ? '' : 'LABEL_STYLE_ITALIC');
  static const LabelStyle LABEL_STYLE_UNDERLINED =
      LabelStyle._(3, _omitEnumNames ? '' : 'LABEL_STYLE_UNDERLINED');

  static const $core.List<LabelStyle> values = <LabelStyle>[
    LABEL_STYLE_NONE,
    LABEL_STYLE_BOLD,
    LABEL_STYLE_ITALIC,
    LABEL_STYLE_UNDERLINED,
  ];

  static final $core.List<LabelStyle?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LabelStyle? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LabelStyle._(super.value, super.name);
}

class BooleanOperation extends $pb.ProtobufEnum {
  static const BooleanOperation BOOLEAN_OPERATION_UNION =
      BooleanOperation._(0, _omitEnumNames ? '' : 'BOOLEAN_OPERATION_UNION');
  static const BooleanOperation BOOLEAN_OPERATION_INTERSECT =
      BooleanOperation._(
          1, _omitEnumNames ? '' : 'BOOLEAN_OPERATION_INTERSECT');
  static const BooleanOperation BOOLEAN_OPERATION_SUBTRACT =
      BooleanOperation._(2, _omitEnumNames ? '' : 'BOOLEAN_OPERATION_SUBTRACT');
  static const BooleanOperation BOOLEAN_OPERATION_EXCLUDE =
      BooleanOperation._(3, _omitEnumNames ? '' : 'BOOLEAN_OPERATION_EXCLUDE');

  static const $core.List<BooleanOperation> values = <BooleanOperation>[
    BOOLEAN_OPERATION_UNION,
    BOOLEAN_OPERATION_INTERSECT,
    BOOLEAN_OPERATION_SUBTRACT,
    BOOLEAN_OPERATION_EXCLUDE,
  ];

  static final $core.List<BooleanOperation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static BooleanOperation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BooleanOperation._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
