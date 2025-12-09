// This is a generated file - do not edit.
//
// Generated from definitions.proto.

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
    {'1': 'srgb', '2': 0},
    {'1': 'extendedSrgb', '2': 1},
    {'1': 'displayP3', '2': 2},
  ],
};

/// Descriptor for `ColorSpace`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List colorSpaceDescriptor = $convert.base64Decode(
    'CgpDb2xvclNwYWNlEggKBHNyZ2IQABIQCgxleHRlbmRlZFNyZ2IQARINCglkaXNwbGF5UDMQAg'
    '==');

@$core.Deprecated('Use labelVariableTypeDescriptor instead')
const LabelVariableType$json = {
  '1': 'LabelVariableType',
  '2': [
    {'1': 'string_type', '2': 0},
    {'1': 'number_type', '2': 1},
  ],
};

/// Descriptor for `LabelVariableType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List labelVariableTypeDescriptor = $convert.base64Decode(
    'ChFMYWJlbFZhcmlhYmxlVHlwZRIPCgtzdHJpbmdfdHlwZRAAEg8KC251bWJlcl90eXBlEAE=');

@$core.Deprecated('Use labelStyleDescriptor instead')
const LabelStyle$json = {
  '1': 'LabelStyle',
  '2': [
    {'1': 'none', '2': 0},
    {'1': 'bold', '2': 1},
    {'1': 'italic', '2': 2},
    {'1': 'underlined', '2': 3},
  ],
};

/// Descriptor for `LabelStyle`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List labelStyleDescriptor = $convert.base64Decode(
    'CgpMYWJlbFN0eWxlEggKBG5vbmUQABIICgRib2xkEAESCgoGaXRhbGljEAISDgoKdW5kZXJsaW'
    '5lZBAD');

@$core.Deprecated('Use blendModeDescriptor instead')
const BlendMode$json = {
  '1': 'BlendMode',
  '2': [
    {'1': 'passThrough', '2': 0},
    {'1': 'normal', '2': 1},
    {'1': 'darken', '2': 2},
    {'1': 'multiply', '2': 3},
    {'1': 'linearBurn', '2': 4},
    {'1': 'colorBurn', '2': 5},
    {'1': 'lighten', '2': 6},
    {'1': 'screen', '2': 7},
    {'1': 'linearDodge', '2': 8},
    {'1': 'colorDodge', '2': 9},
    {'1': 'overlay', '2': 10},
    {'1': 'softLight', '2': 11},
    {'1': 'hardLight', '2': 12},
    {'1': 'difference', '2': 13},
    {'1': 'exclusion', '2': 14},
    {'1': 'hue', '2': 15},
    {'1': 'saturation', '2': 16},
    {'1': 'color', '2': 17},
    {'1': 'luminosity', '2': 18},
  ],
};

/// Descriptor for `BlendMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blendModeDescriptor = $convert.base64Decode(
    'CglCbGVuZE1vZGUSDwoLcGFzc1Rocm91Z2gQABIKCgZub3JtYWwQARIKCgZkYXJrZW4QAhIMCg'
    'htdWx0aXBseRADEg4KCmxpbmVhckJ1cm4QBBINCgljb2xvckJ1cm4QBRILCgdsaWdodGVuEAYS'
    'CgoGc2NyZWVuEAcSDwoLbGluZWFyRG9kZ2UQCBIOCgpjb2xvckRvZGdlEAkSCwoHb3ZlcmxheR'
    'AKEg0KCXNvZnRMaWdodBALEg0KCWhhcmRMaWdodBAMEg4KCmRpZmZlcmVuY2UQDRINCglleGNs'
    'dXNpb24QDhIHCgNodWUQDxIOCgpzYXR1cmF0aW9uEBASCQoFY29sb3IQERIOCgpsdW1pbm9zaX'
    'R5EBI=');

@$core.Deprecated('Use gradientTypeDescriptor instead')
const GradientType$json = {
  '1': 'GradientType',
  '2': [
    {'1': 'linear', '2': 0},
    {'1': 'radial', '2': 1},
    {'1': 'angular', '2': 2},
    {'1': 'diamond', '2': 3},
  ],
};

/// Descriptor for `GradientType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gradientTypeDescriptor = $convert.base64Decode(
    'CgxHcmFkaWVudFR5cGUSCgoGbGluZWFyEAASCgoGcmFkaWFsEAESCwoHYW5ndWxhchACEgsKB2'
    'RpYW1vbmQQAw==');

@$core.Deprecated('Use scaleModeDescriptor instead')
const ScaleMode$json = {
  '1': 'ScaleMode',
  '2': [
    {'1': 'fill', '2': 0},
    {'1': 'fit', '2': 1},
    {'1': 'crop', '2': 2},
    {'1': 'tile', '2': 3},
  ],
};

/// Descriptor for `ScaleMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List scaleModeDescriptor = $convert.base64Decode(
    'CglTY2FsZU1vZGUSCAoEZmlsbBAAEgcKA2ZpdBABEggKBGNyb3AQAhIICgR0aWxlEAM=');

@$core.Deprecated('Use blurTypeDescriptor instead')
const BlurType$json = {
  '1': 'BlurType',
  '2': [
    {'1': 'layer', '2': 0},
    {'1': 'background', '2': 1},
  ],
};

/// Descriptor for `BlurType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blurTypeDescriptor = $convert
    .base64Decode('CghCbHVyVHlwZRIJCgVsYXllchAAEg4KCmJhY2tncm91bmQQAQ==');

@$core.Deprecated('Use strokeCapDescriptor instead')
const StrokeCap$json = {
  '1': 'StrokeCap',
  '2': [
    {'1': 'none', '2': 0},
    {'1': 'round', '2': 1},
    {'1': 'square', '2': 2},
    {'1': 'arrowLines', '2': 3},
    {'1': 'arrowEquilateral', '2': 4},
    {'1': 'diamondFilled', '2': 5},
    {'1': 'triangleFilled', '2': 6},
    {'1': 'circleFilled', '2': 7},
  ],
};

/// Descriptor for `StrokeCap`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeCapDescriptor = $convert.base64Decode(
    'CglTdHJva2VDYXASCAoEbm9uZRAAEgkKBXJvdW5kEAESCgoGc3F1YXJlEAISDgoKYXJyb3dMaW'
    '5lcxADEhQKEGFycm93RXF1aWxhdGVyYWwQBBIRCg1kaWFtb25kRmlsbGVkEAUSEgoOdHJpYW5n'
    'bGVGaWxsZWQQBhIQCgxjaXJjbGVGaWxsZWQQBw==');

@$core.Deprecated('Use strokeJoinDescriptor instead')
const StrokeJoin$json = {
  '1': 'StrokeJoin',
  '2': [
    {'1': 'miter', '2': 0},
    {'1': 'bevel', '2': 1},
    {'1': 'round', '2': 2},
  ],
};

/// Descriptor for `StrokeJoin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeJoinDescriptor = $convert.base64Decode(
    'CgpTdHJva2VKb2luEgkKBW1pdGVyEAASCQoFYmV2ZWwQARIJCgVyb3VuZBAC');

@$core.Deprecated('Use strokeAlignDescriptor instead')
const StrokeAlign$json = {
  '1': 'StrokeAlign',
  '2': [
    {'1': 'center', '2': 0},
    {'1': 'inside', '2': 1},
    {'1': 'outside', '2': 2},
  ],
};

/// Descriptor for `StrokeAlign`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeAlignDescriptor = $convert.base64Decode(
    'CgtTdHJva2VBbGlnbhIKCgZjZW50ZXIQABIKCgZpbnNpZGUQARILCgdvdXRzaWRlEAI=');

@$core.Deprecated('Use constraintTypeDescriptor instead')
const ConstraintType$json = {
  '1': 'ConstraintType',
  '2': [
    {'1': 'min', '2': 0},
    {'1': 'center', '2': 1},
    {'1': 'max', '2': 2},
    {'1': 'stretch', '2': 3},
    {'1': 'scale', '2': 4},
  ],
};

/// Descriptor for `ConstraintType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List constraintTypeDescriptor = $convert.base64Decode(
    'Cg5Db25zdHJhaW50VHlwZRIHCgNtaW4QABIKCgZjZW50ZXIQARIHCgNtYXgQAhILCgdzdHJldG'
    'NoEAMSCQoFc2NhbGUQBA==');

@$core.Deprecated('Use layoutModeDescriptor instead')
const LayoutMode$json = {
  '1': 'LayoutMode',
  '2': [
    {'1': 'none', '2': 0},
    {'1': 'horizontal', '2': 1},
    {'1': 'vertical', '2': 2},
    {'1': 'grid', '2': 3},
  ],
};

/// Descriptor for `LayoutMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List layoutModeDescriptor = $convert.base64Decode(
    'CgpMYXlvdXRNb2RlEggKBG5vbmUQABIOCgpob3Jpem9udGFsEAESDAoIdmVydGljYWwQAhIICg'
    'RncmlkEAM=');

@$core.Deprecated('Use textAlignHorizontalDescriptor instead')
const TextAlignHorizontal$json = {
  '1': 'TextAlignHorizontal',
  '2': [
    {'1': 'left', '2': 0},
    {'1': 'center', '2': 1},
    {'1': 'right', '2': 2},
    {'1': 'justified', '2': 3},
  ],
};

/// Descriptor for `TextAlignHorizontal`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textAlignHorizontalDescriptor = $convert.base64Decode(
    'ChNUZXh0QWxpZ25Ib3Jpem9udGFsEggKBGxlZnQQABIKCgZjZW50ZXIQARIJCgVyaWdodBACEg'
    '0KCWp1c3RpZmllZBAD');

@$core.Deprecated('Use textAlignVerticalDescriptor instead')
const TextAlignVertical$json = {
  '1': 'TextAlignVertical',
  '2': [
    {'1': 'top', '2': 0},
    {'1': 'center_v', '2': 1},
    {'1': 'bottom', '2': 2},
  ],
};

/// Descriptor for `TextAlignVertical`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textAlignVerticalDescriptor = $convert.base64Decode(
    'ChFUZXh0QWxpZ25WZXJ0aWNhbBIHCgN0b3AQABIMCghjZW50ZXJfdhABEgoKBmJvdHRvbRAC');

@$core.Deprecated('Use booleanOperationDescriptor instead')
const BooleanOperation$json = {
  '1': 'BooleanOperation',
  '2': [
    {'1': 'union', '2': 0},
    {'1': 'intersect', '2': 1},
    {'1': 'subtract', '2': 2},
    {'1': 'exclude', '2': 3},
  ],
};

/// Descriptor for `BooleanOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List booleanOperationDescriptor = $convert.base64Decode(
    'ChBCb29sZWFuT3BlcmF0aW9uEgkKBXVuaW9uEAASDQoJaW50ZXJzZWN0EAESDAoIc3VidHJhY3'
    'QQAhILCgdleGNsdWRlEAM=');

@$core.Deprecated('Use libraryDescriptor instead')
const Library$json = {
  '1': 'Library',
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
      '6': '.binui.VariableCollection',
      '8': {},
      '10': 'variables'
    },
    {
      '1': 'components',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.binui.Component',
      '8': {},
      '10': 'components'
    },
    {
      '1': 'visualNodes',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'visualNodes'
    },
  ],
};

/// Descriptor for `Library`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List libraryDescriptor = $convert.base64Decode(
    'CgdMaWJyYXJ5Eg4KAmlkGAEoBUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEiYKDWRvY3VtZW'
    '50YXRpb24YAyABKAlCAFINZG9jdW1lbnRhdGlvbhI5Cgl2YXJpYWJsZXMYBCADKAsyGS5iaW51'
    'aS5WYXJpYWJsZUNvbGxlY3Rpb25CAFIJdmFyaWFibGVzEjIKCmNvbXBvbmVudHMYBSADKAsyEC'
    '5iaW51aS5Db21wb25lbnRCAFIKY29tcG9uZW50cxI1Cgt2aXN1YWxOb2RlcxgGIAMoCzIRLmJp'
    'bnVpLlZpc3VhbE5vZGVCAFILdmlzdWFsTm9kZXM=');

@$core.Deprecated('Use componentPropertyDescriptor instead')
const ComponentProperty$json = {
  '1': 'ComponentProperty',
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
      '1': 'defaultValue',
      '3': 4,
      '5': 11,
      '6': '.binui.Value',
      '8': {},
      '10': 'defaultValue'
    },
  ],
};

/// Descriptor for `ComponentProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentPropertyDescriptor = $convert.base64Decode(
    'ChFDb21wb25lbnRQcm9wZXJ0eRIOCgJpZBgBKAVCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZR'
    'ImCg1kb2N1bWVudGF0aW9uGAMgASgJQgBSDWRvY3VtZW50YXRpb24SMAoMZGVmYXVsdFZhbHVl'
    'GAQoCzIMLmJpbnVpLlZhbHVlQgBSDGRlZmF1bHRWYWx1ZQ==');

