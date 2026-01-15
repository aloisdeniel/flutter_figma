// This is a generated file - do not edit.
//
// Generated from variables.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use colorSpaceDescriptor instead')
const ColorSpace$json = {
  '1': 'ColorSpace',
  '2': [
    {'1': 'COLOR_SPACE_SRGB', '2': 0},
    {'1': 'COLOR_SPACE_EXTENDED_SRGB', '2': 1},
    {'1': 'COLOR_SPACE_DISPLAY_P3', '2': 2},
  ],
};

/// Descriptor for `ColorSpace`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List colorSpaceDescriptor = $convert.base64Decode(
    'CgpDb2xvclNwYWNlEhQKEENPTE9SX1NQQUNFX1NSR0IQABIdChlDT0xPUl9TUEFDRV9FWFRFTk'
    'RFRF9TUkdCEAESGgoWQ09MT1JfU1BBQ0VfRElTUExBWV9QMxAC');

@$core.Deprecated('Use fontStyleDescriptor instead')
const FontStyle$json = {
  '1': 'FontStyle',
  '2': [
    {'1': 'FONT_STYLE_REGULAR', '2': 0},
    {'1': 'FONT_STYLE_ITALIC', '2': 1},
  ],
};

/// Descriptor for `FontStyle`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List fontStyleDescriptor = $convert.base64Decode(
    'CglGb250U3R5bGUSFgoSRk9OVF9TVFlMRV9SRUdVTEFSEAASFQoRRk9OVF9TVFlMRV9JVEFMSU'
    'MQAQ==');

@$core.Deprecated('Use letterSpacingUnitDescriptor instead')
const LetterSpacingUnit$json = {
  '1': 'LetterSpacingUnit',
  '2': [
    {'1': 'LETTER_SPACING_PIXELS', '2': 0},
    {'1': 'LETTER_SPACING_PERCENT', '2': 1},
  ],
};

/// Descriptor for `LetterSpacingUnit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List letterSpacingUnitDescriptor = $convert.base64Decode(
    'ChFMZXR0ZXJTcGFjaW5nVW5pdBIZChVMRVRURVJfU1BBQ0lOR19QSVhFTFMQABIaChZMRVRURV'
    'JfU1BBQ0lOR19QRVJDRU5UEAE=');

