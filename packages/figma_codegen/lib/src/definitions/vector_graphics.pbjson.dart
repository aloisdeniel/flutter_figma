// This is a generated file - do not edit.
//
// Generated from vector_graphics.proto.

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

@$core.Deprecated('Use strokeCapDescriptor instead')
const StrokeCap$json = {
  '1': 'StrokeCap',
  '2': [
    {'1': 'BUTT', '2': 0},
    {'1': 'ROUND', '2': 1},
    {'1': 'SQUARE', '2': 2},
  ],
};

/// Descriptor for `StrokeCap`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeCapDescriptor = $convert.base64Decode(
    'CglTdHJva2VDYXASCAoEQlVUVBAAEgkKBVJPVU5EEAESCgoGU1FVQVJFEAI=');

@$core.Deprecated('Use strokeJoinDescriptor instead')
const StrokeJoin$json = {
  '1': 'StrokeJoin',
  '2': [
    {'1': 'MITER', '2': 0},
    {'1': 'BEVEL', '2': 1},
    {'1': 'ROUND', '2': 2},
  ],
};

/// Descriptor for `StrokeJoin`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List strokeJoinDescriptor = $convert.base64Decode(
    'CgpTdHJva2VKb2luEgkKBU1JVEVSEAASCQoFQkVWRUwQARIJCgVST1VORBAC');

@$core.Deprecated('Use handleMirroringDescriptor instead')
const HandleMirroring$json = {
  '1': 'HandleMirroring',
  '2': [
    {'1': 'NONE', '2': 0},
    {'1': 'MIRROR', '2': 1},
    {'1': 'AVERAGE', '2': 2},
    {'1': 'ALIGN', '2': 3},
  ],
};

/// Descriptor for `HandleMirroring`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List handleMirroringDescriptor = $convert.base64Decode(
    'Cg9IYW5kbGVNaXJyb3JpbmcSCAoETk9ORRAAEgoKBk1JUlJPUhABEgsKB0FWRVJBR0UQAhIJCg'
    'VBTElHThAD');

@$core.Deprecated('Use windingRuleDescriptor instead')
const WindingRule$json = {
  '1': 'WindingRule',
  '2': [
    {'1': 'NONZERO', '2': 0},
    {'1': 'EVENODD', '2': 1},
  ],
};

/// Descriptor for `WindingRule`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List windingRuleDescriptor = $convert
    .base64Decode('CgtXaW5kaW5nUnVsZRILCgdOT05aRVJPEAASCwoHRVZFTk9ERBAB');

@$core.Deprecated('Use blendModeDescriptor instead')
const BlendMode$json = {
  '1': 'BlendMode',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'DARKEN', '2': 1},
    {'1': 'MULTIPLY', '2': 2},
    {'1': 'LINEAR_BURN', '2': 3},
    {'1': 'COLOR_BURN', '2': 4},
    {'1': 'LIGHTEN', '2': 5},
    {'1': 'SCREEN', '2': 6},
    {'1': 'LINEAR_DODGE', '2': 7},
    {'1': 'COLOR_DODGE', '2': 8},
    {'1': 'OVERLAY', '2': 9},
    {'1': 'SOFT_LIGHT', '2': 10},
    {'1': 'HARD_LIGHT', '2': 11},
    {'1': 'DIFFERENCE', '2': 12},
    {'1': 'EXCLUSION', '2': 13},
    {'1': 'HUE', '2': 14},
    {'1': 'SATURATION', '2': 15},
    {'1': 'COLOR', '2': 16},
    {'1': 'LUMINOSITY', '2': 17},
  ],
};

/// Descriptor for `BlendMode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List blendModeDescriptor = $convert.base64Decode(
    'CglCbGVuZE1vZGUSCgoGTk9STUFMEAASCgoGREFSS0VOEAESDAoITVVMVElQTFkQAhIPCgtMSU'
    '5FQVJfQlVSThADEg4KCkNPTE9SX0JVUk4QBBILCgdMSUdIVEVOEAUSCgoGU0NSRUVOEAYSEAoM'
    'TElORUFSX0RPREdFEAcSDwoLQ09MT1JfRE9ER0UQCBILCgdPVkVSTEFZEAkSDgoKU09GVF9MSU'
    'dIVBAKEg4KCkhBUkRfTElHSFQQCxIOCgpESUZGRVJFTkNFEAwSDQoJRVhDTFVTSU9OEA0SBwoD'
    'SFVFEA4SDgoKU0FUVVJBVElPThAPEgkKBUNPTE9SEBASDgoKTFVNSU5PU0lUWRAR');

