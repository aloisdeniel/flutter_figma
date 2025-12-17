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
    {'1': 'COLOR_SPACE_SRGB', '2': 0},
    {'1': 'COLOR_SPACE_EXTENDED_SRGB', '2': 1},
    {'1': 'COLOR_SPACE_DISPLAY_P3', '2': 2},
  ],
};

/// Descriptor for `ColorSpace`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List colorSpaceDescriptor = $convert.base64Decode(
    'CgpDb2xvclNwYWNlEhQKEENPTE9SX1NQQUNFX1NSR0IQABIdChlDT0xPUl9TUEFDRV9FWFRFTk'
    'RFRF9TUkdCEAESGgoWQ09MT1JfU1BBQ0VfRElTUExBWV9QMxAC');

@$core.Deprecated('Use blendModeDescriptor instead')
const BlendMode$json = {
  '1': 'BlendMode',
  '2': [
    {'1': 'BLEND_MODE_PASS_THROUGH', '2': 0},
    {'1': 'BLEND_MODE_NORMAL', '2': 1},
    {'1': 'BLEND_MODE_DARKEN', '2': 2},
    {'1': 'BLEND_MODE_MULTIPLY', '2': 3},
    {'1': 'BLEND_MODE_LINEAR_BURN', '2': 4},
    {'1': 'BLEND_MODE_COLOR_BURN', '2': 5},
    {'1': 'BLEND_MODE_LIGHTEN', '2': 6},
    {'1': 'BLEND_MODE_SCREEN', '2': 7},
    {'1': 'BLEND_MODE_LINEAR_DODGE', '2': 8},
    {'1': 'BLEND_MODE_COLOR_DODGE', '2': 9},
    {'1': 'BLEND_MODE_OVERLAY', '2': 10},
    {'1': 'BLEND_MODE_SOFT_LIGHT', '2': 11},
    {'1': 'BLEND_MODE_HARD_LIGHT', '2': 12},
    {'1': 'BLEND_MODE_DIFFERENCE', '2': 13},
    {'1': 'BLEND_MODE_EXCLUSION', '2': 14},
    {'1': 'BLEND_MODE_HUE', '2': 15},
    {'1': 'BLEND_MODE_SATURATION', '2': 16},
    {'1': 'BLEND_MODE_COLOR', '2': 17},
    {'1': 'BLEND_MODE_LUMINOSITY', '2': 18},
  ],
};

/// Descriptor for `BlendMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blendModeDescriptor = $convert.base64Decode(
    'CglCbGVuZE1vZGUSGwoXQkxFTkRfTU9ERV9QQVNTX1RIUk9VR0gQABIVChFCTEVORF9NT0RFX0'
    '5PUk1BTBABEhUKEUJMRU5EX01PREVfREFSS0VOEAISFwoTQkxFTkRfTU9ERV9NVUxUSVBMWRAD'
    'EhoKFkJMRU5EX01PREVfTElORUFSX0JVUk4QBBIZChVCTEVORF9NT0RFX0NPTE9SX0JVUk4QBR'
    'IWChJCTEVORF9NT0RFX0xJR0hURU4QBhIVChFCTEVORF9NT0RFX1NDUkVFThAHEhsKF0JMRU5E'
    'X01PREVfTElORUFSX0RPREdFEAgSGgoWQkxFTkRfTU9ERV9DT0xPUl9ET0RHRRAJEhYKEkJMRU'
    '5EX01PREVfT1ZFUkxBWRAKEhkKFUJMRU5EX01PREVfU09GVF9MSUdIVBALEhkKFUJMRU5EX01P'
    'REVfSEFSRF9MSUdIVBAMEhkKFUJMRU5EX01PREVfRElGRkVSRU5DRRANEhgKFEJMRU5EX01PRE'
    'VfRVhDTFVTSU9OEA4SEgoOQkxFTkRfTU9ERV9IVUUQDxIZChVCTEVORF9NT0RFX1NBVFVSQVRJ'
    'T04QEBIUChBCTEVORF9NT0RFX0NPTE9SEBESGQoVQkxFTkRfTU9ERV9MVU1JTk9TSVRZEBI=');

@$core.Deprecated('Use maskTypeDescriptor instead')
const MaskType$json = {
  '1': 'MaskType',
  '2': [
    {'1': 'MASK_TYPE_ALPHA', '2': 0},
    {'1': 'MASK_TYPE_VECTOR', '2': 1},
    {'1': 'MASK_TYPE_LUMINANCE', '2': 2},
  ],
};

/// Descriptor for `MaskType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List maskTypeDescriptor = $convert.base64Decode(
    'CghNYXNrVHlwZRITCg9NQVNLX1RZUEVfQUxQSEEQABIUChBNQVNLX1RZUEVfVkVDVE9SEAESFw'
    'oTTUFTS19UWVBFX0xVTUlOQU5DRRAC');

@$core.Deprecated('Use constraintTypeDescriptor instead')
const ConstraintType$json = {
  '1': 'ConstraintType',
  '2': [
    {'1': 'CONSTRAINT_TYPE_MIN', '2': 0},
    {'1': 'CONSTRAINT_TYPE_CENTER', '2': 1},
    {'1': 'CONSTRAINT_TYPE_MAX', '2': 2},
    {'1': 'CONSTRAINT_TYPE_STRETCH', '2': 3},
    {'1': 'CONSTRAINT_TYPE_SCALE', '2': 4},
  ],
};

/// Descriptor for `ConstraintType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List constraintTypeDescriptor = $convert.base64Decode(
    'Cg5Db25zdHJhaW50VHlwZRIXChNDT05TVFJBSU5UX1RZUEVfTUlOEAASGgoWQ09OU1RSQUlOVF'
    '9UWVBFX0NFTlRFUhABEhcKE0NPTlNUUkFJTlRfVFlQRV9NQVgQAhIbChdDT05TVFJBSU5UX1RZ'
    'UEVfU1RSRVRDSBADEhkKFUNPTlNUUkFJTlRfVFlQRV9TQ0FMRRAE');

@$core.Deprecated('Use strokeCapDescriptor instead')
const StrokeCap$json = {
  '1': 'StrokeCap',
  '2': [
    {'1': 'STROKE_CAP_NONE', '2': 0},
    {'1': 'STROKE_CAP_ROUND', '2': 1},
    {'1': 'STROKE_CAP_SQUARE', '2': 2},
    {'1': 'STROKE_CAP_ARROW_LINES', '2': 3},
    {'1': 'STROKE_CAP_ARROW_EQUILATERAL', '2': 4},
    {'1': 'STROKE_CAP_DIAMOND_FILLED', '2': 5},
    {'1': 'STROKE_CAP_TRIANGLE_FILLED', '2': 6},
    {'1': 'STROKE_CAP_CIRCLE_FILLED', '2': 7},
  ],
};

/// Descriptor for `StrokeCap`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeCapDescriptor = $convert.base64Decode(
    'CglTdHJva2VDYXASEwoPU1RST0tFX0NBUF9OT05FEAASFAoQU1RST0tFX0NBUF9ST1VORBABEh'
    'UKEVNUUk9LRV9DQVBfU1FVQVJFEAISGgoWU1RST0tFX0NBUF9BUlJPV19MSU5FUxADEiAKHFNU'
    'Uk9LRV9DQVBfQVJST1dfRVFVSUxBVEVSQUwQBBIdChlTVFJPS0VfQ0FQX0RJQU1PTkRfRklMTE'
    'VEEAUSHgoaU1RST0tFX0NBUF9UUklBTkdMRV9GSUxMRUQQBhIcChhTVFJPS0VfQ0FQX0NJUkNM'
    'RV9GSUxMRUQQBw==');

@$core.Deprecated('Use strokeJoinDescriptor instead')
const StrokeJoin$json = {
  '1': 'StrokeJoin',
  '2': [
    {'1': 'STROKE_JOIN_MITER', '2': 0},
    {'1': 'STROKE_JOIN_BEVEL', '2': 1},
    {'1': 'STROKE_JOIN_ROUND', '2': 2},
  ],
};

/// Descriptor for `StrokeJoin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeJoinDescriptor = $convert.base64Decode(
    'CgpTdHJva2VKb2luEhUKEVNUUk9LRV9KT0lOX01JVEVSEAASFQoRU1RST0tFX0pPSU5fQkVWRU'
    'wQARIVChFTVFJPS0VfSk9JTl9ST1VORBAC');

@$core.Deprecated('Use strokeAlignDescriptor instead')
const StrokeAlign$json = {
  '1': 'StrokeAlign',
  '2': [
    {'1': 'STROKE_ALIGN_CENTER', '2': 0},
    {'1': 'STROKE_ALIGN_INSIDE', '2': 1},
    {'1': 'STROKE_ALIGN_OUTSIDE', '2': 2},
  ],
};

/// Descriptor for `StrokeAlign`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeAlignDescriptor = $convert.base64Decode(
    'CgtTdHJva2VBbGlnbhIXChNTVFJPS0VfQUxJR05fQ0VOVEVSEAASFwoTU1RST0tFX0FMSUdOX0'
    'lOU0lERRABEhgKFFNUUk9LRV9BTElHTl9PVVRTSURFEAI=');

@$core.Deprecated('Use handleMirroringDescriptor instead')
const HandleMirroring$json = {
  '1': 'HandleMirroring',
  '2': [
    {'1': 'HANDLE_MIRRORING_NONE', '2': 0},
    {'1': 'HANDLE_MIRRORING_ANGLE', '2': 1},
    {'1': 'HANDLE_MIRRORING_ANGLE_AND_LENGTH', '2': 2},
  ],
};

/// Descriptor for `HandleMirroring`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List handleMirroringDescriptor = $convert.base64Decode(
    'Cg9IYW5kbGVNaXJyb3JpbmcSGQoVSEFORExFX01JUlJPUklOR19OT05FEAASGgoWSEFORExFX0'
    '1JUlJPUklOR19BTkdMRRABEiUKIUhBTkRMRV9NSVJST1JJTkdfQU5HTEVfQU5EX0xFTkdUSBAC');

@$core.Deprecated('Use windingRuleDescriptor instead')
const WindingRule$json = {
  '1': 'WindingRule',
  '2': [
    {'1': 'WINDING_RULE_NONZERO', '2': 0},
    {'1': 'WINDING_RULE_EVENODD', '2': 1},
  ],
};

/// Descriptor for `WindingRule`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List windingRuleDescriptor = $convert.base64Decode(
    'CgtXaW5kaW5nUnVsZRIYChRXSU5ESU5HX1JVTEVfTk9OWkVSTxAAEhgKFFdJTkRJTkdfUlVMRV'
    '9FVkVOT0REEAE=');

@$core.Deprecated('Use connectorMagnetDescriptor instead')
const ConnectorMagnet$json = {
  '1': 'ConnectorMagnet',
  '2': [
    {'1': 'CONNECTOR_MAGNET_NONE', '2': 0},
    {'1': 'CONNECTOR_MAGNET_AUTO', '2': 1},
    {'1': 'CONNECTOR_MAGNET_TOP', '2': 2},
    {'1': 'CONNECTOR_MAGNET_LEFT', '2': 3},
    {'1': 'CONNECTOR_MAGNET_BOTTOM', '2': 4},
    {'1': 'CONNECTOR_MAGNET_RIGHT', '2': 5},
    {'1': 'CONNECTOR_MAGNET_CENTER', '2': 6},
  ],
};

/// Descriptor for `ConnectorMagnet`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectorMagnetDescriptor = $convert.base64Decode(
    'Cg9Db25uZWN0b3JNYWduZXQSGQoVQ09OTkVDVE9SX01BR05FVF9OT05FEAASGQoVQ09OTkVDVE'
    '9SX01BR05FVF9BVVRPEAESGAoUQ09OTkVDVE9SX01BR05FVF9UT1AQAhIZChVDT05ORUNUT1Jf'
    'TUFHTkVUX0xFRlQQAxIbChdDT05ORUNUT1JfTUFHTkVUX0JPVFRPTRAEEhoKFkNPTk5FQ1RPUl'
    '9NQUdORVRfUklHSFQQBRIbChdDT05ORUNUT1JfTUFHTkVUX0NFTlRFUhAG');

@$core.Deprecated('Use connectorStrokeCapDescriptor instead')
const ConnectorStrokeCap$json = {
  '1': 'ConnectorStrokeCap',
  '2': [
    {'1': 'CONNECTOR_STROKE_CAP_NONE', '2': 0},
    {'1': 'CONNECTOR_STROKE_CAP_ARROW_EQUILATERAL', '2': 1},
    {'1': 'CONNECTOR_STROKE_CAP_ARROW_LINES', '2': 2},
    {'1': 'CONNECTOR_STROKE_CAP_TRIANGLE_FILLED', '2': 3},
    {'1': 'CONNECTOR_STROKE_CAP_DIAMOND_FILLED', '2': 4},
    {'1': 'CONNECTOR_STROKE_CAP_CIRCLE_FILLED', '2': 5},
  ],
};

/// Descriptor for `ConnectorStrokeCap`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List connectorStrokeCapDescriptor = $convert.base64Decode(
    'ChJDb25uZWN0b3JTdHJva2VDYXASHQoZQ09OTkVDVE9SX1NUUk9LRV9DQVBfTk9ORRAAEioKJk'
    'NPTk5FQ1RPUl9TVFJPS0VfQ0FQX0FSUk9XX0VRVUlMQVRFUkFMEAESJAogQ09OTkVDVE9SX1NU'
    'Uk9LRV9DQVBfQVJST1dfTElORVMQAhIoCiRDT05ORUNUT1JfU1RST0tFX0NBUF9UUklBTkdMRV'
    '9GSUxMRUQQAxInCiNDT05ORUNUT1JfU1RST0tFX0NBUF9ESUFNT05EX0ZJTExFRBAEEiYKIkNP'
    'Tk5FQ1RPUl9TVFJPS0VfQ0FQX0NJUkNMRV9GSUxMRUQQBQ==');

@$core.Deprecated('Use scaleModeDescriptor instead')
const ScaleMode$json = {
  '1': 'ScaleMode',
  '2': [
    {'1': 'SCALE_MODE_FILL', '2': 0},
    {'1': 'SCALE_MODE_FIT', '2': 1},
    {'1': 'SCALE_MODE_CROP', '2': 2},
    {'1': 'SCALE_MODE_TILE', '2': 3},
  ],
};

/// Descriptor for `ScaleMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List scaleModeDescriptor = $convert.base64Decode(
    'CglTY2FsZU1vZGUSEwoPU0NBTEVfTU9ERV9GSUxMEAASEgoOU0NBTEVfTU9ERV9GSVQQARITCg'
    '9TQ0FMRV9NT0RFX0NST1AQAhITCg9TQ0FMRV9NT0RFX1RJTEUQAw==');

@$core.Deprecated('Use overflowDirectionDescriptor instead')
const OverflowDirection$json = {
  '1': 'OverflowDirection',
  '2': [
    {'1': 'OVERFLOW_DIRECTION_NONE', '2': 0},
    {'1': 'OVERFLOW_DIRECTION_HORIZONTAL', '2': 1},
    {'1': 'OVERFLOW_DIRECTION_VERTICAL', '2': 2},
    {'1': 'OVERFLOW_DIRECTION_BOTH', '2': 3},
  ],
};

/// Descriptor for `OverflowDirection`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List overflowDirectionDescriptor = $convert.base64Decode(
    'ChFPdmVyZmxvd0RpcmVjdGlvbhIbChdPVkVSRkxPV19ESVJFQ1RJT05fTk9ORRAAEiEKHU9WRV'
    'JGTE9XX0RJUkVDVElPTl9IT1JJWk9OVEFMEAESHwobT1ZFUkZMT1dfRElSRUNUSU9OX1ZFUlRJ'
    'Q0FMEAISGwoXT1ZFUkZMT1dfRElSRUNUSU9OX0JPVEgQAw==');

@$core.Deprecated('Use overlayPositionTypeDescriptor instead')
const OverlayPositionType$json = {
  '1': 'OverlayPositionType',
  '2': [
    {'1': 'OVERLAY_POSITION_CENTER', '2': 0},
    {'1': 'OVERLAY_POSITION_TOP_LEFT', '2': 1},
    {'1': 'OVERLAY_POSITION_TOP_CENTER', '2': 2},
    {'1': 'OVERLAY_POSITION_TOP_RIGHT', '2': 3},
    {'1': 'OVERLAY_POSITION_BOTTOM_LEFT', '2': 4},
    {'1': 'OVERLAY_POSITION_BOTTOM_CENTER', '2': 5},
    {'1': 'OVERLAY_POSITION_BOTTOM_RIGHT', '2': 6},
    {'1': 'OVERLAY_POSITION_MANUAL', '2': 7},
  ],
};

/// Descriptor for `OverlayPositionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List overlayPositionTypeDescriptor = $convert.base64Decode(
    'ChNPdmVybGF5UG9zaXRpb25UeXBlEhsKF09WRVJMQVlfUE9TSVRJT05fQ0VOVEVSEAASHQoZT1'
    'ZFUkxBWV9QT1NJVElPTl9UT1BfTEVGVBABEh8KG09WRVJMQVlfUE9TSVRJT05fVE9QX0NFTlRF'
    'UhACEh4KGk9WRVJMQVlfUE9TSVRJT05fVE9QX1JJR0hUEAMSIAocT1ZFUkxBWV9QT1NJVElPTl'
    '9CT1RUT01fTEVGVBAEEiIKHk9WRVJMQVlfUE9TSVRJT05fQk9UVE9NX0NFTlRFUhAFEiEKHU9W'
    'RVJMQVlfUE9TSVRJT05fQk9UVE9NX1JJR0hUEAYSGwoXT1ZFUkxBWV9QT1NJVElPTl9NQU5VQU'
    'wQBw==');

@$core.Deprecated('Use layoutModeDescriptor instead')
const LayoutMode$json = {
  '1': 'LayoutMode',
  '2': [
    {'1': 'LAYOUT_MODE_FREEFORM', '2': 0},
    {'1': 'LAYOUT_MODE_HORIZONTAL', '2': 1},
    {'1': 'LAYOUT_MODE_VERTICAL', '2': 2},
    {'1': 'LAYOUT_MODE_GRID', '2': 3},
  ],
};

/// Descriptor for `LayoutMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List layoutModeDescriptor = $convert.base64Decode(
    'CgpMYXlvdXRNb2RlEhgKFExBWU9VVF9NT0RFX0ZSRUVGT1JNEAASGgoWTEFZT1VUX01PREVfSE'
    '9SSVpPTlRBTBABEhgKFExBWU9VVF9NT0RFX1ZFUlRJQ0FMEAISFAoQTEFZT1VUX01PREVfR1JJ'
    'RBAD');

@$core.Deprecated('Use primaryAxisSizingModeDescriptor instead')
const PrimaryAxisSizingMode$json = {
  '1': 'PrimaryAxisSizingMode',
  '2': [
    {'1': 'PRIMARY_AXIS_SIZING_FIXED', '2': 0},
    {'1': 'PRIMARY_AXIS_SIZING_AUTO', '2': 1},
  ],
};

/// Descriptor for `PrimaryAxisSizingMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List primaryAxisSizingModeDescriptor = $convert.base64Decode(
    'ChVQcmltYXJ5QXhpc1NpemluZ01vZGUSHQoZUFJJTUFSWV9BWElTX1NJWklOR19GSVhFRBAAEh'
    'wKGFBSSU1BUllfQVhJU19TSVpJTkdfQVVUTxAB');

@$core.Deprecated('Use counterAxisSizingModeDescriptor instead')
const CounterAxisSizingMode$json = {
  '1': 'CounterAxisSizingMode',
  '2': [
    {'1': 'COUNTER_AXIS_SIZING_FIXED', '2': 0},
    {'1': 'COUNTER_AXIS_SIZING_AUTO', '2': 1},
  ],
};

/// Descriptor for `CounterAxisSizingMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List counterAxisSizingModeDescriptor = $convert.base64Decode(
    'ChVDb3VudGVyQXhpc1NpemluZ01vZGUSHQoZQ09VTlRFUl9BWElTX1NJWklOR19GSVhFRBAAEh'
    'wKGENPVU5URVJfQVhJU19TSVpJTkdfQVVUTxAB');