@$core.Deprecated('Use aliasDescriptor instead')
const Alias$json = {
  '1': 'Alias',
  '2': [
    {
      '1': 'variable',
      '3': 1,
      '5': 11,
      '6': '.definitions.VariableAlias',
      '8': {},
      '9': 0,
      '10': 'variable'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Alias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aliasDescriptor = $convert.base64Decode(
    'CgVBbGlhcxI4Cgh2YXJpYWJsZRgBKAsyGi5kZWZpbml0aW9ucy5WYXJpYWJsZUFsaWFzQgBIAF'
    'IIdmFyaWFibGVCBgoEdHlwZQ==');

@$core.Deprecated('Use variableAliasDescriptor instead')
const VariableAlias$json = {
  '1': 'VariableAlias',
  '2': [
    {'1': 'collectionId', '3': 1, '5': 5, '8': {}, '10': 'collectionId'},
    {'1': 'variableId', '3': 2, '5': 5, '8': {}, '10': 'variableId'},
  ],
};

/// Descriptor for `VariableAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableAliasDescriptor = $convert.base64Decode(
    'Cg1WYXJpYWJsZUFsaWFzEiIKDGNvbGxlY3Rpb25JZBgBKAVCAFIMY29sbGVjdGlvbklkEh4KCn'
    'ZhcmlhYmxlSWQYAigFQgBSCnZhcmlhYmxlSWQ=');

@$core.Deprecated('Use variableCollectionDescriptor instead')
const VariableCollection$json = {
  '1': 'VariableCollection',
  '2': [
    {'1': 'id', '3': 1, '5': 5, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'documentation',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'documentation'
    },
    {
      '1': 'variables',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.definitions.VariableCollectionEntry',
      '8': {},
      '10': 'variables'
    },
    {
      '1': 'variants',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.definitions.VariableCollectionVariant',
      '8': {},
      '10': 'variants'
    },
  ],
};

/// Descriptor for `VariableCollection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableCollectionDescriptor = $convert.base64Decode(
    'ChJWYXJpYWJsZUNvbGxlY3Rpb24SDgoCaWQYASgFQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbW'
    'USJgoNZG9jdW1lbnRhdGlvbhgDIAEoCUIAUg1kb2N1bWVudGF0aW9uEkQKCXZhcmlhYmxlcxgE'
    'IAMoCzIkLmRlZmluaXRpb25zLlZhcmlhYmxlQ29sbGVjdGlvbkVudHJ5QgBSCXZhcmlhYmxlcx'
    'JECgh2YXJpYW50cxgFIAMoCzImLmRlZmluaXRpb25zLlZhcmlhYmxlQ29sbGVjdGlvblZhcmlh'
    'bnRCAFIIdmFyaWFudHM=');

@$core.Deprecated('Use variableCollectionEntryDescriptor instead')
const VariableCollectionEntry$json = {
  '1': 'VariableCollectionEntry',
  '2': [
    {'1': 'id', '3': 1, '5': 5, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'documentation',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'documentation'
    },
  ],
};

/// Descriptor for `VariableCollectionEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableCollectionEntryDescriptor =
    $convert.base64Decode(
        'ChdWYXJpYWJsZUNvbGxlY3Rpb25FbnRyeRIOCgJpZBgBKAVCAFICaWQSEgoEbmFtZRgCKAlCAF'
        'IEbmFtZRImCg1kb2N1bWVudGF0aW9uGAMgASgJQgBSDWRvY3VtZW50YXRpb24=');

@$core.Deprecated('Use variableCollectionVariantDescriptor instead')
const VariableCollectionVariant$json = {
  '1': 'VariableCollectionVariant',
  '2': [
    {'1': 'id', '3': 1, '5': 5, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'documentation',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'documentation'
    },
    {
      '1': 'values',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.definitions.Value',
      '8': {},
      '10': 'values'
    },
  ],
};

/// Descriptor for `VariableCollectionVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableCollectionVariantDescriptor = $convert.base64Decode(
    'ChlWYXJpYWJsZUNvbGxlY3Rpb25WYXJpYW50Eg4KAmlkGAEoBUIAUgJpZBISCgRuYW1lGAIoCU'
    'IAUgRuYW1lEiYKDWRvY3VtZW50YXRpb24YAyABKAlCAFINZG9jdW1lbnRhdGlvbhIsCgZ2YWx1'
    'ZXMYBCADKAsyEi5kZWZpbml0aW9ucy5WYWx1ZUIAUgZ2YWx1ZXM=');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {
      '1': 'stringValue',
      '3': 1,
      '5': 11,
      '6': '.definitions.StringValue',
      '8': {},
      '9': 0,
      '10': 'stringValue'
    },
    {
      '1': 'doubleValue',
      '3': 2,
      '5': 11,
      '6': '.definitions.NumberValue',
      '8': {},
      '9': 0,
      '10': 'doubleValue'
    },
    {
      '1': 'boolean',
      '3': 3,
      '5': 11,
      '6': '.definitions.BooleanValue',
      '8': {},
      '9': 0,
      '10': 'boolean'
    },
    {
      '1': 'color',
      '3': 4,
      '5': 11,
      '6': '.definitions.ColorValue',
      '8': {},
      '9': 0,
      '10': 'color'
    },
    {
      '1': 'borderSide',
      '3': 5,
      '5': 11,
      '6': '.definitions.BorderSide',
      '8': {},
      '9': 0,
      '10': 'borderSide'
    },
    {
      '1': 'gradient',
      '3': 6,
      '5': 11,
      '6': '.definitions.Gradient',
      '8': {},
      '9': 0,
      '10': 'gradient'
    },
    {
      '1': 'cornerRadius',
      '3': 7,
      '5': 11,
      '6': '.definitions.CornerRadius',
      '8': {},
      '9': 0,
      '10': 'cornerRadius'
    },
    {
      '1': 'textStyle',
      '3': 8,
      '5': 11,
      '6': '.definitions.TextStyle',
      '8': {},
      '9': 0,
      '10': 'textStyle'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRI8CgtzdHJpbmdWYWx1ZRgBKAsyGC5kZWZpbml0aW9ucy5TdHJpbmdWYWx1ZUIASA'
    'BSC3N0cmluZ1ZhbHVlEjwKC2RvdWJsZVZhbHVlGAIoCzIYLmRlZmluaXRpb25zLk51bWJlclZh'
    'bHVlQgBIAFILZG91YmxlVmFsdWUSNQoHYm9vbGVhbhgDKAsyGS5kZWZpbml0aW9ucy5Cb29sZW'
    'FuVmFsdWVCAEgAUgdib29sZWFuEi8KBWNvbG9yGAQoCzIXLmRlZmluaXRpb25zLkNvbG9yVmFs'
    'dWVCAEgAUgVjb2xvchI5Cgpib3JkZXJTaWRlGAUoCzIXLmRlZmluaXRpb25zLkJvcmRlclNpZG'
    'VCAEgAUgpib3JkZXJTaWRlEjMKCGdyYWRpZW50GAYoCzIVLmRlZmluaXRpb25zLkdyYWRpZW50'
    'QgBIAFIIZ3JhZGllbnQSPwoMY29ybmVyUmFkaXVzGAcoCzIZLmRlZmluaXRpb25zLkNvcm5lcl'
    'JhZGl1c0IASABSDGNvcm5lclJhZGl1cxI2Cgl0ZXh0U3R5bGUYCCgLMhYuZGVmaW5pdGlvbnMu'
    'VGV4dFN0eWxlQgBIAFIJdGV4dFN0eWxlQgYKBHR5cGU=');