@$core.Deprecated('Use gradientTypeDescriptor instead')
const GradientType$json = {
  '1': 'GradientType',
  '2': [
    {'1': 'LINEAR', '2': 0},
    {'1': 'RADIAL', '2': 1},
    {'1': 'ANGULAR', '2': 2},
    {'1': 'DIAMOND', '2': 3},
  ],
};

/// Descriptor for `GradientType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List gradientTypeDescriptor = $convert.base64Decode(
    'CgxHcmFkaWVudFR5cGUSCgoGTElORUFSEAASCgoGUkFESUFMEAESCwoHQU5HVUxBUhACEgsKB0'
    'RJQU1PTkQQAw==');

@$core.Deprecated('Use vectorGraphicsDescriptor instead')
const VectorGraphics$json = {
  '1': 'VectorGraphics',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {
      '1': 'offset',
      '3': 2,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'offset'
    },
    {
      '1': 'size',
      '3': 3,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'size'
    },
    {
      '1': 'root',
      '3': 4,
      '5': 11,
      '6': '.definitions.VectorNode',
      '8': {},
      '10': 'root'
    },
  ],
};

/// Descriptor for `VectorGraphics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorGraphicsDescriptor = $convert.base64Decode(
    'Cg5WZWN0b3JHcmFwaGljcxISCgRuYW1lGAEoCUIAUgRuYW1lEisKBm9mZnNldBgCKAsyEy5kZW'
    'Zpbml0aW9ucy5WZWN0b3JCAFIGb2Zmc2V0EicKBHNpemUYAygLMhMuZGVmaW5pdGlvbnMuVmVj'
    'dG9yQgBSBHNpemUSKwoEcm9vdBgEKAsyFy5kZWZpbml0aW9ucy5WZWN0b3JOb2RlQgBSBHJvb3'
    'Q=');