@$core.Deprecated('Use componentVariantValueDefinitionDescriptor instead')
const ComponentVariantValueDefinition$json = {
  '1': 'ComponentVariantValueDefinition',
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

/// Descriptor for `ComponentVariantValueDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantValueDefinitionDescriptor =
    $convert.base64Decode(
        'Ch9Db21wb25lbnRWYXJpYW50VmFsdWVEZWZpbml0aW9uEg4KAmlkGAEoBUIAUgJpZBISCgRuYW'
        '1lGAIoCUIAUgRuYW1lEiYKDWRvY3VtZW50YXRpb24YAyABKAlCAFINZG9jdW1lbnRhdGlvbg==');

@$core.Deprecated('Use componentVariantDefinitionDescriptor instead')
const ComponentVariantDefinition$json = {
  '1': 'ComponentVariantDefinition',
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
      '6': '.binui.ComponentVariantValueDefinition',
      '8': {},
      '10': 'values'
    },
  ],
};

/// Descriptor for `ComponentVariantDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantDefinitionDescriptor = $convert.base64Decode(
    'ChpDb21wb25lbnRWYXJpYW50RGVmaW5pdGlvbhIOCgJpZBgBKAVCAFICaWQSEgoEbmFtZRgCKA'
    'lCAFIEbmFtZRImCg1kb2N1bWVudGF0aW9uGAMgASgJQgBSDWRvY3VtZW50YXRpb24SQAoGdmFs'
    'dWVzGAQgAygLMiYuYmludWkuQ29tcG9uZW50VmFyaWFudFZhbHVlRGVmaW5pdGlvbkIAUgZ2YW'
    'x1ZXM=');

@$core.Deprecated('Use componentVariantValueDescriptor instead')
const ComponentVariantValue$json = {
  '1': 'ComponentVariantValue',
  '2': [
    {'1': 'variantId', '3': 1, '5': 5, '8': {}, '10': 'variantId'},
    {'1': 'id', '3': 2, '5': 5, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `ComponentVariantValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantValueDescriptor = $convert.base64Decode(
    'ChVDb21wb25lbnRWYXJpYW50VmFsdWUSHAoJdmFyaWFudElkGAEoBUIAUgl2YXJpYW50SWQSDg'
    'oCaWQYAigFQgBSAmlk');

@$core.Deprecated('Use componentVariantDescriptor instead')
const ComponentVariant$json = {
  '1': 'ComponentVariant',
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
      '1': 'variants',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.binui.ComponentVariantValue',
      '8': {},
      '10': 'variants'
    },
    {
      '1': 'root',
      '3': 5,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'root'
    },
  ],
};

/// Descriptor for `ComponentVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantDescriptor = $convert.base64Decode(
    'ChBDb21wb25lbnRWYXJpYW50Eg4KAmlkGAEoBUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEi'
    'YKDWRvY3VtZW50YXRpb24YAyABKAlCAFINZG9jdW1lbnRhdGlvbhI6Cgh2YXJpYW50cxgEIAMo'
    'CzIcLmJpbnVpLkNvbXBvbmVudFZhcmlhbnRWYWx1ZUIAUgh2YXJpYW50cxIlCgRyb290GAUoCz'
    'IRLmJpbnVpLlZpc3VhbE5vZGVCAFIEcm9vdA==');

@$core.Deprecated('Use componentDescriptor instead')
const Component$json = {
  '1': 'Component',
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
      '1': 'properties',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.binui.ComponentProperty',
      '8': {},
      '10': 'properties'
    },
    {
      '1': 'variantDefinitions',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.binui.ComponentVariantDefinition',
      '8': {},
      '10': 'variantDefinitions'
    },
    {
      '1': 'variants',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.binui.ComponentVariant',
      '8': {},
      '10': 'variants'
    },
  ],
};

/// Descriptor for `Component`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentDescriptor = $convert.base64Decode(
    'CglDb21wb25lbnQSDgoCaWQYASgFQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSJgoNZG9jdW'
    '1lbnRhdGlvbhgDIAEoCUIAUg1kb2N1bWVudGF0aW9uEjoKCnByb3BlcnRpZXMYBCADKAsyGC5i'
    'aW51aS5Db21wb25lbnRQcm9wZXJ0eUIAUgpwcm9wZXJ0aWVzElMKEnZhcmlhbnREZWZpbml0aW'
    '9ucxgFIAMoCzIhLmJpbnVpLkNvbXBvbmVudFZhcmlhbnREZWZpbml0aW9uQgBSEnZhcmlhbnRE'
    'ZWZpbml0aW9ucxI1Cgh2YXJpYW50cxgGIAMoCzIXLmJpbnVpLkNvbXBvbmVudFZhcmlhbnRCAF'
    'IIdmFyaWFudHM=');

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
      '6': '.binui.VariableCollectionEntry',
      '8': {},
      '10': 'variables'
    },
    {
      '1': 'variants',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.binui.VariableCollectionVariant',
      '8': {},
      '10': 'variants'
    },
  ],
};

/// Descriptor for `VariableCollection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableCollectionDescriptor = $convert.base64Decode(
    'ChJWYXJpYWJsZUNvbGxlY3Rpb24SDgoCaWQYASgFQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbW'
    'USJgoNZG9jdW1lbnRhdGlvbhgDIAEoCUIAUg1kb2N1bWVudGF0aW9uEj4KCXZhcmlhYmxlcxgE'
    'IAMoCzIeLmJpbnVpLlZhcmlhYmxlQ29sbGVjdGlvbkVudHJ5QgBSCXZhcmlhYmxlcxI+Cgh2YX'
    'JpYW50cxgFIAMoCzIgLmJpbnVpLlZhcmlhYmxlQ29sbGVjdGlvblZhcmlhbnRCAFIIdmFyaWFu'
    'dHM=');

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
      '6': '.binui.Value',
      '8': {},
      '10': 'values'
    },
  ],
};

/// Descriptor for `VariableCollectionVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableCollectionVariantDescriptor = $convert.base64Decode(
    'ChlWYXJpYWJsZUNvbGxlY3Rpb25WYXJpYW50Eg4KAmlkGAEoBUIAUgJpZBISCgRuYW1lGAIoCU'
    'IAUgRuYW1lEiYKDWRvY3VtZW50YXRpb24YAyABKAlCAFINZG9jdW1lbnRhdGlvbhImCgZ2YWx1'
    'ZXMYBCADKAsyDC5iaW51aS5WYWx1ZUIAUgZ2YWx1ZXM=');

@$core.Deprecated('Use valueDescriptor instead')
const Value$json = {
  '1': 'Value',
  '2': [
    {
      '1': 'alias',
      '3': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '9': 0,
      '10': 'alias'
    },
    {'1': 'stringValue', '3': 2, '5': 9, '8': {}, '9': 0, '10': 'stringValue'},
    {'1': 'doubleValue', '3': 3, '5': 1, '8': {}, '9': 0, '10': 'doubleValue'},
    {'1': 'boolean', '3': 4, '5': 8, '8': {}, '9': 0, '10': 'boolean'},
    {
      '1': 'size',
      '3': 5,
      '5': 11,
      '6': '.binui.Size',
      '8': {},
      '9': 0,
      '10': 'size'
    },
    {
      '1': 'color',
      '3': 6,
      '5': 11,
      '6': '.binui.Color',
      '8': {},
      '9': 0,
      '10': 'color'
    },
    {
      '1': 'border',
      '3': 7,
      '5': 11,
      '6': '.binui.Border',
      '8': {},
      '9': 0,
      '10': 'border'
    },
    {
      '1': 'borderSide',
      '3': 8,
      '5': 11,
      '6': '.binui.BorderSide',
      '8': {},
      '9': 0,
      '10': 'borderSide'
    },
    {
      '1': 'gradient',
      '3': 9,
      '5': 11,
      '6': '.binui.Gradient',
      '8': {},
      '9': 0,
      '10': 'gradient'
    },
    {
      '1': 'instance',
      '3': 10,
      '5': 11,
      '6': '.binui.Instance',
      '8': {},
      '9': 0,
      '10': 'instance'
    },
    {
      '1': 'label',
      '3': 11,
      '5': 11,
      '6': '.binui.Label',
      '8': {},
      '9': 0,
      '10': 'label'
    },
    {
      '1': 'offset',
      '3': 12,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '9': 0,
      '10': 'offset'
    },
    {
      '1': 'radius',
      '3': 13,
      '5': 11,
      '6': '.binui.Radius',
      '8': {},
      '9': 0,
      '10': 'radius'
    },
    {
      '1': 'borderRadius',
      '3': 14,
      '5': 11,
      '6': '.binui.BorderRadius',
      '8': {},
      '9': 0,
      '10': 'borderRadius'
    },
    {
      '1': 'rect',
      '3': 15,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '9': 0,
      '10': 'rect'
    },
    {
      '1': 'textStyle',
      '3': 16,
      '5': 11,
      '6': '.binui.TextStyle',
      '8': {},
      '9': 0,
      '10': 'textStyle'
    },
    {
      '1': 'transform2D',
      '3': 17,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '9': 0,
      '10': 'transform2D'
    },
    {
      '1': 'variantValue',
      '3': 18,
      '5': 11,
      '6': '.binui.VariantValue',
      '8': {},
      '9': 0,
      '10': 'variantValue'
    },
    {
      '1': 'vectorGraphics',
      '3': 19,
      '5': 11,
      '6': '.binui.VectorGraphics',
      '8': {},
      '9': 0,
      '10': 'vectorGraphics'
    },
    {
      '1': 'version',
      '3': 20,
      '5': 11,
      '6': '.binui.Version',
      '8': {},
      '9': 0,
      '10': 'version'
    },
    {
      '1': 'visualNode',
      '3': 21,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '9': 0,
      '10': 'visualNode'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Value`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List valueDescriptor = $convert.base64Decode(
    'CgVWYWx1ZRIkCgVhbGlhcxgBKAsyDC5iaW51aS5BbGlhc0IASABSBWFsaWFzEiIKC3N0cmluZ1'
    'ZhbHVlGAIoCUIASABSC3N0cmluZ1ZhbHVlEiIKC2RvdWJsZVZhbHVlGAMoAUIASABSC2RvdWJs'
    'ZVZhbHVlEhoKB2Jvb2xlYW4YBCgIQgBIAFIHYm9vbGVhbhIhCgRzaXplGAUoCzILLmJpbnVpLl'
    'NpemVCAEgAUgRzaXplEiQKBWNvbG9yGAYoCzIMLmJpbnVpLkNvbG9yQgBIAFIFY29sb3ISJwoG'
    'Ym9yZGVyGAcoCzINLmJpbnVpLkJvcmRlckIASABSBmJvcmRlchIzCgpib3JkZXJTaWRlGAgoCz'
    'IRLmJpbnVpLkJvcmRlclNpZGVCAEgAUgpib3JkZXJTaWRlEi0KCGdyYWRpZW50GAkoCzIPLmJp'
    'bnVpLkdyYWRpZW50QgBIAFIIZ3JhZGllbnQSLQoIaW5zdGFuY2UYCigLMg8uYmludWkuSW5zdG'
    'FuY2VCAEgAUghpbnN0YW5jZRIkCgVsYWJlbBgLKAsyDC5iaW51aS5MYWJlbEIASABSBWxhYmVs'
    'EicKBm9mZnNldBgMKAsyDS5iaW51aS5PZmZzZXRCAEgAUgZvZmZzZXQSJwoGcmFkaXVzGA0oCz'
    'INLmJpbnVpLlJhZGl1c0IASABSBnJhZGl1cxI5Cgxib3JkZXJSYWRpdXMYDigLMhMuYmludWku'
    'Qm9yZGVyUmFkaXVzQgBIAFIMYm9yZGVyUmFkaXVzEiEKBHJlY3QYDygLMgsuYmludWkuUmVjdE'
    'IASABSBHJlY3QSMAoJdGV4dFN0eWxlGBAoCzIQLmJpbnVpLlRleHRTdHlsZUIASABSCXRleHRT'
    'dHlsZRI2Cgt0cmFuc2Zvcm0yRBgRKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIASABSC3RyYW5zZm'
    '9ybTJEEjkKDHZhcmlhbnRWYWx1ZRgSKAsyEy5iaW51aS5WYXJpYW50VmFsdWVCAEgAUgx2YXJp'
    'YW50VmFsdWUSPwoOdmVjdG9yR3JhcGhpY3MYEygLMhUuYmludWkuVmVjdG9yR3JhcGhpY3NCAE'
    'gAUg52ZWN0b3JHcmFwaGljcxIqCgd2ZXJzaW9uGBQoCzIOLmJpbnVpLlZlcnNpb25CAEgAUgd2'
    'ZXJzaW9uEjMKCnZpc3VhbE5vZGUYFSgLMhEuYmludWkuVmlzdWFsTm9kZUIASABSCnZpc3VhbE'
    '5vZGVCBgoEdHlwZQ==');

@$core.Deprecated('Use aliasDescriptor instead')
const Alias$json = {
  '1': 'Alias',
  '2': [
    {
      '1': 'constant',
      '3': 1,
      '5': 11,
      '6': '.binui.ConstantAlias',
      '8': {},
      '9': 0,
      '10': 'constant'
    },
    {
      '1': 'property',
      '3': 2,
      '5': 11,
      '6': '.binui.PropertyAlias',
      '8': {},
      '9': 0,
      '10': 'property'
    },
    {
      '1': 'variable',
      '3': 3,
      '5': 11,
      '6': '.binui.VariableAlias',
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
    'CgVBbGlhcxIyCghjb25zdGFudBgBKAsyFC5iaW51aS5Db25zdGFudEFsaWFzQgBIAFIIY29uc3'
    'RhbnQSMgoIcHJvcGVydHkYAigLMhQuYmludWkuUHJvcGVydHlBbGlhc0IASABSCHByb3BlcnR5'
    'EjIKCHZhcmlhYmxlGAMoCzIULmJpbnVpLlZhcmlhYmxlQWxpYXNCAEgAUgh2YXJpYWJsZUIGCg'
    'R0eXBl');

@$core.Deprecated('Use constantAliasDescriptor instead')
const ConstantAlias$json = {
  '1': 'ConstantAlias',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '5': 11,
      '6': '.binui.Value',
      '8': {},
      '10': 'value'
    },
  ],
};

/// Descriptor for `ConstantAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List constantAliasDescriptor = $convert.base64Decode(
    'Cg1Db25zdGFudEFsaWFzEiIKBXZhbHVlGAEoCzIMLmJpbnVpLlZhbHVlQgBSBXZhbHVl');

@$core.Deprecated('Use variableAliasDescriptor instead')
const VariableAlias$json = {
  '1': 'VariableAlias',
  '2': [
    {'1': 'collectionId', '3': 1, '5': 5, '8': {}, '10': 'collectionId'},
    {'1': 'variableId', '3': 2, '5': 5, '8': {}, '10': 'variableId'},
    {
      '1': 'defaultValue',
      '3': 3,
      '5': 11,
      '6': '.binui.Value',
      '8': {},
      '10': 'defaultValue'
    },
  ],
};

/// Descriptor for `VariableAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableAliasDescriptor = $convert.base64Decode(
    'Cg1WYXJpYWJsZUFsaWFzEiIKDGNvbGxlY3Rpb25JZBgBKAVCAFIMY29sbGVjdGlvbklkEh4KCn'
    'ZhcmlhYmxlSWQYAigFQgBSCnZhcmlhYmxlSWQSMAoMZGVmYXVsdFZhbHVlGAMoCzIMLmJpbnVp'
    'LlZhbHVlQgBSDGRlZmF1bHRWYWx1ZQ==');

@$core.Deprecated('Use propertyAliasDescriptor instead')
const PropertyAlias$json = {
  '1': 'PropertyAlias',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'defaultValue',
      '3': 2,
      '5': 11,
      '6': '.binui.Value',
      '8': {},
      '10': 'defaultValue'
    },
  ],
};