@$core.Deprecated('Use layoutWrapDescriptor instead')
const LayoutWrap$json = {
  '1': 'LayoutWrap',
  '2': [
    {'1': 'LAYOUT_WRAP_NO_WRAP', '2': 0},
    {'1': 'LAYOUT_WRAP_WRAP', '2': 1},
  ],
};

/// Descriptor for `LayoutWrap`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List layoutWrapDescriptor = $convert.base64Decode(
    'CgpMYXlvdXRXcmFwEhcKE0xBWU9VVF9XUkFQX05PX1dSQVAQABIUChBMQVlPVVRfV1JBUF9XUk'
    'FQEAE=');

@$core.Deprecated('Use layoutAlignDescriptor instead')
const LayoutAlign$json = {
  '1': 'LayoutAlign',
  '2': [
    {'1': 'LAYOUT_ALIGN_MIN', '2': 0},
    {'1': 'LAYOUT_ALIGN_CENTER', '2': 1},
    {'1': 'LAYOUT_ALIGN_MAX', '2': 2},
    {'1': 'LAYOUT_ALIGN_STRETCH', '2': 3},
    {'1': 'LAYOUT_ALIGN_SPACE_BETWEEN', '2': 4},
  ],
};

/// Descriptor for `LayoutAlign`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List layoutAlignDescriptor = $convert.base64Decode(
    'CgtMYXlvdXRBbGlnbhIUChBMQVlPVVRfQUxJR05fTUlOEAASFwoTTEFZT1VUX0FMSUdOX0NFTl'
    'RFUhABEhQKEExBWU9VVF9BTElHTl9NQVgQAhIYChRMQVlPVVRfQUxJR05fU1RSRVRDSBADEh4K'
    'GkxBWU9VVF9BTElHTl9TUEFDRV9CRVRXRUVOEAQ=');

@$core.Deprecated('Use childSizingModeDescriptor instead')
const ChildSizingMode$json = {
  '1': 'ChildSizingMode',
  '2': [
    {'1': 'CHILD_SIZING_FIXED', '2': 0},
    {'1': 'CHILD_SIZING_HUG', '2': 1},
  ],
};

/// Descriptor for `ChildSizingMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List childSizingModeDescriptor = $convert.base64Decode(
    'Cg9DaGlsZFNpemluZ01vZGUSFgoSQ0hJTERfU0laSU5HX0ZJWEVEEAASFAoQQ0hJTERfU0laSU'
    '5HX0hVRxAB');

@$core.Deprecated('Use gridTrackSizingModeDescriptor instead')
const GridTrackSizingMode$json = {
  '1': 'GridTrackSizingMode',
  '2': [
    {'1': 'GRID_TRACK_SIZING_AUTO', '2': 0},
    {'1': 'GRID_TRACK_SIZING_FIXED', '2': 1},
  ],
};

/// Descriptor for `GridTrackSizingMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gridTrackSizingModeDescriptor = $convert.base64Decode(
    'ChNHcmlkVHJhY2tTaXppbmdNb2RlEhoKFkdSSURfVFJBQ0tfU0laSU5HX0FVVE8QABIbChdHUk'
    'lEX1RSQUNLX1NJWklOR19GSVhFRBAB');

@$core.Deprecated('Use positioningModeDescriptor instead')
const PositioningMode$json = {
  '1': 'PositioningMode',
  '2': [
    {'1': 'POSITIONING_MODE_AUTO', '2': 0},
    {'1': 'POSITIONING_MODE_ABSOLUTE', '2': 1},
  ],
};

/// Descriptor for `PositioningMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List positioningModeDescriptor = $convert.base64Decode(
    'Cg9Qb3NpdGlvbmluZ01vZGUSGQoVUE9TSVRJT05JTkdfTU9ERV9BVVRPEAASHQoZUE9TSVRJT0'
    '5JTkdfTU9ERV9BQlNPTFVURRAB');

@$core.Deprecated('Use textAlignHorizontalDescriptor instead')
const TextAlignHorizontal$json = {
  '1': 'TextAlignHorizontal',
  '2': [
    {'1': 'TEXT_ALIGN_HORIZONTAL_LEFT', '2': 0},
    {'1': 'TEXT_ALIGN_HORIZONTAL_CENTER', '2': 1},
    {'1': 'TEXT_ALIGN_HORIZONTAL_RIGHT', '2': 2},
    {'1': 'TEXT_ALIGN_HORIZONTAL_JUSTIFIED', '2': 3},
  ],
};

/// Descriptor for `TextAlignHorizontal`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textAlignHorizontalDescriptor = $convert.base64Decode(
    'ChNUZXh0QWxpZ25Ib3Jpem9udGFsEh4KGlRFWFRfQUxJR05fSE9SSVpPTlRBTF9MRUZUEAASIA'
    'ocVEVYVF9BTElHTl9IT1JJWk9OVEFMX0NFTlRFUhABEh8KG1RFWFRfQUxJR05fSE9SSVpPTlRB'
    'TF9SSUdIVBACEiMKH1RFWFRfQUxJR05fSE9SSVpPTlRBTF9KVVNUSUZJRUQQAw==');

@$core.Deprecated('Use textAlignVerticalDescriptor instead')
const TextAlignVertical$json = {
  '1': 'TextAlignVertical',
  '2': [
    {'1': 'TEXT_ALIGN_VERTICAL_TOP', '2': 0},
    {'1': 'TEXT_ALIGN_VERTICAL_CENTER', '2': 1},
    {'1': 'TEXT_ALIGN_VERTICAL_BOTTOM', '2': 2},
  ],
};

/// Descriptor for `TextAlignVertical`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textAlignVerticalDescriptor = $convert.base64Decode(
    'ChFUZXh0QWxpZ25WZXJ0aWNhbBIbChdURVhUX0FMSUdOX1ZFUlRJQ0FMX1RPUBAAEh4KGlRFWF'
    'RfQUxJR05fVkVSVElDQUxfQ0VOVEVSEAESHgoaVEVYVF9BTElHTl9WRVJUSUNBTF9CT1RUT00Q'
    'Ag==');

@$core.Deprecated('Use textCaseDescriptor instead')
const TextCase$json = {
  '1': 'TextCase',
  '2': [
    {'1': 'TEXT_CASE_ORIGINAL', '2': 0},
    {'1': 'TEXT_CASE_UPPER', '2': 1},
    {'1': 'TEXT_CASE_LOWER', '2': 2},
    {'1': 'TEXT_CASE_TITLE', '2': 3},
    {'1': 'TEXT_CASE_SMALL_CAPS', '2': 4},
    {'1': 'TEXT_CASE_SMALL_CAPS_FORCED', '2': 5},
  ],
};

/// Descriptor for `TextCase`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textCaseDescriptor = $convert.base64Decode(
    'CghUZXh0Q2FzZRIWChJURVhUX0NBU0VfT1JJR0lOQUwQABITCg9URVhUX0NBU0VfVVBQRVIQAR'
    'ITCg9URVhUX0NBU0VfTE9XRVIQAhITCg9URVhUX0NBU0VfVElUTEUQAxIYChRURVhUX0NBU0Vf'
    'U01BTExfQ0FQUxAEEh8KG1RFWFRfQ0FTRV9TTUFMTF9DQVBTX0ZPUkNFRBAF');

@$core.Deprecated('Use textDecorationDescriptor instead')
const TextDecoration$json = {
  '1': 'TextDecoration',
  '2': [
    {'1': 'TEXT_DECORATION_NONE', '2': 0},
    {'1': 'TEXT_DECORATION_UNDERLINE', '2': 1},
    {'1': 'TEXT_DECORATION_STRIKETHROUGH', '2': 2},
  ],
};

/// Descriptor for `TextDecoration`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textDecorationDescriptor = $convert.base64Decode(
    'Cg5UZXh0RGVjb3JhdGlvbhIYChRURVhUX0RFQ09SQVRJT05fTk9ORRAAEh0KGVRFWFRfREVDT1'
    'JBVElPTl9VTkRFUkxJTkUQARIhCh1URVhUX0RFQ09SQVRJT05fU1RSSUtFVEhST1VHSBAC');

@$core.Deprecated('Use textDecorationStyleDescriptor instead')
const TextDecorationStyle$json = {
  '1': 'TextDecorationStyle',
  '2': [
    {'1': 'TEXT_DECORATION_STYLE_SOLID', '2': 0},
    {'1': 'TEXT_DECORATION_STYLE_WAVY', '2': 1},
    {'1': 'TEXT_DECORATION_STYLE_DOTTED', '2': 2},
  ],
};

/// Descriptor for `TextDecorationStyle`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textDecorationStyleDescriptor = $convert.base64Decode(
    'ChNUZXh0RGVjb3JhdGlvblN0eWxlEh8KG1RFWFRfREVDT1JBVElPTl9TVFlMRV9TT0xJRBAAEh'
    '4KGlRFWFRfREVDT1JBVElPTl9TVFlMRV9XQVZZEAESIAocVEVYVF9ERUNPUkFUSU9OX1NUWUxF'
    'X0RPVFRFRBAC');

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

@$core.Deprecated('Use leadingTrimDescriptor instead')
const LeadingTrim$json = {
  '1': 'LeadingTrim',
  '2': [
    {'1': 'LEADING_TRIM_CAP_HEIGHT', '2': 0},
    {'1': 'LEADING_TRIM_NONE', '2': 1},
  ],
};

/// Descriptor for `LeadingTrim`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List leadingTrimDescriptor = $convert.base64Decode(
    'CgtMZWFkaW5nVHJpbRIbChdMRUFESU5HX1RSSU1fQ0FQX0hFSUdIVBAAEhUKEUxFQURJTkdfVF'
    'JJTV9OT05FEAE=');

@$core.Deprecated('Use textListTypeDescriptor instead')
const TextListType$json = {
  '1': 'TextListType',
  '2': [
    {'1': 'TEXT_LIST_ORDERED', '2': 0},
    {'1': 'TEXT_LIST_UNORDERED', '2': 1},
    {'1': 'TEXT_LIST_NONE', '2': 2},
  ],
};

/// Descriptor for `TextListType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List textListTypeDescriptor = $convert.base64Decode(
    'CgxUZXh0TGlzdFR5cGUSFQoRVEVYVF9MSVNUX09SREVSRUQQABIXChNURVhUX0xJU1RfVU5PUk'
    'RFUkVEEAESEgoOVEVYVF9MSVNUX05PTkUQAg==');

@$core.Deprecated('Use hyperlinkTypeDescriptor instead')
const HyperlinkType$json = {
  '1': 'HyperlinkType',
  '2': [
    {'1': 'HYPERLINK_URL', '2': 0},
    {'1': 'HYPERLINK_NODE', '2': 1},
  ],
};

/// Descriptor for `HyperlinkType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List hyperlinkTypeDescriptor = $convert.base64Decode(
    'Cg1IeXBlcmxpbmtUeXBlEhEKDUhZUEVSTElOS19VUkwQABISCg5IWVBFUkxJTktfTk9ERRAB');

@$core.Deprecated('Use patternTileTypeDescriptor instead')
const PatternTileType$json = {
  '1': 'PatternTileType',
  '2': [
    {'1': 'PATTERN_TILE_RECTANGULAR', '2': 0},
    {'1': 'PATTERN_TILE_HORIZONTAL_HEXAGONAL', '2': 1},
    {'1': 'PATTERN_TILE_VERTICAL_HEXAGONAL', '2': 2},
  ],
};

/// Descriptor for `PatternTileType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List patternTileTypeDescriptor = $convert.base64Decode(
    'Cg9QYXR0ZXJuVGlsZVR5cGUSHAoYUEFUVEVSTl9USUxFX1JFQ1RBTkdVTEFSEAASJQohUEFUVE'
    'VSTl9USUxFX0hPUklaT05UQUxfSEVYQUdPTkFMEAESIwofUEFUVEVSTl9USUxFX1ZFUlRJQ0FM'
    'X0hFWEFHT05BTBAC');

@$core.Deprecated('Use patternHorizontalAlignmentDescriptor instead')
const PatternHorizontalAlignment$json = {
  '1': 'PatternHorizontalAlignment',
  '2': [
    {'1': 'PATTERN_ALIGN_START', '2': 0},
    {'1': 'PATTERN_ALIGN_CENTER', '2': 1},
    {'1': 'PATTERN_ALIGN_END', '2': 2},
  ],
};

/// Descriptor for `PatternHorizontalAlignment`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List patternHorizontalAlignmentDescriptor =
    $convert.base64Decode(
        'ChpQYXR0ZXJuSG9yaXpvbnRhbEFsaWdubWVudBIXChNQQVRURVJOX0FMSUdOX1NUQVJUEAASGA'
        'oUUEFUVEVSTl9BTElHTl9DRU5URVIQARIVChFQQVRURVJOX0FMSUdOX0VORBAC');

@$core.Deprecated('Use blurTypeDescriptor instead')
const BlurType$json = {
  '1': 'BlurType',
  '2': [
    {'1': 'BLUR_TYPE_LAYER', '2': 0},
    {'1': 'BLUR_TYPE_BACKGROUND', '2': 1},
  ],
};

/// Descriptor for `BlurType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blurTypeDescriptor = $convert.base64Decode(
    'CghCbHVyVHlwZRITCg9CTFVSX1RZUEVfTEFZRVIQABIYChRCTFVSX1RZUEVfQkFDS0dST1VORB'
    'AB');

@$core.Deprecated('Use labelVariableTypeDescriptor instead')
const LabelVariableType$json = {
  '1': 'LabelVariableType',
  '2': [
    {'1': 'LABEL_VARIABLE_STRING', '2': 0},
    {'1': 'LABEL_VARIABLE_NUMBER', '2': 1},
  ],
};

/// Descriptor for `LabelVariableType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List labelVariableTypeDescriptor = $convert.base64Decode(
    'ChFMYWJlbFZhcmlhYmxlVHlwZRIZChVMQUJFTF9WQVJJQUJMRV9TVFJJTkcQABIZChVMQUJFTF'
    '9WQVJJQUJMRV9OVU1CRVIQAQ==');

@$core.Deprecated('Use labelStyleDescriptor instead')
const LabelStyle$json = {
  '1': 'LabelStyle',
  '2': [
    {'1': 'LABEL_STYLE_NONE', '2': 0},
    {'1': 'LABEL_STYLE_BOLD', '2': 1},
    {'1': 'LABEL_STYLE_ITALIC', '2': 2},
    {'1': 'LABEL_STYLE_UNDERLINED', '2': 3},
  ],
};

/// Descriptor for `LabelStyle`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List labelStyleDescriptor = $convert.base64Decode(
    'CgpMYWJlbFN0eWxlEhQKEExBQkVMX1NUWUxFX05PTkUQABIUChBMQUJFTF9TVFlMRV9CT0xEEA'
    'ESFgoSTEFCRUxfU1RZTEVfSVRBTElDEAISGgoWTEFCRUxfU1RZTEVfVU5ERVJMSU5FRBAD');

@$core.Deprecated('Use booleanOperationDescriptor instead')
const BooleanOperation$json = {
  '1': 'BooleanOperation',
  '2': [
    {'1': 'BOOLEAN_OPERATION_UNION', '2': 0},
    {'1': 'BOOLEAN_OPERATION_INTERSECT', '2': 1},
    {'1': 'BOOLEAN_OPERATION_SUBTRACT', '2': 2},
    {'1': 'BOOLEAN_OPERATION_EXCLUDE', '2': 3},
  ],
};

/// Descriptor for `BooleanOperation`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List booleanOperationDescriptor = $convert.base64Decode(
    'ChBCb29sZWFuT3BlcmF0aW9uEhsKF0JPT0xFQU5fT1BFUkFUSU9OX1VOSU9OEAASHwobQk9PTE'
    'VBTl9PUEVSQVRJT05fSU5URVJTRUNUEAESHgoaQk9PTEVBTl9PUEVSQVRJT05fU1VCVFJBQ1QQ'
    'AhIdChlCT09MRUFOX09QRVJBVElPTl9FWENMVURFEAM=');

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
      '1': 'version',
      '3': 4,
      '5': 11,
      '6': '.binui.Version',
      '8': {},
      '10': 'version'
    },
    {
      '1': 'variables',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.binui.VariableCollection',
      '8': {},
      '10': 'variables'
    },
    {
      '1': 'components',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.binui.Component',
      '8': {},
      '10': 'components'
    },
  ],
};

/// Descriptor for `Library`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List libraryDescriptor = $convert.base64Decode(
    'CgdMaWJyYXJ5Eg4KAmlkGAEoBUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEiYKDWRvY3VtZW'
    '50YXRpb24YAyABKAlCAFINZG9jdW1lbnRhdGlvbhIoCgd2ZXJzaW9uGAQoCzIOLmJpbnVpLlZl'
    'cnNpb25CAFIHdmVyc2lvbhI5Cgl2YXJpYWJsZXMYBSADKAsyGS5iaW51aS5WYXJpYWJsZUNvbG'
    'xlY3Rpb25CAFIJdmFyaWFibGVzEjIKCmNvbXBvbmVudHMYBiADKAsyEC5iaW51aS5Db21wb25l'
    'bnRCAFIKY29tcG9uZW50cw==');

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

@$core.Deprecated('Use componentPropertyDescriptor instead')
const ComponentProperty$json = {
  '1': 'ComponentProperty',
  '2': [
    {'1': 'componentId', '3': 1, '5': 5, '8': {}, '10': 'componentId'},
    {'1': 'id', '3': 2, '5': 5, '8': {}, '10': 'id'},
    {'1': 'name', '3': 3, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'documentation',
      '3': 4,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'documentation'
    },
    {
      '1': 'defaultValue',
      '3': 5,
      '5': 11,
      '6': '.binui.Value',
      '8': {},
      '10': 'defaultValue'
    },
  ],
};

/// Descriptor for `ComponentProperty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentPropertyDescriptor = $convert.base64Decode(
    'ChFDb21wb25lbnRQcm9wZXJ0eRIgCgtjb21wb25lbnRJZBgBKAVCAFILY29tcG9uZW50SWQSDg'
    'oCaWQYAigFQgBSAmlkEhIKBG5hbWUYAygJQgBSBG5hbWUSJgoNZG9jdW1lbnRhdGlvbhgEIAEo'
    'CUIAUg1kb2N1bWVudGF0aW9uEjAKDGRlZmF1bHRWYWx1ZRgFKAsyDC5iaW51aS5WYWx1ZUIAUg'
    'xkZWZhdWx0VmFsdWU=');

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
    {'1': 'componentId', '3': 1, '5': 5, '8': {}, '10': 'componentId'},
    {'1': 'variantId', '3': 2, '5': 5, '8': {}, '10': 'variantId'},
    {'1': 'id', '3': 3, '5': 5, '8': {}, '10': 'id'},
  ],
};