@$core.Deprecated('Use vectorNodeDescriptor instead')
const VectorNode$json = {
  '1': 'VectorNode',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'opacity', '3': 2, '5': 1, '8': {}, '10': 'opacity'},
    {
      '1': 'transform',
      '3': 3,
      '5': 11,
      '6': '.definitions.Transform',
      '8': {},
      '10': 'transform'
    },
    {
      '1': 'network',
      '3': 4,
      '5': 11,
      '6': '.definitions.VectorNetwork',
      '8': {},
      '9': 0,
      '10': 'network'
    },
    {
      '1': 'group',
      '3': 5,
      '5': 11,
      '6': '.definitions.VectorGroup',
      '8': {},
      '9': 0,
      '10': 'group'
    },
    {
      '1': 'frame',
      '3': 6,
      '5': 11,
      '6': '.definitions.VectorFrame',
      '8': {},
      '9': 0,
      '10': 'frame'
    },
    {
      '1': 'rectangle',
      '3': 7,
      '5': 11,
      '6': '.definitions.VectorRectangle',
      '8': {},
      '9': 0,
      '10': 'rectangle'
    },
    {
      '1': 'ellipse',
      '3': 8,
      '5': 11,
      '6': '.definitions.VectorEllipse',
      '8': {},
      '9': 0,
      '10': 'ellipse'
    },
    {
      '1': 'polygon',
      '3': 9,
      '5': 11,
      '6': '.definitions.VectorPolygon',
      '8': {},
      '9': 0,
      '10': 'polygon'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `VectorNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorNodeDescriptor = $convert.base64Decode(
    'CgpWZWN0b3JOb2RlEhIKBG5hbWUYASgJQgBSBG5hbWUSGAoHb3BhY2l0eRgCKAFCAFIHb3BhY2'
    'l0eRI0Cgl0cmFuc2Zvcm0YAygLMhYuZGVmaW5pdGlvbnMuVHJhbnNmb3JtQgBSCXRyYW5zZm9y'
    'bRI2CgduZXR3b3JrGAQoCzIaLmRlZmluaXRpb25zLlZlY3Rvck5ldHdvcmtCAEgAUgduZXR3b3'
    'JrEjAKBWdyb3VwGAUoCzIYLmRlZmluaXRpb25zLlZlY3Rvckdyb3VwQgBIAFIFZ3JvdXASMAoF'
    'ZnJhbWUYBigLMhguZGVmaW5pdGlvbnMuVmVjdG9yRnJhbWVCAEgAUgVmcmFtZRI8CglyZWN0YW'
    '5nbGUYBygLMhwuZGVmaW5pdGlvbnMuVmVjdG9yUmVjdGFuZ2xlQgBIAFIJcmVjdGFuZ2xlEjYK'
    'B2VsbGlwc2UYCCgLMhouZGVmaW5pdGlvbnMuVmVjdG9yRWxsaXBzZUIASABSB2VsbGlwc2USNg'
    'oHcG9seWdvbhgJKAsyGi5kZWZpbml0aW9ucy5WZWN0b3JQb2x5Z29uQgBIAFIHcG9seWdvbkIG'
    'CgR0eXBl');

@$core.Deprecated('Use vectorPolygonDescriptor instead')
const VectorPolygon$json = {
  '1': 'VectorPolygon',
  '2': [
    {
      '1': 'offset',
      '3': 3,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'offset'
    },
    {
      '1': 'size',
      '3': 4,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'size'
    },
    {'1': 'pointCount', '3': 5, '5': 5, '8': {}, '10': 'pointCount'},
    {
      '1': 'fills',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.definitions.Paint',
      '8': {},
      '10': 'fills'
    },
  ],
};

/// Descriptor for `VectorPolygon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorPolygonDescriptor = $convert.base64Decode(
    'Cg1WZWN0b3JQb2x5Z29uEisKBm9mZnNldBgDKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIGb2'
    'Zmc2V0EicKBHNpemUYBCgLMhMuZGVmaW5pdGlvbnMuVmVjdG9yQgBSBHNpemUSHgoKcG9pbnRD'
    'b3VudBgFKAVCAFIKcG9pbnRDb3VudBIqCgVmaWxscxgGIAMoCzISLmRlZmluaXRpb25zLlBhaW'
    '50QgBSBWZpbGxz');

@$core.Deprecated('Use vectorRectangleDescriptor instead')
const VectorRectangle$json = {
  '1': 'VectorRectangle',
  '2': [
    {
      '1': 'offset',
      '3': 3,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'offset'
    },
    {
      '1': 'size',
      '3': 4,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'size'
    },
    {
      '1': 'fills',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.definitions.Paint',
      '8': {},
      '10': 'fills'
    },
  ],
};

/// Descriptor for `VectorRectangle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorRectangleDescriptor = $convert.base64Decode(
    'Cg9WZWN0b3JSZWN0YW5nbGUSKwoGb2Zmc2V0GAMoCzITLmRlZmluaXRpb25zLlZlY3RvckIAUg'
    'ZvZmZzZXQSJwoEc2l6ZRgEKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIEc2l6ZRIqCgVmaWxs'
    'cxgFIAMoCzISLmRlZmluaXRpb25zLlBhaW50QgBSBWZpbGxz');

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

@$core.Deprecated('Use vectorEllipseDescriptor instead')
const VectorEllipse$json = {
  '1': 'VectorEllipse',
  '2': [
    {
      '1': 'offset',
      '3': 3,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'offset'
    },
    {
      '1': 'size',
      '3': 4,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'size'
    },
    {
      '1': 'arcData',
      '3': 5,
      '5': 11,
      '6': '.definitions.ArcData',
      '8': {},
      '10': 'arcData'
    },
    {
      '1': 'fills',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.definitions.Paint',
      '8': {},
      '10': 'fills'
    },
  ],
};

/// Descriptor for `VectorEllipse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorEllipseDescriptor = $convert.base64Decode(
    'Cg1WZWN0b3JFbGxpcHNlEisKBm9mZnNldBgDKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIGb2'
    'Zmc2V0EicKBHNpemUYBCgLMhMuZGVmaW5pdGlvbnMuVmVjdG9yQgBSBHNpemUSLgoHYXJjRGF0'
    'YRgFKAsyFC5kZWZpbml0aW9ucy5BcmNEYXRhQgBSB2FyY0RhdGESKgoFZmlsbHMYBiADKAsyEi'
    '5kZWZpbml0aW9ucy5QYWludEIAUgVmaWxscw==');

