// This is a generated file - do not edit.
//
// Generated from variables.proto.

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

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