/// Descriptor for `ComponentVariantValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentVariantValueDescriptor = $convert.base64Decode(
    'ChVDb21wb25lbnRWYXJpYW50VmFsdWUSIAoLY29tcG9uZW50SWQYASgFQgBSC2NvbXBvbmVudE'
    'lkEhwKCXZhcmlhbnRJZBgCKAVCAFIJdmFyaWFudElkEg4KAmlkGAMoBUIAUgJpZA==');

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
      '6': '.binui.CornerRadius',
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
      '1': 'transform',
      '3': 17,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '9': 0,
      '10': 'transform'
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
    'bnVpLkdyYWRpZW50QgBIAFIIZ3JhZGllbnQSJAoFbGFiZWwYCygLMgwuYmludWkuTGFiZWxCAE'
    'gAUgVsYWJlbBInCgZvZmZzZXQYDCgLMg0uYmludWkuT2Zmc2V0QgBIAFIGb2Zmc2V0EicKBnJh'
    'ZGl1cxgNKAsyDS5iaW51aS5SYWRpdXNCAEgAUgZyYWRpdXMSOQoMYm9yZGVyUmFkaXVzGA4oCz'
    'ITLmJpbnVpLkNvcm5lclJhZGl1c0IASABSDGJvcmRlclJhZGl1cxIhCgRyZWN0GA8oCzILLmJp'
    'bnVpLlJlY3RCAEgAUgRyZWN0EjAKCXRleHRTdHlsZRgQKAsyEC5iaW51aS5UZXh0U3R5bGVCAE'
    'gAUgl0ZXh0U3R5bGUSMAoJdHJhbnNmb3JtGBEoCzIQLmJpbnVpLlRyYW5zZm9ybUIASABSCXRy'
    'YW5zZm9ybRI5Cgx2YXJpYW50VmFsdWUYEigLMhMuYmludWkuVmFyaWFudFZhbHVlQgBIAFIMdm'
    'FyaWFudFZhbHVlEj8KDnZlY3RvckdyYXBoaWNzGBMoCzIVLmJpbnVpLlZlY3RvckdyYXBoaWNz'
    'QgBIAFIOdmVjdG9yR3JhcGhpY3MSKgoHdmVyc2lvbhgUKAsyDi5iaW51aS5WZXJzaW9uQgBIAF'
    'IHdmVyc2lvbhIzCgp2aXN1YWxOb2RlGBUoCzIRLmJpbnVpLlZpc3VhbE5vZGVCAEgAUgp2aXN1'
    'YWxOb2RlQgYKBHR5cGU=');

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
    {'1': 'componentId', '3': 1, '5': 5, '8': {}, '10': 'componentId'},
    {'1': 'propertyId', '3': 2, '5': 5, '8': {}, '10': 'propertyId'},
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

/// Descriptor for `PropertyAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List propertyAliasDescriptor = $convert.base64Decode(
    'Cg1Qcm9wZXJ0eUFsaWFzEiAKC2NvbXBvbmVudElkGAEoBUIAUgtjb21wb25lbnRJZBIeCgpwcm'
    '9wZXJ0eUlkGAIoBUIAUgpwcm9wZXJ0eUlkEjAKDGRlZmF1bHRWYWx1ZRgDKAsyDC5iaW51aS5W'
    'YWx1ZUIAUgxkZWZhdWx0VmFsdWU=');

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

@$core.Deprecated('Use edgeInsetsDescriptor instead')
const EdgeInsets$json = {
  '1': 'EdgeInsets',
  '2': [
    {'1': 'left', '3': 1, '5': 1, '8': {}, '10': 'left'},
    {'1': 'top', '3': 2, '5': 1, '8': {}, '10': 'top'},
    {'1': 'right', '3': 3, '5': 1, '8': {}, '10': 'right'},
    {'1': 'bottom', '3': 4, '5': 1, '8': {}, '10': 'bottom'},
  ],
};

/// Descriptor for `EdgeInsets`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgeInsetsDescriptor = $convert.base64Decode(
    'CgpFZGdlSW5zZXRzEhIKBGxlZnQYASgBQgBSBGxlZnQSEAoDdG9wGAIoAUIAUgN0b3ASFAoFcm'
    'lnaHQYAygBQgBSBXJpZ2h0EhYKBmJvdHRvbRgEKAFCAFIGYm90dG9t');

@$core.Deprecated('Use transformDescriptor instead')
const Transform$json = {
  '1': 'Transform',
  '2': [
    {'1': 'm00', '3': 1, '5': 1, '8': {}, '10': 'm00'},
    {'1': 'm01', '3': 2, '5': 1, '8': {}, '10': 'm01'},
    {'1': 'm02', '3': 3, '5': 1, '8': {}, '10': 'm02'},
    {'1': 'm10', '3': 4, '5': 1, '8': {}, '10': 'm10'},
    {'1': 'm11', '3': 5, '5': 1, '8': {}, '10': 'm11'},
    {'1': 'm12', '3': 6, '5': 1, '8': {}, '10': 'm12'},
  ],
};

/// Descriptor for `Transform`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformDescriptor = $convert.base64Decode(
    'CglUcmFuc2Zvcm0SEAoDbTAwGAEoAUIAUgNtMDASEAoDbTAxGAIoAUIAUgNtMDESEAoDbTAyGA'
    'MoAUIAUgNtMDISEAoDbTEwGAQoAUIAUgNtMTASEAoDbTExGAUoAUIAUgNtMTESEAoDbTEyGAYo'
    'AUIAUgNtMTI=');

@$core.Deprecated('Use arcDataDescriptor instead')
const ArcData$json = {
  '1': 'ArcData',
  '2': [
    {'1': 'startingAngle', '3': 1, '5': 1, '8': {}, '10': 'startingAngle'},
    {'1': 'endingAngle', '3': 2, '5': 1, '8': {}, '10': 'endingAngle'},
    {'1': 'innerRadius', '3': 3, '5': 1, '8': {}, '10': 'innerRadius'},
  ],
};

/// Descriptor for `ArcData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List arcDataDescriptor = $convert.base64Decode(
    'CgdBcmNEYXRhEiQKDXN0YXJ0aW5nQW5nbGUYASgBQgBSDXN0YXJ0aW5nQW5nbGUSIAoLZW5kaW'
    '5nQW5nbGUYAigBQgBSC2VuZGluZ0FuZ2xlEiAKC2lubmVyUmFkaXVzGAMoAUIAUgtpbm5lclJh'
    'ZGl1cw==');

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

@$core.Deprecated('Use borderSideDescriptor instead')
const BorderSide$json = {
  '1': 'BorderSide',
  '2': [
    {'1': 'width', '3': 1, '5': 1, '8': {}, '10': 'width'},
    {'1': 'strokeAlign', '3': 2, '5': 1, '8': {}, '10': 'strokeAlign'},
  ],
};

/// Descriptor for `BorderSide`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List borderSideDescriptor = $convert.base64Decode(
    'CgpCb3JkZXJTaWRlEhQKBXdpZHRoGAEoAUIAUgV3aWR0aBIgCgtzdHJva2VBbGlnbhgCKAFCAF'
    'ILc3Ryb2tlQWxpZ24=');

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
      '1': 'linearGradient',
      '3': 2,
      '5': 11,
      '6': '.binui.LinearGradientPaint',
      '8': {},
      '9': 0,
      '10': 'linearGradient'
    },
    {
      '1': 'radialGradient',
      '3': 3,
      '5': 11,
      '6': '.binui.RadialGradientPaint',
      '8': {},
      '9': 0,
      '10': 'radialGradient'
    },
    {
      '1': 'angularGradient',
      '3': 4,
      '5': 11,
      '6': '.binui.AngularGradientPaint',
      '8': {},
      '9': 0,
      '10': 'angularGradient'
    },
    {
      '1': 'diamondGradient',
      '3': 5,
      '5': 11,
      '6': '.binui.DiamondGradientPaint',
      '8': {},
      '9': 0,
      '10': 'diamondGradient'
    },
    {
      '1': 'image',
      '3': 6,
      '5': 11,
      '6': '.binui.ImagePaint',
      '8': {},
      '9': 0,
      '10': 'image'
    },
    {
      '1': 'video',
      '3': 7,
      '5': 11,
      '6': '.binui.VideoPaint',
      '8': {},
      '9': 0,
      '10': 'video'
    },
    {
      '1': 'pattern',
      '3': 8,
      '5': 11,
      '6': '.binui.PatternPaint',
      '8': {},
      '9': 0,
      '10': 'pattern'
    },
    {'1': 'visible', '3': 10, '5': 8, '8': {}, '10': 'visible'},
    {'1': 'opacity', '3': 11, '5': 1, '8': {}, '10': 'opacity'},
    {
      '1': 'blendMode',
      '3': 12,
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
    'CgVQYWludBIpCgVzb2xpZBgBKAsyES5iaW51aS5Tb2xpZFBhaW50QgBIAFIFc29saWQSRAoObG'
    'luZWFyR3JhZGllbnQYAigLMhouYmludWkuTGluZWFyR3JhZGllbnRQYWludEIASABSDmxpbmVh'
    'ckdyYWRpZW50EkQKDnJhZGlhbEdyYWRpZW50GAMoCzIaLmJpbnVpLlJhZGlhbEdyYWRpZW50UG'
    'FpbnRCAEgAUg5yYWRpYWxHcmFkaWVudBJHCg9hbmd1bGFyR3JhZGllbnQYBCgLMhsuYmludWku'
    'QW5ndWxhckdyYWRpZW50UGFpbnRCAEgAUg9hbmd1bGFyR3JhZGllbnQSRwoPZGlhbW9uZEdyYW'
    'RpZW50GAUoCzIbLmJpbnVpLkRpYW1vbmRHcmFkaWVudFBhaW50QgBIAFIPZGlhbW9uZEdyYWRp'
    'ZW50EikKBWltYWdlGAYoCzIRLmJpbnVpLkltYWdlUGFpbnRCAEgAUgVpbWFnZRIpCgV2aWRlbx'
    'gHKAsyES5iaW51aS5WaWRlb1BhaW50QgBIAFIFdmlkZW8SLwoHcGF0dGVybhgIKAsyEy5iaW51'
    'aS5QYXR0ZXJuUGFpbnRCAEgAUgdwYXR0ZXJuEhgKB3Zpc2libGUYCigIQgBSB3Zpc2libGUSGA'
    'oHb3BhY2l0eRgLKAFCAFIHb3BhY2l0eRIuCglibGVuZE1vZGUYDCgOMhAuYmludWkuQmxlbmRN'
    'b2RlQgBSCWJsZW5kTW9kZUIGCgR0eXBl');

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

@$core.Deprecated('Use linearGradientPaintDescriptor instead')
const LinearGradientPaint$json = {
  '1': 'LinearGradientPaint',
  '2': [
    {
      '1': 'gradientTransform',
      '3': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'gradientTransform'
    },
    {
      '1': 'gradientStops',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.ColorStop',
      '8': {},
      '10': 'gradientStops'
    },
  ],
};

/// Descriptor for `LinearGradientPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linearGradientPaintDescriptor = $convert.base64Decode(
    'ChNMaW5lYXJHcmFkaWVudFBhaW50Ej4KEWdyYWRpZW50VHJhbnNmb3JtGAEoCzIQLmJpbnVpLl'
    'RyYW5zZm9ybUIAUhFncmFkaWVudFRyYW5zZm9ybRI4Cg1ncmFkaWVudFN0b3BzGAIgAygLMhAu'
    'YmludWkuQ29sb3JTdG9wQgBSDWdyYWRpZW50U3RvcHM=');

@$core.Deprecated('Use radialGradientPaintDescriptor instead')
const RadialGradientPaint$json = {
  '1': 'RadialGradientPaint',
  '2': [
    {
      '1': 'gradientTransform',
      '3': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'gradientTransform'
    },
    {
      '1': 'gradientStops',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.ColorStop',
      '8': {},
      '10': 'gradientStops'
    },
  ],
};

/// Descriptor for `RadialGradientPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List radialGradientPaintDescriptor = $convert.base64Decode(
    'ChNSYWRpYWxHcmFkaWVudFBhaW50Ej4KEWdyYWRpZW50VHJhbnNmb3JtGAEoCzIQLmJpbnVpLl'
    'RyYW5zZm9ybUIAUhFncmFkaWVudFRyYW5zZm9ybRI4Cg1ncmFkaWVudFN0b3BzGAIgAygLMhAu'
    'YmludWkuQ29sb3JTdG9wQgBSDWdyYWRpZW50U3RvcHM=');

@$core.Deprecated('Use angularGradientPaintDescriptor instead')
const AngularGradientPaint$json = {
  '1': 'AngularGradientPaint',
  '2': [
    {
      '1': 'gradientTransform',
      '3': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'gradientTransform'
    },
    {
      '1': 'gradientStops',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.ColorStop',
      '8': {},
      '10': 'gradientStops'
    },
  ],
};

/// Descriptor for `AngularGradientPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List angularGradientPaintDescriptor = $convert.base64Decode(
    'ChRBbmd1bGFyR3JhZGllbnRQYWludBI+ChFncmFkaWVudFRyYW5zZm9ybRgBKAsyEC5iaW51aS'
    '5UcmFuc2Zvcm1CAFIRZ3JhZGllbnRUcmFuc2Zvcm0SOAoNZ3JhZGllbnRTdG9wcxgCIAMoCzIQ'
    'LmJpbnVpLkNvbG9yU3RvcEIAUg1ncmFkaWVudFN0b3Bz');

@$core.Deprecated('Use diamondGradientPaintDescriptor instead')
const DiamondGradientPaint$json = {
  '1': 'DiamondGradientPaint',
  '2': [
    {
      '1': 'gradientTransform',
      '3': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'gradientTransform'
    },
    {
      '1': 'gradientStops',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.ColorStop',
      '8': {},
      '10': 'gradientStops'
    },
  ],
};

/// Descriptor for `DiamondGradientPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List diamondGradientPaintDescriptor = $convert.base64Decode(
    'ChREaWFtb25kR3JhZGllbnRQYWludBI+ChFncmFkaWVudFRyYW5zZm9ybRgBKAsyEC5iaW51aS'
    '5UcmFuc2Zvcm1CAFIRZ3JhZGllbnRUcmFuc2Zvcm0SOAoNZ3JhZGllbnRTdG9wcxgCIAMoCzIQ'
    'LmJpbnVpLkNvbG9yU3RvcEIAUg1ncmFkaWVudFN0b3Bz');

@$core.Deprecated('Use imageFiltersDescriptor instead')
const ImageFilters$json = {
  '1': 'ImageFilters',
  '2': [
    {'1': 'exposure', '3': 1, '5': 1, '8': {}, '10': 'exposure'},
    {'1': 'contrast', '3': 2, '5': 1, '8': {}, '10': 'contrast'},
    {'1': 'saturation', '3': 3, '5': 1, '8': {}, '10': 'saturation'},
    {'1': 'temperature', '3': 4, '5': 1, '8': {}, '10': 'temperature'},
    {'1': 'tint', '3': 5, '5': 1, '8': {}, '10': 'tint'},
    {'1': 'highlights', '3': 6, '5': 1, '8': {}, '10': 'highlights'},
    {'1': 'shadows', '3': 7, '5': 1, '8': {}, '10': 'shadows'},
  ],
};

/// Descriptor for `ImageFilters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageFiltersDescriptor = $convert.base64Decode(
    'CgxJbWFnZUZpbHRlcnMSGgoIZXhwb3N1cmUYASgBQgBSCGV4cG9zdXJlEhoKCGNvbnRyYXN0GA'
    'IoAUIAUghjb250cmFzdBIeCgpzYXR1cmF0aW9uGAMoAUIAUgpzYXR1cmF0aW9uEiAKC3RlbXBl'
    'cmF0dXJlGAQoAUIAUgt0ZW1wZXJhdHVyZRISCgR0aW50GAUoAUIAUgR0aW50Eh4KCmhpZ2hsaW'
    'dodHMYBigBQgBSCmhpZ2hsaWdodHMSGAoHc2hhZG93cxgHKAFCAFIHc2hhZG93cw==');

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
      '6': '.binui.Transform',
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
    {
      '1': 'filters',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.binui.ImageFilters',
      '8': {},
      '10': 'filters'
    },
  ],
};

/// Descriptor for `ImagePaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imagePaintDescriptor = $convert.base64Decode(
    'CgpJbWFnZVBhaW50Ei4KCXNjYWxlTW9kZRgBKA4yEC5iaW51aS5TY2FsZU1vZGVCAFIJc2NhbG'
    'VNb2RlEh4KCWltYWdlSGFzaBgCIAEoCUIAUglpbWFnZUhhc2gSOgoOaW1hZ2VUcmFuc2Zvcm0Y'
    'AyABKAsyEC5iaW51aS5UcmFuc2Zvcm1CAFIOaW1hZ2VUcmFuc2Zvcm0SJgoNc2NhbGluZ0ZhY3'
    'RvchgEIAEoAUIAUg1zY2FsaW5nRmFjdG9yEhwKCHJvdGF0aW9uGAUgASgBQgBSCHJvdGF0aW9u'
    'Ei8KB2ZpbHRlcnMYBiABKAsyEy5iaW51aS5JbWFnZUZpbHRlcnNCAFIHZmlsdGVycw==');

@$core.Deprecated('Use videoPaintDescriptor instead')
const VideoPaint$json = {
  '1': 'VideoPaint',
  '2': [
    {
      '1': 'scaleMode',
      '3': 1,
      '5': 14,
      '6': '.binui.ScaleMode',
      '8': {},
      '10': 'scaleMode'
    },
    {'1': 'videoHash', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'videoHash'},
    {
      '1': 'videoTransform',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'videoTransform'
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
    {
      '1': 'filters',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.binui.ImageFilters',
      '8': {},
      '10': 'filters'
    },
  ],
};

/// Descriptor for `VideoPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoPaintDescriptor = $convert.base64Decode(
    'CgpWaWRlb1BhaW50Ei4KCXNjYWxlTW9kZRgBKA4yEC5iaW51aS5TY2FsZU1vZGVCAFIJc2NhbG'
    'VNb2RlEh4KCXZpZGVvSGFzaBgCIAEoCUIAUgl2aWRlb0hhc2gSOgoOdmlkZW9UcmFuc2Zvcm0Y'
    'AyABKAsyEC5iaW51aS5UcmFuc2Zvcm1CAFIOdmlkZW9UcmFuc2Zvcm0SJgoNc2NhbGluZ0ZhY3'
    'RvchgEIAEoAUIAUg1zY2FsaW5nRmFjdG9yEhwKCHJvdGF0aW9uGAUgASgBQgBSCHJvdGF0aW9u'
    'Ei8KB2ZpbHRlcnMYBiABKAsyEy5iaW51aS5JbWFnZUZpbHRlcnNCAFIHZmlsdGVycw==');

@$core.Deprecated('Use patternPaintDescriptor instead')
const PatternPaint$json = {
  '1': 'PatternPaint',
  '2': [
    {'1': 'sourceNodeId', '3': 1, '5': 9, '8': {}, '10': 'sourceNodeId'},
    {
      '1': 'tileType',
      '3': 2,
      '5': 14,
      '6': '.binui.PatternTileType',
      '8': {},
      '10': 'tileType'
    },
    {'1': 'scalingFactor', '3': 3, '5': 1, '8': {}, '10': 'scalingFactor'},
    {
      '1': 'spacing',
      '3': 4,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'spacing'
    },
    {
      '1': 'horizontalAlignment',
      '3': 5,
      '5': 14,
      '6': '.binui.PatternHorizontalAlignment',
      '8': {},
      '10': 'horizontalAlignment'
    },
  ],
};