@$core.Deprecated('Use vectorNetworkDescriptor instead')
const VectorNetwork$json = {
  '1': 'VectorNetwork',
  '2': [
    {
      '1': 'offset',
      '3': 3,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'offset'
    },
    {
      '1': 'vertices',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.definitions.VectorVertex',
      '8': {},
      '10': 'vertices'
    },
    {
      '1': 'segments',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.definitions.VectorSegment',
      '8': {},
      '10': 'segments'
    },
    {
      '1': 'regions',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.definitions.VectorRegion',
      '8': {},
      '10': 'regions'
    },
  ],
};

/// Descriptor for `VectorNetwork`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorNetworkDescriptor = $convert.base64Decode(
    'Cg1WZWN0b3JOZXR3b3JrEisKBm9mZnNldBgDKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIGb2'
    'Zmc2V0EjcKCHZlcnRpY2VzGAQgAygLMhkuZGVmaW5pdGlvbnMuVmVjdG9yVmVydGV4QgBSCHZl'
    'cnRpY2VzEjgKCHNlZ21lbnRzGAUgAygLMhouZGVmaW5pdGlvbnMuVmVjdG9yU2VnbWVudEIAUg'
    'hzZWdtZW50cxI1CgdyZWdpb25zGAYgAygLMhkuZGVmaW5pdGlvbnMuVmVjdG9yUmVnaW9uQgBS'
    'B3JlZ2lvbnM=');

@$core.Deprecated('Use vectorGroupDescriptor instead')
const VectorGroup$json = {
  '1': 'VectorGroup',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'opacity', '3': 2, '5': 1, '8': {}, '10': 'opacity'},
    {
      '1': 'children',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.definitions.VectorNode',
      '8': {},
      '10': 'children'
    },
  ],
};

/// Descriptor for `VectorGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorGroupDescriptor = $convert.base64Decode(
    'CgtWZWN0b3JHcm91cBISCgRuYW1lGAEoCUIAUgRuYW1lEhgKB29wYWNpdHkYAigBQgBSB29wYW'
    'NpdHkSNQoIY2hpbGRyZW4YAyADKAsyFy5kZWZpbml0aW9ucy5WZWN0b3JOb2RlQgBSCGNoaWxk'
    'cmVu');

@$core.Deprecated('Use vectorFrameDescriptor instead')
const VectorFrame$json = {
  '1': 'VectorFrame',
  '2': [
    {'1': 'name', '3': 1, '5': 9, '8': {}, '10': 'name'},
    {'1': 'opacity', '3': 2, '5': 1, '8': {}, '10': 'opacity'},
    {
      '1': 'offset',
      '3': 3,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'offset'
    },
    {
      '1': 'size',
      '3': 4,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'size'
    },
    {
      '1': 'children',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.definitions.VectorNode',
      '8': {},
      '10': 'children'
    },
    {'1': 'isClipping', '3': 6, '5': 8, '8': {}, '10': 'isClipping'},
    {
      '1': 'cornerRadius',
      '3': 7,
      '5': 11,
      '6': '.definitions.CornerRadius',
      '8': {},
      '10': 'cornerRadius'
    },
  ],
};

/// Descriptor for `VectorFrame`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorFrameDescriptor = $convert.base64Decode(
    'CgtWZWN0b3JGcmFtZRISCgRuYW1lGAEoCUIAUgRuYW1lEhgKB29wYWNpdHkYAigBQgBSB29wYW'
    'NpdHkSKwoGb2Zmc2V0GAMoCzITLmRlZmluaXRpb25zLlZlY3RvckIAUgZvZmZzZXQSJwoEc2l6'
    'ZRgEKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIEc2l6ZRI1CghjaGlsZHJlbhgFIAMoCzIXLm'
    'RlZmluaXRpb25zLlZlY3Rvck5vZGVCAFIIY2hpbGRyZW4SHgoKaXNDbGlwcGluZxgGKAhCAFIK'
    'aXNDbGlwcGluZxI9Cgxjb3JuZXJSYWRpdXMYBygLMhkuZGVmaW5pdGlvbnMuQ29ybmVyUmFkaX'
    'VzQgBSDGNvcm5lclJhZGl1cw==');

@$core.Deprecated('Use cornerRadiusDescriptor instead')
const CornerRadius$json = {
  '1': 'CornerRadius',
  '2': [
    {'1': 'topLeft', '3': 1, '5': 1, '8': {}, '10': 'topLeft'},
    {'1': 'topRight', '3': 2, '5': 1, '8': {}, '10': 'topRight'},
    {'1': 'bottomLeft', '3': 3, '5': 1, '8': {}, '10': 'bottomLeft'},
    {'1': 'bottomRight', '3': 4, '5': 1, '8': {}, '10': 'bottomRight'},
  ],
};

