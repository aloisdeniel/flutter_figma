// This is a generated file - do not edit.
//
// Generated from components.proto.

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

@$core.Deprecated('Use componentDescriptor instead')
const Component$json = {
  '1': 'Component',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'description', '3': 2, '5': 9, '8': {}, '10': 'description'},
    {
      '1': 'variants',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.definitions.ComponentVariant',
      '8': {},
      '10': 'variants'
    },
    {
      '1': 'properties',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.definitions.ComponentProperty',
      '8': {},
      '10': 'properties'
    },
  ],
};

/// Descriptor for `Component`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentDescriptor = $convert.base64Decode(
    'CglDb21wb25lbnQSEgoEbmFtZRgBKAlCAFIEbmFtZRIgCgtkZXNjcmlwdGlvbhgCKAlCAFILZG'
    'VzY3JpcHRpb24SOwoIdmFyaWFudHMYAyADKAsyHS5kZWZpbml0aW9ucy5Db21wb25lbnRWYXJp'
    'YW50QgBSCHZhcmlhbnRzEkAKCnByb3BlcnRpZXMYBCADKAsyHi5kZWZpbml0aW9ucy5Db21wb2'
    '5lbnRQcm9wZXJ0eUIAUgpwcm9wZXJ0aWVz');

@$core.Deprecated('Use componentVariantDescriptor instead')
const ComponentVariant$json = {
  '1': 'ComponentVariant',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'options', '3': 3, '4': 3, '5': 9, '8': {}, '10': 'options'},
  ],
};

/// Descriptor for `ComponentVariant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantDescriptor = $convert.base64Decode(
    'ChBDb21wb25lbnRWYXJpYW50EhIKBG5hbWUYASgJQgBSBG5hbWUSGgoHb3B0aW9ucxgDIAMoCU'
    'IAUgdvcHRpb25z');

@$core.Deprecated('Use componentPropertyDescriptor instead')
const ComponentProperty$json = {
  '1': 'ComponentProperty',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'defaultValue',
      '3': 2,
      '5': 11,
      '6': '.definitions.ComponentPropertyValue',
      '8': {},
      '10': 'defaultValue'
    },
  ],
};

/// Descriptor for `ComponentProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentPropertyDescriptor = $convert.base64Decode(
    'ChFDb21wb25lbnRQcm9wZXJ0eRISCgRuYW1lGAEoCUIAUgRuYW1lEkcKDGRlZmF1bHRWYWx1ZR'
    'gCKAsyIy5kZWZpbml0aW9ucy5Db21wb25lbnRQcm9wZXJ0eVZhbHVlQgBSDGRlZmF1bHRWYWx1'
    'ZQ==');

@$core.Deprecated('Use componentPropertyValueDescriptor instead')
const ComponentPropertyValue$json = {
  '1': 'ComponentPropertyValue',
  '2': [
    {
      '1': 'booleanValue',
      '3': 1,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'booleanValue'
    },
    {'1': 'stringValue', '3': 2, '5': 9, '8': {}, '9': 0, '10': 'stringValue'},
    {'1': 'numberValue', '3': 3, '5': 1, '8': {}, '9': 0, '10': 'numberValue'},
    {
      '1': 'variantValue',
      '3': 4,
      '5': 11,
      '6': '.definitions.ComponentVariantValue',
      '8': {},
      '9': 0,
      '10': 'variantValue'
    },
    {
      '1': 'instanceSwapValue',
      '3': 5,
      '5': 11,
      '6': '.definitions.ComponentInstance',
      '8': {},
      '9': 0,
      '10': 'instanceSwapValue'
    },
  ],
  '8': [
    {'1': 'value'},
  ],
};

/// Descriptor for `ComponentPropertyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentPropertyValueDescriptor = $convert.base64Decode(
    'ChZDb21wb25lbnRQcm9wZXJ0eVZhbHVlEiQKDGJvb2xlYW5WYWx1ZRgBKAhCAEgAUgxib29sZW'
    'FuVmFsdWUSIgoLc3RyaW5nVmFsdWUYAigJQgBIAFILc3RyaW5nVmFsdWUSIgoLbnVtYmVyVmFs'
    'dWUYAygBQgBIAFILbnVtYmVyVmFsdWUSSAoMdmFyaWFudFZhbHVlGAQoCzIiLmRlZmluaXRpb2'
    '5zLkNvbXBvbmVudFZhcmlhbnRWYWx1ZUIASABSDHZhcmlhbnRWYWx1ZRJOChFpbnN0YW5jZVN3'
    'YXBWYWx1ZRgFKAsyHi5kZWZpbml0aW9ucy5Db21wb25lbnRJbnN0YW5jZUIASABSEWluc3Rhbm'
    'NlU3dhcFZhbHVlQgcKBXZhbHVl');

@$core.Deprecated('Use componentVariantValueDescriptor instead')
const ComponentVariantValue$json = {
  '1': 'ComponentVariantValue',
  '2': [
    {'1': 'variantName', '3': 1, '5': 9, '8': {}, '10': 'variantName'},
    {'1': 'value', '3': 2, '5': 9, '8': {}, '10': 'value'},
    {'1': 'description', '3': 3, '5': 9, '8': {}, '10': 'description'},
  ],
};

/// Descriptor for `ComponentVariantValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantValueDescriptor = $convert.base64Decode(
    'ChVDb21wb25lbnRWYXJpYW50VmFsdWUSIAoLdmFyaWFudE5hbWUYASgJQgBSC3ZhcmlhbnROYW'
    '1lEhQKBXZhbHVlGAIoCUIAUgV2YWx1ZRIgCgtkZXNjcmlwdGlvbhgDKAlCAFILZGVzY3JpcHRp'
    'b24=');

@$core.Deprecated('Use componentInstanceDescriptor instead')
const ComponentInstance$json = {
  '1': 'ComponentInstance',
  '2': [
    {'1': 'componentName', '3': 1, '5': 9, '8': {}, '10': 'componentName'},
    {
      '1': 'properties',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.definitions.ComponentProperty',
      '8': {},
      '10': 'properties'
    },
  ],
};

/// Descriptor for `ComponentInstance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentInstanceDescriptor = $convert.base64Decode(
    'ChFDb21wb25lbnRJbnN0YW5jZRIkCg1jb21wb25lbnROYW1lGAEoCUIAUg1jb21wb25lbnROYW'
    '1lEkAKCnByb3BlcnRpZXMYAiADKAsyHi5kZWZpbml0aW9ucy5Db21wb25lbnRQcm9wZXJ0eUIA'
    'Ugpwcm9wZXJ0aWVz');
