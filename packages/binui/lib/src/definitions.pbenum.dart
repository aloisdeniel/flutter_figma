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
  static const ColorSpace srgb = ColorSpace._(0, _omitEnumNames ? '' : 'srgb');
  static const ColorSpace extendedSrgb =
      ColorSpace._(1, _omitEnumNames ? '' : 'extendedSrgb');
  static const ColorSpace displayP3 =
      ColorSpace._(2, _omitEnumNames ? '' : 'displayP3');

  static const $core.List<ColorSpace> values = <ColorSpace>[
    srgb,
    extendedSrgb,
    displayP3,
  ];

  static final $core.List<ColorSpace?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static ColorSpace? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ColorSpace._(super.value, super.name);
}

class LabelVariableType extends $pb.ProtobufEnum {
  static const LabelVariableType string_type =
      LabelVariableType._(0, _omitEnumNames ? '' : 'string_type');
  static const LabelVariableType number_type =
      LabelVariableType._(1, _omitEnumNames ? '' : 'number_type');

  static const $core.List<LabelVariableType> values = <LabelVariableType>[
    string_type,
    number_type,
  ];

  static final $core.List<LabelVariableType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static LabelVariableType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LabelVariableType._(super.value, super.name);
}

class LabelStyle extends $pb.ProtobufEnum {
  static const LabelStyle none = LabelStyle._(0, _omitEnumNames ? '' : 'none');
  static const LabelStyle bold = LabelStyle._(1, _omitEnumNames ? '' : 'bold');
  static const LabelStyle italic =
      LabelStyle._(2, _omitEnumNames ? '' : 'italic');
  static const LabelStyle underlined =
      LabelStyle._(3, _omitEnumNames ? '' : 'underlined');

  static const $core.List<LabelStyle> values = <LabelStyle>[
    none,
    bold,
    italic,
    underlined,
  ];

  static final $core.List<LabelStyle?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LabelStyle? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LabelStyle._(super.value, super.name);
}

class BlendMode extends $pb.ProtobufEnum {
  static const BlendMode passThrough =
      BlendMode._(0, _omitEnumNames ? '' : 'passThrough');
  static const BlendMode normal =
      BlendMode._(1, _omitEnumNames ? '' : 'normal');
  static const BlendMode darken =
      BlendMode._(2, _omitEnumNames ? '' : 'darken');
  static const BlendMode multiply =
      BlendMode._(3, _omitEnumNames ? '' : 'multiply');
  static const BlendMode linearBurn =
      BlendMode._(4, _omitEnumNames ? '' : 'linearBurn');
  static const BlendMode colorBurn =
      BlendMode._(5, _omitEnumNames ? '' : 'colorBurn');
  static const BlendMode lighten =
      BlendMode._(6, _omitEnumNames ? '' : 'lighten');
  static const BlendMode screen =
      BlendMode._(7, _omitEnumNames ? '' : 'screen');
  static const BlendMode linearDodge =
      BlendMode._(8, _omitEnumNames ? '' : 'linearDodge');
  static const BlendMode colorDodge =
      BlendMode._(9, _omitEnumNames ? '' : 'colorDodge');
  static const BlendMode overlay =
      BlendMode._(10, _omitEnumNames ? '' : 'overlay');
  static const BlendMode softLight =
      BlendMode._(11, _omitEnumNames ? '' : 'softLight');
  static const BlendMode hardLight =
      BlendMode._(12, _omitEnumNames ? '' : 'hardLight');
  static const BlendMode difference =
      BlendMode._(13, _omitEnumNames ? '' : 'difference');
  static const BlendMode exclusion =
      BlendMode._(14, _omitEnumNames ? '' : 'exclusion');
  static const BlendMode hue = BlendMode._(15, _omitEnumNames ? '' : 'hue');
  static const BlendMode saturation =
      BlendMode._(16, _omitEnumNames ? '' : 'saturation');
  static const BlendMode color = BlendMode._(17, _omitEnumNames ? '' : 'color');
  static const BlendMode luminosity =
      BlendMode._(18, _omitEnumNames ? '' : 'luminosity');