/// Descriptor for `CornerRadius`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cornerRadiusDescriptor = $convert.base64Decode(
    'CgxDb3JuZXJSYWRpdXMSGAoHdG9wTGVmdBgBKAFCAFIHdG9wTGVmdBIaCgh0b3BSaWdodBgCKA'
    'FCAFIIdG9wUmlnaHQSHgoKYm90dG9tTGVmdBgDKAFCAFIKYm90dG9tTGVmdBIgCgtib3R0b21S'
    'aWdodBgEKAFCAFILYm90dG9tUmlnaHQ=');

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
      '6': '.definitions.StrokeCap',
      '8': {},
      '10': 'strokeCap'
    },
    {
      '1': 'strokeJoin',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.definitions.StrokeJoin',
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
      '6': '.definitions.HandleMirroring',
      '8': {},
      '10': 'handleMirroring'
    },
  ],
};

/// Descriptor for `VectorVertex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorVertexDescriptor = $convert.base64Decode(
    'CgxWZWN0b3JWZXJ0ZXgSDAoBeBgBKAFCAFIBeBIMCgF5GAIoAUIAUgF5EjYKCXN0cm9rZUNhcB'
    'gDIAEoDjIWLmRlZmluaXRpb25zLlN0cm9rZUNhcEIAUglzdHJva2VDYXASOQoKc3Ryb2tlSm9p'
    'bhgEIAEoDjIXLmRlZmluaXRpb25zLlN0cm9rZUpvaW5CAFIKc3Ryb2tlSm9pbhIkCgxjb3JuZX'
    'JSYWRpdXMYBSABKAFCAFIMY29ybmVyUmFkaXVzEkgKD2hhbmRsZU1pcnJvcmluZxgGIAEoDjIc'
    'LmRlZmluaXRpb25zLkhhbmRsZU1pcnJvcmluZ0IAUg9oYW5kbGVNaXJyb3Jpbmc=');

@$core.Deprecated('Use vectorDescriptor instead')
const Vector$json = {
  '1': 'Vector',
  '2': [
    {'1': 'x', '3': 1, '5': 1, '8': {}, '10': 'x'},
    {'1': 'y', '3': 2, '5': 1, '8': {}, '10': 'y'},
  ],
};

/// Descriptor for `Vector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorDescriptor =
    $convert.base64Decode('CgZWZWN0b3ISDAoBeBgBKAFCAFIBeBIMCgF5GAIoAUIAUgF5');

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
      '6': '.definitions.Vector',
      '8': {},
      '10': 'tangentStart'
    },
    {
      '1': 'tangentEnd',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.definitions.Vector',
      '8': {},
      '10': 'tangentEnd'
    },
  ],
};

/// Descriptor for `VectorSegment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorSegmentDescriptor = $convert.base64Decode(
    'Cg1WZWN0b3JTZWdtZW50EhQKBXN0YXJ0GAEoBUIAUgVzdGFydBIQCgNlbmQYAigFQgBSA2VuZB'
    'I5Cgx0YW5nZW50U3RhcnQYAyABKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIMdGFuZ2VudFN0'
    'YXJ0EjUKCnRhbmdlbnRFbmQYBCABKAsyEy5kZWZpbml0aW9ucy5WZWN0b3JCAFIKdGFuZ2VudE'
    'VuZA==');

@$core.Deprecated('Use vectorRegionLoopDescriptor instead')
const VectorRegionLoop$json = {
  '1': 'VectorRegionLoop',
  '2': [
    {'1': 'segments', '3': 1, '4': 3, '5': 5, '8': {}, '10': 'segments'},
  ],
};

/// Descriptor for `VectorRegionLoop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorRegionLoopDescriptor = $convert.base64Decode(
    'ChBWZWN0b3JSZWdpb25Mb29wEhwKCHNlZ21lbnRzGAEgAygFQgBSCHNlZ21lbnRz');

@$core.Deprecated('Use vectorRegionDescriptor instead')
const VectorRegion$json = {
  '1': 'VectorRegion',
  '2': [
    {
      '1': 'windingRule',
      '3': 1,
      '5': 14,
      '6': '.definitions.WindingRule',
      '8': {},
      '10': 'windingRule'
    },
    {
      '1': 'loops',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.definitions.VectorRegionLoop',
      '8': {},
      '10': 'loops'
    },
    {
      '1': 'fills',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.definitions.Paint',
      '8': {},
      '10': 'fills'
    },
  ],
};