@$core.Deprecated('Use booleanValueDescriptor instead')
const BooleanValue$json = {
  '1': 'BooleanValue',
  '2': [
    {'1': 'value', '3': 1, '5': 8, '8': {}, '10': 'value'},
    {
      '1': 'alias',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.definitions.Alias',
      '8': {},
      '10': 'alias'
    },
  ],
};

/// Descriptor for `BooleanValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanValueDescriptor = $convert.base64Decode(
    'CgxCb29sZWFuVmFsdWUSFAoFdmFsdWUYASgIQgBSBXZhbHVlEioKBWFsaWFzGAIgASgLMhIuZG'
    'VmaW5pdGlvbnMuQWxpYXNCAFIFYWxpYXM=');

@$core.Deprecated('Use colorValueDescriptor instead')
const ColorValue$json = {
  '1': 'ColorValue',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '5': 11,
      '6': '.definitions.Color',
      '8': {},
      '10': 'value'
    },
    {
      '1': 'alias',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.definitions.Alias',
      '8': {},
      '10': 'alias'
    },
  ],
};

/// Descriptor for `ColorValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorValueDescriptor = $convert.base64Decode(
    'CgpDb2xvclZhbHVlEigKBXZhbHVlGAEoCzISLmRlZmluaXRpb25zLkNvbG9yQgBSBXZhbHVlEi'
    'oKBWFsaWFzGAIgASgLMhIuZGVmaW5pdGlvbnMuQWxpYXNCAFIFYWxpYXM=');

@$core.Deprecated('Use stringValueDescriptor instead')
const StringValue$json = {
  '1': 'StringValue',
  '2': [
    {'1': 'value', '3': 1, '5': 9, '8': {}, '10': 'value'},
    {
      '1': 'alias',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.definitions.Alias',
      '8': {},
      '10': 'alias'
    },
  ],
};

/// Descriptor for `StringValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringValueDescriptor = $convert.base64Decode(
    'CgtTdHJpbmdWYWx1ZRIUCgV2YWx1ZRgBKAlCAFIFdmFsdWUSKgoFYWxpYXMYAiABKAsyEi5kZW'
    'Zpbml0aW9ucy5BbGlhc0IAUgVhbGlhcw==');

@$core.Deprecated('Use numberValueDescriptor instead')
const NumberValue$json = {
  '1': 'NumberValue',
  '2': [
    {'1': 'value', '3': 1, '5': 1, '8': {}, '10': 'value'},
    {
      '1': 'alias',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.definitions.Alias',
      '8': {},
      '10': 'alias'
    },
  ],
};

/// Descriptor for `NumberValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberValueDescriptor = $convert.base64Decode(
    'CgtOdW1iZXJWYWx1ZRIUCgV2YWx1ZRgBKAFCAFIFdmFsdWUSKgoFYWxpYXMYAiABKAsyEi5kZW'
    'Zpbml0aW9ucy5BbGlhc0IAUgVhbGlhcw==');