/// Descriptor for `PropertyAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyAliasDescriptor = $convert.base64Decode(
    'Cg1Qcm9wZXJ0eUFsaWFzEhIKBG5hbWUYASgJQgBSBG5hbWUSMAoMZGVmYXVsdFZhbHVlGAIoCz'
    'IMLmJpbnVpLlZhbHVlQgBSDGRlZmF1bHRWYWx1ZQ==');

@$core.Deprecated('Use sizeDescriptor instead')
const Size$json = {
  '1': 'Size',
  '2': [
    {'1': 'width', '3': 1, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 2, '5': 1, '8': {}, '10': 'height'},
  ],
};

/// Descriptor for `Size`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sizeDescriptor = $convert.base64Decode(
    'CgRTaXplEhQKBXdpZHRoGAEoAUIAUgV3aWR0aBIWCgZoZWlnaHQYAigBQgBSBmhlaWdodA==');

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
      '6': '.binui.ColorSpace',
      '8': {},
      '10': 'colorSpace'
    },
  ],
};

/// Descriptor for `Color`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorDescriptor = $convert.base64Decode(
    'CgVDb2xvchIQCgNyZWQYASgBQgBSA3JlZBIUCgVncmVlbhgCKAFCAFIFZ3JlZW4SEgoEYmx1ZR'
    'gDKAFCAFIEYmx1ZRIUCgVhbHBoYRgEKAFCAFIFYWxwaGESMQoKY29sb3JTcGFjZRgFKA4yES5i'
    'aW51aS5Db2xvclNwYWNlQgBSCmNvbG9yU3BhY2U=');

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

@$core.Deprecated('Use radiusDescriptor instead')
const Radius$json = {
  '1': 'Radius',
  '2': [
    {'1': 'x', '3': 1, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 2, '5': 1, '8': {}, '10': 'y'},
  ],
};

/// Descriptor for `Radius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radiusDescriptor =
    $convert.base64Decode('CgZSYWRpdXMSDAoBeBgBKAFCAFIBeBIMCgF5GAIoAUIAUgF5');

@$core.Deprecated('Use borderRadiusDescriptor instead')
const BorderRadius$json = {
  '1': 'BorderRadius',
  '2': [
    {
      '1': 'topLeft',
      '3': 1,
      '5': 11,
      '6': '.binui.Radius',
      '8': {},
      '10': 'topLeft'
    },
    {
      '1': 'topRight',
      '3': 2,
      '5': 11,
      '6': '.binui.Radius',
      '8': {},
      '10': 'topRight'
    },
    {
      '1': 'bottomRight',
      '3': 3,
      '5': 11,
      '6': '.binui.Radius',
      '8': {},
      '10': 'bottomRight'
    },
    {
      '1': 'bottomLeft',
      '3': 4,
      '5': 11,
      '6': '.binui.Radius',
      '8': {},
      '10': 'bottomLeft'
    },
  ],
};

/// Descriptor for `BorderRadius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderRadiusDescriptor = $convert.base64Decode(
    'CgxCb3JkZXJSYWRpdXMSJwoHdG9wTGVmdBgBKAsyDS5iaW51aS5SYWRpdXNCAFIHdG9wTGVmdB'
    'IpCgh0b3BSaWdodBgCKAsyDS5iaW51aS5SYWRpdXNCAFIIdG9wUmlnaHQSLwoLYm90dG9tUmln'
    'aHQYAygLMg0uYmludWkuUmFkaXVzQgBSC2JvdHRvbVJpZ2h0Ei0KCmJvdHRvbUxlZnQYBCgLMg'
    '0uYmludWkuUmFkaXVzQgBSCmJvdHRvbUxlZnQ=');

@$core.Deprecated('Use rectDescriptor instead')
const Rect$json = {
  '1': 'Rect',
  '2': [
    {
      '1': 'position',
      '3': 1,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'position'
    },
    {'1': 'size', '3': 2, '5': 11, '6': '.binui.Size', '8': {}, '10': 'size'},
  ],
};

/// Descriptor for `Rect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rectDescriptor = $convert.base64Decode(
    'CgRSZWN0EikKCHBvc2l0aW9uGAEoCzINLmJpbnVpLk9mZnNldEIAUghwb3NpdGlvbhIfCgRzaX'
    'plGAIoCzILLmJpbnVpLlNpemVCAFIEc2l6ZQ==');

@$core.Deprecated('Use borderSideDescriptor instead')
const BorderSide$json = {
  '1': 'BorderSide',
  '2': [
    {
      '1': 'color',
      '3': 1,
      '5': 11,
      '6': '.binui.Color',
      '8': {},
      '10': 'color'
    },
    {'1': 'width', '3': 2, '5': 1, '8': {}, '10': 'width'},
    {'1': 'strokeAlign', '3': 3, '5': 1, '8': {}, '10': 'strokeAlign'},
  ],
};

/// Descriptor for `BorderSide`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderSideDescriptor = $convert.base64Decode(
    'CgpCb3JkZXJTaWRlEiIKBWNvbG9yGAEoCzIMLmJpbnVpLkNvbG9yQgBSBWNvbG9yEhQKBXdpZH'
    'RoGAIoAUIAUgV3aWR0aBIgCgtzdHJva2VBbGlnbhgDKAFCAFILc3Ryb2tlQWxpZ24=');

@$core.Deprecated('Use borderDescriptor instead')
const Border$json = {
  '1': 'Border',
  '2': [
    {
      '1': 'top',
      '3': 1,
      '5': 11,
      '6': '.binui.BorderSide',
      '8': {},
      '10': 'top'
    },
    {
      '1': 'right',
      '3': 2,
      '5': 11,
      '6': '.binui.BorderSide',
      '8': {},
      '10': 'right'
    },
    {
      '1': 'bottom',
      '3': 3,
      '5': 11,
      '6': '.binui.BorderSide',
      '8': {},
      '10': 'bottom'
    },
    {
      '1': 'left',
      '3': 4,
      '5': 11,
      '6': '.binui.BorderSide',
      '8': {},
      '10': 'left'
    },
  ],
};

/// Descriptor for `Border`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderDescriptor = $convert.base64Decode(
    'CgZCb3JkZXISIwoDdG9wGAEoCzIRLmJpbnVpLkJvcmRlclNpZGVCAFIDdG9wEicKBXJpZ2h0GA'
    'IoCzIRLmJpbnVpLkJvcmRlclNpZGVCAFIFcmlnaHQSKQoGYm90dG9tGAMoCzIRLmJpbnVpLkJv'
    'cmRlclNpZGVCAFIGYm90dG9tEiUKBGxlZnQYBCgLMhEuYmludWkuQm9yZGVyU2lkZUIAUgRsZW'
    'Z0');

@$core.Deprecated('Use gradientStopDescriptor instead')
const GradientStop$json = {
  '1': 'GradientStop',
  '2': [
    {'1': 'offset', '3': 1, '5': 1, '8': {}, '10': 'offset'},
    {
      '1': 'color',
      '3': 2,
      '5': 11,
      '6': '.binui.Color',
      '8': {},
      '10': 'color'
    },
  ],
};

/// Descriptor for `GradientStop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientStopDescriptor = $convert.base64Decode(
    'CgxHcmFkaWVudFN0b3ASFgoGb2Zmc2V0GAEoAUIAUgZvZmZzZXQSIgoFY29sb3IYAigLMgwuYm'
    'ludWkuQ29sb3JCAFIFY29sb3I=');

@$core.Deprecated('Use gradientDescriptor instead')
const Gradient$json = {
  '1': 'Gradient',
  '2': [
    {
      '1': 'linear',
      '3': 1,
      '5': 11,
      '6': '.binui.LinearGradient',
      '8': {},
      '9': 0,
      '10': 'linear'
    },
    {
      '1': 'radial',
      '3': 2,
      '5': 11,
      '6': '.binui.RadialGradient',
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
    'CghHcmFkaWVudBIvCgZsaW5lYXIYASgLMhUuYmludWkuTGluZWFyR3JhZGllbnRCAEgAUgZsaW'
    '5lYXISLwoGcmFkaWFsGAIoCzIVLmJpbnVpLlJhZGlhbEdyYWRpZW50QgBIAFIGcmFkaWFsQgYK'
    'BHR5cGU=');

@$core.Deprecated('Use linearGradientDescriptor instead')
const LinearGradient$json = {
  '1': 'LinearGradient',
  '2': [
    {
      '1': 'stops',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.GradientStop',
      '8': {},
      '10': 'stops'
    },
    {
      '1': 'begin',
      '3': 2,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'begin'
    },
    {'1': 'end', '3': 3, '5': 11, '6': '.binui.Offset', '8': {}, '10': 'end'},
  ],
};

/// Descriptor for `LinearGradient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linearGradientDescriptor = $convert.base64Decode(
    'Cg5MaW5lYXJHcmFkaWVudBIrCgVzdG9wcxgBIAMoCzITLmJpbnVpLkdyYWRpZW50U3RvcEIAUg'
    'VzdG9wcxIjCgViZWdpbhgCKAsyDS5iaW51aS5PZmZzZXRCAFIFYmVnaW4SHwoDZW5kGAMoCzIN'
    'LmJpbnVpLk9mZnNldEIAUgNlbmQ=');

@$core.Deprecated('Use radialGradientDescriptor instead')
const RadialGradient$json = {
  '1': 'RadialGradient',
  '2': [
    {
      '1': 'stops',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.GradientStop',
      '8': {},
      '10': 'stops'
    },
    {
      '1': 'center',
      '3': 2,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'center'
    },
    {'1': 'radius', '3': 3, '5': 1, '8': {}, '10': 'radius'},
  ],
};

/// Descriptor for `RadialGradient`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radialGradientDescriptor = $convert.base64Decode(
    'Cg5SYWRpYWxHcmFkaWVudBIrCgVzdG9wcxgBIAMoCzITLmJpbnVpLkdyYWRpZW50U3RvcEIAUg'
    'VzdG9wcxIlCgZjZW50ZXIYAigLMg0uYmludWkuT2Zmc2V0QgBSBmNlbnRlchIWCgZyYWRpdXMY'
    'AygBQgBSBnJhZGl1cw==');

@$core.Deprecated('Use instanceDescriptor instead')
const Instance$json = {
  '1': 'Instance',
  '2': [
    {'1': 'type', '3': 1, '5': 9, '8': {}, '10': 'type'},
    {
      '1': 'arguments',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.InstanceArgument',
      '8': {},
      '10': 'arguments'
    },
  ],
};

/// Descriptor for `Instance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instanceDescriptor = $convert.base64Decode(
    'CghJbnN0YW5jZRISCgR0eXBlGAEoCUIAUgR0eXBlEjcKCWFyZ3VtZW50cxgCIAMoCzIXLmJpbn'
    'VpLkluc3RhbmNlQXJndW1lbnRCAFIJYXJndW1lbnRz');

