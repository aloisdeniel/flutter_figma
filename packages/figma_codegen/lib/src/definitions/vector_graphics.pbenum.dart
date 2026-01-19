// This is a generated file - do not edit.
//
// Generated from vector_graphics.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StrokeCap extends $pb.ProtobufEnum {
  static const StrokeCap BUTT = StrokeCap._(0, _omitEnumNames ? '' : 'BUTT');
  static const StrokeCap ROUND = StrokeCap._(1, _omitEnumNames ? '' : 'ROUND');
  static const StrokeCap SQUARE =
      StrokeCap._(2, _omitEnumNames ? '' : 'SQUARE');

  static const $core.List<StrokeCap> values = <StrokeCap>[
    BUTT,
    ROUND,
    SQUARE,
  ];

  static final $core.List<StrokeCap?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StrokeCap? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeCap._(super.value, super.name);
}

class StrokeJoin extends $pb.ProtobufEnum {
  static const StrokeJoin MITER =
      StrokeJoin._(0, _omitEnumNames ? '' : 'MITER');
  static const StrokeJoin BEVEL =
      StrokeJoin._(1, _omitEnumNames ? '' : 'BEVEL');
  static const StrokeJoin ROUND =
      StrokeJoin._(2, _omitEnumNames ? '' : 'ROUND');

  static const $core.List<StrokeJoin> values = <StrokeJoin>[
    MITER,
    BEVEL,
    ROUND,
  ];

  static final $core.List<StrokeJoin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StrokeJoin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeJoin._(super.value, super.name);
}

class HandleMirroring extends $pb.ProtobufEnum {
  static const HandleMirroring NONE =
      HandleMirroring._(0, _omitEnumNames ? '' : 'NONE');
  static const HandleMirroring MIRROR =
      HandleMirroring._(1, _omitEnumNames ? '' : 'MIRROR');
  static const HandleMirroring AVERAGE =
      HandleMirroring._(2, _omitEnumNames ? '' : 'AVERAGE');
  static const HandleMirroring ALIGN =
      HandleMirroring._(3, _omitEnumNames ? '' : 'ALIGN');

  static const $core.List<HandleMirroring> values = <HandleMirroring>[
    NONE,
    MIRROR,
    AVERAGE,
    ALIGN,
  ];

  static final $core.List<HandleMirroring?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static HandleMirroring? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const HandleMirroring._(super.value, super.name);
}

class WindingRule extends $pb.ProtobufEnum {
  static const WindingRule NONZERO =
      WindingRule._(0, _omitEnumNames ? '' : 'NONZERO');
  static const WindingRule EVENODD =
      WindingRule._(1, _omitEnumNames ? '' : 'EVENODD');

  static const $core.List<WindingRule> values = <WindingRule>[
    NONZERO,
    EVENODD,
  ];

  static final $core.List<WindingRule?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static WindingRule? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const WindingRule._(super.value, super.name);
}

class BlendMode extends $pb.ProtobufEnum {
  static const BlendMode NORMAL =
      BlendMode._(0, _omitEnumNames ? '' : 'NORMAL');
  static const BlendMode DARKEN =
      BlendMode._(1, _omitEnumNames ? '' : 'DARKEN');
  static const BlendMode MULTIPLY =
      BlendMode._(2, _omitEnumNames ? '' : 'MULTIPLY');
  static const BlendMode LINEAR_BURN =
      BlendMode._(3, _omitEnumNames ? '' : 'LINEAR_BURN');
  static const BlendMode COLOR_BURN =
      BlendMode._(4, _omitEnumNames ? '' : 'COLOR_BURN');
  static const BlendMode LIGHTEN =
      BlendMode._(5, _omitEnumNames ? '' : 'LIGHTEN');
  static const BlendMode SCREEN =
      BlendMode._(6, _omitEnumNames ? '' : 'SCREEN');
  static const BlendMode LINEAR_DODGE =
      BlendMode._(7, _omitEnumNames ? '' : 'LINEAR_DODGE');
  static const BlendMode COLOR_DODGE =
      BlendMode._(8, _omitEnumNames ? '' : 'COLOR_DODGE');
  static const BlendMode OVERLAY =
      BlendMode._(9, _omitEnumNames ? '' : 'OVERLAY');
  static const BlendMode SOFT_LIGHT =
      BlendMode._(10, _omitEnumNames ? '' : 'SOFT_LIGHT');
  static const BlendMode HARD_LIGHT =
      BlendMode._(11, _omitEnumNames ? '' : 'HARD_LIGHT');
  static const BlendMode DIFFERENCE =
      BlendMode._(12, _omitEnumNames ? '' : 'DIFFERENCE');
  static const BlendMode EXCLUSION =
      BlendMode._(13, _omitEnumNames ? '' : 'EXCLUSION');
  static const BlendMode HUE = BlendMode._(14, _omitEnumNames ? '' : 'HUE');
  static const BlendMode SATURATION =
      BlendMode._(15, _omitEnumNames ? '' : 'SATURATION');
  static const BlendMode COLOR = BlendMode._(16, _omitEnumNames ? '' : 'COLOR');
  static const BlendMode LUMINOSITY =
      BlendMode._(17, _omitEnumNames ? '' : 'LUMINOSITY');

  static const $core.List<BlendMode> values = <BlendMode>[
    NORMAL,
    DARKEN,
    MULTIPLY,
    LINEAR_BURN,
    COLOR_BURN,
    LIGHTEN,
    SCREEN,
    LINEAR_DODGE,
    COLOR_DODGE,
    OVERLAY,
    SOFT_LIGHT,
    HARD_LIGHT,
    DIFFERENCE,
    EXCLUSION,
    HUE,
    SATURATION,
    COLOR,
    LUMINOSITY,
  ];

  static final $core.List<BlendMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 17);
  static BlendMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlendMode._(super.value, super.name);
}

class GradientType extends $pb.ProtobufEnum {
  static const GradientType LINEAR =
      GradientType._(0, _omitEnumNames ? '' : 'LINEAR');
  static const GradientType RADIAL =
      GradientType._(1, _omitEnumNames ? '' : 'RADIAL');
  static const GradientType ANGULAR =
      GradientType._(2, _omitEnumNames ? '' : 'ANGULAR');
  static const GradientType DIAMOND =
      GradientType._(3, _omitEnumNames ? '' : 'DIAMOND');

  static const $core.List<GradientType> values = <GradientType>[
    LINEAR,
    RADIAL,
    ANGULAR,
    DIAMOND,
  ];

  static final $core.List<GradientType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static GradientType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GradientType._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