@$core.Deprecated('Use offsetDescriptor instead')
const Offset$json = {
  '1': 'Offset',
  '2': [
    {'1': 'x', '3': 1, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 2, '5': 1, '8': {}, '10': 'y'},
  ],
};

/// Descriptor for `Offset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List offsetDescriptor =
    $convert.base64Decode('CgZPZmZzZXQSDAoBeBgBKAFCAFIBeBIMCgF5GAIoAUIAUgF5');

@$core.Deprecated('Use cornerRadiusDescriptor instead')
const CornerRadius$json = {
  '1': 'CornerRadius',
  '2': [
    {'1': 'topLeft', '3': 1, '5': 1, '8': {}, '10': 'topLeft'},
    {'1': 'topRight', '3': 2, '5': 1, '8': {}, '10': 'topRight'},
    {'1': 'bottomLeft', '3': 3, '5': 1, '8': {}, '10': 'bottomLeft'},
    {'1': 'bottomRight', '3': 4, '5': 1, '8': {}, '10': 'bottomRight'},
    {'1': 'smoothing', '3': 5, '5': 1, '8': {}, '10': 'smoothing'},
  ],
};

/// Descriptor for `CornerRadius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cornerRadiusDescriptor = $convert.base64Decode(
    'CgxDb3JuZXJSYWRpdXMSGAoHdG9wTGVmdBgBKAFCAFIHdG9wTGVmdBIaCgh0b3BSaWdodBgCKA'
    'FCAFIIdG9wUmlnaHQSHgoKYm90dG9tTGVmdBgDKAFCAFIKYm90dG9tTGVmdBIgCgtib3R0b21S'
    'aWdodBgEKAFCAFILYm90dG9tUmlnaHQSHAoJc21vb3RoaW5nGAUoAUIAUglzbW9vdGhpbmc=');

@$core.Deprecated('Use colorDescriptor instead')
const Color$json = {
  '1': 'Color',
  '2': [
    {'1': 'red', '3': 1, '5': 1, '8': {}, '10': 'red'},
    {'1': 'green', '3': 2, '5': 1, '8': {}, '10': 'green'},
    {'1': 'blue', '3': 3, '5': 1, '8': {}, '10': 'blue'},
    {'1': 'alpha', '3': 4, '5': 1, '8': {}, '10': 'alpha'},
    {
      '1': 'colorSpace',
      '3': 5,
      '5': 14,
      '6': '.definitions.ColorSpace',
      '8': {},
      '10': 'colorSpace'
    },
  ],
};

/// Descriptor for `Color`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorDescriptor = $convert.base64Decode(
    'CgVDb2xvchIQCgNyZWQYASgBQgBSA3JlZBIUCgVncmVlbhgCKAFCAFIFZ3JlZW4SEgoEYmx1ZR'
    'gDKAFCAFIEYmx1ZRIUCgVhbHBoYRgEKAFCAFIFYWxwaGESNwoKY29sb3JTcGFjZRgFKA4yFy5k'
    'ZWZpbml0aW9ucy5Db2xvclNwYWNlQgBSCmNvbG9yU3BhY2U=');

@$core.Deprecated('Use borderSideDescriptor instead')
const BorderSide$json = {
  '1': 'BorderSide',
  '2': [
    {
      '1': 'width',
      '3': 1,
      '5': 11,
      '6': '.definitions.NumberValue',
      '8': {},
      '10': 'width'
    },
    {'1': 'strokeAlign', '3': 2, '5': 1, '8': {}, '10': 'strokeAlign'},
  ],
};

/// Descriptor for `BorderSide`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderSideDescriptor = $convert.base64Decode(
    'CgpCb3JkZXJTaWRlEi4KBXdpZHRoGAEoCzIYLmRlZmluaXRpb25zLk51bWJlclZhbHVlQgBSBX'
    'dpZHRoEiAKC3N0cm9rZUFsaWduGAIoAUIAUgtzdHJva2VBbGlnbg==');

@$core.Deprecated('Use fontNameDescriptor instead')
const FontName$json = {
  '1': 'FontName',
  '2': [
    {
      '1': 'family',
      '3': 1,
      '5': 11,
      '6': '.definitions.StringValue',
      '8': {},
      '10': 'family'
    },
    {
      '1': 'weight',
      '3': 2,
      '5': 11,
      '6': '.definitions.NumberValue',
      '8': {},
      '10': 'weight'
    },
    {
      '1': 'style',
      '3': 3,
      '5': 14,
      '6': '.definitions.FontStyle',
      '8': {},
      '10': 'style'
    },
  ],
};