@$core.Deprecated('Use instanceArgumentDescriptor instead')
const InstanceArgument$json = {
  '1': 'InstanceArgument',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'value',
      '3': 2,
      '5': 11,
      '6': '.binui.Value',
      '8': {},
      '10': 'value'
    },
  ],
};

/// Descriptor for `InstanceArgument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instanceArgumentDescriptor = $convert.base64Decode(
    'ChBJbnN0YW5jZUFyZ3VtZW50EhIKBG5hbWUYASgJQgBSBG5hbWUSIgoFdmFsdWUYAigLMgwuYm'
    'ludWkuVmFsdWVCAFIFdmFsdWU=');

@$core.Deprecated('Use labelDescriptor instead')
const Label$json = {
  '1': 'Label',
  '2': [
    {
      '1': 'segment',
      '3': 1,
      '5': 11,
      '6': '.binui.LabelSegment',
      '8': {},
      '10': 'segment'
    },
    {
      '1': 'variables',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.LabelVariable',
      '8': {},
      '10': 'variables'
    },
  ],
};

/// Descriptor for `Label`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelDescriptor = $convert.base64Decode(
    'CgVMYWJlbBItCgdzZWdtZW50GAEoCzITLmJpbnVpLkxhYmVsU2VnbWVudEIAUgdzZWdtZW50Ej'
    'QKCXZhcmlhYmxlcxgCIAMoCzIULmJpbnVpLkxhYmVsVmFyaWFibGVCAFIJdmFyaWFibGVz');

@$core.Deprecated('Use labelVariableDescriptor instead')
const LabelVariable$json = {
  '1': 'LabelVariable',
  '2': [
    {'1': 'id', '3': 1, '5': 5, '8': {}, '10': 'id'},
    {
      '1': 'variableType',
      '3': 2,
      '5': 14,
      '6': '.binui.LabelVariableType',
      '8': {},
      '10': 'variableType'
    },
  ],
};

/// Descriptor for `LabelVariable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelVariableDescriptor = $convert.base64Decode(
    'Cg1MYWJlbFZhcmlhYmxlEg4KAmlkGAEoBUIAUgJpZBI8Cgx2YXJpYWJsZVR5cGUYAigOMhguYm'
    'ludWkuTGFiZWxWYXJpYWJsZVR5cGVCAFIMdmFyaWFibGVUeXBl');

@$core.Deprecated('Use labelSegmentDescriptor instead')
const LabelSegment$json = {
  '1': 'LabelSegment',
  '2': [
    {
      '1': 'styled',
      '3': 1,
      '5': 11,
      '6': '.binui.StyledSegment',
      '8': {},
      '9': 0,
      '10': 'styled'
    },
    {
      '1': 'static',
      '3': 2,
      '5': 11,
      '6': '.binui.StaticSegment',
      '8': {},
      '9': 0,
      '10': 'static'
    },
    {
      '1': 'variable',
      '3': 3,
      '5': 11,
      '6': '.binui.VariableSegment',
      '8': {},
      '9': 0,
      '10': 'variable'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `LabelSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelSegmentDescriptor = $convert.base64Decode(
    'CgxMYWJlbFNlZ21lbnQSLgoGc3R5bGVkGAEoCzIULmJpbnVpLlN0eWxlZFNlZ21lbnRCAEgAUg'
    'ZzdHlsZWQSLgoGc3RhdGljGAIoCzIULmJpbnVpLlN0YXRpY1NlZ21lbnRCAEgAUgZzdGF0aWMS'
    'NAoIdmFyaWFibGUYAygLMhYuYmludWkuVmFyaWFibGVTZWdtZW50QgBIAFIIdmFyaWFibGVCBg'
    'oEdHlwZQ==');

@$core.Deprecated('Use styledSegmentDescriptor instead')
const StyledSegment$json = {
  '1': 'StyledSegment',
  '2': [
    {
      '1': 'style',
      '3': 1,
      '5': 14,
      '6': '.binui.LabelStyle',
      '8': {},
      '10': 'style'
    },
    {
      '1': 'child',
      '3': 2,
      '5': 11,
      '6': '.binui.Label',
      '8': {},
      '10': 'child'
    },
  ],
};

/// Descriptor for `StyledSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List styledSegmentDescriptor = $convert.base64Decode(
    'Cg1TdHlsZWRTZWdtZW50EicKBXN0eWxlGAEoDjIRLmJpbnVpLkxhYmVsU3R5bGVCAFIFc3R5bG'
    'USIgoFY2hpbGQYAigLMgwuYmludWkuTGFiZWxCAFIFY2hpbGQ=');

@$core.Deprecated('Use staticSegmentDescriptor instead')
const StaticSegment$json = {
  '1': 'StaticSegment',
  '2': [
    {'1': 'text', '3': 1, '5': 9, '8': {}, '10': 'text'},
  ],
};

/// Descriptor for `StaticSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staticSegmentDescriptor =
    $convert.base64Decode('Cg1TdGF0aWNTZWdtZW50EhIKBHRleHQYASgJQgBSBHRleHQ=');

@$core.Deprecated('Use variableSegmentDescriptor instead')
const VariableSegment$json = {
  '1': 'VariableSegment',
  '2': [
    {'1': 'variableId', '3': 1, '5': 5, '8': {}, '10': 'variableId'},
  ],
};

/// Descriptor for `VariableSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableSegmentDescriptor = $convert.base64Decode(
    'Cg9WYXJpYWJsZVNlZ21lbnQSHgoKdmFyaWFibGVJZBgBKAVCAFIKdmFyaWFibGVJZA==');

@$core.Deprecated('Use fontVariationDescriptor instead')
const FontVariation$json = {
  '1': 'FontVariation',
  '2': [
    {'1': 'axis', '3': 1, '5': 9, '8': {}, '10': 'axis'},
    {'1': 'value', '3': 2, '5': 1, '8': {}, '10': 'value'},
  ],
};

/// Descriptor for `FontVariation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fontVariationDescriptor = $convert.base64Decode(
    'Cg1Gb250VmFyaWF0aW9uEhIKBGF4aXMYASgJQgBSBGF4aXMSFAoFdmFsdWUYAigBQgBSBXZhbH'
    'Vl');

@$core.Deprecated('Use textStyleDescriptor instead')
const TextStyle$json = {
  '1': 'TextStyle',
  '2': [
    {'1': 'fontFamily', '3': 1, '5': 9, '8': {}, '10': 'fontFamily'},
    {'1': 'fontSize', '3': 2, '5': 1, '8': {}, '10': 'fontSize'},
    {'1': 'fontWeight', '3': 3, '5': 5, '8': {}, '10': 'fontWeight'},
    {'1': 'letterSpacing', '3': 4, '5': 1, '8': {}, '10': 'letterSpacing'},
    {'1': 'wordSpacing', '3': 5, '5': 1, '8': {}, '10': 'wordSpacing'},
    {'1': 'lineHeight', '3': 6, '5': 1, '8': {}, '10': 'lineHeight'},
    {
      '1': 'fontVariations',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.binui.FontVariation',
      '8': {},
      '10': 'fontVariations'
    },
  ],
};

/// Descriptor for `TextStyle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textStyleDescriptor = $convert.base64Decode(
    'CglUZXh0U3R5bGUSHgoKZm9udEZhbWlseRgBKAlCAFIKZm9udEZhbWlseRIaCghmb250U2l6ZR'
    'gCKAFCAFIIZm9udFNpemUSHgoKZm9udFdlaWdodBgDKAVCAFIKZm9udFdlaWdodBIkCg1sZXR0'
    'ZXJTcGFjaW5nGAQoAUIAUg1sZXR0ZXJTcGFjaW5nEiAKC3dvcmRTcGFjaW5nGAUoAUIAUgt3b3'
    'JkU3BhY2luZxIeCgpsaW5lSGVpZ2h0GAYoAUIAUgpsaW5lSGVpZ2h0Ej4KDmZvbnRWYXJpYXRp'
    'b25zGAcgAygLMhQuYmludWkuRm9udFZhcmlhdGlvbkIAUg5mb250VmFyaWF0aW9ucw==');

@$core.Deprecated('Use transform2DDescriptor instead')
const Transform2D$json = {
  '1': 'Transform2D',
  '2': [
    {
      '1': 'rows',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.MatrixRow',
      '8': {},
      '10': 'rows'
    },
  ],
};

/// Descriptor for `Transform2D`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transform2DDescriptor = $convert.base64Decode(
    'CgtUcmFuc2Zvcm0yRBImCgRyb3dzGAEgAygLMhAuYmludWkuTWF0cml4Um93QgBSBHJvd3M=');

@$core.Deprecated('Use matrixRowDescriptor instead')
const MatrixRow$json = {
  '1': 'MatrixRow',
  '2': [
    {'1': 'values', '3': 1, '4': 3, '5': 1, '8': {}, '10': 'values'},
  ],
};

/// Descriptor for `MatrixRow`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matrixRowDescriptor = $convert
    .base64Decode('CglNYXRyaXhSb3cSGAoGdmFsdWVzGAEgAygBQgBSBnZhbHVlcw==');

@$core.Deprecated('Use variantValueDescriptor instead')
const VariantValue$json = {
  '1': 'VariantValue',
  '2': [
    {'1': 'component', '3': 1, '5': 9, '8': {}, '10': 'component'},
    {'1': 'type', '3': 2, '5': 9, '8': {}, '10': 'type'},
    {'1': 'value', '3': 3, '5': 9, '8': {}, '10': 'value'},
  ],
};

/// Descriptor for `VariantValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variantValueDescriptor = $convert.base64Decode(
    'CgxWYXJpYW50VmFsdWUSHAoJY29tcG9uZW50GAEoCUIAUgljb21wb25lbnQSEgoEdHlwZRgCKA'
    'lCAFIEdHlwZRIUCgV2YWx1ZRgDKAlCAFIFdmFsdWU=');