/// Descriptor for `PatternPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patternPaintDescriptor = $convert.base64Decode(
    'CgxQYXR0ZXJuUGFpbnQSIgoMc291cmNlTm9kZUlkGAEoCUIAUgxzb3VyY2VOb2RlSWQSMgoIdG'
    'lsZVR5cGUYAigOMhYuYmludWkuUGF0dGVyblRpbGVUeXBlQgBSCHRpbGVUeXBlEiQKDXNjYWxp'
    'bmdGYWN0b3IYAygBQgBSDXNjYWxpbmdGYWN0b3ISJwoHc3BhY2luZxgEKAsyDS5iaW51aS5PZm'
    'ZzZXRCAFIHc3BhY2luZxJTChNob3Jpem9udGFsQWxpZ25tZW50GAUoDjIhLmJpbnVpLlBhdHRl'
    'cm5Ib3Jpem9udGFsQWxpZ25tZW50QgBSE2hvcml6b250YWxBbGlnbm1lbnQ=');

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
      '1': 'layerBlur',
      '3': 3,
      '5': 11,
      '6': '.binui.LayerBlurEffect',
      '8': {},
      '9': 0,
      '10': 'layerBlur'
    },
    {
      '1': 'backgroundBlur',
      '3': 4,
      '5': 11,
      '6': '.binui.BackgroundBlurEffect',
      '8': {},
      '9': 0,
      '10': 'backgroundBlur'
    },
    {
      '1': 'progressiveBlur',
      '3': 5,
      '5': 11,
      '6': '.binui.ProgressiveBlurEffect',
      '8': {},
      '9': 0,
      '10': 'progressiveBlur'
    },
    {
      '1': 'monotoneNoise',
      '3': 6,
      '5': 11,
      '6': '.binui.MonotoneNoiseEffect',
      '8': {},
      '9': 0,
      '10': 'monotoneNoise'
    },
    {
      '1': 'duotoneNoise',
      '3': 7,
      '5': 11,
      '6': '.binui.DuotoneNoiseEffect',
      '8': {},
      '9': 0,
      '10': 'duotoneNoise'
    },
    {
      '1': 'multitoneNoise',
      '3': 8,
      '5': 11,
      '6': '.binui.MultitoneNoiseEffect',
      '8': {},
      '9': 0,
      '10': 'multitoneNoise'
    },
    {
      '1': 'texture',
      '3': 9,
      '5': 11,
      '6': '.binui.TextureEffect',
      '8': {},
      '9': 0,
      '10': 'texture'
    },
    {
      '1': 'glass',
      '3': 10,
      '5': 11,
      '6': '.binui.GlassEffect',
      '8': {},
      '9': 0,
      '10': 'glass'
    },
    {'1': 'visible', '3': 20, '5': 8, '8': {}, '10': 'visible'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Effect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List effectDescriptor = $convert.base64Decode(
    'CgZFZmZlY3QSOQoKZHJvcFNoYWRvdxgBKAsyFy5iaW51aS5Ecm9wU2hhZG93RWZmZWN0QgBIAF'
    'IKZHJvcFNoYWRvdxI8Cgtpbm5lclNoYWRvdxgCKAsyGC5iaW51aS5Jbm5lclNoYWRvd0VmZmVj'
    'dEIASABSC2lubmVyU2hhZG93EjYKCWxheWVyQmx1chgDKAsyFi5iaW51aS5MYXllckJsdXJFZm'
    'ZlY3RCAEgAUglsYXllckJsdXISRQoOYmFja2dyb3VuZEJsdXIYBCgLMhsuYmludWkuQmFja2dy'
    'b3VuZEJsdXJFZmZlY3RCAEgAUg5iYWNrZ3JvdW5kQmx1chJICg9wcm9ncmVzc2l2ZUJsdXIYBS'
    'gLMhwuYmludWkuUHJvZ3Jlc3NpdmVCbHVyRWZmZWN0QgBIAFIPcHJvZ3Jlc3NpdmVCbHVyEkIK'
    'DW1vbm90b25lTm9pc2UYBigLMhouYmludWkuTW9ub3RvbmVOb2lzZUVmZmVjdEIASABSDW1vbm'
    '90b25lTm9pc2USPwoMZHVvdG9uZU5vaXNlGAcoCzIZLmJpbnVpLkR1b3RvbmVOb2lzZUVmZmVj'
    'dEIASABSDGR1b3RvbmVOb2lzZRJFCg5tdWx0aXRvbmVOb2lzZRgIKAsyGy5iaW51aS5NdWx0aX'
    'RvbmVOb2lzZUVmZmVjdEIASABSDm11bHRpdG9uZU5vaXNlEjAKB3RleHR1cmUYCSgLMhQuYmlu'
    'dWkuVGV4dHVyZUVmZmVjdEIASABSB3RleHR1cmUSKgoFZ2xhc3MYCigLMhIuYmludWkuR2xhc3'
    'NFZmZlY3RCAEgAUgVnbGFzcxIYCgd2aXNpYmxlGBQoCEIAUgd2aXNpYmxlQgYKBHR5cGU=');

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

@$core.Deprecated('Use layerBlurEffectDescriptor instead')
const LayerBlurEffect$json = {
  '1': 'LayerBlurEffect',
  '2': [
    {'1': 'radius', '3': 1, '5': 1, '8': {}, '10': 'radius'},
  ],
};

/// Descriptor for `LayerBlurEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layerBlurEffectDescriptor = $convert
    .base64Decode('Cg9MYXllckJsdXJFZmZlY3QSFgoGcmFkaXVzGAEoAUIAUgZyYWRpdXM=');

@$core.Deprecated('Use backgroundBlurEffectDescriptor instead')
const BackgroundBlurEffect$json = {
  '1': 'BackgroundBlurEffect',
  '2': [
    {'1': 'radius', '3': 1, '5': 1, '8': {}, '10': 'radius'},
  ],
};

/// Descriptor for `BackgroundBlurEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backgroundBlurEffectDescriptor =
    $convert.base64Decode(
        'ChRCYWNrZ3JvdW5kQmx1ckVmZmVjdBIWCgZyYWRpdXMYASgBQgBSBnJhZGl1cw==');

@$core.Deprecated('Use progressiveBlurEffectDescriptor instead')
const ProgressiveBlurEffect$json = {
  '1': 'ProgressiveBlurEffect',
  '2': [
    {'1': 'radius', '3': 1, '5': 1, '8': {}, '10': 'radius'},
    {'1': 'startRadius', '3': 2, '5': 1, '8': {}, '10': 'startRadius'},
    {
      '1': 'startOffset',
      '3': 3,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'startOffset'
    },
    {
      '1': 'endOffset',
      '3': 4,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'endOffset'
    },
  ],
};

/// Descriptor for `ProgressiveBlurEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List progressiveBlurEffectDescriptor = $convert.base64Decode(
    'ChVQcm9ncmVzc2l2ZUJsdXJFZmZlY3QSFgoGcmFkaXVzGAEoAUIAUgZyYWRpdXMSIAoLc3Rhcn'
    'RSYWRpdXMYAigBQgBSC3N0YXJ0UmFkaXVzEi8KC3N0YXJ0T2Zmc2V0GAMoCzINLmJpbnVpLk9m'
    'ZnNldEIAUgtzdGFydE9mZnNldBIrCgllbmRPZmZzZXQYBCgLMg0uYmludWkuT2Zmc2V0QgBSCW'
    'VuZE9mZnNldA==');

@$core.Deprecated('Use monotoneNoiseEffectDescriptor instead')
const MonotoneNoiseEffect$json = {
  '1': 'MonotoneNoiseEffect',
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
      '1': 'blendMode',
      '3': 2,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'noiseSize', '3': 3, '5': 1, '8': {}, '10': 'noiseSize'},
    {'1': 'density', '3': 4, '5': 1, '8': {}, '10': 'density'},
  ],
};

/// Descriptor for `MonotoneNoiseEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List monotoneNoiseEffectDescriptor = $convert.base64Decode(
    'ChNNb25vdG9uZU5vaXNlRWZmZWN0EiIKBWNvbG9yGAEoCzIMLmJpbnVpLkFsaWFzQgBSBWNvbG'
    '9yEi4KCWJsZW5kTW9kZRgCKA4yEC5iaW51aS5CbGVuZE1vZGVCAFIJYmxlbmRNb2RlEhwKCW5v'
    'aXNlU2l6ZRgDKAFCAFIJbm9pc2VTaXplEhgKB2RlbnNpdHkYBCgBQgBSB2RlbnNpdHk=');

@$core.Deprecated('Use duotoneNoiseEffectDescriptor instead')
const DuotoneNoiseEffect$json = {
  '1': 'DuotoneNoiseEffect',
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
      '1': 'blendMode',
      '3': 2,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'noiseSize', '3': 3, '5': 1, '8': {}, '10': 'noiseSize'},
    {'1': 'density', '3': 4, '5': 1, '8': {}, '10': 'density'},
    {
      '1': 'secondaryColor',
      '3': 5,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'secondaryColor'
    },
  ],
};

/// Descriptor for `DuotoneNoiseEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List duotoneNoiseEffectDescriptor = $convert.base64Decode(
    'ChJEdW90b25lTm9pc2VFZmZlY3QSIgoFY29sb3IYASgLMgwuYmludWkuQWxpYXNCAFIFY29sb3'
    'ISLgoJYmxlbmRNb2RlGAIoDjIQLmJpbnVpLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSHAoJbm9p'
    'c2VTaXplGAMoAUIAUglub2lzZVNpemUSGAoHZGVuc2l0eRgEKAFCAFIHZGVuc2l0eRI0Cg5zZW'
    'NvbmRhcnlDb2xvchgFKAsyDC5iaW51aS5BbGlhc0IAUg5zZWNvbmRhcnlDb2xvcg==');

@$core.Deprecated('Use multitoneNoiseEffectDescriptor instead')
const MultitoneNoiseEffect$json = {
  '1': 'MultitoneNoiseEffect',
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
      '1': 'blendMode',
      '3': 2,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'noiseSize', '3': 3, '5': 1, '8': {}, '10': 'noiseSize'},
    {'1': 'density', '3': 4, '5': 1, '8': {}, '10': 'density'},
    {'1': 'opacity', '3': 5, '5': 1, '8': {}, '10': 'opacity'},
  ],
};

/// Descriptor for `MultitoneNoiseEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multitoneNoiseEffectDescriptor = $convert.base64Decode(
    'ChRNdWx0aXRvbmVOb2lzZUVmZmVjdBIiCgVjb2xvchgBKAsyDC5iaW51aS5BbGlhc0IAUgVjb2'
    'xvchIuCglibGVuZE1vZGUYAigOMhAuYmludWkuQmxlbmRNb2RlQgBSCWJsZW5kTW9kZRIcCglu'
    'b2lzZVNpemUYAygBQgBSCW5vaXNlU2l6ZRIYCgdkZW5zaXR5GAQoAUIAUgdkZW5zaXR5EhgKB2'
    '9wYWNpdHkYBSgBQgBSB29wYWNpdHk=');

@$core.Deprecated('Use textureEffectDescriptor instead')
const TextureEffect$json = {
  '1': 'TextureEffect',
  '2': [
    {'1': 'noiseSize', '3': 1, '5': 1, '8': {}, '10': 'noiseSize'},
    {'1': 'radius', '3': 2, '5': 1, '8': {}, '10': 'radius'},
    {'1': 'clipToShape', '3': 3, '5': 8, '8': {}, '10': 'clipToShape'},
  ],
};

/// Descriptor for `TextureEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textureEffectDescriptor = $convert.base64Decode(
    'Cg1UZXh0dXJlRWZmZWN0EhwKCW5vaXNlU2l6ZRgBKAFCAFIJbm9pc2VTaXplEhYKBnJhZGl1cx'
    'gCKAFCAFIGcmFkaXVzEiAKC2NsaXBUb1NoYXBlGAMoCEIAUgtjbGlwVG9TaGFwZQ==');

@$core.Deprecated('Use glassEffectDescriptor instead')
const GlassEffect$json = {
  '1': 'GlassEffect',
  '2': [
    {'1': 'lightIntensity', '3': 1, '5': 1, '8': {}, '10': 'lightIntensity'},
    {'1': 'lightAngle', '3': 2, '5': 1, '8': {}, '10': 'lightAngle'},
    {'1': 'refraction', '3': 3, '5': 1, '8': {}, '10': 'refraction'},
    {'1': 'depth', '3': 4, '5': 1, '8': {}, '10': 'depth'},
    {'1': 'dispersion', '3': 5, '5': 1, '8': {}, '10': 'dispersion'},
    {'1': 'radius', '3': 6, '5': 1, '8': {}, '10': 'radius'},
  ],
};

/// Descriptor for `GlassEffect`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glassEffectDescriptor = $convert.base64Decode(
    'CgtHbGFzc0VmZmVjdBImCg5saWdodEludGVuc2l0eRgBKAFCAFIObGlnaHRJbnRlbnNpdHkSHg'
    'oKbGlnaHRBbmdsZRgCKAFCAFIKbGlnaHRBbmdsZRIeCgpyZWZyYWN0aW9uGAMoAUIAUgpyZWZy'
    'YWN0aW9uEhQKBWRlcHRoGAQoAUIAUgVkZXB0aBIeCgpkaXNwZXJzaW9uGAUoAUIAUgpkaXNwZX'
    'JzaW9uEhYKBnJhZGl1cxgGKAFCAFIGcmFkaXVz');

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

@$core.Deprecated('Use strokeDescriptor instead')
const Stroke$json = {
  '1': 'Stroke',
  '2': [
    {'1': 'topWeight', '3': 1, '5': 1, '8': {}, '10': 'topWeight'},
    {'1': 'bottomWeight', '3': 2, '5': 1, '8': {}, '10': 'bottomWeight'},
    {'1': 'leftWeight', '3': 3, '5': 1, '8': {}, '10': 'leftWeight'},
    {'1': 'rightWeight', '3': 4, '5': 1, '8': {}, '10': 'rightWeight'},
    {
      '1': 'join',
      '3': 5,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'join'
    },
    {
      '1': 'alignment',
      '3': 6,
      '5': 14,
      '6': '.binui.StrokeAlign',
      '8': {},
      '10': 'alignment'
    },
  ],
};

/// Descriptor for `Stroke`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List strokeDescriptor = $convert.base64Decode(
    'CgZTdHJva2USHAoJdG9wV2VpZ2h0GAEoAUIAUgl0b3BXZWlnaHQSIgoMYm90dG9tV2VpZ2h0GA'
    'IoAUIAUgxib3R0b21XZWlnaHQSHgoKbGVmdFdlaWdodBgDKAFCAFIKbGVmdFdlaWdodBIgCgty'
    'aWdodFdlaWdodBgEKAFCAFILcmlnaHRXZWlnaHQSJQoEam9pbhgFKA4yES5iaW51aS5TdHJva2'
    'VKb2luQgBSBGpvaW4SMAoJYWxpZ25tZW50GAYoDjISLmJpbnVpLlN0cm9rZUFsaWduQgBSCWFs'
    'aWdubWVudA==');

@$core.Deprecated('Use shapeDescriptor instead')
const Shape$json = {
  '1': 'Shape',
  '2': [
    {
      '1': 'rectangle',
      '3': 1,
      '5': 11,
      '6': '.binui.RectangleShape',
      '8': {},
      '9': 0,
      '10': 'rectangle'
    },
    {
      '1': 'vectorPaths',
      '3': 2,
      '5': 11,
      '6': '.binui.VectorPathsShape',
      '8': {},
      '9': 0,
      '10': 'vectorPaths'
    },
    {
      '1': 'text',
      '3': 3,
      '5': 11,
      '6': '.binui.TextShape',
      '8': {},
      '9': 0,
      '10': 'text'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Shape`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List shapeDescriptor = $convert.base64Decode(
    'CgVTaGFwZRI1CglyZWN0YW5nbGUYASgLMhUuYmludWkuUmVjdGFuZ2xlU2hhcGVCAEgAUglyZW'
    'N0YW5nbGUSOwoLdmVjdG9yUGF0aHMYAigLMhcuYmludWkuVmVjdG9yUGF0aHNTaGFwZUIASABS'
    'C3ZlY3RvclBhdGhzEiYKBHRleHQYAygLMhAuYmludWkuVGV4dFNoYXBlQgBIAFIEdGV4dEIGCg'
    'R0eXBl');

@$core.Deprecated('Use rectangleShapeDescriptor instead')
const RectangleShape$json = {
  '1': 'RectangleShape',
  '2': [
    {
      '1': 'cornerRadius',
      '3': 1,
      '5': 11,
      '6': '.binui.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
  ],
};

/// Descriptor for `RectangleShape`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rectangleShapeDescriptor = $convert.base64Decode(
    'Cg5SZWN0YW5nbGVTaGFwZRI3Cgxjb3JuZXJSYWRpdXMYASgLMhMuYmludWkuQ29ybmVyUmFkaX'
    'VzQgBSDGNvcm5lclJhZGl1cw==');

@$core.Deprecated('Use vectorPathsShapeDescriptor instead')
const VectorPathsShape$json = {
  '1': 'VectorPathsShape',
  '2': [
    {
      '1': 'fill',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorPath',
      '8': {},
      '10': 'fill'
    },
    {
      '1': 'stroke',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorPath',
      '8': {},
      '10': 'stroke'
    },
  ],
};

/// Descriptor for `VectorPathsShape`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorPathsShapeDescriptor = $convert.base64Decode(
    'ChBWZWN0b3JQYXRoc1NoYXBlEicKBGZpbGwYASADKAsyES5iaW51aS5WZWN0b3JQYXRoQgBSBG'
    'ZpbGwSKwoGc3Ryb2tlGAIgAygLMhEuYmludWkuVmVjdG9yUGF0aEIAUgZzdHJva2U=');

@$core.Deprecated('Use textShapeDescriptor instead')
const TextShape$json = {
  '1': 'TextShape',
  '2': [
    {
      '1': 'characters',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.TextSpan',
      '8': {},
      '10': 'characters'
    },
    {
      '1': 'style',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.binui.TextStyle',
      '8': {},
      '10': 'style'
    },
  ],
};

/// Descriptor for `TextShape`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textShapeDescriptor = $convert.base64Decode(
    'CglUZXh0U2hhcGUSMQoKY2hhcmFjdGVycxgBIAMoCzIPLmJpbnVpLlRleHRTcGFuQgBSCmNoYX'
    'JhY3RlcnMSKAoFc3R5bGUYAiABKAsyEC5iaW51aS5UZXh0U3R5bGVCAFIFc3R5bGU=');

@$core.Deprecated('Use fontNameDescriptor instead')
const FontName$json = {
  '1': 'FontName',
  '2': [
    {'1': 'family', '3': 1, '5': 9, '8': {}, '10': 'family'},
    {
      '1': 'style',
      '3': 2,
      '5': 14,
      '6': '.binui.FontStyle',
      '8': {},
      '10': 'style'
    },
    {'1': 'weight', '3': 3, '5': 5, '8': {}, '10': 'weight'},
  ],
};

/// Descriptor for `FontName`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fontNameDescriptor = $convert.base64Decode(
    'CghGb250TmFtZRIWCgZmYW1pbHkYASgJQgBSBmZhbWlseRImCgVzdHlsZRgCKA4yEC5iaW51aS'
    '5Gb250U3R5bGVCAFIFc3R5bGUSFgoGd2VpZ2h0GAMoBUIAUgZ3ZWlnaHQ=');

@$core.Deprecated('Use letterSpacingDescriptor instead')
const LetterSpacing$json = {
  '1': 'LetterSpacing',
  '2': [
    {'1': 'value', '3': 1, '5': 1, '8': {}, '10': 'value'},
    {
      '1': 'unit',
      '3': 2,
      '5': 14,
      '6': '.binui.LetterSpacingUnit',
      '8': {},
      '10': 'unit'
    },
  ],
};

/// Descriptor for `LetterSpacing`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List letterSpacingDescriptor = $convert.base64Decode(
    'Cg1MZXR0ZXJTcGFjaW5nEhQKBXZhbHVlGAEoAUIAUgV2YWx1ZRIsCgR1bml0GAIoDjIYLmJpbn'
    'VpLkxldHRlclNwYWNpbmdVbml0QgBSBHVuaXQ=');

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
      '6': '.binui.FontName',
      '8': {},
      '10': 'fontName'
    },
    {'1': 'fontSize', '3': 2, '5': 1, '8': {}, '10': 'fontSize'},
    {
      '1': 'letterSpacing',
      '3': 3,
      '5': 11,
      '6': '.binui.LetterSpacing',
      '8': {},
      '10': 'letterSpacing'
    },
    {
      '1': 'lineHeight',
      '3': 4,
      '5': 11,
      '6': '.binui.LineHeight',
      '8': {},
      '10': 'lineHeight'
    },
  ],
};

/// Descriptor for `TextStyle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textStyleDescriptor = $convert.base64Decode(
    'CglUZXh0U3R5bGUSKwoIZm9udE5hbWUYASgLMg8uYmludWkuRm9udE5hbWVCAFIIZm9udE5hbW'
    'USGgoIZm9udFNpemUYAigBQgBSCGZvbnRTaXplEjoKDWxldHRlclNwYWNpbmcYAygLMhQuYmlu'
    'dWkuTGV0dGVyU3BhY2luZ0IAUg1sZXR0ZXJTcGFjaW5nEjEKCmxpbmVIZWlnaHQYBCgLMhEuYm'
    'ludWkuTGluZUhlaWdodEIAUgpsaW5lSGVpZ2h0');

@$core.Deprecated('Use textSpanDescriptor instead')
const TextSpan$json = {
  '1': 'TextSpan',
  '2': [
    {'1': 'text', '3': 1, '5': 9, '8': {}, '10': 'text'},
    {
      '1': 'style',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.binui.TextStyle',
      '8': {},
      '10': 'style'
    },
  ],
};

/// Descriptor for `TextSpan`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textSpanDescriptor = $convert.base64Decode(
    'CghUZXh0U3BhbhISCgR0ZXh0GAEoCUIAUgR0ZXh0EigKBXN0eWxlGAIgASgLMhAuYmludWkuVG'
    'V4dFN0eWxlQgBSBXN0eWxl');

@$core.Deprecated('Use textListOptionsDescriptor instead')
const TextListOptions$json = {
  '1': 'TextListOptions',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '5': 14,
      '6': '.binui.TextListType',
      '8': {},
      '10': 'type'
    },
  ],
};