/// Descriptor for `FontName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fontNameDescriptor = $convert.base64Decode(
    'CghGb250TmFtZRIwCgZmYW1pbHkYASgLMhguZGVmaW5pdGlvbnMuU3RyaW5nVmFsdWVCAFIGZm'
    'FtaWx5EjAKBndlaWdodBgCKAsyGC5kZWZpbml0aW9ucy5OdW1iZXJWYWx1ZUIAUgZ3ZWlnaHQS'
    'LAoFc3R5bGUYAygOMhYuZGVmaW5pdGlvbnMuRm9udFN0eWxlQgBSBXN0eWxl');

@$core.Deprecated('Use letterSpacingDescriptor instead')
const LetterSpacing$json = {
  '1': 'LetterSpacing',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '5': 11,
      '6': '.definitions.NumberValue',
      '8': {},
      '10': 'value'
    },
    {
      '1': 'unit',
      '3': 2,
      '5': 14,
      '6': '.definitions.LetterSpacingUnit',
      '8': {},
      '10': 'unit'
    },
  ],
};

/// Descriptor for `LetterSpacing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List letterSpacingDescriptor = $convert.base64Decode(
    'Cg1MZXR0ZXJTcGFjaW5nEi4KBXZhbHVlGAEoCzIYLmRlZmluaXRpb25zLk51bWJlclZhbHVlQg'
    'BSBXZhbHVlEjIKBHVuaXQYAigOMh4uZGVmaW5pdGlvbnMuTGV0dGVyU3BhY2luZ1VuaXRCAFIE'
    'dW5pdA==');