@$core.Deprecated('Use vectorGraphicsDescriptor instead')
const VectorGraphics$json = {
  '1': 'VectorGraphics',
  '2': [
    {
      '1': 'svg',
      '3': 1,
      '5': 11,
      '6': '.binui.SvgVectorGraphics',
      '8': {},
      '9': 0,
      '10': 'svg'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `VectorGraphics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorGraphicsDescriptor = $convert.base64Decode(
    'Cg5WZWN0b3JHcmFwaGljcxIsCgNzdmcYASgLMhguYmludWkuU3ZnVmVjdG9yR3JhcGhpY3NCAE'
    'gAUgNzdmdCBgoEdHlwZQ==');

@$core.Deprecated('Use svgVectorGraphicsDescriptor instead')
const SvgVectorGraphics$json = {
  '1': 'SvgVectorGraphics',
  '2': [
    {'1': 'data', '3': 1, '5': 9, '8': {}, '10': 'data'},
    {
      '1': 'viewBox',
      '3': 2,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'viewBox'
    },
  ],
};

/// Descriptor for `SvgVectorGraphics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List svgVectorGraphicsDescriptor = $convert.base64Decode(
    'ChFTdmdWZWN0b3JHcmFwaGljcxISCgRkYXRhGAEoCUIAUgRkYXRhEiUKB3ZpZXdCb3gYAigLMg'
    'suYmludWkuUmVjdEIAUgd2aWV3Qm94');

@$core.Deprecated('Use versionDescriptor instead')
const Version$json = {
  '1': 'Version',
  '2': [
    {'1': 'major', '3': 1, '5': 5, '8': {}, '10': 'major'},
    {'1': 'minor', '3': 2, '5': 5, '8': {}, '10': 'minor'},
    {'1': 'patch', '3': 3, '5': 5, '8': {}, '10': 'patch'},
  ],
};

/// Descriptor for `Version`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDescriptor = $convert.base64Decode(
    'CgdWZXJzaW9uEhQKBW1ham9yGAEoBUIAUgVtYWpvchIUCgVtaW5vchgCKAVCAFIFbWlub3ISFA'
    'oFcGF0Y2gYAygFQgBSBXBhdGNo');

@$core.Deprecated('Use visualNodeDescriptor instead')
const VisualNode$json = {
  '1': 'VisualNode',
  '2': [
    {
      '1': 'frame',
      '3': 1,
      '5': 11,
      '6': '.binui.FrameNode',
      '8': {},
      '9': 0,
      '10': 'frame'
    },
    {
      '1': 'group',
      '3': 2,
      '5': 11,
      '6': '.binui.GroupNode',
      '8': {},
      '9': 0,
      '10': 'group'
    },
    {
      '1': 'rectangle',
      '3': 3,
      '5': 11,
      '6': '.binui.RectangleNode',
      '8': {},
      '9': 0,
      '10': 'rectangle'
    },
    {
      '1': 'ellipse',
      '3': 4,
      '5': 11,
      '6': '.binui.EllipseNode',
      '8': {},
      '9': 0,
      '10': 'ellipse'
    },
    {
      '1': 'line',
      '3': 5,
      '5': 11,
      '6': '.binui.LineNode',
      '8': {},
      '9': 0,
      '10': 'line'
    },
    {
      '1': 'vector',
      '3': 6,
      '5': 11,
      '6': '.binui.VectorNode',
      '8': {},
      '9': 0,
      '10': 'vector'
    },
    {
      '1': 'text',
      '3': 7,
      '5': 11,
      '6': '.binui.TextNode',
      '8': {},
      '9': 0,
      '10': 'text'
    },
    {
      '1': 'component',
      '3': 8,
      '5': 11,
      '6': '.binui.ComponentNode',
      '8': {},
      '9': 0,
      '10': 'component'
    },
    {
      '1': 'instance',
      '3': 9,
      '5': 11,
      '6': '.binui.InstanceNode',
      '8': {},
      '9': 0,
      '10': 'instance'
    },
    {
      '1': 'booleanOperation',
      '3': 10,
      '5': 11,
      '6': '.binui.BooleanOperationNode',
      '8': {},
      '9': 0,
      '10': 'booleanOperation'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `VisualNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List visualNodeDescriptor = $convert.base64Decode(
    'CgpWaXN1YWxOb2RlEigKBWZyYW1lGAEoCzIQLmJpbnVpLkZyYW1lTm9kZUIASABSBWZyYW1lEi'
    'gKBWdyb3VwGAIoCzIQLmJpbnVpLkdyb3VwTm9kZUIASABSBWdyb3VwEjQKCXJlY3RhbmdsZRgD'
    'KAsyFC5iaW51aS5SZWN0YW5nbGVOb2RlQgBIAFIJcmVjdGFuZ2xlEi4KB2VsbGlwc2UYBCgLMh'
    'IuYmludWkuRWxsaXBzZU5vZGVCAEgAUgdlbGxpcHNlEiUKBGxpbmUYBSgLMg8uYmludWkuTGlu'
    'ZU5vZGVCAEgAUgRsaW5lEisKBnZlY3RvchgGKAsyES5iaW51aS5WZWN0b3JOb2RlQgBIAFIGdm'
    'VjdG9yEiUKBHRleHQYBygLMg8uYmludWkuVGV4dE5vZGVCAEgAUgR0ZXh0EjQKCWNvbXBvbmVu'
    'dBgIKAsyFC5iaW51aS5Db21wb25lbnROb2RlQgBIAFIJY29tcG9uZW50EjEKCGluc3RhbmNlGA'
    'koCzITLmJpbnVpLkluc3RhbmNlTm9kZUIASABSCGluc3RhbmNlEkkKEGJvb2xlYW5PcGVyYXRp'
    'b24YCigLMhsuYmludWkuQm9vbGVhbk9wZXJhdGlvbk5vZGVCAEgAUhBib29sZWFuT3BlcmF0aW'
    '9uQgYKBHR5cGU=');

@$core.Deprecated('Use paintDescriptor instead')
const Paint$json = {
  '1': 'Paint',
  '2': [
    {
      '1': 'solid',
      '3': 1,
      '5': 11,
      '6': '.binui.SolidPaint',
      '8': {},
      '9': 0,
      '10': 'solid'
    },
    {
      '1': 'gradient',
      '3': 2,
      '5': 11,
      '6': '.binui.GradientPaint',
      '8': {},
      '9': 0,
      '10': 'gradient'
    },
    {
      '1': 'image',
      '3': 3,
      '5': 11,
      '6': '.binui.ImagePaint',
      '8': {},
      '9': 0,
      '10': 'image'
    },
    {'1': 'visible', '3': 4, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'opacity', '3': 5, '5': 1, '8': {}, '10': 'opacity'},
    {
      '1': 'blendMode',
      '3': 6,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Paint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paintDescriptor = $convert.base64Decode(
    'CgVQYWludBIpCgVzb2xpZBgBKAsyES5iaW51aS5Tb2xpZFBhaW50QgBIAFIFc29saWQSMgoIZ3'
    'JhZGllbnQYAigLMhQuYmludWkuR3JhZGllbnRQYWludEIASABSCGdyYWRpZW50EikKBWltYWdl'
    'GAMoCzIRLmJpbnVpLkltYWdlUGFpbnRCAEgAUgVpbWFnZRIYCgd2aXNpYmxlGAQoCEIAUgd2aX'
    'NpYmxlEhgKB29wYWNpdHkYBSgBQgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGAYoDjIQLmJpbnVp'
    'LkJsZW5kTW9kZUIAUglibGVuZE1vZGVCBgoEdHlwZQ==');

@$core.Deprecated('Use solidPaintDescriptor instead')
const SolidPaint$json = {
  '1': 'SolidPaint',
  '2': [
    {
      '1': 'color',
      '3': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'color'
    },
  ],
};

/// Descriptor for `SolidPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List solidPaintDescriptor = $convert.base64Decode(
    'CgpTb2xpZFBhaW50EiIKBWNvbG9yGAEoCzIMLmJpbnVpLkFsaWFzQgBSBWNvbG9y');

@$core.Deprecated('Use gradientPaintDescriptor instead')
const GradientPaint$json = {
  '1': 'GradientPaint',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '5': 14,
      '6': '.binui.GradientType',
      '8': {},
      '10': 'type'
    },
    {
      '1': 'gradientTransform',
      '3': 2,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'gradientTransform'
    },
    {
      '1': 'gradientStops',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.binui.ColorStop',
      '8': {},
      '10': 'gradientStops'
    },
  ],
};

/// Descriptor for `GradientPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientPaintDescriptor = $convert.base64Decode(
    'Cg1HcmFkaWVudFBhaW50EicKBHR5cGUYASgOMhMuYmludWkuR3JhZGllbnRUeXBlQgBSBHR5cG'
    'USQAoRZ3JhZGllbnRUcmFuc2Zvcm0YAigLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRZ3JhZGll'
    'bnRUcmFuc2Zvcm0SOAoNZ3JhZGllbnRTdG9wcxgDIAMoCzIQLmJpbnVpLkNvbG9yU3RvcEIAUg'
    '1ncmFkaWVudFN0b3Bz');

@$core.Deprecated('Use colorStopDescriptor instead')
const ColorStop$json = {
  '1': 'ColorStop',
  '2': [
    {'1': 'position', '3': 1, '5': 1, '8': {}, '10': 'position'},
    {
      '1': 'color',
      '3': 2,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'color'
    },
  ],
};

/// Descriptor for `ColorStop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorStopDescriptor = $convert.base64Decode(
    'CglDb2xvclN0b3ASGgoIcG9zaXRpb24YASgBQgBSCHBvc2l0aW9uEiIKBWNvbG9yGAIoCzIMLm'
    'JpbnVpLkFsaWFzQgBSBWNvbG9y');

@$core.Deprecated('Use imagePaintDescriptor instead')
const ImagePaint$json = {
  '1': 'ImagePaint',
  '2': [
    {
      '1': 'scaleMode',
      '3': 1,
      '5': 14,
      '6': '.binui.ScaleMode',
      '8': {},
      '10': 'scaleMode'
    },
    {'1': 'imageHash', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'imageHash'},
    {
      '1': 'imageTransform',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'imageTransform'
    },
    {
      '1': 'scalingFactor',
      '3': 4,
      '4': 1,
      '5': 1,
      '8': {},
      '10': 'scalingFactor'
    },
    {'1': 'rotation', '3': 5, '4': 1, '5': 1, '8': {}, '10': 'rotation'},
  ],
};

/// Descriptor for `ImagePaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imagePaintDescriptor = $convert.base64Decode(
    'CgpJbWFnZVBhaW50Ei4KCXNjYWxlTW9kZRgBKA4yEC5iaW51aS5TY2FsZU1vZGVCAFIJc2NhbG'
    'VNb2RlEh4KCWltYWdlSGFzaBgCIAEoCUIAUglpbWFnZUhhc2gSPAoOaW1hZ2VUcmFuc2Zvcm0Y'
    'AyABKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUg5pbWFnZVRyYW5zZm9ybRImCg1zY2FsaW5nRm'
    'FjdG9yGAQgASgBQgBSDXNjYWxpbmdGYWN0b3ISHAoIcm90YXRpb24YBSABKAFCAFIIcm90YXRp'
    'b24=');

@$core.Deprecated('Use effectDescriptor instead')
const Effect$json = {
  '1': 'Effect',
  '2': [
    {
      '1': 'dropShadow',
      '3': 1,
      '5': 11,
      '6': '.binui.DropShadowEffect',
      '8': {},
      '9': 0,
      '10': 'dropShadow'
    },
    {
      '1': 'innerShadow',
      '3': 2,
      '5': 11,
      '6': '.binui.InnerShadowEffect',
      '8': {},
      '9': 0,
      '10': 'innerShadow'
    },
    {
      '1': 'blur',
      '3': 3,
      '5': 11,
      '6': '.binui.BlurEffect',
      '8': {},
      '9': 0,
      '10': 'blur'
    },
    {'1': 'visible', '3': 4, '5': 8, '8': {}, '10': 'visible'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Effect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List effectDescriptor = $convert.base64Decode(
    'CgZFZmZlY3QSOQoKZHJvcFNoYWRvdxgBKAsyFy5iaW51aS5Ecm9wU2hhZG93RWZmZWN0QgBIAF'
    'IKZHJvcFNoYWRvdxI8Cgtpbm5lclNoYWRvdxgCKAsyGC5iaW51aS5Jbm5lclNoYWRvd0VmZmVj'
    'dEIASABSC2lubmVyU2hhZG93EicKBGJsdXIYAygLMhEuYmludWkuQmx1ckVmZmVjdEIASABSBG'
    'JsdXISGAoHdmlzaWJsZRgEKAhCAFIHdmlzaWJsZUIGCgR0eXBl');

@$core.Deprecated('Use dropShadowEffectDescriptor instead')
const DropShadowEffect$json = {
  '1': 'DropShadowEffect',
  '2': [
    {
      '1': 'color',
      '3': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'color'
    },
    {
      '1': 'offset',
      '3': 2,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'offset'
    },
    {'1': 'radius', '3': 3, '5': 1, '8': {}, '10': 'radius'},
    {'1': 'spread', '3': 4, '4': 1, '5': 1, '8': {}, '10': 'spread'},
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {
      '1': 'showShadowBehindNode',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': {},
      '10': 'showShadowBehindNode'
    },
  ],
};

/// Descriptor for `DropShadowEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List dropShadowEffectDescriptor = $convert.base64Decode(
    'ChBEcm9wU2hhZG93RWZmZWN0EiIKBWNvbG9yGAEoCzIMLmJpbnVpLkFsaWFzQgBSBWNvbG9yEi'
    'UKBm9mZnNldBgCKAsyDS5iaW51aS5PZmZzZXRCAFIGb2Zmc2V0EhYKBnJhZGl1cxgDKAFCAFIG'
    'cmFkaXVzEhgKBnNwcmVhZBgEIAEoAUIAUgZzcHJlYWQSLgoJYmxlbmRNb2RlGAUoDjIQLmJpbn'
    'VpLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSNAoUc2hvd1NoYWRvd0JlaGluZE5vZGUYBiABKAhC'
    'AFIUc2hvd1NoYWRvd0JlaGluZE5vZGU=');

@$core.Deprecated('Use innerShadowEffectDescriptor instead')
const InnerShadowEffect$json = {
  '1': 'InnerShadowEffect',
  '2': [
    {
      '1': 'color',
      '3': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'color'
    },
    {
      '1': 'offset',
      '3': 2,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'offset'
    },
    {'1': 'radius', '3': 3, '5': 1, '8': {}, '10': 'radius'},
    {'1': 'spread', '3': 4, '4': 1, '5': 1, '8': {}, '10': 'spread'},
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
  ],
};

/// Descriptor for `InnerShadowEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List innerShadowEffectDescriptor = $convert.base64Decode(
    'ChFJbm5lclNoYWRvd0VmZmVjdBIiCgVjb2xvchgBKAsyDC5iaW51aS5BbGlhc0IAUgVjb2xvch'
    'IlCgZvZmZzZXQYAigLMg0uYmludWkuT2Zmc2V0QgBSBm9mZnNldBIWCgZyYWRpdXMYAygBQgBS'
    'BnJhZGl1cxIYCgZzcHJlYWQYBCABKAFCAFIGc3ByZWFkEi4KCWJsZW5kTW9kZRgFKA4yEC5iaW'
    '51aS5CbGVuZE1vZGVCAFIJYmxlbmRNb2Rl');

@$core.Deprecated('Use blurEffectDescriptor instead')
const BlurEffect$json = {
  '1': 'BlurEffect',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '5': 14,
      '6': '.binui.BlurType',
      '8': {},
      '10': 'type'
    },
    {'1': 'radius', '3': 2, '5': 1, '8': {}, '10': 'radius'},
  ],
};

/// Descriptor for `BlurEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blurEffectDescriptor = $convert.base64Decode(
    'CgpCbHVyRWZmZWN0EiMKBHR5cGUYASgOMg8uYmludWkuQmx1clR5cGVCAFIEdHlwZRIWCgZyYW'
    'RpdXMYAigBQgBSBnJhZGl1cw==');

@$core.Deprecated('Use layoutConstraintsDescriptor instead')
const LayoutConstraints$json = {
  '1': 'LayoutConstraints',
  '2': [
    {
      '1': 'horizontal',
      '3': 1,
      '5': 14,
      '6': '.binui.ConstraintType',
      '8': {},
      '10': 'horizontal'
    },
    {
      '1': 'vertical',
      '3': 2,
      '5': 14,
      '6': '.binui.ConstraintType',
      '8': {},
      '10': 'vertical'
    },
  ],
};