/// Descriptor for `TextListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textListOptionsDescriptor = $convert.base64Decode(
    'Cg9UZXh0TGlzdE9wdGlvbnMSJwoEdHlwZRgBKA4yEy5iaW51aS5UZXh0TGlzdFR5cGVCAFIEdH'
    'lwZQ==');

@$core.Deprecated('Use hyperlinkTargetDescriptor instead')
const HyperlinkTarget$json = {
  '1': 'HyperlinkTarget',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '5': 14,
      '6': '.binui.HyperlinkType',
      '8': {},
      '10': 'type'
    },
    {'1': 'value', '3': 2, '5': 9, '8': {}, '10': 'value'},
  ],
};

/// Descriptor for `HyperlinkTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hyperlinkTargetDescriptor = $convert.base64Decode(
    'Cg9IeXBlcmxpbmtUYXJnZXQSKAoEdHlwZRgBKA4yFC5iaW51aS5IeXBlcmxpbmtUeXBlQgBSBH'
    'R5cGUSFAoFdmFsdWUYAigJQgBSBXZhbHVl');

@$core.Deprecated('Use textDecorationOffsetDescriptor instead')
const TextDecorationOffset$json = {
  '1': 'TextDecorationOffset',
  '2': [
    {'1': 'pixels', '3': 1, '5': 1, '8': {}, '9': 0, '10': 'pixels'},
    {'1': 'percent', '3': 2, '5': 1, '8': {}, '9': 0, '10': 'percent'},
    {'1': 'autoOffset', '3': 3, '5': 8, '8': {}, '9': 0, '10': 'autoOffset'},
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `TextDecorationOffset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textDecorationOffsetDescriptor = $convert.base64Decode(
    'ChRUZXh0RGVjb3JhdGlvbk9mZnNldBIYCgZwaXhlbHMYASgBQgBIAFIGcGl4ZWxzEhoKB3Blcm'
    'NlbnQYAigBQgBIAFIHcGVyY2VudBIgCgphdXRvT2Zmc2V0GAMoCEIASABSCmF1dG9PZmZzZXRC'
    'BgoEdHlwZQ==');

@$core.Deprecated('Use textDecorationThicknessDescriptor instead')
const TextDecorationThickness$json = {
  '1': 'TextDecorationThickness',
  '2': [
    {'1': 'pixels', '3': 1, '5': 1, '8': {}, '9': 0, '10': 'pixels'},
    {'1': 'percent', '3': 2, '5': 1, '8': {}, '9': 0, '10': 'percent'},
    {
      '1': 'autoThickness',
      '3': 3,
      '5': 8,
      '8': {},
      '9': 0,
      '10': 'autoThickness'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `TextDecorationThickness`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textDecorationThicknessDescriptor = $convert.base64Decode(
    'ChdUZXh0RGVjb3JhdGlvblRoaWNrbmVzcxIYCgZwaXhlbHMYASgBQgBIAFIGcGl4ZWxzEhoKB3'
    'BlcmNlbnQYAigBQgBIAFIHcGVyY2VudBImCg1hdXRvVGhpY2tuZXNzGAMoCEIASABSDWF1dG9U'
    'aGlja25lc3NCBgoEdHlwZQ==');

@$core.Deprecated('Use vectorVertexDescriptor instead')
const VectorVertex$json = {
  '1': 'VectorVertex',
  '2': [
    {'1': 'x', '3': 1, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 2, '5': 1, '8': {}, '10': 'y'},
    {
      '1': 'strokeCap',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.binui.StrokeJoin',
      '8': {},
      '10': 'strokeJoin'
    },
    {
      '1': 'cornerRadius',
      '3': 5,
      '4': 1,
      '5': 1,
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'handleMirroring',
      '3': 6,
      '4': 1,
      '5': 14,
      '6': '.binui.HandleMirroring',
      '8': {},
      '10': 'handleMirroring'
    },
  ],
};

/// Descriptor for `VectorVertex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorVertexDescriptor = $convert.base64Decode(
    'CgxWZWN0b3JWZXJ0ZXgSDAoBeBgBKAFCAFIBeBIMCgF5GAIoAUIAUgF5EjAKCXN0cm9rZUNhcB'
    'gDIAEoDjIQLmJpbnVpLlN0cm9rZUNhcEIAUglzdHJva2VDYXASMwoKc3Ryb2tlSm9pbhgEIAEo'
    'DjIRLmJpbnVpLlN0cm9rZUpvaW5CAFIKc3Ryb2tlSm9pbhIkCgxjb3JuZXJSYWRpdXMYBSABKA'
    'FCAFIMY29ybmVyUmFkaXVzEkIKD2hhbmRsZU1pcnJvcmluZxgGIAEoDjIWLmJpbnVpLkhhbmRs'
    'ZU1pcnJvcmluZ0IAUg9oYW5kbGVNaXJyb3Jpbmc=');

@$core.Deprecated('Use vectorSegmentDescriptor instead')
const VectorSegment$json = {
  '1': 'VectorSegment',
  '2': [
    {'1': 'start', '3': 1, '5': 5, '8': {}, '10': 'start'},
    {'1': 'end', '3': 2, '5': 5, '8': {}, '10': 'end'},
    {
      '1': 'tangentStart',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'tangentStart'
    },
    {
      '1': 'tangentEnd',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.binui.Offset',
      '8': {},
      '10': 'tangentEnd'
    },
  ],
};

/// Descriptor for `VectorSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorSegmentDescriptor = $convert.base64Decode(
    'Cg1WZWN0b3JTZWdtZW50EhQKBXN0YXJ0GAEoBUIAUgVzdGFydBIQCgNlbmQYAigFQgBSA2VuZB'
    'IzCgx0YW5nZW50U3RhcnQYAyABKAsyDS5iaW51aS5PZmZzZXRCAFIMdGFuZ2VudFN0YXJ0Ei8K'
    'CnRhbmdlbnRFbmQYBCABKAsyDS5iaW51aS5PZmZzZXRCAFIKdGFuZ2VudEVuZA==');

@$core.Deprecated('Use vectorRegionDescriptor instead')
const VectorRegion$json = {
  '1': 'VectorRegion',
  '2': [
    {
      '1': 'windingRule',
      '3': 1,
      '5': 14,
      '6': '.binui.WindingRule',
      '8': {},
      '10': 'windingRule'
    },
    {
      '1': 'loops',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorLoop',
      '8': {},
      '10': 'loops'
    },
    {
      '1': 'fills',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {'1': 'fillStyleId', '3': 4, '4': 1, '5': 9, '8': {}, '10': 'fillStyleId'},
  ],
};

/// Descriptor for `VectorRegion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorRegionDescriptor = $convert.base64Decode(
    'CgxWZWN0b3JSZWdpb24SNAoLd2luZGluZ1J1bGUYASgOMhIuYmludWkuV2luZGluZ1J1bGVCAF'
    'ILd2luZGluZ1J1bGUSKQoFbG9vcHMYAiADKAsyES5iaW51aS5WZWN0b3JMb29wQgBSBWxvb3Bz'
    'EiQKBWZpbGxzGAMgAygLMgwuYmludWkuUGFpbnRCAFIFZmlsbHMSIgoLZmlsbFN0eWxlSWQYBC'
    'ABKAlCAFILZmlsbFN0eWxlSWQ=');

@$core.Deprecated('Use vectorLoopDescriptor instead')
const VectorLoop$json = {
  '1': 'VectorLoop',
  '2': [
    {'1': 'indices', '3': 1, '4': 3, '5': 5, '8': {}, '10': 'indices'},
  ],
};

/// Descriptor for `VectorLoop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorLoopDescriptor = $convert
    .base64Decode('CgpWZWN0b3JMb29wEhoKB2luZGljZXMYASADKAVCAFIHaW5kaWNlcw==');

@$core.Deprecated('Use vectorNetworkDescriptor instead')
const VectorNetwork$json = {
  '1': 'VectorNetwork',
  '2': [
    {
      '1': 'vertices',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorVertex',
      '8': {},
      '10': 'vertices'
    },
    {
      '1': 'segments',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorSegment',
      '8': {},
      '10': 'segments'
    },
    {
      '1': 'regions',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorRegion',
      '8': {},
      '10': 'regions'
    },
  ],
};

/// Descriptor for `VectorNetwork`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorNetworkDescriptor = $convert.base64Decode(
    'Cg1WZWN0b3JOZXR3b3JrEjEKCHZlcnRpY2VzGAEgAygLMhMuYmludWkuVmVjdG9yVmVydGV4Qg'
    'BSCHZlcnRpY2VzEjIKCHNlZ21lbnRzGAIgAygLMhQuYmludWkuVmVjdG9yU2VnbWVudEIAUghz'
    'ZWdtZW50cxIvCgdyZWdpb25zGAMgAygLMhMuYmludWkuVmVjdG9yUmVnaW9uQgBSB3JlZ2lvbn'
    'M=');

@$core.Deprecated('Use vectorPathDescriptor instead')
const VectorPath$json = {
  '1': 'VectorPath',
  '2': [
    {'1': 'windingRule', '3': 1, '5': 9, '8': {}, '10': 'windingRule'},
    {'1': 'path', '3': 2, '5': 9, '8': {}, '10': 'path'},
  ],
};

/// Descriptor for `VectorPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorPathDescriptor = $convert.base64Decode(
    'CgpWZWN0b3JQYXRoEiAKC3dpbmRpbmdSdWxlGAEoCUIAUgt3aW5kaW5nUnVsZRISCgRwYXRoGA'
    'IoCUIAUgRwYXRo');

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

@$core.Deprecated('Use childSizeDescriptor instead')
const ChildSize$json = {
  '1': 'ChildSize',
  '2': [
    {'1': 'width', '3': 1, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 2, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'primaryAxisSizing',
      '3': 3,
      '4': 1,
      '5': 14,
      '6': '.binui.ChildSizingMode',
      '8': {},
      '10': 'primaryAxisSizing'
    },
    {
      '1': 'counterAxisSizing',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.binui.ChildSizingMode',
      '8': {},
      '10': 'counterAxisSizing'
    },
  ],
};

/// Descriptor for `ChildSize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List childSizeDescriptor = $convert.base64Decode(
    'CglDaGlsZFNpemUSFAoFd2lkdGgYASgBQgBSBXdpZHRoEhYKBmhlaWdodBgCKAFCAFIGaGVpZ2'
    'h0EkYKEXByaW1hcnlBeGlzU2l6aW5nGAMgASgOMhYuYmludWkuQ2hpbGRTaXppbmdNb2RlQgBS'
    'EXByaW1hcnlBeGlzU2l6aW5nEkYKEWNvdW50ZXJBeGlzU2l6aW5nGAQgASgOMhYuYmludWkuQ2'
    'hpbGRTaXppbmdNb2RlQgBSEWNvdW50ZXJBeGlzU2l6aW5n');

@$core.Deprecated('Use gridTrackDescriptor instead')
const GridTrack$json = {
  '1': 'GridTrack',
  '2': [
    {'1': 'size', '3': 1, '4': 1, '5': 1, '8': {}, '10': 'size'},
    {
      '1': 'sizingMode',
      '3': 2,
      '5': 14,
      '6': '.binui.GridTrackSizingMode',
      '8': {},
      '10': 'sizingMode'
    },
  ],
};

/// Descriptor for `GridTrack`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gridTrackDescriptor = $convert.base64Decode(
    'CglHcmlkVHJhY2sSFAoEc2l6ZRgBIAEoAUIAUgRzaXplEjoKCnNpemluZ01vZGUYAigOMhouYm'
    'ludWkuR3JpZFRyYWNrU2l6aW5nTW9kZUIAUgpzaXppbmdNb2Rl');

@$core.Deprecated('Use layoutPropertiesDescriptor instead')
const LayoutProperties$json = {
  '1': 'LayoutProperties',
  '2': [
    {
      '1': 'freeform',
      '3': 1,
      '5': 11,
      '6': '.binui.FreeformLayoutProperties',
      '8': {},
      '9': 0,
      '10': 'freeform'
    },
    {
      '1': 'autoLayout',
      '3': 2,
      '5': 11,
      '6': '.binui.AutoLayoutProperties',
      '8': {},
      '9': 0,
      '10': 'autoLayout'
    },
    {
      '1': 'grid',
      '3': 3,
      '5': 11,
      '6': '.binui.GridLayoutProperties',
      '8': {},
      '9': 0,
      '10': 'grid'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `LayoutProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List layoutPropertiesDescriptor = $convert.base64Decode(
    'ChBMYXlvdXRQcm9wZXJ0aWVzEj0KCGZyZWVmb3JtGAEoCzIfLmJpbnVpLkZyZWVmb3JtTGF5b3'
    'V0UHJvcGVydGllc0IASABSCGZyZWVmb3JtEj0KCmF1dG9MYXlvdXQYAigLMhsuYmludWkuQXV0'
    'b0xheW91dFByb3BlcnRpZXNCAEgAUgphdXRvTGF5b3V0EjEKBGdyaWQYAygLMhsuYmludWkuR3'
    'JpZExheW91dFByb3BlcnRpZXNCAEgAUgRncmlkQgYKBHR5cGU=');

@$core.Deprecated('Use freeformLayoutPropertiesDescriptor instead')
const FreeformLayoutProperties$json = {
  '1': 'FreeformLayoutProperties',
  '2': [
    {'1': 'referenceWidth', '3': 1, '5': 1, '8': {}, '10': 'referenceWidth'},
    {'1': 'referenceHeight', '3': 2, '5': 1, '8': {}, '10': 'referenceHeight'},
  ],
};

/// Descriptor for `FreeformLayoutProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List freeformLayoutPropertiesDescriptor =
    $convert.base64Decode(
        'ChhGcmVlZm9ybUxheW91dFByb3BlcnRpZXMSJgoOcmVmZXJlbmNlV2lkdGgYASgBQgBSDnJlZm'
        'VyZW5jZVdpZHRoEigKD3JlZmVyZW5jZUhlaWdodBgCKAFCAFIPcmVmZXJlbmNlSGVpZ2h0');

@$core.Deprecated('Use autoLayoutPropertiesDescriptor instead')
const AutoLayoutProperties$json = {
  '1': 'AutoLayoutProperties',
  '2': [
    {'1': 'referenceWidth', '3': 1, '5': 1, '8': {}, '10': 'referenceWidth'},
    {'1': 'referenceHeight', '3': 2, '5': 1, '8': {}, '10': 'referenceHeight'},
    {'1': 'isVertical', '3': 3, '5': 8, '8': {}, '10': 'isVertical'},
    {
      '1': 'primaryAxisSizingMode',
      '3': 4,
      '5': 14,
      '6': '.binui.PrimaryAxisSizingMode',
      '8': {},
      '10': 'primaryAxisSizingMode'
    },
    {
      '1': 'counterAxisSizingMode',
      '3': 5,
      '5': 14,
      '6': '.binui.CounterAxisSizingMode',
      '8': {},
      '10': 'counterAxisSizingMode'
    },
    {
      '1': 'primaryAxisAlignItems',
      '3': 6,
      '5': 14,
      '6': '.binui.LayoutAlign',
      '8': {},
      '10': 'primaryAxisAlignItems'
    },
    {
      '1': 'counterAxisAlignItems',
      '3': 7,
      '5': 14,
      '6': '.binui.LayoutAlign',
      '8': {},
      '10': 'counterAxisAlignItems'
    },
    {
      '1': 'layoutWrap',
      '3': 8,
      '5': 14,
      '6': '.binui.LayoutWrap',
      '8': {},
      '10': 'layoutWrap'
    },
    {
      '1': 'padding',
      '3': 9,
      '5': 11,
      '6': '.binui.EdgeInsets',
      '8': {},
      '10': 'padding'
    },
    {'1': 'itemSpacing', '3': 10, '5': 1, '8': {}, '10': 'itemSpacing'},
    {
      '1': 'counterAxisSpacing',
      '3': 11,
      '5': 1,
      '8': {},
      '10': 'counterAxisSpacing'
    },
  ],
};

/// Descriptor for `AutoLayoutProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List autoLayoutPropertiesDescriptor = $convert.base64Decode(
    'ChRBdXRvTGF5b3V0UHJvcGVydGllcxImCg5yZWZlcmVuY2VXaWR0aBgBKAFCAFIOcmVmZXJlbm'
    'NlV2lkdGgSKAoPcmVmZXJlbmNlSGVpZ2h0GAIoAUIAUg9yZWZlcmVuY2VIZWlnaHQSHgoKaXNW'
    'ZXJ0aWNhbBgDKAhCAFIKaXNWZXJ0aWNhbBJSChVwcmltYXJ5QXhpc1NpemluZ01vZGUYBCgOMh'
    'wuYmludWkuUHJpbWFyeUF4aXNTaXppbmdNb2RlQgBSFXByaW1hcnlBeGlzU2l6aW5nTW9kZRJS'
    'ChVjb3VudGVyQXhpc1NpemluZ01vZGUYBSgOMhwuYmludWkuQ291bnRlckF4aXNTaXppbmdNb2'
    'RlQgBSFWNvdW50ZXJBeGlzU2l6aW5nTW9kZRJIChVwcmltYXJ5QXhpc0FsaWduSXRlbXMYBigO'
    'MhIuYmludWkuTGF5b3V0QWxpZ25CAFIVcHJpbWFyeUF4aXNBbGlnbkl0ZW1zEkgKFWNvdW50ZX'
    'JBeGlzQWxpZ25JdGVtcxgHKA4yEi5iaW51aS5MYXlvdXRBbGlnbkIAUhVjb3VudGVyQXhpc0Fs'
    'aWduSXRlbXMSMQoKbGF5b3V0V3JhcBgIKA4yES5iaW51aS5MYXlvdXRXcmFwQgBSCmxheW91dF'
    'dyYXASKwoHcGFkZGluZxgJKAsyES5iaW51aS5FZGdlSW5zZXRzQgBSB3BhZGRpbmcSIAoLaXRl'
    'bVNwYWNpbmcYCigBQgBSC2l0ZW1TcGFjaW5nEi4KEmNvdW50ZXJBeGlzU3BhY2luZxgLKAFCAF'
    'ISY291bnRlckF4aXNTcGFjaW5n');

@$core.Deprecated('Use gridLayoutPropertiesDescriptor instead')
const GridLayoutProperties$json = {
  '1': 'GridLayoutProperties',
  '2': [
    {'1': 'columnCount', '3': 1, '5': 5, '8': {}, '10': 'columnCount'},
    {'1': 'rowCount', '3': 2, '5': 5, '8': {}, '10': 'rowCount'},
    {
      '1': 'columns',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.binui.GridTrack',
      '8': {},
      '10': 'columns'
    },
    {
      '1': 'rows',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.binui.GridTrack',
      '8': {},
      '10': 'rows'
    },
    {'1': 'columnGap', '3': 5, '5': 1, '8': {}, '10': 'columnGap'},
    {'1': 'rowGap', '3': 6, '5': 1, '8': {}, '10': 'rowGap'},
    {
      '1': 'padding',
      '3': 7,
      '5': 11,
      '6': '.binui.EdgeInsets',
      '8': {},
      '10': 'padding'
    },
  ],
};

/// Descriptor for `GridLayoutProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gridLayoutPropertiesDescriptor = $convert.base64Decode(
    'ChRHcmlkTGF5b3V0UHJvcGVydGllcxIgCgtjb2x1bW5Db3VudBgBKAVCAFILY29sdW1uQ291bn'
    'QSGgoIcm93Q291bnQYAigFQgBSCHJvd0NvdW50EiwKB2NvbHVtbnMYAyADKAsyEC5iaW51aS5H'
    'cmlkVHJhY2tCAFIHY29sdW1ucxImCgRyb3dzGAQgAygLMhAuYmludWkuR3JpZFRyYWNrQgBSBH'
    'Jvd3MSHAoJY29sdW1uR2FwGAUoAUIAUgljb2x1bW5HYXASFgoGcm93R2FwGAYoAUIAUgZyb3dH'
    'YXASKwoHcGFkZGluZxgHKAsyES5iaW51aS5FZGdlSW5zZXRzQgBSB3BhZGRpbmc=');

@$core.Deprecated('Use childLayoutDataDescriptor instead')
const ChildLayoutData$json = {
  '1': 'ChildLayoutData',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '5': 14,
      '6': '.binui.PositioningMode',
      '8': {},
      '10': 'mode'
    },
    {'1': 'x', '3': 2, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 3, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 4, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 5, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'horizontalConstraint',
      '3': 6,
      '5': 14,
      '6': '.binui.ConstraintType',
      '8': {},
      '10': 'horizontalConstraint'
    },
    {
      '1': 'verticalConstraint',
      '3': 7,
      '5': 14,
      '6': '.binui.ConstraintType',
      '8': {},
      '10': 'verticalConstraint'
    },
    {
      '1': 'primaryAxisSizing',
      '3': 8,
      '4': 1,
      '5': 14,
      '6': '.binui.ChildSizingMode',
      '8': {},
      '10': 'primaryAxisSizing'
    },
    {
      '1': 'counterAxisSizing',
      '3': 9,
      '4': 1,
      '5': 14,
      '6': '.binui.ChildSizingMode',
      '8': {},
      '10': 'counterAxisSizing'
    },
    {'1': 'gridColumn', '3': 10, '5': 5, '8': {}, '10': 'gridColumn'},
    {'1': 'gridRow', '3': 11, '5': 5, '8': {}, '10': 'gridRow'},
    {'1': 'gridColumnSpan', '3': 12, '5': 5, '8': {}, '10': 'gridColumnSpan'},
    {'1': 'gridRowSpan', '3': 13, '5': 5, '8': {}, '10': 'gridRowSpan'},
  ],
};