  static const $core.List<BlendMode> values = <BlendMode>[
    passThrough,
    normal,
    darken,
    multiply,
    linearBurn,
    colorBurn,
    lighten,
    screen,
    linearDodge,
    colorDodge,
    overlay,
    softLight,
    hardLight,
    difference,
    exclusion,
    hue,
    saturation,
    color,
    luminosity,
  ];

  static final $core.List<BlendMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 18);
  static BlendMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlendMode._(super.value, super.name);
}

class GradientType extends $pb.ProtobufEnum {
  static const GradientType linear =
      GradientType._(0, _omitEnumNames ? '' : 'linear');
  static const GradientType radial =
      GradientType._(1, _omitEnumNames ? '' : 'radial');
  static const GradientType angular =
      GradientType._(2, _omitEnumNames ? '' : 'angular');
  static const GradientType diamond =
      GradientType._(3, _omitEnumNames ? '' : 'diamond');

  static const $core.List<GradientType> values = <GradientType>[
    linear,
    radial,
    angular,
    diamond,
  ];

  static final $core.List<GradientType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static GradientType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GradientType._(super.value, super.name);
}

class ScaleMode extends $pb.ProtobufEnum {
  static const ScaleMode fill = ScaleMode._(0, _omitEnumNames ? '' : 'fill');
  static const ScaleMode fit = ScaleMode._(1, _omitEnumNames ? '' : 'fit');
  static const ScaleMode crop = ScaleMode._(2, _omitEnumNames ? '' : 'crop');
  static const ScaleMode tile = ScaleMode._(3, _omitEnumNames ? '' : 'tile');

  static const $core.List<ScaleMode> values = <ScaleMode>[
    fill,
    fit,
    crop,
    tile,
  ];

  static final $core.List<ScaleMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static ScaleMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ScaleMode._(super.value, super.name);
}

class BlurType extends $pb.ProtobufEnum {
  static const BlurType layer = BlurType._(0, _omitEnumNames ? '' : 'layer');
  static const BlurType background =
      BlurType._(1, _omitEnumNames ? '' : 'background');

  static const $core.List<BlurType> values = <BlurType>[
    layer,
    background,
  ];

  static final $core.List<BlurType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static BlurType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BlurType._(super.value, super.name);
}

class StrokeCap extends $pb.ProtobufEnum {
  static const StrokeCap none = StrokeCap._(0, _omitEnumNames ? '' : 'none');
  static const StrokeCap round = StrokeCap._(1, _omitEnumNames ? '' : 'round');
  static const StrokeCap square =
      StrokeCap._(2, _omitEnumNames ? '' : 'square');
  static const StrokeCap arrowLines =
      StrokeCap._(3, _omitEnumNames ? '' : 'arrowLines');
  static const StrokeCap arrowEquilateral =
      StrokeCap._(4, _omitEnumNames ? '' : 'arrowEquilateral');
  static const StrokeCap diamondFilled =
      StrokeCap._(5, _omitEnumNames ? '' : 'diamondFilled');
  static const StrokeCap triangleFilled =
      StrokeCap._(6, _omitEnumNames ? '' : 'triangleFilled');
  static const StrokeCap circleFilled =
      StrokeCap._(7, _omitEnumNames ? '' : 'circleFilled');

  static const $core.List<StrokeCap> values = <StrokeCap>[
    none,
    round,
    square,
    arrowLines,
    arrowEquilateral,
    diamondFilled,
    triangleFilled,
    circleFilled,
  ];

  static final $core.List<StrokeCap?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static StrokeCap? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeCap._(super.value, super.name);
}

class StrokeJoin extends $pb.ProtobufEnum {
  static const StrokeJoin miter =
      StrokeJoin._(0, _omitEnumNames ? '' : 'miter');
  static const StrokeJoin bevel =
      StrokeJoin._(1, _omitEnumNames ? '' : 'bevel');
  static const StrokeJoin round =
      StrokeJoin._(2, _omitEnumNames ? '' : 'round');

  static const $core.List<StrokeJoin> values = <StrokeJoin>[
    miter,
    bevel,
    round,
  ];

  static final $core.List<StrokeJoin?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StrokeJoin? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeJoin._(super.value, super.name);
}

class StrokeAlign extends $pb.ProtobufEnum {
  static const StrokeAlign center =
      StrokeAlign._(0, _omitEnumNames ? '' : 'center');
  static const StrokeAlign inside =
      StrokeAlign._(1, _omitEnumNames ? '' : 'inside');
  static const StrokeAlign outside =
      StrokeAlign._(2, _omitEnumNames ? '' : 'outside');