/// Descriptor for `VectorRegion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vectorRegionDescriptor = $convert.base64Decode(
    'CgxWZWN0b3JSZWdpb24SOgoLd2luZGluZ1J1bGUYASgOMhguZGVmaW5pdGlvbnMuV2luZGluZ1'
    'J1bGVCAFILd2luZGluZ1J1bGUSNQoFbG9vcHMYAiADKAsyHS5kZWZpbml0aW9ucy5WZWN0b3JS'
    'ZWdpb25Mb29wQgBSBWxvb3BzEioKBWZpbGxzGAMgAygLMhIuZGVmaW5pdGlvbnMuUGFpbnRCAF'
    'IFZmlsbHM=');

@$core.Deprecated('Use rGBADescriptor instead')
const RGBA$json = {
  '1': 'RGBA',
  '2': [
    {'1': 'r', '3': 1, '5': 1, '8': {}, '10': 'r'},
    {'1': 'g', '3': 2, '5': 1, '8': {}, '10': 'g'},
    {'1': 'b', '3': 3, '5': 1, '8': {}, '10': 'b'},
    {'1': 'a', '3': 4, '5': 1, '8': {}, '10': 'a'},
  ],
};

/// Descriptor for `RGBA`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rGBADescriptor = $convert.base64Decode(
    'CgRSR0JBEgwKAXIYASgBQgBSAXISDAoBZxgCKAFCAFIBZxIMCgFiGAMoAUIAUgFiEgwKAWEYBC'
    'gBQgBSAWE=');

@$core.Deprecated('Use transformDescriptor instead')
const Transform$json = {
  '1': 'Transform',
  '2': [
    {'1': 'm00', '3': 1, '5': 1, '8': {}, '10': 'm00'},
    {'1': 'm01', '3': 2, '5': 1, '8': {}, '10': 'm01'},
    {'1': 'm10', '3': 3, '5': 1, '8': {}, '10': 'm10'},
    {'1': 'm11', '3': 4, '5': 1, '8': {}, '10': 'm11'},
    {'1': 'm02', '3': 5, '5': 1, '8': {}, '10': 'm02'},
    {'1': 'm12', '3': 6, '5': 1, '8': {}, '10': 'm12'},
  ],
};

/// Descriptor for `Transform`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transformDescriptor = $convert.base64Decode(
    'CglUcmFuc2Zvcm0SEAoDbTAwGAEoAUIAUgNtMDASEAoDbTAxGAIoAUIAUgNtMDESEAoDbTEwGA'
    'MoAUIAUgNtMTASEAoDbTExGAQoAUIAUgNtMTESEAoDbTAyGAUoAUIAUgNtMDISEAoDbTEyGAYo'
    'AUIAUgNtMTI=');