/// Descriptor for `ChildLayoutData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List childLayoutDataDescriptor = $convert.base64Decode(
    'Cg9DaGlsZExheW91dERhdGESKgoEbW9kZRgBKA4yFi5iaW51aS5Qb3NpdGlvbmluZ01vZGVCAF'
    'IEbW9kZRIMCgF4GAIoAUIAUgF4EgwKAXkYAygBQgBSAXkSFAoFd2lkdGgYBCgBQgBSBXdpZHRo'
    'EhYKBmhlaWdodBgFKAFCAFIGaGVpZ2h0EkkKFGhvcml6b250YWxDb25zdHJhaW50GAYoDjIVLm'
    'JpbnVpLkNvbnN0cmFpbnRUeXBlQgBSFGhvcml6b250YWxDb25zdHJhaW50EkUKEnZlcnRpY2Fs'
    'Q29uc3RyYWludBgHKA4yFS5iaW51aS5Db25zdHJhaW50VHlwZUIAUhJ2ZXJ0aWNhbENvbnN0cm'
    'FpbnQSRgoRcHJpbWFyeUF4aXNTaXppbmcYCCABKA4yFi5iaW51aS5DaGlsZFNpemluZ01vZGVC'
    'AFIRcHJpbWFyeUF4aXNTaXppbmcSRgoRY291bnRlckF4aXNTaXppbmcYCSABKA4yFi5iaW51aS'
    '5DaGlsZFNpemluZ01vZGVCAFIRY291bnRlckF4aXNTaXppbmcSHgoKZ3JpZENvbHVtbhgKKAVC'
    'AFIKZ3JpZENvbHVtbhIYCgdncmlkUm93GAsoBUIAUgdncmlkUm93EiYKDmdyaWRDb2x1bW5TcG'
    'FuGAwoBUIAUg5ncmlkQ29sdW1uU3BhbhIgCgtncmlkUm93U3BhbhgNKAVCAFILZ3JpZFJvd1Nw'
    'YW4=');

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
      '1': 'staticSegment',
      '3': 2,
      '5': 11,
      '6': '.binui.StaticSegment',
      '8': {},
      '9': 0,
      '10': 'staticSegment'
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
    'ZzdHlsZWQSPAoNc3RhdGljU2VnbWVudBgCKAsyFC5iaW51aS5TdGF0aWNTZWdtZW50QgBIAFIN'
    'c3RhdGljU2VnbWVudBI0Cgh2YXJpYWJsZRgDKAsyFi5iaW51aS5WYXJpYWJsZVNlZ21lbnRCAE'
    'gAUgh2YXJpYWJsZUIGCgR0eXBl');

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

@$core.Deprecated('Use interactionEventDescriptor instead')
const InteractionEvent$json = {
  '1': 'InteractionEvent',
  '2': [
    {'1': 'sourceId', '3': 1, '5': 9, '8': {}, '10': 'sourceId'},
    {'1': 'sourceName', '3': 2, '5': 9, '8': {}, '10': 'sourceName'},
    {
      '1': 'trigger',
      '3': 3,
      '5': 11,
      '6': '.binui.Trigger',
      '8': {},
      '10': 'trigger'
    },
    {
      '1': 'action',
      '3': 4,
      '5': 11,
      '6': '.binui.Action',
      '8': {},
      '10': 'action'
    },
  ],
};

/// Descriptor for `InteractionEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List interactionEventDescriptor = $convert.base64Decode(
    'ChBJbnRlcmFjdGlvbkV2ZW50EhoKCHNvdXJjZUlkGAEoCUIAUghzb3VyY2VJZBIeCgpzb3VyY2'
    'VOYW1lGAIoCUIAUgpzb3VyY2VOYW1lEigKB3RyaWdnZXIYAygLMg4uYmludWkuVHJpZ2dlckIA'
    'Ugd0cmlnZ2VyEiUKBmFjdGlvbhgEKAsyDS5iaW51aS5BY3Rpb25CAFIGYWN0aW9u');

@$core.Deprecated('Use triggerDescriptor instead')
const Trigger$json = {
  '1': 'Trigger',
  '2': [
    {
      '1': 'onClick',
      '3': 1,
      '5': 11,
      '6': '.binui.OnClickTrigger',
      '8': {},
      '9': 0,
      '10': 'onClick'
    },
    {
      '1': 'onDrag',
      '3': 2,
      '5': 11,
      '6': '.binui.OnDragTrigger',
      '8': {},
      '9': 0,
      '10': 'onDrag'
    },
    {
      '1': 'whileHovering',
      '3': 3,
      '5': 11,
      '6': '.binui.WhileHoveringTrigger',
      '8': {},
      '9': 0,
      '10': 'whileHovering'
    },
    {
      '1': 'whilePressing',
      '3': 4,
      '5': 11,
      '6': '.binui.WhilePressingTrigger',
      '8': {},
      '9': 0,
      '10': 'whilePressing'
    },
    {
      '1': 'keyGamepad',
      '3': 5,
      '5': 11,
      '6': '.binui.KeyGamepadTrigger',
      '8': {},
      '9': 0,
      '10': 'keyGamepad'
    },
    {
      '1': 'mouseEnter',
      '3': 6,
      '5': 11,
      '6': '.binui.MouseEnterTrigger',
      '8': {},
      '9': 0,
      '10': 'mouseEnter'
    },
    {
      '1': 'mouseLeave',
      '3': 7,
      '5': 11,
      '6': '.binui.MouseLeaveTrigger',
      '8': {},
      '9': 0,
      '10': 'mouseLeave'
    },
    {
      '1': 'mouseDown',
      '3': 8,
      '5': 11,
      '6': '.binui.MouseDownTrigger',
      '8': {},
      '9': 0,
      '10': 'mouseDown'
    },
    {
      '1': 'mouseUp',
      '3': 9,
      '5': 11,
      '6': '.binui.MouseUpTrigger',
      '8': {},
      '9': 0,
      '10': 'mouseUp'
    },
    {
      '1': 'delay',
      '3': 10,
      '5': 11,
      '6': '.binui.DelayTrigger',
      '8': {},
      '9': 0,
      '10': 'delay'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Trigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List triggerDescriptor = $convert.base64Decode(
    'CgdUcmlnZ2VyEjEKB29uQ2xpY2sYASgLMhUuYmludWkuT25DbGlja1RyaWdnZXJCAEgAUgdvbk'
    'NsaWNrEi4KBm9uRHJhZxgCKAsyFC5iaW51aS5PbkRyYWdUcmlnZ2VyQgBIAFIGb25EcmFnEkMK'
    'DXdoaWxlSG92ZXJpbmcYAygLMhsuYmludWkuV2hpbGVIb3ZlcmluZ1RyaWdnZXJCAEgAUg13aG'
    'lsZUhvdmVyaW5nEkMKDXdoaWxlUHJlc3NpbmcYBCgLMhsuYmludWkuV2hpbGVQcmVzc2luZ1Ry'
    'aWdnZXJCAEgAUg13aGlsZVByZXNzaW5nEjoKCmtleUdhbWVwYWQYBSgLMhguYmludWkuS2V5R2'
    'FtZXBhZFRyaWdnZXJCAEgAUgprZXlHYW1lcGFkEjoKCm1vdXNlRW50ZXIYBigLMhguYmludWku'
    'TW91c2VFbnRlclRyaWdnZXJCAEgAUgptb3VzZUVudGVyEjoKCm1vdXNlTGVhdmUYBygLMhguYm'
    'ludWkuTW91c2VMZWF2ZVRyaWdnZXJCAEgAUgptb3VzZUxlYXZlEjcKCW1vdXNlRG93bhgIKAsy'
    'Fy5iaW51aS5Nb3VzZURvd25UcmlnZ2VyQgBIAFIJbW91c2VEb3duEjEKB21vdXNlVXAYCSgLMh'
    'UuYmludWkuTW91c2VVcFRyaWdnZXJCAEgAUgdtb3VzZVVwEisKBWRlbGF5GAooCzITLmJpbnVp'
    'LkRlbGF5VHJpZ2dlckIASABSBWRlbGF5QgYKBHR5cGU=');

@$core.Deprecated('Use onClickTriggerDescriptor instead')
const OnClickTrigger$json = {
  '1': 'OnClickTrigger',
};

/// Descriptor for `OnClickTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onClickTriggerDescriptor =
    $convert.base64Decode('Cg5PbkNsaWNrVHJpZ2dlcg==');

@$core.Deprecated('Use onDragTriggerDescriptor instead')
const OnDragTrigger$json = {
  '1': 'OnDragTrigger',
};

/// Descriptor for `OnDragTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List onDragTriggerDescriptor =
    $convert.base64Decode('Cg1PbkRyYWdUcmlnZ2Vy');

@$core.Deprecated('Use whileHoveringTriggerDescriptor instead')
const WhileHoveringTrigger$json = {
  '1': 'WhileHoveringTrigger',
};

/// Descriptor for `WhileHoveringTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whileHoveringTriggerDescriptor =
    $convert.base64Decode('ChRXaGlsZUhvdmVyaW5nVHJpZ2dlcg==');

@$core.Deprecated('Use whilePressingTriggerDescriptor instead')
const WhilePressingTrigger$json = {
  '1': 'WhilePressingTrigger',
};

/// Descriptor for `WhilePressingTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whilePressingTriggerDescriptor =
    $convert.base64Decode('ChRXaGlsZVByZXNzaW5nVHJpZ2dlcg==');

@$core.Deprecated('Use keyGamepadTriggerDescriptor instead')
const KeyGamepadTrigger$json = {
  '1': 'KeyGamepadTrigger',
  '2': [
    {'1': 'keys', '3': 1, '4': 3, '5': 9, '8': {}, '10': 'keys'},
  ],
};

/// Descriptor for `KeyGamepadTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyGamepadTriggerDescriptor = $convert
    .base64Decode('ChFLZXlHYW1lcGFkVHJpZ2dlchIUCgRrZXlzGAEgAygJQgBSBGtleXM=');

@$core.Deprecated('Use mouseEnterTriggerDescriptor instead')
const MouseEnterTrigger$json = {
  '1': 'MouseEnterTrigger',
  '2': [
    {'1': 'delayMs', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'delayMs'},
  ],
};

/// Descriptor for `MouseEnterTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mouseEnterTriggerDescriptor = $convert.base64Decode(
    'ChFNb3VzZUVudGVyVHJpZ2dlchIaCgdkZWxheU1zGAEgASgDQgBSB2RlbGF5TXM=');

@$core.Deprecated('Use mouseLeaveTriggerDescriptor instead')
const MouseLeaveTrigger$json = {
  '1': 'MouseLeaveTrigger',
  '2': [
    {'1': 'delayMs', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'delayMs'},
  ],
};

/// Descriptor for `MouseLeaveTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mouseLeaveTriggerDescriptor = $convert.base64Decode(
    'ChFNb3VzZUxlYXZlVHJpZ2dlchIaCgdkZWxheU1zGAEgASgDQgBSB2RlbGF5TXM=');

@$core.Deprecated('Use mouseDownTriggerDescriptor instead')
const MouseDownTrigger$json = {
  '1': 'MouseDownTrigger',
  '2': [
    {'1': 'delayMs', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'delayMs'},
  ],
};

/// Descriptor for `MouseDownTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mouseDownTriggerDescriptor = $convert.base64Decode(
    'ChBNb3VzZURvd25UcmlnZ2VyEhoKB2RlbGF5TXMYASABKANCAFIHZGVsYXlNcw==');

@$core.Deprecated('Use mouseUpTriggerDescriptor instead')
const MouseUpTrigger$json = {
  '1': 'MouseUpTrigger',
  '2': [
    {'1': 'delayMs', '3': 1, '4': 1, '5': 3, '8': {}, '10': 'delayMs'},
  ],
};

/// Descriptor for `MouseUpTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mouseUpTriggerDescriptor = $convert.base64Decode(
    'Cg5Nb3VzZVVwVHJpZ2dlchIaCgdkZWxheU1zGAEgASgDQgBSB2RlbGF5TXM=');

@$core.Deprecated('Use delayTriggerDescriptor instead')
const DelayTrigger$json = {
  '1': 'DelayTrigger',
  '2': [
    {'1': 'delayMs', '3': 1, '5': 3, '8': {}, '10': 'delayMs'},
  ],
};

/// Descriptor for `DelayTrigger`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List delayTriggerDescriptor = $convert
    .base64Decode('CgxEZWxheVRyaWdnZXISGAoHZGVsYXlNcxgBKANCAFIHZGVsYXlNcw==');

@$core.Deprecated('Use actionDescriptor instead')
const Action$json = {
  '1': 'Action',
  '2': [
    {
      '1': 'navigate',
      '3': 1,
      '5': 11,
      '6': '.binui.NavigateAction',
      '8': {},
      '9': 0,
      '10': 'navigate'
    },
    {
      '1': 'openLink',
      '3': 2,
      '5': 11,
      '6': '.binui.OpenLinkAction',
      '8': {},
      '9': 0,
      '10': 'openLink'
    },
    {
      '1': 'swapOverlay',
      '3': 3,
      '5': 11,
      '6': '.binui.SwapOverlayAction',
      '8': {},
      '9': 0,
      '10': 'swapOverlay'
    },
    {
      '1': 'closeOverlay',
      '3': 4,
      '5': 11,
      '6': '.binui.CloseOverlayAction',
      '8': {},
      '9': 0,
      '10': 'closeOverlay'
    },
    {
      '1': 'back',
      '3': 5,
      '5': 11,
      '6': '.binui.BackAction',
      '8': {},
      '9': 0,
      '10': 'back'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Action`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List actionDescriptor = $convert.base64Decode(
    'CgZBY3Rpb24SMwoIbmF2aWdhdGUYASgLMhUuYmludWkuTmF2aWdhdGVBY3Rpb25CAEgAUghuYX'
    'ZpZ2F0ZRIzCghvcGVuTGluaxgCKAsyFS5iaW51aS5PcGVuTGlua0FjdGlvbkIASABSCG9wZW5M'
    'aW5rEjwKC3N3YXBPdmVybGF5GAMoCzIYLmJpbnVpLlN3YXBPdmVybGF5QWN0aW9uQgBIAFILc3'
    'dhcE92ZXJsYXkSPwoMY2xvc2VPdmVybGF5GAQoCzIZLmJpbnVpLkNsb3NlT3ZlcmxheUFjdGlv'
    'bkIASABSDGNsb3NlT3ZlcmxheRInCgRiYWNrGAUoCzIRLmJpbnVpLkJhY2tBY3Rpb25CAEgAUg'
    'RiYWNrQgYKBHR5cGU=');

@$core.Deprecated('Use navigateActionDescriptor instead')
const NavigateAction$json = {
  '1': 'NavigateAction',
  '2': [
    {'1': 'destinationId', '3': 1, '5': 9, '8': {}, '10': 'destinationId'},
  ],
};

/// Descriptor for `NavigateAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List navigateActionDescriptor = $convert.base64Decode(
    'Cg5OYXZpZ2F0ZUFjdGlvbhIkCg1kZXN0aW5hdGlvbklkGAEoCUIAUg1kZXN0aW5hdGlvbklk');

@$core.Deprecated('Use openLinkActionDescriptor instead')
const OpenLinkAction$json = {
  '1': 'OpenLinkAction',
  '2': [
    {'1': 'url', '3': 1, '5': 9, '8': {}, '10': 'url'},
  ],
};

/// Descriptor for `OpenLinkAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openLinkActionDescriptor =
    $convert.base64Decode('Cg5PcGVuTGlua0FjdGlvbhIQCgN1cmwYASgJQgBSA3VybA==');

@$core.Deprecated('Use swapOverlayActionDescriptor instead')
const SwapOverlayAction$json = {
  '1': 'SwapOverlayAction',
  '2': [
    {'1': 'overlayId', '3': 1, '5': 9, '8': {}, '10': 'overlayId'},
  ],
};

/// Descriptor for `SwapOverlayAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List swapOverlayActionDescriptor = $convert.base64Decode(
    'ChFTd2FwT3ZlcmxheUFjdGlvbhIcCglvdmVybGF5SWQYASgJQgBSCW92ZXJsYXlJZA==');

@$core.Deprecated('Use closeOverlayActionDescriptor instead')
const CloseOverlayAction$json = {
  '1': 'CloseOverlayAction',
};

/// Descriptor for `CloseOverlayAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeOverlayActionDescriptor =
    $convert.base64Decode('ChJDbG9zZU92ZXJsYXlBY3Rpb24=');

@$core.Deprecated('Use backActionDescriptor instead')
const BackAction$json = {
  '1': 'BackAction',
};

/// Descriptor for `BackAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List backActionDescriptor =
    $convert.base64Decode('CgpCYWNrQWN0aW9u');

@$core.Deprecated('Use variantValueDescriptor instead')
const VariantValue$json = {
  '1': 'VariantValue',
  '2': [
    {'1': 'componentId', '3': 1, '5': 5, '8': {}, '10': 'componentId'},
    {'1': 'variantId', '3': 2, '5': 5, '8': {}, '10': 'variantId'},
    {'1': 'valueId', '3': 3, '5': 5, '8': {}, '10': 'valueId'},
  ],
};

/// Descriptor for `VariantValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variantValueDescriptor = $convert.base64Decode(
    'CgxWYXJpYW50VmFsdWUSIAoLY29tcG9uZW50SWQYASgFQgBSC2NvbXBvbmVudElkEhwKCXZhcm'
    'lhbnRJZBgCKAVCAFIJdmFyaWFudElkEhgKB3ZhbHVlSWQYAygFQgBSB3ZhbHVlSWQ=');

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
      '1': 'instance',
      '3': 8,
      '5': 11,
      '6': '.binui.InstanceNode',
      '8': {},
      '9': 0,
      '10': 'instance'
    },
    {
      '1': 'booleanOperation',
      '3': 9,
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
    'VjdG9yEiUKBHRleHQYBygLMg8uYmludWkuVGV4dE5vZGVCAEgAUgR0ZXh0EjEKCGluc3RhbmNl'
    'GAgoCzITLmJpbnVpLkluc3RhbmNlTm9kZUIASABSCGluc3RhbmNlEkkKEGJvb2xlYW5PcGVyYX'
    'Rpb24YCSgLMhsuYmludWkuQm9vbGVhbk9wZXJhdGlvbk5vZGVCAEgAUhBib29sZWFuT3BlcmF0'
    'aW9uQgYKBHR5cGU=');