/// Descriptor for `LayoutConstraints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layoutConstraintsDescriptor = $convert.base64Decode(
    'ChFMYXlvdXRDb25zdHJhaW50cxI1Cgpob3Jpem9udGFsGAEoDjIVLmJpbnVpLkNvbnN0cmFpbn'
    'RUeXBlQgBSCmhvcml6b250YWwSMQoIdmVydGljYWwYAigOMhUuYmludWkuQ29uc3RyYWludFR5'
    'cGVCAFIIdmVydGljYWw=');

@$core.Deprecated('Use frameNodeDescriptor instead')
const FrameNode$json = {
  '1': 'FrameNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'children',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'fills',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 16,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {'1': 'clipsContent', '3': 17, '5': 8, '8': {}, '10': 'clipsContent'},
    {
      '1': 'opacity',
      '3': 18,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 19,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {
      '1': 'effects',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'cornerRadius',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'layoutMode',
      '3': 22,
      '5': 14,
      '6': '.binui.LayoutMode',
      '8': {},
      '10': 'layoutMode'
    },
    {
      '1': 'paddingLeft',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingLeft'
    },
    {
      '1': 'paddingRight',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingRight'
    },
    {
      '1': 'paddingTop',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingTop'
    },
    {
      '1': 'paddingBottom',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingBottom'
    },
    {
      '1': 'itemSpacing',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'itemSpacing'
    },
  ],
};

/// Descriptor for `FrameNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List frameNodeDescriptor = $convert.base64Decode(
    'CglGcmFtZU5vZGUSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSGAoHdmlzaW'
    'JsZRgDKAhCAFIHdmlzaWJsZRIMCgF4GAQoAUIAUgF4EgwKAXkYBSgBQgBSAXkSFAoFd2lkdGgY'
    'BigBQgBSBXdpZHRoEhYKBmhlaWdodBgHKAFCAFIGaGVpZ2h0EkAKEXJlbGF0aXZlVHJhbnNmb3'
    'JtGAgoCzISLmJpbnVpLlRyYW5zZm9ybTJEQgBSEXJlbGF0aXZlVHJhbnNmb3JtEkAKEWFic29s'
    'dXRlVHJhbnNmb3JtGAkoCzISLmJpbnVpLlRyYW5zZm9ybTJEQgBSEWFic29sdXRlVHJhbnNmb3'
    'JtEj8KE2Fic29sdXRlQm91bmRpbmdCb3gYCiABKAsyCy5iaW51aS5SZWN0QgBSE2Fic29sdXRl'
    'Qm91bmRpbmdCb3gSGgoIcm90YXRpb24YCygBQgBSCHJvdGF0aW9uEjwKC2NvbnN0cmFpbnRzGA'
    'wgASgLMhguYmludWkuTGF5b3V0Q29uc3RyYWludHNCAFILY29uc3RyYWludHMSLwoIY2hpbGRy'
    'ZW4YDSADKAsyES5iaW51aS5WaXN1YWxOb2RlQgBSCGNoaWxkcmVuEiQKBWZpbGxzGA4gAygLMg'
    'wuYmludWkuUGFpbnRCAFIFZmlsbHMSKAoHc3Ryb2tlcxgPIAMoCzIMLmJpbnVpLlBhaW50QgBS'
    'B3N0cm9rZXMSMAoMc3Ryb2tlV2VpZ2h0GBAoCzIMLmJpbnVpLkFsaWFzQgBSDHN0cm9rZVdlaW'
    'dodBIiCgxjbGlwc0NvbnRlbnQYESgIQgBSDGNsaXBzQ29udGVudBImCgdvcGFjaXR5GBIoCzIM'
    'LmJpbnVpLkFsaWFzQgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGBMoDjIQLmJpbnVpLkJsZW5kTW'
    '9kZUIAUglibGVuZE1vZGUSKQoHZWZmZWN0cxgUIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdlZmZl'
    'Y3RzEjIKDGNvcm5lclJhZGl1cxgVIAEoCzIMLmJpbnVpLkFsaWFzQgBSDGNvcm5lclJhZGl1cx'
    'IxCgpsYXlvdXRNb2RlGBYoDjIRLmJpbnVpLkxheW91dE1vZGVCAFIKbGF5b3V0TW9kZRIwCgtw'
    'YWRkaW5nTGVmdBgXIAEoCzIMLmJpbnVpLkFsaWFzQgBSC3BhZGRpbmdMZWZ0EjIKDHBhZGRpbm'
    'dSaWdodBgYIAEoCzIMLmJpbnVpLkFsaWFzQgBSDHBhZGRpbmdSaWdodBIuCgpwYWRkaW5nVG9w'
    'GBkgASgLMgwuYmludWkuQWxpYXNCAFIKcGFkZGluZ1RvcBI0Cg1wYWRkaW5nQm90dG9tGBogAS'
    'gLMgwuYmludWkuQWxpYXNCAFINcGFkZGluZ0JvdHRvbRIwCgtpdGVtU3BhY2luZxgbIAEoCzIM'
    'LmJpbnVpLkFsaWFzQgBSC2l0ZW1TcGFjaW5n');

@$core.Deprecated('Use groupNodeDescriptor instead')
const GroupNode$json = {
  '1': 'GroupNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'children',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'opacity',
      '3': 14,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 15,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
  ],
};

/// Descriptor for `GroupNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupNodeDescriptor = $convert.base64Decode(
    'CglHcm91cE5vZGUSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSGAoHdmlzaW'
    'JsZRgDKAhCAFIHdmlzaWJsZRIMCgF4GAQoAUIAUgF4EgwKAXkYBSgBQgBSAXkSFAoFd2lkdGgY'
    'BigBQgBSBXdpZHRoEhYKBmhlaWdodBgHKAFCAFIGaGVpZ2h0EkAKEXJlbGF0aXZlVHJhbnNmb3'
    'JtGAgoCzISLmJpbnVpLlRyYW5zZm9ybTJEQgBSEXJlbGF0aXZlVHJhbnNmb3JtEkAKEWFic29s'
    'dXRlVHJhbnNmb3JtGAkoCzISLmJpbnVpLlRyYW5zZm9ybTJEQgBSEWFic29sdXRlVHJhbnNmb3'
    'JtEj8KE2Fic29sdXRlQm91bmRpbmdCb3gYCiABKAsyCy5iaW51aS5SZWN0QgBSE2Fic29sdXRl'
    'Qm91bmRpbmdCb3gSGgoIcm90YXRpb24YCygBQgBSCHJvdGF0aW9uEjwKC2NvbnN0cmFpbnRzGA'
    'wgASgLMhguYmludWkuTGF5b3V0Q29uc3RyYWludHNCAFILY29uc3RyYWludHMSLwoIY2hpbGRy'
    'ZW4YDSADKAsyES5iaW51aS5WaXN1YWxOb2RlQgBSCGNoaWxkcmVuEiYKB29wYWNpdHkYDigLMg'
    'wuYmludWkuQWxpYXNCAFIHb3BhY2l0eRIuCglibGVuZE1vZGUYDygOMhAuYmludWkuQmxlbmRN'
    'b2RlQgBSCWJsZW5kTW9kZQ==');

@$core.Deprecated('Use rectangleNodeDescriptor instead')
const RectangleNode$json = {
  '1': 'RectangleNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'opacity',
      '3': 13,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 14,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'isMask', '3': 15, '5': 8, '8': {}, '10': 'isMask'},
    {
      '1': 'effects',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'fills',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 19,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {
      '1': 'strokeCap',
      '3': 20,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 21,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'strokeJoin'
    },
    {
      '1': 'strokeAlign',
      '3': 22,
      '5': 14,
      '6': '.binui.StrokeAlign',
      '8': {},
      '10': 'strokeAlign'
    },
    {
      '1': 'cornerRadius',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'topLeftRadius',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'topLeftRadius'
    },
    {
      '1': 'topRightRadius',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'topRightRadius'
    },
    {
      '1': 'bottomLeftRadius',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'bottomLeftRadius'
    },
    {
      '1': 'bottomRightRadius',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'bottomRightRadius'
    },
  ],
};

/// Descriptor for `RectangleNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rectangleNodeDescriptor = $convert.base64Decode(
    'Cg1SZWN0YW5nbGVOb2RlEg4KAmlkGAEoCUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEhgKB3'
    'Zpc2libGUYAygIQgBSB3Zpc2libGUSDAoBeBgEKAFCAFIBeBIMCgF5GAUoAUIAUgF5EhQKBXdp'
    'ZHRoGAYoAUIAUgV3aWR0aBIWCgZoZWlnaHQYBygBQgBSBmhlaWdodBJAChFyZWxhdGl2ZVRyYW'
    '5zZm9ybRgIKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFh'
    'YnNvbHV0ZVRyYW5zZm9ybRgJKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUhFhYnNvbHV0ZVRyYW'
    '5zZm9ybRI/ChNhYnNvbHV0ZUJvdW5kaW5nQm94GAogASgLMgsuYmludWkuUmVjdEIAUhNhYnNv'
    'bHV0ZUJvdW5kaW5nQm94EhoKCHJvdGF0aW9uGAsoAUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW'
    '50cxgMIAEoCzIYLmJpbnVpLkxheW91dENvbnN0cmFpbnRzQgBSC2NvbnN0cmFpbnRzEiYKB29w'
    'YWNpdHkYDSgLMgwuYmludWkuQWxpYXNCAFIHb3BhY2l0eRIuCglibGVuZE1vZGUYDigOMhAuYm'
    'ludWkuQmxlbmRNb2RlQgBSCWJsZW5kTW9kZRIWCgZpc01hc2sYDygIQgBSBmlzTWFzaxIpCgdl'
    'ZmZlY3RzGBAgAygLMg0uYmludWkuRWZmZWN0QgBSB2VmZmVjdHMSJAoFZmlsbHMYESADKAsyDC'
    '5iaW51aS5QYWludEIAUgVmaWxscxIoCgdzdHJva2VzGBIgAygLMgwuYmludWkuUGFpbnRCAFIH'
    'c3Ryb2tlcxIwCgxzdHJva2VXZWlnaHQYEygLMgwuYmludWkuQWxpYXNCAFIMc3Ryb2tlV2VpZ2'
    'h0Ei4KCXN0cm9rZUNhcBgUKA4yEC5iaW51aS5TdHJva2VDYXBCAFIJc3Ryb2tlQ2FwEjEKCnN0'
    'cm9rZUpvaW4YFSgOMhEuYmludWkuU3Ryb2tlSm9pbkIAUgpzdHJva2VKb2luEjQKC3N0cm9rZU'
    'FsaWduGBYoDjISLmJpbnVpLlN0cm9rZUFsaWduQgBSC3N0cm9rZUFsaWduEjIKDGNvcm5lclJh'
    'ZGl1cxgXIAEoCzIMLmJpbnVpLkFsaWFzQgBSDGNvcm5lclJhZGl1cxI0Cg10b3BMZWZ0UmFkaX'
    'VzGBggASgLMgwuYmludWkuQWxpYXNCAFINdG9wTGVmdFJhZGl1cxI2Cg50b3BSaWdodFJhZGl1'
    'cxgZIAEoCzIMLmJpbnVpLkFsaWFzQgBSDnRvcFJpZ2h0UmFkaXVzEjoKEGJvdHRvbUxlZnRSYW'
    'RpdXMYGiABKAsyDC5iaW51aS5BbGlhc0IAUhBib3R0b21MZWZ0UmFkaXVzEjwKEWJvdHRvbVJp'
    'Z2h0UmFkaXVzGBsgASgLMgwuYmludWkuQWxpYXNCAFIRYm90dG9tUmlnaHRSYWRpdXM=');

@$core.Deprecated('Use ellipseNodeDescriptor instead')
const EllipseNode$json = {
  '1': 'EllipseNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'opacity',
      '3': 13,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 14,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'isMask', '3': 15, '5': 8, '8': {}, '10': 'isMask'},
    {
      '1': 'effects',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'fills',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 19,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {
      '1': 'strokeCap',
      '3': 20,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 21,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'strokeJoin'
    },
    {
      '1': 'strokeAlign',
      '3': 22,
      '5': 14,
      '6': '.binui.StrokeAlign',
      '8': {},
      '10': 'strokeAlign'
    },
    {
      '1': 'cornerRadius',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'cornerRadius'
    },
  ],
};