@$core.Deprecated('Use paintDescriptor instead')
const Paint$json = {
  '1': 'Paint',
  '2': [
    {'1': 'opacity', '3': 1, '5': 1, '8': {}, '10': 'opacity'},
    {
      '1': 'blendMode',
      '3': 2,
      '4': 1,
      '5': 14,
      '6': '.definitions.BlendMode',
      '8': {},
      '10': 'blendMode'
    },
    {
      '1': 'solid',
      '3': 3,
      '5': 11,
      '6': '.definitions.SolidPaint',
      '8': {},
      '9': 0,
      '10': 'solid'
    },
    {
      '1': 'gradient',
      '3': 4,
      '5': 11,
      '6': '.definitions.GradientPaint',
      '8': {},
      '9': 0,
      '10': 'gradient'
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `Paint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paintDescriptor = $convert.base64Decode(
    'CgVQYWludBIYCgdvcGFjaXR5GAEoAUIAUgdvcGFjaXR5EjYKCWJsZW5kTW9kZRgCIAEoDjIWLm'
    'RlZmluaXRpb25zLkJsZW5kTW9kZUIAUglibGVuZE1vZGUSLwoFc29saWQYAygLMhcuZGVmaW5p'
    'dGlvbnMuU29saWRQYWludEIASABSBXNvbGlkEjgKCGdyYWRpZW50GAQoCzIaLmRlZmluaXRpb2'
    '5zLkdyYWRpZW50UGFpbnRCAEgAUghncmFkaWVudEIGCgR0eXBl');

@$core.Deprecated('Use boundVariableDescriptor instead')
const BoundVariable$json = {
  '1': 'BoundVariable',
  '2': [
    {'1': 'collectionId', '3': 1, '5': 5, '8': {}, '10': 'collectionId'},
    {'1': 'variableId', '3': 2, '5': 5, '8': {}, '10': 'variableId'},
  ],
};

/// Descriptor for `BoundVariable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundVariableDescriptor = $convert.base64Decode(
    'Cg1Cb3VuZFZhcmlhYmxlEiIKDGNvbGxlY3Rpb25JZBgBKAVCAFIMY29sbGVjdGlvbklkEh4KCn'
    'ZhcmlhYmxlSWQYAigFQgBSCnZhcmlhYmxlSWQ=');

@$core.Deprecated('Use solidPaintDescriptor instead')
const SolidPaint$json = {
  '1': 'SolidPaint',
  '2': [
    {
      '1': 'value',
      '3': 1,
      '5': 11,
      '6': '.definitions.RGBA',
      '8': {},
      '9': 0,
      '10': 'value'
    },
    {
      '1': 'bound',
      '3': 2,
      '5': 11,
      '6': '.definitions.BoundVariable',
      '8': {},
      '9': 0,
      '10': 'bound'
    },
  ],
  '8': [
    {'1': 'color'},
  ],
};

/// Descriptor for `SolidPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List solidPaintDescriptor = $convert.base64Decode(
    'CgpTb2xpZFBhaW50EikKBXZhbHVlGAEoCzIRLmRlZmluaXRpb25zLlJHQkFCAEgAUgV2YWx1ZR'
    'IyCgVib3VuZBgCKAsyGi5kZWZpbml0aW9ucy5Cb3VuZFZhcmlhYmxlQgBIAFIFYm91bmRCBwoF'
    'Y29sb3I=');

@$core.Deprecated('Use colorStopDescriptor instead')
const ColorStop$json = {
  '1': 'ColorStop',
  '2': [
    {'1': 'position', '3': 1, '5': 1, '8': {}, '10': 'position'},
    {
      '1': 'value',
      '3': 2,
      '5': 11,
      '6': '.definitions.RGBA',
      '8': {},
      '9': 0,
      '10': 'value'
    },
    {
      '1': 'bound',
      '3': 3,
      '5': 11,
      '6': '.definitions.BoundVariable',
      '8': {},
      '9': 0,
      '10': 'bound'
    },
  ],
  '8': [
    {'1': 'color'},
  ],
};

/// Descriptor for `ColorStop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List colorStopDescriptor = $convert.base64Decode(
    'CglDb2xvclN0b3ASGgoIcG9zaXRpb24YASgBQgBSCHBvc2l0aW9uEikKBXZhbHVlGAIoCzIRLm'
    'RlZmluaXRpb25zLlJHQkFCAEgAUgV2YWx1ZRIyCgVib3VuZBgDKAsyGi5kZWZpbml0aW9ucy5C'
    'b3VuZFZhcmlhYmxlQgBIAFIFYm91bmRCBwoFY29sb3I=');

@$core.Deprecated('Use gradientPaintDescriptor instead')
const GradientPaint$json = {
  '1': 'GradientPaint',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '5': 14,
      '6': '.definitions.GradientType',
      '8': {},
      '10': 'type'
    },
    {
      '1': 'gradientTransform',
      '3': 2,
      '5': 11,
      '6': '.definitions.Transform',
      '8': {},
      '10': 'gradientTransform'
    },
    {
      '1': 'gradientStops',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.definitions.ColorStop',
      '8': {},
      '10': 'gradientStops'
    },
  ],
};

/// Descriptor for `GradientPaint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gradientPaintDescriptor = $convert.base64Decode(
    'Cg1HcmFkaWVudFBhaW50Ei0KBHR5cGUYASgOMhkuZGVmaW5pdGlvbnMuR3JhZGllbnRUeXBlQg'
    'BSBHR5cGUSRAoRZ3JhZGllbnRUcmFuc2Zvcm0YAigLMhYuZGVmaW5pdGlvbnMuVHJhbnNmb3Jt'
    'QgBSEWdyYWRpZW50VHJhbnNmb3JtEj4KDWdyYWRpZW50U3RvcHMYAyADKAsyFi5kZWZpbml0aW'
    '9ucy5Db2xvclN0b3BCAFINZ3JhZGllbnRTdG9wcw==');