@$core.Deprecated('Use baseNodePropertiesDescriptor instead')
const BaseNodeProperties$json = {
  '1': 'BaseNodeProperties',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
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

/// Descriptor for `BaseNodeProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List baseNodePropertiesDescriptor = $convert.base64Decode(
    'ChJCYXNlTm9kZVByb3BlcnRpZXMSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbW'
    'USGAoHdmlzaWJsZRgDKAhCAFIHdmlzaWJsZRImCgdvcGFjaXR5GAQoCzIMLmJpbnVpLkFsaWFz'
    'QgBSB29wYWNpdHkSLgoJYmxlbmRNb2RlGAUoDjIQLmJpbnVpLkJsZW5kTW9kZUIAUglibGVuZE'
    '1vZGU=');

@$core.Deprecated('Use geometryPropertiesDescriptor instead')
const GeometryProperties$json = {
  '1': 'GeometryProperties',
  '2': [
    {'1': 'x', '3': 1, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 2, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 3, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 4, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 5,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 8, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 9,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
  ],
};

/// Descriptor for `GeometryProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List geometryPropertiesDescriptor = $convert.base64Decode(
    'ChJHZW9tZXRyeVByb3BlcnRpZXMSDAoBeBgBKAFCAFIBeBIMCgF5GAIoAUIAUgF5EhQKBXdpZH'
    'RoGAMoAUIAUgV3aWR0aBIWCgZoZWlnaHQYBCgBQgBSBmhlaWdodBI+ChFyZWxhdGl2ZVRyYW5z'
    'Zm9ybRgFKAsyEC5iaW51aS5UcmFuc2Zvcm1CAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJzb2'
    'x1dGVUcmFuc2Zvcm0YBiABKAsyEC5iaW51aS5UcmFuc2Zvcm1CAFIRYWJzb2x1dGVUcmFuc2Zv'
    'cm0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveBgHIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1dG'
    'VCb3VuZGluZ0JveBIaCghyb3RhdGlvbhgIKAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludHMY'
    'CSABKAsyGC5iaW51aS5MYXlvdXRDb25zdHJhaW50c0IAUgtjb25zdHJhaW50cw==');

@$core.Deprecated('Use decorationPropertiesDescriptor instead')
const DecorationProperties$json = {
  '1': 'DecorationProperties',
  '2': [
    {
      '1': 'fills',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 4,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'cornerRadius',
      '3': 5,
      '5': 11,
      '6': '.binui.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
  ],
};

/// Descriptor for `DecorationProperties`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List decorationPropertiesDescriptor = $convert.base64Decode(
    'ChREZWNvcmF0aW9uUHJvcGVydGllcxIkCgVmaWxscxgBIAMoCzIMLmJpbnVpLlBhaW50QgBSBW'
    'ZpbGxzEigKB3N0cm9rZXMYAiADKAsyDC5iaW51aS5QYWludEIAUgdzdHJva2VzEikKB2VmZmVj'
    'dHMYAyADKAsyDS5iaW51aS5FZmZlY3RCAFIHZWZmZWN0cxIlCgZzdHJva2UYBCgLMg0uYmludW'
    'kuU3Ryb2tlQgBSBnN0cm9rZRI3Cgxjb3JuZXJSYWRpdXMYBSgLMhMuYmludWkuQ29ybmVyUmFk'
    'aXVzQgBSDGNvcm5lclJhZGl1cw==');

@$core.Deprecated('Use frameNodeDescriptor instead')
const FrameNode$json = {
  '1': 'FrameNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'layout',
      '3': 16,
      '5': 11,
      '6': '.binui.LayoutProperties',
      '8': {},
      '10': 'layout'
    },
    {
      '1': 'size',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildSize',
      '8': {},
      '10': 'size'
    },
    {
      '1': 'fills',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 19,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
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
      '1': 'stroke',
      '3': 21,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'cornerRadius',
      '3': 22,
      '5': 11,
      '6': '.binui.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
    {'1': 'clipContent', '3': 23, '5': 8, '8': {}, '10': 'clipContent'},
    {
      '1': 'children',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'maskType',
      '3': 25,
      '4': 1,
      '5': 14,
      '6': '.binui.MaskType',
      '8': {},
      '10': 'maskType'
    },
  ],
};

/// Descriptor for `FrameNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List frameNodeDescriptor = $convert.base64Decode(
    'CglGcmFtZU5vZGUSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSGAoHdmlzaW'
    'JsZRgDKAhCAFIHdmlzaWJsZRImCgdvcGFjaXR5GAQoCzIMLmJpbnVpLkFsaWFzQgBSB29wYWNp'
    'dHkSLgoJYmxlbmRNb2RlGAUoDjIQLmJpbnVpLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSDAoBeB'
    'gGKAFCAFIBeBIMCgF5GAcoAUIAUgF5EhQKBXdpZHRoGAgoAUIAUgV3aWR0aBIWCgZoZWlnaHQY'
    'CSgBQgBSBmhlaWdodBI+ChFyZWxhdGl2ZVRyYW5zZm9ybRgKKAsyEC5iaW51aS5UcmFuc2Zvcm'
    '1CAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJzb2x1dGVUcmFuc2Zvcm0YCyABKAsyEC5iaW51'
    'aS5UcmFuc2Zvcm1CAFIRYWJzb2x1dGVUcmFuc2Zvcm0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveB'
    'gMIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1dGVCb3VuZGluZ0JveBIaCghyb3RhdGlvbhgN'
    'KAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludHMYDiABKAsyGC5iaW51aS5MYXlvdXRDb25zdH'
    'JhaW50c0IAUgtjb25zdHJhaW50cxI4CgpsYXlvdXREYXRhGA8gASgLMhYuYmludWkuQ2hpbGRM'
    'YXlvdXREYXRhQgBSCmxheW91dERhdGESLwoGbGF5b3V0GBAoCzIXLmJpbnVpLkxheW91dFByb3'
    'BlcnRpZXNCAFIGbGF5b3V0EiYKBHNpemUYESABKAsyEC5iaW51aS5DaGlsZFNpemVCAFIEc2l6'
    'ZRIkCgVmaWxscxgSIAMoCzIMLmJpbnVpLlBhaW50QgBSBWZpbGxzEigKB3N0cm9rZXMYEyADKA'
    'syDC5iaW51aS5QYWludEIAUgdzdHJva2VzEikKB2VmZmVjdHMYFCADKAsyDS5iaW51aS5FZmZl'
    'Y3RCAFIHZWZmZWN0cxIlCgZzdHJva2UYFSgLMg0uYmludWkuU3Ryb2tlQgBSBnN0cm9rZRI3Cg'
    'xjb3JuZXJSYWRpdXMYFigLMhMuYmludWkuQ29ybmVyUmFkaXVzQgBSDGNvcm5lclJhZGl1cxIg'
    'CgtjbGlwQ29udGVudBgXKAhCAFILY2xpcENvbnRlbnQSLwoIY2hpbGRyZW4YGCADKAsyES5iaW'
    '51aS5WaXN1YWxOb2RlQgBSCGNoaWxkcmVuEi0KCG1hc2tUeXBlGBkgASgOMg8uYmludWkuTWFz'
    'a1R5cGVCAFIIbWFza1R5cGU=');

@$core.Deprecated('Use groupNodeDescriptor instead')
const GroupNode$json = {
  '1': 'GroupNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'children',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
  ],
};

/// Descriptor for `GroupNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupNodeDescriptor = $convert.base64Decode(
    'CglHcm91cE5vZGUSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSGAoHdmlzaW'
    'JsZRgDKAhCAFIHdmlzaWJsZRImCgdvcGFjaXR5GAQoCzIMLmJpbnVpLkFsaWFzQgBSB29wYWNp'
    'dHkSLgoJYmxlbmRNb2RlGAUoDjIQLmJpbnVpLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSDAoBeB'
    'gGKAFCAFIBeBIMCgF5GAcoAUIAUgF5EhQKBXdpZHRoGAgoAUIAUgV3aWR0aBIWCgZoZWlnaHQY'
    'CSgBQgBSBmhlaWdodBI+ChFyZWxhdGl2ZVRyYW5zZm9ybRgKKAsyEC5iaW51aS5UcmFuc2Zvcm'
    '1CAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJzb2x1dGVUcmFuc2Zvcm0YCyABKAsyEC5iaW51'
    'aS5UcmFuc2Zvcm1CAFIRYWJzb2x1dGVUcmFuc2Zvcm0SPwoTYWJzb2x1dGVCb3VuZGluZ0JveB'
    'gMIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1dGVCb3VuZGluZ0JveBIaCghyb3RhdGlvbhgN'
    'KAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludHMYDiABKAsyGC5iaW51aS5MYXlvdXRDb25zdH'
    'JhaW50c0IAUgtjb25zdHJhaW50cxI4CgpsYXlvdXREYXRhGA8gASgLMhYuYmludWkuQ2hpbGRM'
    'YXlvdXREYXRhQgBSCmxheW91dERhdGESLwoIY2hpbGRyZW4YECADKAsyES5iaW51aS5WaXN1YW'
    'xOb2RlQgBSCGNoaWxkcmVu');

@$core.Deprecated('Use rectangleNodeDescriptor instead')
const RectangleNode$json = {
  '1': 'RectangleNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'fills',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 19,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'cornerRadius',
      '3': 20,
      '5': 11,
      '6': '.binui.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'maskType',
      '3': 21,
      '4': 1,
      '5': 14,
      '6': '.binui.MaskType',
      '8': {},
      '10': 'maskType'
    },
  ],
};

/// Descriptor for `RectangleNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rectangleNodeDescriptor = $convert.base64Decode(
    'Cg1SZWN0YW5nbGVOb2RlEg4KAmlkGAEoCUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEhgKB3'
    'Zpc2libGUYAygIQgBSB3Zpc2libGUSJgoHb3BhY2l0eRgEKAsyDC5iaW51aS5BbGlhc0IAUgdv'
    'cGFjaXR5Ei4KCWJsZW5kTW9kZRgFKA4yEC5iaW51aS5CbGVuZE1vZGVCAFIJYmxlbmRNb2RlEg'
    'wKAXgYBigBQgBSAXgSDAoBeRgHKAFCAFIBeRIUCgV3aWR0aBgIKAFCAFIFd2lkdGgSFgoGaGVp'
    'Z2h0GAkoAUIAUgZoZWlnaHQSPgoRcmVsYXRpdmVUcmFuc2Zvcm0YCigLMhAuYmludWkuVHJhbn'
    'Nmb3JtQgBSEXJlbGF0aXZlVHJhbnNmb3JtEkAKEWFic29sdXRlVHJhbnNmb3JtGAsgASgLMhAu'
    'YmludWkuVHJhbnNmb3JtQgBSEWFic29sdXRlVHJhbnNmb3JtEj8KE2Fic29sdXRlQm91bmRpbm'
    'dCb3gYDCABKAsyCy5iaW51aS5SZWN0QgBSE2Fic29sdXRlQm91bmRpbmdCb3gSGgoIcm90YXRp'
    'b24YDSgBQgBSCHJvdGF0aW9uEjwKC2NvbnN0cmFpbnRzGA4gASgLMhguYmludWkuTGF5b3V0Q2'
    '9uc3RyYWludHNCAFILY29uc3RyYWludHMSOAoKbGF5b3V0RGF0YRgPIAEoCzIWLmJpbnVpLkNo'
    'aWxkTGF5b3V0RGF0YUIAUgpsYXlvdXREYXRhEiQKBWZpbGxzGBAgAygLMgwuYmludWkuUGFpbn'
    'RCAFIFZmlsbHMSKAoHc3Ryb2tlcxgRIAMoCzIMLmJpbnVpLlBhaW50QgBSB3N0cm9rZXMSKQoH'
    'ZWZmZWN0cxgSIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdlZmZlY3RzEiUKBnN0cm9rZRgTKAsyDS'
    '5iaW51aS5TdHJva2VCAFIGc3Ryb2tlEjcKDGNvcm5lclJhZGl1cxgUKAsyEy5iaW51aS5Db3Ju'
    'ZXJSYWRpdXNCAFIMY29ybmVyUmFkaXVzEi0KCG1hc2tUeXBlGBUgASgOMg8uYmludWkuTWFza1'
    'R5cGVCAFIIbWFza1R5cGU=');

@$core.Deprecated('Use ellipseNodeDescriptor instead')
const EllipseNode$json = {
  '1': 'EllipseNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'fills',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 19,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'arcData',
      '3': 20,
      '4': 1,
      '5': 11,
      '6': '.binui.ArcData',
      '8': {},
      '10': 'arcData'
    },
    {
      '1': 'maskType',
      '3': 21,
      '4': 1,
      '5': 14,
      '6': '.binui.MaskType',
      '8': {},
      '10': 'maskType'
    },
  ],
};

/// Descriptor for `EllipseNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ellipseNodeDescriptor = $convert.base64Decode(
    'CgtFbGxpcHNlTm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZRIYCgd2aX'
    'NpYmxlGAMoCEIAUgd2aXNpYmxlEiYKB29wYWNpdHkYBCgLMgwuYmludWkuQWxpYXNCAFIHb3Bh'
    'Y2l0eRIuCglibGVuZE1vZGUYBSgOMhAuYmludWkuQmxlbmRNb2RlQgBSCWJsZW5kTW9kZRIMCg'
    'F4GAYoAUIAUgF4EgwKAXkYBygBQgBSAXkSFAoFd2lkdGgYCCgBQgBSBXdpZHRoEhYKBmhlaWdo'
    'dBgJKAFCAFIGaGVpZ2h0Ej4KEXJlbGF0aXZlVHJhbnNmb3JtGAooCzIQLmJpbnVpLlRyYW5zZm'
    '9ybUIAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFhYnNvbHV0ZVRyYW5zZm9ybRgLIAEoCzIQLmJp'
    'bnVpLlRyYW5zZm9ybUIAUhFhYnNvbHV0ZVRyYW5zZm9ybRI/ChNhYnNvbHV0ZUJvdW5kaW5nQm'
    '94GAwgASgLMgsuYmludWkuUmVjdEIAUhNhYnNvbHV0ZUJvdW5kaW5nQm94EhoKCHJvdGF0aW9u'
    'GA0oAUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW50cxgOIAEoCzIYLmJpbnVpLkxheW91dENvbn'
    'N0cmFpbnRzQgBSC2NvbnN0cmFpbnRzEjgKCmxheW91dERhdGEYDyABKAsyFi5iaW51aS5DaGls'
    'ZExheW91dERhdGFCAFIKbGF5b3V0RGF0YRIkCgVmaWxscxgQIAMoCzIMLmJpbnVpLlBhaW50Qg'
    'BSBWZpbGxzEigKB3N0cm9rZXMYESADKAsyDC5iaW51aS5QYWludEIAUgdzdHJva2VzEikKB2Vm'
    'ZmVjdHMYEiADKAsyDS5iaW51aS5FZmZlY3RCAFIHZWZmZWN0cxIlCgZzdHJva2UYEygLMg0uYm'
    'ludWkuU3Ryb2tlQgBSBnN0cm9rZRIqCgdhcmNEYXRhGBQgASgLMg4uYmludWkuQXJjRGF0YUIA'
    'UgdhcmNEYXRhEi0KCG1hc2tUeXBlGBUgASgOMg8uYmludWkuTWFza1R5cGVCAFIIbWFza1R5cG'
    'U=');

@$core.Deprecated('Use lineNodeDescriptor instead')
const LineNode$json = {
  '1': 'LineNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'fills',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 19,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'strokeCap',
      '3': 20,
      '5': 14,
      '6': '.binui.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
  ],
};

/// Descriptor for `LineNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lineNodeDescriptor = $convert.base64Decode(
    'CghMaW5lTm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZRIYCgd2aXNpYm'
    'xlGAMoCEIAUgd2aXNpYmxlEiYKB29wYWNpdHkYBCgLMgwuYmludWkuQWxpYXNCAFIHb3BhY2l0'
    'eRIuCglibGVuZE1vZGUYBSgOMhAuYmludWkuQmxlbmRNb2RlQgBSCWJsZW5kTW9kZRIMCgF4GA'
    'YoAUIAUgF4EgwKAXkYBygBQgBSAXkSFAoFd2lkdGgYCCgBQgBSBXdpZHRoEhYKBmhlaWdodBgJ'
    'KAFCAFIGaGVpZ2h0Ej4KEXJlbGF0aXZlVHJhbnNmb3JtGAooCzIQLmJpbnVpLlRyYW5zZm9ybU'
    'IAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFhYnNvbHV0ZVRyYW5zZm9ybRgLIAEoCzIQLmJpbnVp'
    'LlRyYW5zZm9ybUIAUhFhYnNvbHV0ZVRyYW5zZm9ybRI/ChNhYnNvbHV0ZUJvdW5kaW5nQm94GA'
    'wgASgLMgsuYmludWkuUmVjdEIAUhNhYnNvbHV0ZUJvdW5kaW5nQm94EhoKCHJvdGF0aW9uGA0o'
    'AUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW50cxgOIAEoCzIYLmJpbnVpLkxheW91dENvbnN0cm'
    'FpbnRzQgBSC2NvbnN0cmFpbnRzEjgKCmxheW91dERhdGEYDyABKAsyFi5iaW51aS5DaGlsZExh'
    'eW91dERhdGFCAFIKbGF5b3V0RGF0YRIkCgVmaWxscxgQIAMoCzIMLmJpbnVpLlBhaW50QgBSBW'
    'ZpbGxzEigKB3N0cm9rZXMYESADKAsyDC5iaW51aS5QYWludEIAUgdzdHJva2VzEikKB2VmZmVj'
    'dHMYEiADKAsyDS5iaW51aS5FZmZlY3RCAFIHZWZmZWN0cxIlCgZzdHJva2UYEygLMg0uYmludW'
    'kuU3Ryb2tlQgBSBnN0cm9rZRIuCglzdHJva2VDYXAYFCgOMhAuYmludWkuU3Ryb2tlQ2FwQgBS'
    'CXN0cm9rZUNhcA==');

@$core.Deprecated('Use vectorNodeDescriptor instead')
const VectorNode$json = {
  '1': 'VectorNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'fills',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 19,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'cornerRadius',
      '3': 20,
      '5': 11,
      '6': '.binui.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
    {
      '1': 'vectorNetwork',
      '3': 21,
      '4': 1,
      '5': 11,
      '6': '.binui.VectorNetwork',
      '8': {},
      '10': 'vectorNetwork'
    },
    {
      '1': 'fillPaths',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorPath',
      '8': {},
      '10': 'fillPaths'
    },
    {
      '1': 'strokePaths',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.binui.VectorPath',
      '8': {},
      '10': 'strokePaths'
    },
    {
      '1': 'maskType',
      '3': 24,
      '4': 1,
      '5': 14,
      '6': '.binui.MaskType',
      '8': {},
      '10': 'maskType'
    },
  ],
};