@$core.Deprecated('Use lineHeightDescriptor instead')
const LineHeight$json = {
  '1': 'LineHeight',
  '2': [
    {'1': 'pixels', '3': 1, '5': 1, '8': {}, '9': 0, '10': 'pixels'},
    {'1': 'percent', '3': 2, '5': 1, '8': {}, '9': 0, '10': 'percent'},
    {'1': 'autoHeight', '3': 3, '5': 8, '8': {}, '9': 0, '10': 'autoHeight'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `LineHeight`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lineHeightDescriptor = $convert.base64Decode(
    'CgpMaW5lSGVpZ2h0EhgKBnBpeGVscxgBKAFCAEgAUgZwaXhlbHMSGgoHcGVyY2VudBgCKAFCAE'
    'gAUgdwZXJjZW50EiAKCmF1dG9IZWlnaHQYAygIQgBIAFIKYXV0b0hlaWdodEIGCgR0eXBl');

@$core.Deprecated('Use textStyleDescriptor instead')
const TextStyle$json = {
  '1': 'TextStyle',
  '2': [
    {
      '1': 'fontName',
      '3': 1,
      '5': 11,
      '6': '.definitions.FontName',
      '8': {},
      '10': 'fontName'
    },
    {
      '1': 'fontSize',
      '3': 2,
      '5': 11,
      '6': '.definitions.NumberValue',
      '8': {},
      '10': 'fontSize'
    },
    {
      '1': 'letterSpacing',
      '3': 3,
      '5': 11,
      '6': '.definitions.LetterSpacing',
      '8': {},
      '10': 'letterSpacing'
    },
    {
      '1': 'lineHeight',
      '3': 4,
      '5': 11,
      '6': '.definitions.LineHeight',
      '8': {},
      '10': 'lineHeight'
    },
  ],
};

/// Descriptor for `TextStyle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textStyleDescriptor = $convert.base64Decode(
    'CglUZXh0U3R5bGUSMQoIZm9udE5hbWUYASgLMhUuZGVmaW5pdGlvbnMuRm9udE5hbWVCAFIIZm'
    '9udE5hbWUSNAoIZm9udFNpemUYAigLMhguZGVmaW5pdGlvbnMuTnVtYmVyVmFsdWVCAFIIZm9u'
    'dFNpemUSQAoNbGV0dGVyU3BhY2luZxgDKAsyGi5kZWZpbml0aW9ucy5MZXR0ZXJTcGFjaW5nQg'
    'BSDWxldHRlclNwYWNpbmcSNwoKbGluZUhlaWdodBgEKAsyFy5kZWZpbml0aW9ucy5MaW5lSGVp'
    'Z2h0QgBSCmxpbmVIZWlnaHQ=');

@$core.Deprecated('Use gradientDescriptor instead')
const Gradient$json = {
  '1': 'Gradient',
  '2': [
    {
      '1': 'linear',
      '3': 1,
      '5': 11,
      '6': '.definitions.LinearGradient',
      '8': {},
      '9': 0,
      '10': 'linear'
    },
    {
      '1': 'radial',
      '3': 2,
      '5': 11,
      '6': '.definitions.RadialGradient',
      '8': {},
      '9': 0,
      '10': 'radial'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Gradient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientDescriptor = $convert.base64Decode(
    'CghHcmFkaWVudBI1CgZsaW5lYXIYASgLMhsuZGVmaW5pdGlvbnMuTGluZWFyR3JhZGllbnRCAE'
    'gAUgZsaW5lYXISNQoGcmFkaWFsGAIoCzIbLmRlZmluaXRpb25zLlJhZGlhbEdyYWRpZW50QgBI'
    'AFIGcmFkaWFsQgYKBHR5cGU=');

@$core.Deprecated('Use gradientStopDescriptor instead')
const GradientStop$json = {
  '1': 'GradientStop',
  '2': [
    {'1': 'offset', '3': 1, '5': 1, '8': {}, '10': 'offset'},
    {
      '1': 'color',
      '3': 2,
      '5': 11,
      '6': '.definitions.ColorValue',
      '8': {},
      '10': 'color'
    },
  ],
};

/// Descriptor for `GradientStop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientStopDescriptor = $convert.base64Decode(
    'CgxHcmFkaWVudFN0b3ASFgoGb2Zmc2V0GAEoAUIAUgZvZmZzZXQSLQoFY29sb3IYAigLMhcuZG'
    'VmaW5pdGlvbnMuQ29sb3JWYWx1ZUIAUgVjb2xvcg==');

@$core.Deprecated('Use linearGradientDescriptor instead')
const LinearGradient$json = {
  '1': 'LinearGradient',
  '2': [
    {
      '1': 'stops',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.definitions.GradientStop',
      '8': {},
      '10': 'stops'
    },
    {
      '1': 'begin',
      '3': 2,
      '5': 11,
      '6': '.definitions.Offset',
      '8': {},
      '10': 'begin'
    },
    {
      '1': 'end',
      '3': 3,
      '5': 11,
      '6': '.definitions.Offset',
      '8': {},
      '10': 'end'
    },
  ],
};

/// Descriptor for `LinearGradient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linearGradientDescriptor = $convert.base64Decode(
    'Cg5MaW5lYXJHcmFkaWVudBIxCgVzdG9wcxgBIAMoCzIZLmRlZmluaXRpb25zLkdyYWRpZW50U3'
    'RvcEIAUgVzdG9wcxIpCgViZWdpbhgCKAsyEy5kZWZpbml0aW9ucy5PZmZzZXRCAFIFYmVnaW4S'
    'JQoDZW5kGAMoCzITLmRlZmluaXRpb25zLk9mZnNldEIAUgNlbmQ=');

@$core.Deprecated('Use radialGradientDescriptor instead')
const RadialGradient$json = {
  '1': 'RadialGradient',
  '2': [
    {
      '1': 'stops',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.definitions.GradientStop',
      '8': {},
      '10': 'stops'
    },
    {
      '1': 'center',
      '3': 2,
      '5': 11,
      '6': '.definitions.Offset',
      '8': {},
      '10': 'center'
    },
    {'1': 'radius', '3': 3, '5': 1, '8': {}, '10': 'radius'},
  ],
};

/// Descriptor for `RadialGradient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radialGradientDescriptor = $convert.base64Decode(
    'Cg5SYWRpYWxHcmFkaWVudBIxCgVzdG9wcxgBIAMoCzIZLmRlZmluaXRpb25zLkdyYWRpZW50U3'
    'RvcEIAUgVzdG9wcxIrCgZjZW50ZXIYAigLMhMuZGVmaW5pdGlvbnMuT2Zmc2V0QgBSBmNlbnRl'
    'chIWCgZyYWRpdXMYAygBQgBSBnJhZGl1cw==');