  static const $core.List<StrokeAlign> values = <StrokeAlign>[
    center,
    inside,
    outside,
  ];

  static final $core.List<StrokeAlign?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static StrokeAlign? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const StrokeAlign._(super.value, super.name);
}

class ConstraintType extends $pb.ProtobufEnum {
  static const ConstraintType min =
      ConstraintType._(0, _omitEnumNames ? '' : 'min');
  static const ConstraintType center =
      ConstraintType._(1, _omitEnumNames ? '' : 'center');
  static const ConstraintType max =
      ConstraintType._(2, _omitEnumNames ? '' : 'max');
  static const ConstraintType stretch =
      ConstraintType._(3, _omitEnumNames ? '' : 'stretch');
  static const ConstraintType scale =
      ConstraintType._(4, _omitEnumNames ? '' : 'scale');

  static const $core.List<ConstraintType> values = <ConstraintType>[
    min,
    center,
    max,
    stretch,
    scale,
  ];

  static final $core.List<ConstraintType?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 4);
  static ConstraintType? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ConstraintType._(super.value, super.name);
}

class LayoutMode extends $pb.ProtobufEnum {
  static const LayoutMode none = LayoutMode._(0, _omitEnumNames ? '' : 'none');
  static const LayoutMode horizontal =
      LayoutMode._(1, _omitEnumNames ? '' : 'horizontal');
  static const LayoutMode vertical =
      LayoutMode._(2, _omitEnumNames ? '' : 'vertical');
  static const LayoutMode grid = LayoutMode._(3, _omitEnumNames ? '' : 'grid');

  static const $core.List<LayoutMode> values = <LayoutMode>[
    none,
    horizontal,
    vertical,
    grid,
  ];

  static final $core.List<LayoutMode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static LayoutMode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const LayoutMode._(super.value, super.name);
}

class TextAlignHorizontal extends $pb.ProtobufEnum {
  static const TextAlignHorizontal left =
      TextAlignHorizontal._(0, _omitEnumNames ? '' : 'left');
  static const TextAlignHorizontal center =
      TextAlignHorizontal._(1, _omitEnumNames ? '' : 'center');
  static const TextAlignHorizontal right =
      TextAlignHorizontal._(2, _omitEnumNames ? '' : 'right');
  static const TextAlignHorizontal justified =
      TextAlignHorizontal._(3, _omitEnumNames ? '' : 'justified');

  static const $core.List<TextAlignHorizontal> values = <TextAlignHorizontal>[
    left,
    center,
    right,
    justified,
  ];

  static final $core.List<TextAlignHorizontal?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static TextAlignHorizontal? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextAlignHorizontal._(super.value, super.name);
}

class TextAlignVertical extends $pb.ProtobufEnum {
  static const TextAlignVertical top =
      TextAlignVertical._(0, _omitEnumNames ? '' : 'top');
  static const TextAlignVertical center_v =
      TextAlignVertical._(1, _omitEnumNames ? '' : 'center_v');
  static const TextAlignVertical bottom =
      TextAlignVertical._(2, _omitEnumNames ? '' : 'bottom');

  static const $core.List<TextAlignVertical> values = <TextAlignVertical>[
    top,
    center_v,
    bottom,
  ];

  static final $core.List<TextAlignVertical?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static TextAlignVertical? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const TextAlignVertical._(super.value, super.name);
}

class BooleanOperation extends $pb.ProtobufEnum {
  static const BooleanOperation union =
      BooleanOperation._(0, _omitEnumNames ? '' : 'union');
  static const BooleanOperation intersect =
      BooleanOperation._(1, _omitEnumNames ? '' : 'intersect');
  static const BooleanOperation subtract =
      BooleanOperation._(2, _omitEnumNames ? '' : 'subtract');
  static const BooleanOperation exclude =
      BooleanOperation._(3, _omitEnumNames ? '' : 'exclude');

  static const $core.List<BooleanOperation> values = <BooleanOperation>[
    union,
    intersect,
    subtract,
    exclude,
  ];

  static final $core.List<BooleanOperation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static BooleanOperation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const BooleanOperation._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