/// Descriptor for `VectorNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorNodeDescriptor = $convert.base64Decode(
    'CgpWZWN0b3JOb2RlEg4KAmlkGAEoCUIAUgJpZBISCgRuYW1lGAIoCUIAUgRuYW1lEhgKB3Zpc2'
    'libGUYAygIQgBSB3Zpc2libGUSJgoHb3BhY2l0eRgEKAsyDC5iaW51aS5BbGlhc0IAUgdvcGFj'
    'aXR5Ei4KCWJsZW5kTW9kZRgFKA4yEC5iaW51aS5CbGVuZE1vZGVCAFIJYmxlbmRNb2RlEgwKAX'
    'gYBigBQgBSAXgSDAoBeRgHKAFCAFIBeRIUCgV3aWR0aBgIKAFCAFIFd2lkdGgSFgoGaGVpZ2h0'
    'GAkoAUIAUgZoZWlnaHQSPgoRcmVsYXRpdmVUcmFuc2Zvcm0YCigLMhAuYmludWkuVHJhbnNmb3'
    'JtQgBSEXJlbGF0aXZlVHJhbnNmb3JtEkAKEWFic29sdXRlVHJhbnNmb3JtGAsgASgLMhAuYmlu'
    'dWkuVHJhbnNmb3JtQgBSEWFic29sdXRlVHJhbnNmb3JtEj8KE2Fic29sdXRlQm91bmRpbmdCb3'
    'gYDCABKAsyCy5iaW51aS5SZWN0QgBSE2Fic29sdXRlQm91bmRpbmdCb3gSGgoIcm90YXRpb24Y'
    'DSgBQgBSCHJvdGF0aW9uEjwKC2NvbnN0cmFpbnRzGA4gASgLMhguYmludWkuTGF5b3V0Q29uc3'
    'RyYWludHNCAFILY29uc3RyYWludHMSOAoKbGF5b3V0RGF0YRgPIAEoCzIWLmJpbnVpLkNoaWxk'
    'TGF5b3V0RGF0YUIAUgpsYXlvdXREYXRhEiQKBWZpbGxzGBAgAygLMgwuYmludWkuUGFpbnRCAF'
    'IFZmlsbHMSKAoHc3Ryb2tlcxgRIAMoCzIMLmJpbnVpLlBhaW50QgBSB3N0cm9rZXMSKQoHZWZm'
    'ZWN0cxgSIAMoCzINLmJpbnVpLkVmZmVjdEIAUgdlZmZlY3RzEiUKBnN0cm9rZRgTKAsyDS5iaW'
    '51aS5TdHJva2VCAFIGc3Ryb2tlEjcKDGNvcm5lclJhZGl1cxgUKAsyEy5iaW51aS5Db3JuZXJS'
    'YWRpdXNCAFIMY29ybmVyUmFkaXVzEjwKDXZlY3Rvck5ldHdvcmsYFSABKAsyFC5iaW51aS5WZW'
    'N0b3JOZXR3b3JrQgBSDXZlY3Rvck5ldHdvcmsSMQoJZmlsbFBhdGhzGBYgAygLMhEuYmludWku'
    'VmVjdG9yUGF0aEIAUglmaWxsUGF0aHMSNQoLc3Ryb2tlUGF0aHMYFyADKAsyES5iaW51aS5WZW'
    'N0b3JQYXRoQgBSC3N0cm9rZVBhdGhzEi0KCG1hc2tUeXBlGBggASgOMg8uYmludWkuTWFza1R5'
    'cGVCAFIIbWFza1R5cGU=');

@$core.Deprecated('Use textNodeDescriptor instead')
const TextNode$json = {
  '1': 'TextNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'fills',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 19,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'characters',
      '3': 20,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'characters'
    },
    {
      '1': 'spans',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.binui.TextSpan',
      '8': {},
      '10': 'spans'
    },
    {
      '1': 'style',
      '3': 22,
      '5': 11,
      '6': '.binui.TextStyle',
      '8': {},
      '10': 'style'
    },
    {
      '1': 'textAlignHorizontal',
      '3': 23,
      '5': 14,
      '6': '.binui.TextAlignHorizontal',
      '8': {},
      '10': 'textAlignHorizontal'
    },
    {
      '1': 'textAlignVertical',
      '3': 24,
      '5': 14,
      '6': '.binui.TextAlignVertical',
      '8': {},
      '10': 'textAlignVertical'
    },
    {
      '1': 'textDecoration',
      '3': 25,
      '4': 1,
      '5': 14,
      '6': '.binui.TextDecoration',
      '8': {},
      '10': 'textDecoration'
    },
    {
      '1': 'textDecorationStyle',
      '3': 26,
      '4': 1,
      '5': 14,
      '6': '.binui.TextDecorationStyle',
      '8': {},
      '10': 'textDecorationStyle'
    },
    {
      '1': 'textCase',
      '3': 27,
      '4': 1,
      '5': 14,
      '6': '.binui.TextCase',
      '8': {},
      '10': 'textCase'
    },
    {
      '1': 'listOptions',
      '3': 28,
      '4': 1,
      '5': 11,
      '6': '.binui.TextListOptions',
      '8': {},
      '10': 'listOptions'
    },
    {
      '1': 'hyperlink',
      '3': 29,
      '4': 1,
      '5': 11,
      '6': '.binui.HyperlinkTarget',
      '8': {},
      '10': 'hyperlink'
    },
    {
      '1': 'leadingTrim',
      '3': 30,
      '4': 1,
      '5': 14,
      '6': '.binui.LeadingTrim',
      '8': {},
      '10': 'leadingTrim'
    },
  ],
};

/// Descriptor for `TextNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List textNodeDescriptor = $convert.base64Decode(
    'CghUZXh0Tm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbmFtZRIYCgd2aXNpYm'
    'xlGAMoCEIAUgd2aXNpYmxlEiYKB29wYWNpdHkYBCgLMgwuYmludWkuQWxpYXNCAFIHb3BhY2l0'
    'eRIuCglibGVuZE1vZGUYBSgOMhAuYmludWkuQmxlbmRNb2RlQgBSCWJsZW5kTW9kZRIMCgF4GA'
    'YoAUIAUgF4EgwKAXkYBygBQgBSAXkSFAoFd2lkdGgYCCgBQgBSBXdpZHRoEhYKBmhlaWdodBgJ'
    'KAFCAFIGaGVpZ2h0Ej4KEXJlbGF0aXZlVHJhbnNmb3JtGAooCzIQLmJpbnVpLlRyYW5zZm9ybU'
    'IAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFhYnNvbHV0ZVRyYW5zZm9ybRgLIAEoCzIQLmJpbnVp'
    'LlRyYW5zZm9ybUIAUhFhYnNvbHV0ZVRyYW5zZm9ybRI/ChNhYnNvbHV0ZUJvdW5kaW5nQm94GA'
    'wgASgLMgsuYmludWkuUmVjdEIAUhNhYnNvbHV0ZUJvdW5kaW5nQm94EhoKCHJvdGF0aW9uGA0o'
    'AUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW50cxgOIAEoCzIYLmJpbnVpLkxheW91dENvbnN0cm'
    'FpbnRzQgBSC2NvbnN0cmFpbnRzEjgKCmxheW91dERhdGEYDyABKAsyFi5iaW51aS5DaGlsZExh'
    'eW91dERhdGFCAFIKbGF5b3V0RGF0YRIkCgVmaWxscxgQIAMoCzIMLmJpbnVpLlBhaW50QgBSBW'
    'ZpbGxzEigKB3N0cm9rZXMYESADKAsyDC5iaW51aS5QYWludEIAUgdzdHJva2VzEikKB2VmZmVj'
    'dHMYEiADKAsyDS5iaW51aS5FZmZlY3RCAFIHZWZmZWN0cxIlCgZzdHJva2UYEygLMg0uYmludW'
    'kuU3Ryb2tlQgBSBnN0cm9rZRIsCgpjaGFyYWN0ZXJzGBQoCzIMLmJpbnVpLkFsaWFzQgBSCmNo'
    'YXJhY3RlcnMSJwoFc3BhbnMYFSADKAsyDy5iaW51aS5UZXh0U3BhbkIAUgVzcGFucxImCgVzdH'
    'lsZRgWKAsyEC5iaW51aS5UZXh0U3R5bGVCAFIFc3R5bGUSTAoTdGV4dEFsaWduSG9yaXpvbnRh'
    'bBgXKA4yGi5iaW51aS5UZXh0QWxpZ25Ib3Jpem9udGFsQgBSE3RleHRBbGlnbkhvcml6b250YW'
    'wSRgoRdGV4dEFsaWduVmVydGljYWwYGCgOMhguYmludWkuVGV4dEFsaWduVmVydGljYWxCAFIR'
    'dGV4dEFsaWduVmVydGljYWwSPwoOdGV4dERlY29yYXRpb24YGSABKA4yFS5iaW51aS5UZXh0RG'
    'Vjb3JhdGlvbkIAUg50ZXh0RGVjb3JhdGlvbhJOChN0ZXh0RGVjb3JhdGlvblN0eWxlGBogASgO'
    'MhouYmludWkuVGV4dERlY29yYXRpb25TdHlsZUIAUhN0ZXh0RGVjb3JhdGlvblN0eWxlEi0KCH'
    'RleHRDYXNlGBsgASgOMg8uYmludWkuVGV4dENhc2VCAFIIdGV4dENhc2USOgoLbGlzdE9wdGlv'
    'bnMYHCABKAsyFi5iaW51aS5UZXh0TGlzdE9wdGlvbnNCAFILbGlzdE9wdGlvbnMSNgoJaHlwZX'
    'JsaW5rGB0gASgLMhYuYmludWkuSHlwZXJsaW5rVGFyZ2V0QgBSCWh5cGVybGluaxI2CgtsZWFk'
    'aW5nVHJpbRgeIAEoDjISLmJpbnVpLkxlYWRpbmdUcmltQgBSC2xlYWRpbmdUcmlt');

@$core.Deprecated('Use instanceNodeDescriptor instead')
const InstanceNode$json = {
  '1': 'InstanceNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'layout',
      '3': 16,
      '5': 11,
      '6': '.binui.LayoutProperties',
      '8': {},
      '10': 'layout'
    },
    {
      '1': 'size',
      '3': 17,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildSize',
      '8': {},
      '10': 'size'
    },
    {
      '1': 'fills',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 19,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
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
      '1': 'stroke',
      '3': 21,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'cornerRadius',
      '3': 22,
      '5': 11,
      '6': '.binui.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
    {'1': 'clipContent', '3': 23, '5': 8, '8': {}, '10': 'clipContent'},
    {
      '1': 'children',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
    {
      '1': 'mainComponentId',
      '3': 25,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'mainComponentId'
    },
    {
      '1': 'componentProperties',
      '3': 26,
      '4': 3,
      '5': 11,
      '6': '.binui.ComponentPropertyValue',
      '8': {},
      '10': 'componentProperties'
    },
  ],
};

/// Descriptor for `InstanceNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List instanceNodeDescriptor = $convert.base64Decode(
    'CgxJbnN0YW5jZU5vZGUSDgoCaWQYASgJQgBSAmlkEhIKBG5hbWUYAigJQgBSBG5hbWUSGAoHdm'
    'lzaWJsZRgDKAhCAFIHdmlzaWJsZRImCgdvcGFjaXR5GAQoCzIMLmJpbnVpLkFsaWFzQgBSB29w'
    'YWNpdHkSLgoJYmxlbmRNb2RlGAUoDjIQLmJpbnVpLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSDA'
    'oBeBgGKAFCAFIBeBIMCgF5GAcoAUIAUgF5EhQKBXdpZHRoGAgoAUIAUgV3aWR0aBIWCgZoZWln'
    'aHQYCSgBQgBSBmhlaWdodBI+ChFyZWxhdGl2ZVRyYW5zZm9ybRgKKAsyEC5iaW51aS5UcmFuc2'
    'Zvcm1CAFIRcmVsYXRpdmVUcmFuc2Zvcm0SQAoRYWJzb2x1dGVUcmFuc2Zvcm0YCyABKAsyEC5i'
    'aW51aS5UcmFuc2Zvcm1CAFIRYWJzb2x1dGVUcmFuc2Zvcm0SPwoTYWJzb2x1dGVCb3VuZGluZ0'
    'JveBgMIAEoCzILLmJpbnVpLlJlY3RCAFITYWJzb2x1dGVCb3VuZGluZ0JveBIaCghyb3RhdGlv'
    'bhgNKAFCAFIIcm90YXRpb24SPAoLY29uc3RyYWludHMYDiABKAsyGC5iaW51aS5MYXlvdXRDb2'
    '5zdHJhaW50c0IAUgtjb25zdHJhaW50cxI4CgpsYXlvdXREYXRhGA8gASgLMhYuYmludWkuQ2hp'
    'bGRMYXlvdXREYXRhQgBSCmxheW91dERhdGESLwoGbGF5b3V0GBAoCzIXLmJpbnVpLkxheW91dF'
    'Byb3BlcnRpZXNCAFIGbGF5b3V0EiYKBHNpemUYESABKAsyEC5iaW51aS5DaGlsZFNpemVCAFIE'
    'c2l6ZRIkCgVmaWxscxgSIAMoCzIMLmJpbnVpLlBhaW50QgBSBWZpbGxzEigKB3N0cm9rZXMYEy'
    'ADKAsyDC5iaW51aS5QYWludEIAUgdzdHJva2VzEikKB2VmZmVjdHMYFCADKAsyDS5iaW51aS5F'
    'ZmZlY3RCAFIHZWZmZWN0cxIlCgZzdHJva2UYFSgLMg0uYmludWkuU3Ryb2tlQgBSBnN0cm9rZR'
    'I3Cgxjb3JuZXJSYWRpdXMYFigLMhMuYmludWkuQ29ybmVyUmFkaXVzQgBSDGNvcm5lclJhZGl1'
    'cxIgCgtjbGlwQ29udGVudBgXKAhCAFILY2xpcENvbnRlbnQSLwoIY2hpbGRyZW4YGCADKAsyES'
    '5iaW51aS5WaXN1YWxOb2RlQgBSCGNoaWxkcmVuEioKD21haW5Db21wb25lbnRJZBgZIAEoCUIA'
    'Ug9tYWluQ29tcG9uZW50SWQSUQoTY29tcG9uZW50UHJvcGVydGllcxgaIAMoCzIdLmJpbnVpLk'
    'NvbXBvbmVudFByb3BlcnR5VmFsdWVCAFITY29tcG9uZW50UHJvcGVydGllcw==');

@$core.Deprecated('Use componentPropertyValueDescriptor instead')
const ComponentPropertyValue$json = {
  '1': 'ComponentPropertyValue',
  '2': [
    {'1': 'key', '3': 1, '5': 9, '8': {}, '10': 'key'},
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

/// Descriptor for `ComponentPropertyValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentPropertyValueDescriptor =
    $convert.base64Decode(
        'ChZDb21wb25lbnRQcm9wZXJ0eVZhbHVlEhAKA2tleRgBKAlCAFIDa2V5EiIKBXZhbHVlGAIoCz'
        'IMLmJpbnVpLlZhbHVlQgBSBXZhbHVl');

@$core.Deprecated('Use booleanOperationNodeDescriptor instead')
const BooleanOperationNode$json = {
  '1': 'BooleanOperationNode',
  '2': [
    {'1': 'id', '3': 1, '5': 9, '8': {}, '10': 'id'},
    {'1': 'name', '3': 2, '5': 9, '8': {}, '10': 'name'},
    {'1': 'visible', '3': 3, '5': 8, '8': {}, '10': 'visible'},
    {
      '1': 'opacity',
      '3': 4,
      '5': 11,
      '6': '.binui.Alias',
      '8': {},
      '10': 'opacity'
    },
    {
      '1': 'blendMode',
      '3': 5,
      '5': 14,
      '6': '.binui.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {'1': 'x', '3': 6, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 7, '5': 1, '8': {}, '10': 'y'},
    {'1': 'width', '3': 8, '5': 1, '8': {}, '10': 'width'},
    {'1': 'height', '3': 9, '5': 1, '8': {}, '10': 'height'},
    {
      '1': 'relativeTransform',
      '3': 10,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'relativeTransform'
    },
    {
      '1': 'absoluteTransform',
      '3': 11,
      '4': 1,
      '5': 11,
      '6': '.binui.Transform',
      '8': {},
      '10': 'absoluteTransform'
    },
    {
      '1': 'absoluteBoundingBox',
      '3': 12,
      '4': 1,
      '5': 11,
      '6': '.binui.Rect',
      '8': {},
      '10': 'absoluteBoundingBox'
    },
    {'1': 'rotation', '3': 13, '5': 1, '8': {}, '10': 'rotation'},
    {
      '1': 'constraints',
      '3': 14,
      '4': 1,
      '5': 11,
      '6': '.binui.LayoutConstraints',
      '8': {},
      '10': 'constraints'
    },
    {
      '1': 'layoutData',
      '3': 15,
      '4': 1,
      '5': 11,
      '6': '.binui.ChildLayoutData',
      '8': {},
      '10': 'layoutData'
    },
    {
      '1': 'fills',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'fills'
    },
    {
      '1': 'strokes',
      '3': 17,
      '4': 3,
      '5': 11,
      '6': '.binui.Paint',
      '8': {},
      '10': 'strokes'
    },
    {
      '1': 'effects',
      '3': 18,
      '4': 3,
      '5': 11,
      '6': '.binui.Effect',
      '8': {},
      '10': 'effects'
    },
    {
      '1': 'stroke',
      '3': 19,
      '5': 11,
      '6': '.binui.Stroke',
      '8': {},
      '10': 'stroke'
    },
    {
      '1': 'booleanOperation',
      '3': 20,
      '5': 14,
      '6': '.binui.BooleanOperation',
      '8': {},
      '10': 'booleanOperation'
    },
    {
      '1': 'children',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.binui.VisualNode',
      '8': {},
      '10': 'children'
    },
  ],
};

/// Descriptor for `BooleanOperationNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanOperationNodeDescriptor = $convert.base64Decode(
    'ChRCb29sZWFuT3BlcmF0aW9uTm9kZRIOCgJpZBgBKAlCAFICaWQSEgoEbmFtZRgCKAlCAFIEbm'
    'FtZRIYCgd2aXNpYmxlGAMoCEIAUgd2aXNpYmxlEiYKB29wYWNpdHkYBCgLMgwuYmludWkuQWxp'
    'YXNCAFIHb3BhY2l0eRIuCglibGVuZE1vZGUYBSgOMhAuYmludWkuQmxlbmRNb2RlQgBSCWJsZW'
    '5kTW9kZRIMCgF4GAYoAUIAUgF4EgwKAXkYBygBQgBSAXkSFAoFd2lkdGgYCCgBQgBSBXdpZHRo'
    'EhYKBmhlaWdodBgJKAFCAFIGaGVpZ2h0Ej4KEXJlbGF0aXZlVHJhbnNmb3JtGAooCzIQLmJpbn'
    'VpLlRyYW5zZm9ybUIAUhFyZWxhdGl2ZVRyYW5zZm9ybRJAChFhYnNvbHV0ZVRyYW5zZm9ybRgL'
    'IAEoCzIQLmJpbnVpLlRyYW5zZm9ybUIAUhFhYnNvbHV0ZVRyYW5zZm9ybRI/ChNhYnNvbHV0ZU'
    'JvdW5kaW5nQm94GAwgASgLMgsuYmludWkuUmVjdEIAUhNhYnNvbHV0ZUJvdW5kaW5nQm94EhoK'
    'CHJvdGF0aW9uGA0oAUIAUghyb3RhdGlvbhI8Cgtjb25zdHJhaW50cxgOIAEoCzIYLmJpbnVpLk'
    'xheW91dENvbnN0cmFpbnRzQgBSC2NvbnN0cmFpbnRzEjgKCmxheW91dERhdGEYDyABKAsyFi5i'
    'aW51aS5DaGlsZExheW91dERhdGFCAFIKbGF5b3V0RGF0YRIkCgVmaWxscxgQIAMoCzIMLmJpbn'
    'VpLlBhaW50QgBSBWZpbGxzEigKB3N0cm9rZXMYESADKAsyDC5iaW51aS5QYWludEIAUgdzdHJv'
    'a2VzEikKB2VmZmVjdHMYEiADKAsyDS5iaW51aS5FZmZlY3RCAFIHZWZmZWN0cxIlCgZzdHJva2'
    'UYEygLMg0uYmludWkuU3Ryb2tlQgBSBnN0cm9rZRJDChBib29sZWFuT3BlcmF0aW9uGBQoDjIX'
    'LmJpbnVpLkJvb2xlYW5PcGVyYXRpb25CAFIQYm9vbGVhbk9wZXJhdGlvbhIvCghjaGlsZHJlbh'
    'gVIAMoCzIRLmJpbnVpLlZpc3VhbE5vZGVCAFIIY2hpbGRyZW4=');