/// Descriptor for `EllipseNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ellipseNodeDescriptor = $convert.base64Decode(
    'CgtFbGxpcHNlTm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZRIYCgd2aX'
    'NpYmxlGAMoCEIAUgd2aXNpYmxlEgwKAXgYBCgBQgBSAXgSDAoBeRgFKAFCAFIBeRIUCgV3aWR0'
    'aBgGKAFCAFIFd2lkdGgSFgoGaGVpZ2h0GAcoAUIAUgZoZWlnaHQSQAoRcmVsYXRpdmVUcmFuc2'
    'Zvcm0YCCgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJz'
    'b2x1dGVUcmFuc2Zvcm0YCSgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRYWJzb2x1dGVUcmFuc2'
    'Zvcm0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveBgKIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1'
    'dGVCb3VuZGluZ0JveBIaCghyb3RhdGlvbhgLKAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludH'
    'MYDCABKAsyGC5iaW51aS5MYXlvdXRDb25zdHJhaW50c0IAUgtjb25zdHJhaW50cxImCgdvcGFj'
    'aXR5GA0oCzIMLmJpbnVpLkFsaWFzQgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGA4oDjIQLmJpbn'
    'VpLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSFgoGaXNNYXNrGA8oCEIAUgZpc01hc2sSKQoHZWZm'
    'ZWN0cxgQIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdlZmZlY3RzEiQKBWZpbGxzGBEgAygLMgwuYm'
    'ludWkuUGFpbnRCAFIFZmlsbHMSKAoHc3Ryb2tlcxgSIAMoCzIMLmJpbnVpLlBhaW50QgBSB3N0'
    'cm9rZXMSMAoMc3Ryb2tlV2VpZ2h0GBMoCzIMLmJpbnVpLkFsaWFzQgBSDHN0cm9rZVdlaWdodB'
    'IuCglzdHJva2VDYXAYFCgOMhAuYmludWkuU3Ryb2tlQ2FwQgBSCXN0cm9rZUNhcBIxCgpzdHJv'
    'a2VKb2luGBUoDjIRLmJpbnVpLlN0cm9rZUpvaW5CAFIKc3Ryb2tlSm9pbhI0CgtzdHJva2VBbG'
    'lnbhgWKA4yEi5iaW51aS5TdHJva2VBbGlnbkIAUgtzdHJva2VBbGlnbhIyCgxjb3JuZXJSYWRp'
    'dXMYFyABKAsyDC5iaW51aS5BbGlhc0IAUgxjb3JuZXJSYWRpdXM=');

@$core.Deprecated('Use lineNodeDescriptor instead')
const LineNode$json = {
  '1': 'LineNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'opacity',
      '3': 13,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 14,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'isMask', '3': 15, '5': 8, '8': {}, '10': 'isMask'},
    {
      '1': 'effects',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'fills',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 19,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {
      '1': 'strokeCap',
      '3': 20,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 21,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'strokeJoin'
    },
    {
      '1': 'strokeAlign',
      '3': 22,
      '5': 14,
      '6': '.binui.StrokeAlign',
      '8': {},
      '10': 'strokeAlign'
    },
  ],
};

/// Descriptor for `LineNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lineNodeDescriptor = $convert.base64Decode(
    'CghMaW5lTm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZRIYCgd2aXNpYm'
    'xlGAMoCEIAUgd2aXNpYmxlEgwKAXgYBCgBQgBSAXgSDAoBeRgFKAFCAFIBeRIUCgV3aWR0aBgG'
    'KAFCAFIFd2lkdGgSFgoGaGVpZ2h0GAcoAUIAUgZoZWlnaHQSQAoRcmVsYXRpdmVUcmFuc2Zvcm'
    '0YCCgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJzb2x1'
    'dGVUcmFuc2Zvcm0YCSgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRYWJzb2x1dGVUcmFuc2Zvcm'
    '0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveBgKIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1dGVC'
    'b3VuZGluZ0JveBIaCghyb3RhdGlvbhgLKAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludHMYDC'
    'ABKAsyGC5iaW51aS5MYXlvdXRDb25zdHJhaW50c0IAUgtjb25zdHJhaW50cxImCgdvcGFjaXR5'
    'GA0oCzIMLmJpbnVpLkFsaWFzQgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGA4oDjIQLmJpbnVpLk'
    'JsZW5kTW9kZUIAUglibGVuZE1vZGUSFgoGaXNNYXNrGA8oCEIAUgZpc01hc2sSKQoHZWZmZWN0'
    'cxgQIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdlZmZlY3RzEiQKBWZpbGxzGBEgAygLMgwuYmludW'
    'kuUGFpbnRCAFIFZmlsbHMSKAoHc3Ryb2tlcxgSIAMoCzIMLmJpbnVpLlBhaW50QgBSB3N0cm9r'
    'ZXMSMAoMc3Ryb2tlV2VpZ2h0GBMoCzIMLmJpbnVpLkFsaWFzQgBSDHN0cm9rZVdlaWdodBIuCg'
    'lzdHJva2VDYXAYFCgOMhAuYmludWkuU3Ryb2tlQ2FwQgBSCXN0cm9rZUNhcBIxCgpzdHJva2VK'
    'b2luGBUoDjIRLmJpbnVpLlN0cm9rZUpvaW5CAFIKc3Ryb2tlSm9pbhI0CgtzdHJva2VBbGlnbh'
    'gWKA4yEi5iaW51aS5TdHJva2VBbGlnbkIAUgtzdHJva2VBbGlnbg==');

@$core.Deprecated('Use vectorNodeDescriptor instead')
const VectorNode$json = {
  '1': 'VectorNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'opacity',
      '3': 13,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 14,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'isMask', '3': 15, '5': 8, '8': {}, '10': 'isMask'},
    {
      '1': 'effects',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'fills',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 19,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {
      '1': 'strokeCap',
      '3': 20,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 21,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'strokeJoin'
    },
    {
      '1': 'strokeAlign',
      '3': 22,
      '5': 14,
      '6': '.binui.StrokeAlign',
      '8': {},
      '10': 'strokeAlign'
    },
    {
      '1': 'cornerRadius',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'cornerRadius'
    },
  ],
};

/// Descriptor for `VectorNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorNodeDescriptor = $convert.base64Decode(
    'CgpWZWN0b3JOb2RlEg4KAmlkGAEoCUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEhgKB3Zpc2'
    'libGUYAygIQgBSB3Zpc2libGUSDAoBeBgEKAFCAFIBeBIMCgF5GAUoAUIAUgF5EhQKBXdpZHRo'
    'GAYoAUIAUgV3aWR0aBIWCgZoZWlnaHQYBygBQgBSBmhlaWdodBJAChFyZWxhdGl2ZVRyYW5zZm'
    '9ybRgIKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFhYnNv'
    'bHV0ZVRyYW5zZm9ybRgJKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUhFhYnNvbHV0ZVRyYW5zZm'
    '9ybRI/ChNhYnNvbHV0ZUJvdW5kaW5nQm94GAogASgLMgsuYmludWkuUmVjdEIAUhNhYnNvbHV0'
    'ZUJvdW5kaW5nQm94EhoKCHJvdGF0aW9uGAsoAUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW50cx'
    'gMIAEoCzIYLmJpbnVpLkxheW91dENvbnN0cmFpbnRzQgBSC2NvbnN0cmFpbnRzEiYKB29wYWNp'
    'dHkYDSgLMgwuYmludWkuQWxpYXNCAFIHb3BhY2l0eRIuCglibGVuZE1vZGUYDigOMhAuYmludW'
    'kuQmxlbmRNb2RlQgBSCWJsZW5kTW9kZRIWCgZpc01hc2sYDygIQgBSBmlzTWFzaxIpCgdlZmZl'
    'Y3RzGBAgAygLMg0uYmludWkuRWZmZWN0QgBSB2VmZmVjdHMSJAoFZmlsbHMYESADKAsyDC5iaW'
    '51aS5QYWludEIAUgVmaWxscxIoCgdzdHJva2VzGBIgAygLMgwuYmludWkuUGFpbnRCAFIHc3Ry'
    'b2tlcxIwCgxzdHJva2VXZWlnaHQYEygLMgwuYmludWkuQWxpYXNCAFIMc3Ryb2tlV2VpZ2h0Ei'
    '4KCXN0cm9rZUNhcBgUKA4yEC5iaW51aS5TdHJva2VDYXBCAFIJc3Ryb2tlQ2FwEjEKCnN0cm9r'
    'ZUpvaW4YFSgOMhEuYmludWkuU3Ryb2tlSm9pbkIAUgpzdHJva2VKb2luEjQKC3N0cm9rZUFsaW'
    'duGBYoDjISLmJpbnVpLlN0cm9rZUFsaWduQgBSC3N0cm9rZUFsaWduEjIKDGNvcm5lclJhZGl1'
    'cxgXIAEoCzIMLmJpbnVpLkFsaWFzQgBSDGNvcm5lclJhZGl1cw==');

@$core.Deprecated('Use textNodeDescriptor instead')
const TextNode$json = {
  '1': 'TextNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'opacity',
      '3': 13,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 14,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'isMask', '3': 15, '5': 8, '8': {}, '10': 'isMask'},
    {
      '1': 'effects',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'fills',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 19,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {
      '1': 'strokeCap',
      '3': 20,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 21,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'strokeJoin'
    },
    {
      '1': 'strokeAlign',
      '3': 22,
      '5': 14,
      '6': '.binui.StrokeAlign',
      '8': {},
      '10': 'strokeAlign'
    },
    {
      '1': 'characters',
      '3': 23,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'characters'
    },
    {
      '1': 'textAlignHorizontal',
      '3': 24,
      '5': 14,
      '6': '.binui.TextAlignHorizontal',
      '8': {},
      '10': 'textAlignHorizontal'
    },
    {
      '1': 'textAlignVertical',
      '3': 25,
      '5': 14,
      '6': '.binui.TextAlignVertical',
      '8': {},
      '10': 'textAlignVertical'
    },
    {
      '1': 'fontSize',
      '3': 26,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'fontSize'
    },
    {'1': 'fontFamily', '3': 27, '5': 9, '8': {}, '10': 'fontFamily'},
    {'1': 'fontStyle', '3': 28, '5': 9, '8': {}, '10': 'fontStyle'},
    {'1': 'fontWeight', '3': 29, '5': 5, '8': {}, '10': 'fontWeight'},
    {'1': 'lineHeight', '3': 30, '4': 1, '5': 1, '8': {}, '10': 'lineHeight'},
    {
      '1': 'letterSpacing',
      '3': 31,
      '4': 1,
      '5': 1,
      '8': {},
      '10': 'letterSpacing'
    },
  ],
};

/// Descriptor for `TextNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textNodeDescriptor = $convert.base64Decode(
    'CghUZXh0Tm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZRIYCgd2aXNpYm'
    'xlGAMoCEIAUgd2aXNpYmxlEgwKAXgYBCgBQgBSAXgSDAoBeRgFKAFCAFIBeRIUCgV3aWR0aBgG'
    'KAFCAFIFd2lkdGgSFgoGaGVpZ2h0GAcoAUIAUgZoZWlnaHQSQAoRcmVsYXRpdmVUcmFuc2Zvcm'
    '0YCCgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJzb2x1'
    'dGVUcmFuc2Zvcm0YCSgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRYWJzb2x1dGVUcmFuc2Zvcm'
    '0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveBgKIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1dGVC'
    'b3VuZGluZ0JveBIaCghyb3RhdGlvbhgLKAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludHMYDC'
    'ABKAsyGC5iaW51aS5MYXlvdXRDb25zdHJhaW50c0IAUgtjb25zdHJhaW50cxImCgdvcGFjaXR5'
    'GA0oCzIMLmJpbnVpLkFsaWFzQgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGA4oDjIQLmJpbnVpLk'
    'JsZW5kTW9kZUIAUglibGVuZE1vZGUSFgoGaXNNYXNrGA8oCEIAUgZpc01hc2sSKQoHZWZmZWN0'
    'cxgQIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdlZmZlY3RzEiQKBWZpbGxzGBEgAygLMgwuYmludW'
    'kuUGFpbnRCAFIFZmlsbHMSKAoHc3Ryb2tlcxgSIAMoCzIMLmJpbnVpLlBhaW50QgBSB3N0cm9r'
    'ZXMSMAoMc3Ryb2tlV2VpZ2h0GBMoCzIMLmJpbnVpLkFsaWFzQgBSDHN0cm9rZVdlaWdodBIuCg'
    'lzdHJva2VDYXAYFCgOMhAuYmludWkuU3Ryb2tlQ2FwQgBSCXN0cm9rZUNhcBIxCgpzdHJva2VK'
    'b2luGBUoDjIRLmJpbnVpLlN0cm9rZUpvaW5CAFIKc3Ryb2tlSm9pbhI0CgtzdHJva2VBbGlnbh'
    'gWKA4yEi5iaW51aS5TdHJva2VBbGlnbkIAUgtzdHJva2VBbGlnbhIsCgpjaGFyYWN0ZXJzGBco'
    'CzIMLmJpbnVpLkFsaWFzQgBSCmNoYXJhY3RlcnMSTAoTdGV4dEFsaWduSG9yaXpvbnRhbBgYKA'
    '4yGi5iaW51aS5UZXh0QWxpZ25Ib3Jpem9udGFsQgBSE3RleHRBbGlnbkhvcml6b250YWwSRgoR'
    'dGV4dEFsaWduVmVydGljYWwYGSgOMhguYmludWkuVGV4dEFsaWduVmVydGljYWxCAFIRdGV4dE'
    'FsaWduVmVydGljYWwSKAoIZm9udFNpemUYGigLMgwuYmludWkuQWxpYXNCAFIIZm9udFNpemUS'
    'HgoKZm9udEZhbWlseRgbKAlCAFIKZm9udEZhbWlseRIcCglmb250U3R5bGUYHCgJQgBSCWZvbn'
    'RTdHlsZRIeCgpmb250V2VpZ2h0GB0oBUIAUgpmb250V2VpZ2h0EiAKCmxpbmVIZWlnaHQYHiAB'
    'KAFCAFIKbGluZUhlaWdodBImCg1sZXR0ZXJTcGFjaW5nGB8gASgBQgBSDWxldHRlclNwYWNpbm'
    'c=');

@$core.Deprecated('Use componentNodeDescriptor instead')
const ComponentNode$json = {
  '1': 'ComponentNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'children',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'fills',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 16,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {'1': 'clipsContent', '3': 17, '5': 8, '8': {}, '10': 'clipsContent'},
    {
      '1': 'opacity',
      '3': 18,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 19,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {
      '1': 'effects',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'cornerRadius',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'layoutMode',
      '3': 22,
      '5': 14,
      '6': '.binui.LayoutMode',
      '8': {},
      '10': 'layoutMode'
    },
    {
      '1': 'paddingLeft',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingLeft'
    },
    {
      '1': 'paddingRight',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingRight'
    },
    {
      '1': 'paddingTop',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingTop'
    },
    {
      '1': 'paddingBottom',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingBottom'
    },
    {
      '1': 'itemSpacing',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'itemSpacing'
    },
  ],
};

/// Descriptor for `ComponentNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentNodeDescriptor = $convert.base64Decode(
    'Cg1Db21wb25lbnROb2RlEg4KAmlkGAEoCUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEhgKB3'
    'Zpc2libGUYAygIQgBSB3Zpc2libGUSDAoBeBgEKAFCAFIBeBIMCgF5GAUoAUIAUgF5EhQKBXdp'
    'ZHRoGAYoAUIAUgV3aWR0aBIWCgZoZWlnaHQYBygBQgBSBmhlaWdodBJAChFyZWxhdGl2ZVRyYW'
    '5zZm9ybRgIKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFh'
    'YnNvbHV0ZVRyYW5zZm9ybRgJKAsyEi5iaW51aS5UcmFuc2Zvcm0yREIAUhFhYnNvbHV0ZVRyYW'
    '5zZm9ybRI/ChNhYnNvbHV0ZUJvdW5kaW5nQm94GAogASgLMgsuYmludWkuUmVjdEIAUhNhYnNv'
    'bHV0ZUJvdW5kaW5nQm94EhoKCHJvdGF0aW9uGAsoAUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW'
    '50cxgMIAEoCzIYLmJpbnVpLkxheW91dENvbnN0cmFpbnRzQgBSC2NvbnN0cmFpbnRzEi8KCGNo'
    'aWxkcmVuGA0gAygLMhEuYmludWkuVmlzdWFsTm9kZUIAUghjaGlsZHJlbhIkCgVmaWxscxgOIA'
    'MoCzIMLmJpbnVpLlBhaW50QgBSBWZpbGxzEigKB3N0cm9rZXMYDyADKAsyDC5iaW51aS5QYWlu'
    'dEIAUgdzdHJva2VzEjAKDHN0cm9rZVdlaWdodBgQKAsyDC5iaW51aS5BbGlhc0IAUgxzdHJva2'
    'VXZWlnaHQSIgoMY2xpcHNDb250ZW50GBEoCEIAUgxjbGlwc0NvbnRlbnQSJgoHb3BhY2l0eRgS'
    'KAsyDC5iaW51aS5BbGlhc0IAUgdvcGFjaXR5Ei4KCWJsZW5kTW9kZRgTKA4yEC5iaW51aS5CbG'
    'VuZE1vZGVCAFIJYmxlbmRNb2RlEikKB2VmZmVjdHMYFCADKAsyDS5iaW51aS5FZmZlY3RCAFIH'
    'ZWZmZWN0cxIyCgxjb3JuZXJSYWRpdXMYFSABKAsyDC5iaW51aS5BbGlhc0IAUgxjb3JuZXJSYW'
    'RpdXMSMQoKbGF5b3V0TW9kZRgWKA4yES5iaW51aS5MYXlvdXRNb2RlQgBSCmxheW91dE1vZGUS'
    'MAoLcGFkZGluZ0xlZnQYFyABKAsyDC5iaW51aS5BbGlhc0IAUgtwYWRkaW5nTGVmdBIyCgxwYW'
    'RkaW5nUmlnaHQYGCABKAsyDC5iaW51aS5BbGlhc0IAUgxwYWRkaW5nUmlnaHQSLgoKcGFkZGlu'
    'Z1RvcBgZIAEoCzIMLmJpbnVpLkFsaWFzQgBSCnBhZGRpbmdUb3ASNAoNcGFkZGluZ0JvdHRvbR'
    'gaIAEoCzIMLmJpbnVpLkFsaWFzQgBSDXBhZGRpbmdCb3R0b20SMAoLaXRlbVNwYWNpbmcYGyAB'
    'KAsyDC5iaW51aS5BbGlhc0IAUgtpdGVtU3BhY2luZw==');

@$core.Deprecated('Use instanceNodeDescriptor instead')
const InstanceNode$json = {
  '1': 'InstanceNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'children',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'fills',
      '3': 14,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 16,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {'1': 'clipsContent', '3': 17, '5': 8, '8': {}, '10': 'clipsContent'},
    {
      '1': 'opacity',
      '3': 18,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 19,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {
      '1': 'effects',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'cornerRadius',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'layoutMode',
      '3': 22,
      '5': 14,
      '6': '.binui.LayoutMode',
      '8': {},
      '10': 'layoutMode'
    },
    {
      '1': 'paddingLeft',
      '3': 23,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingLeft'
    },
    {
      '1': 'paddingRight',
      '3': 24,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingRight'
    },
    {
      '1': 'paddingTop',
      '3': 25,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingTop'
    },
    {
      '1': 'paddingBottom',
      '3': 26,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'paddingBottom'
    },
    {
      '1': 'itemSpacing',
      '3': 27,
      '4': 1,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'itemSpacing'
    },
    {
      '1': 'mainComponentId',
      '3': 28,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'mainComponentId'
    },
  ],
};

/// Descriptor for `InstanceNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instanceNodeDescriptor = $convert.base64Decode(
    'CgxJbnN0YW5jZU5vZGUSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSGAoHdm'
    'lzaWJsZRgDKAhCAFIHdmlzaWJsZRIMCgF4GAQoAUIAUgF4EgwKAXkYBSgBQgBSAXkSFAoFd2lk'
    'dGgYBigBQgBSBXdpZHRoEhYKBmhlaWdodBgHKAFCAFIGaGVpZ2h0EkAKEXJlbGF0aXZlVHJhbn'
    'Nmb3JtGAgoCzISLmJpbnVpLlRyYW5zZm9ybTJEQgBSEXJlbGF0aXZlVHJhbnNmb3JtEkAKEWFi'
    'c29sdXRlVHJhbnNmb3JtGAkoCzISLmJpbnVpLlRyYW5zZm9ybTJEQgBSEWFic29sdXRlVHJhbn'
    'Nmb3JtEj8KE2Fic29sdXRlQm91bmRpbmdCb3gYCiABKAsyCy5iaW51aS5SZWN0QgBSE2Fic29s'
    'dXRlQm91bmRpbmdCb3gSGgoIcm90YXRpb24YCygBQgBSCHJvdGF0aW9uEjwKC2NvbnN0cmFpbn'
    'RzGAwgASgLMhguYmludWkuTGF5b3V0Q29uc3RyYWludHNCAFILY29uc3RyYWludHMSLwoIY2hp'
    'bGRyZW4YDSADKAsyES5iaW51aS5WaXN1YWxOb2RlQgBSCGNoaWxkcmVuEiQKBWZpbGxzGA4gAy'
    'gLMgwuYmludWkuUGFpbnRCAFIFZmlsbHMSKAoHc3Ryb2tlcxgPIAMoCzIMLmJpbnVpLlBhaW50'
    'QgBSB3N0cm9rZXMSMAoMc3Ryb2tlV2VpZ2h0GBAoCzIMLmJpbnVpLkFsaWFzQgBSDHN0cm9rZV'
    'dlaWdodBIiCgxjbGlwc0NvbnRlbnQYESgIQgBSDGNsaXBzQ29udGVudBImCgdvcGFjaXR5GBIo'
    'CzIMLmJpbnVpLkFsaWFzQgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGBMoDjIQLmJpbnVpLkJsZW'
    '5kTW9kZUIAUglibGVuZE1vZGUSKQoHZWZmZWN0cxgUIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdl'
    'ZmZlY3RzEjIKDGNvcm5lclJhZGl1cxgVIAEoCzIMLmJpbnVpLkFsaWFzQgBSDGNvcm5lclJhZG'
    'l1cxIxCgpsYXlvdXRNb2RlGBYoDjIRLmJpbnVpLkxheW91dE1vZGVCAFIKbGF5b3V0TW9kZRIw'
    'CgtwYWRkaW5nTGVmdBgXIAEoCzIMLmJpbnVpLkFsaWFzQgBSC3BhZGRpbmdMZWZ0EjIKDHBhZG'
    'RpbmdSaWdodBgYIAEoCzIMLmJpbnVpLkFsaWFzQgBSDHBhZGRpbmdSaWdodBIuCgpwYWRkaW5n'
    'VG9wGBkgASgLMgwuYmludWkuQWxpYXNCAFIKcGFkZGluZ1RvcBI0Cg1wYWRkaW5nQm90dG9tGB'
    'ogASgLMgwuYmludWkuQWxpYXNCAFINcGFkZGluZ0JvdHRvbRIwCgtpdGVtU3BhY2luZxgbIAEo'
    'CzIMLmJpbnVpLkFsaWFzQgBSC2l0ZW1TcGFjaW5nEioKD21haW5Db21wb25lbnRJZBgcIAEoCU'
    'IAUg9tYWluQ29tcG9uZW50SWQ=');

@$core.Deprecated('Use booleanOperationNodeDescriptor instead')
const BooleanOperationNode$json = {
  '1': 'BooleanOperationNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'x', '3': 4, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 5, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 6, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 7, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 8,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 9,
      '5': 11,
      '6': '.binui.Transform2D',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 10,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 11, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'children',
      '3': 13,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'booleanOperation',
      '3': 14,
      '5': 14,
      '6': '.binui.BooleanOperation',
      '8': {},
      '10': 'booleanOperation'
    },
    {
      '1': 'fills',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'strokeWeight',
      '3': 17,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'strokeWeight'
    },
    {
      '1': 'opacity',
      '3': 18,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 19,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {
      '1': 'effects',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
  ],
};

/// Descriptor for `BooleanOperationNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanOperationNodeDescriptor = $convert.base64Decode(
    'ChRCb29sZWFuT3BlcmF0aW9uTm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbm'
    'FtZRIYCgd2aXNpYmxlGAMoCEIAUgd2aXNpYmxlEgwKAXgYBCgBQgBSAXgSDAoBeRgFKAFCAFIB'
    'eRIUCgV3aWR0aBgGKAFCAFIFd2lkdGgSFgoGaGVpZ2h0GAcoAUIAUgZoZWlnaHQSQAoRcmVsYX'
    'RpdmVUcmFuc2Zvcm0YCCgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRcmVsYXRpdmVUcmFuc2Zv'
    'cm0SQAoRYWJzb2x1dGVUcmFuc2Zvcm0YCSgLMhIuYmludWkuVHJhbnNmb3JtMkRCAFIRYWJzb2'
    'x1dGVUcmFuc2Zvcm0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveBgKIAEoCzILLmJpbnVpLlJlY3RC'
    'AFITYWJzb2x1dGVCb3VuZGluZ0JveBIaCghyb3RhdGlvbhgLKAFCAFIIcm90YXRpb24SPAoLY2'
    '9uc3RyYWludHMYDCABKAsyGC5iaW51aS5MYXlvdXRDb25zdHJhaW50c0IAUgtjb25zdHJhaW50'
    'cxIvCghjaGlsZHJlbhgNIAMoCzIRLmJpbnVpLlZpc3VhbE5vZGVCAFIIY2hpbGRyZW4SQwoQYm'
    '9vbGVhbk9wZXJhdGlvbhgOKA4yFy5iaW51aS5Cb29sZWFuT3BlcmF0aW9uQgBSEGJvb2xlYW5P'
    'cGVyYXRpb24SJAoFZmlsbHMYDyADKAsyDC5iaW51aS5QYWludEIAUgVmaWxscxIoCgdzdHJva2'
    'VzGBAgAygLMgwuYmludWkuUGFpbnRCAFIHc3Ryb2tlcxIwCgxzdHJva2VXZWlnaHQYESgLMgwu'
    'YmludWkuQWxpYXNCAFIMc3Ryb2tlV2VpZ2h0EiYKB29wYWNpdHkYEigLMgwuYmludWkuQWxpYX'
    'NCAFIHb3BhY2l0eRIuCglibGVuZE1vZGUYEygOMhAuYmludWkuQmxlbmRNb2RlQgBSCWJsZW5k'
    'TW9kZRIpCgdlZmZlY3RzGBQgAygLMg0uYmludWkuRWZmZWN0QgBSB2VmZmVjdHM=');
