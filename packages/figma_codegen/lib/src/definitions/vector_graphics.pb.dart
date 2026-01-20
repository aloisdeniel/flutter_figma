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

import 'vector_graphics.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'vector_graphics.pbenum.dart';

class VectorGraphics extends $pb.GeneratedMessage {
  factory VectorGraphics({
    $core.String? name,
    Vector? offset,
    Vector? size,
    VectorNode? root,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (offset != null) result.offset = offset;
    if (size != null) result.size = size;
    if (root != null) result.root = root;
    return result;
  }

  VectorGraphics._();

  factory VectorGraphics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorGraphics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorGraphics',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<Vector>(2, _omitFieldNames ? '' : 'offset', subBuilder: Vector.create)
    ..aOM<Vector>(3, _omitFieldNames ? '' : 'size', subBuilder: Vector.create)
    ..aOM<VectorNode>(4, _omitFieldNames ? '' : 'root',
        subBuilder: VectorNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorGraphics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorGraphics copyWith(void Function(VectorGraphics) updates) =>
      super.copyWith((message) => updates(message as VectorGraphics))
          as VectorGraphics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorGraphics create() => VectorGraphics._();
  @$core.override
  VectorGraphics createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorGraphics getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorGraphics>(create);
  static VectorGraphics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  Vector get offset => $_getN(1);
  @$pb.TagNumber(2)
  set offset(Vector value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);
  @$pb.TagNumber(2)
  Vector ensureOffset() => $_ensure(1);

  @$pb.TagNumber(3)
  Vector get size => $_getN(2);
  @$pb.TagNumber(3)
  set size(Vector value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearSize() => $_clearField(3);
  @$pb.TagNumber(3)
  Vector ensureSize() => $_ensure(2);

  @$pb.TagNumber(4)
  VectorNode get root => $_getN(3);
  @$pb.TagNumber(4)
  set root(VectorNode value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasRoot() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoot() => $_clearField(4);
  @$pb.TagNumber(4)
  VectorNode ensureRoot() => $_ensure(3);
}

enum VectorNode_Type { network, group, frame, notSet }

class VectorNode extends $pb.GeneratedMessage {
  factory VectorNode({
    VectorNetwork? network,
    VectorGroup? group,
    VectorFrame? frame,
  }) {
    final result = create();
    if (network != null) result.network = network;
    if (group != null) result.group = group;
    if (frame != null) result.frame = frame;
    return result;
  }

  VectorNode._();

  factory VectorNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VectorNode_Type> _VectorNode_TypeByTag = {
    1: VectorNode_Type.network,
    2: VectorNode_Type.group,
    3: VectorNode_Type.frame,
    0: VectorNode_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<VectorNetwork>(1, _omitFieldNames ? '' : 'network',
        subBuilder: VectorNetwork.create)
    ..aOM<VectorGroup>(2, _omitFieldNames ? '' : 'group',
        subBuilder: VectorGroup.create)
    ..aOM<VectorFrame>(3, _omitFieldNames ? '' : 'frame',
        subBuilder: VectorFrame.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorNode copyWith(void Function(VectorNode) updates) =>
      super.copyWith((message) => updates(message as VectorNode)) as VectorNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorNode create() => VectorNode._();
  @$core.override
  VectorNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorNode>(create);
  static VectorNode? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  VectorNode_Type whichType() => _VectorNode_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VectorNetwork get network => $_getN(0);
  @$pb.TagNumber(1)
  set network(VectorNetwork value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetwork() => $_clearField(1);
  @$pb.TagNumber(1)
  VectorNetwork ensureNetwork() => $_ensure(0);

  @$pb.TagNumber(2)
  VectorGroup get group => $_getN(1);
  @$pb.TagNumber(2)
  set group(VectorGroup value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => $_clearField(2);
  @$pb.TagNumber(2)
  VectorGroup ensureGroup() => $_ensure(1);

  @$pb.TagNumber(3)
  VectorFrame get frame => $_getN(2);
  @$pb.TagNumber(3)
  set frame(VectorFrame value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasFrame() => $_has(2);
  @$pb.TagNumber(3)
  void clearFrame() => $_clearField(3);
  @$pb.TagNumber(3)
  VectorFrame ensureFrame() => $_ensure(2);
}

class VectorNetwork extends $pb.GeneratedMessage {
  factory VectorNetwork({
    $core.String? name,
    $core.double? opacity,
    Vector? offset,
    $core.Iterable<VectorVertex>? vertices,
    $core.Iterable<VectorSegment>? segments,
    $core.Iterable<VectorRegion>? regions,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (opacity != null) result.opacity = opacity;
    if (offset != null) result.offset = offset;
    if (vertices != null) result.vertices.addAll(vertices);
    if (segments != null) result.segments.addAll(segments);
    if (regions != null) result.regions.addAll(regions);
    return result;
  }

  VectorNetwork._();

  factory VectorNetwork.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorNetwork.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorNetwork',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aD(2, _omitFieldNames ? '' : 'opacity')
    ..aOM<Vector>(3, _omitFieldNames ? '' : 'offset', subBuilder: Vector.create)
    ..pPM<VectorVertex>(4, _omitFieldNames ? '' : 'vertices',
        subBuilder: VectorVertex.create)
    ..pPM<VectorSegment>(5, _omitFieldNames ? '' : 'segments',
        subBuilder: VectorSegment.create)
    ..pPM<VectorRegion>(6, _omitFieldNames ? '' : 'regions',
        subBuilder: VectorRegion.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorNetwork clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorNetwork copyWith(void Function(VectorNetwork) updates) =>
      super.copyWith((message) => updates(message as VectorNetwork))
          as VectorNetwork;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorNetwork create() => VectorNetwork._();
  @$core.override
  VectorNetwork createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorNetwork getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorNetwork>(create);
  static VectorNetwork? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get opacity => $_getN(1);
  @$pb.TagNumber(2)
  set opacity($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOpacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpacity() => $_clearField(2);

  @$pb.TagNumber(3)
  Vector get offset => $_getN(2);
  @$pb.TagNumber(3)
  set offset(Vector value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => $_clearField(3);
  @$pb.TagNumber(3)
  Vector ensureOffset() => $_ensure(2);

  @$pb.TagNumber(4)
  $pb.PbList<VectorVertex> get vertices => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<VectorSegment> get segments => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<VectorRegion> get regions => $_getList(5);
}

class VectorGroup extends $pb.GeneratedMessage {
  factory VectorGroup({
    $core.String? name,
    $core.double? opacity,
    $core.Iterable<VectorNode>? children,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (opacity != null) result.opacity = opacity;
    if (children != null) result.children.addAll(children);
    return result;
  }

  VectorGroup._();

  factory VectorGroup.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorGroup.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorGroup',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aD(2, _omitFieldNames ? '' : 'opacity')
    ..pPM<VectorNode>(3, _omitFieldNames ? '' : 'children',
        subBuilder: VectorNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorGroup clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorGroup copyWith(void Function(VectorGroup) updates) =>
      super.copyWith((message) => updates(message as VectorGroup))
          as VectorGroup;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorGroup create() => VectorGroup._();
  @$core.override
  VectorGroup createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorGroup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorGroup>(create);
  static VectorGroup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get opacity => $_getN(1);
  @$pb.TagNumber(2)
  set opacity($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOpacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpacity() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<VectorNode> get children => $_getList(2);
}

class VectorFrame extends $pb.GeneratedMessage {
  factory VectorFrame({
    $core.String? name,
    $core.double? opacity,
    Vector? offset,
    Vector? size,
    $core.Iterable<VectorNode>? children,
    $core.bool? isClipping,
    CornerRadius? cornerRadius,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (opacity != null) result.opacity = opacity;
    if (offset != null) result.offset = offset;
    if (size != null) result.size = size;
    if (children != null) result.children.addAll(children);
    if (isClipping != null) result.isClipping = isClipping;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    return result;
  }

  VectorFrame._();

  factory VectorFrame.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorFrame.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorFrame',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aD(2, _omitFieldNames ? '' : 'opacity')
    ..aOM<Vector>(3, _omitFieldNames ? '' : 'offset', subBuilder: Vector.create)
    ..aOM<Vector>(4, _omitFieldNames ? '' : 'size', subBuilder: Vector.create)
    ..pPM<VectorNode>(5, _omitFieldNames ? '' : 'children',
        subBuilder: VectorNode.create)
    ..aOB(6, _omitFieldNames ? '' : 'isClipping', protoName: 'isClipping')
    ..aOM<CornerRadius>(7, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorFrame clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorFrame copyWith(void Function(VectorFrame) updates) =>
      super.copyWith((message) => updates(message as VectorFrame))
          as VectorFrame;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorFrame create() => VectorFrame._();
  @$core.override
  VectorFrame createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorFrame getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorFrame>(create);
  static VectorFrame? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get opacity => $_getN(1);
  @$pb.TagNumber(2)
  set opacity($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasOpacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpacity() => $_clearField(2);

  @$pb.TagNumber(3)
  Vector get offset => $_getN(2);
  @$pb.TagNumber(3)
  set offset(Vector value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => $_clearField(3);
  @$pb.TagNumber(3)
  Vector ensureOffset() => $_ensure(2);

  @$pb.TagNumber(4)
  Vector get size => $_getN(3);
  @$pb.TagNumber(4)
  set size(Vector value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => $_clearField(4);
  @$pb.TagNumber(4)
  Vector ensureSize() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<VectorNode> get children => $_getList(4);

  @$pb.TagNumber(6)
  $core.bool get isClipping => $_getBF(5);
  @$pb.TagNumber(6)
  set isClipping($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasIsClipping() => $_has(5);
  @$pb.TagNumber(6)
  void clearIsClipping() => $_clearField(6);

  @$pb.TagNumber(7)
  CornerRadius get cornerRadius => $_getN(6);
  @$pb.TagNumber(7)
  set cornerRadius(CornerRadius value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCornerRadius() => $_has(6);
  @$pb.TagNumber(7)
  void clearCornerRadius() => $_clearField(7);
  @$pb.TagNumber(7)
  CornerRadius ensureCornerRadius() => $_ensure(6);
}

class CornerRadius extends $pb.GeneratedMessage {
  factory CornerRadius({
    $core.double? topLeft,
    $core.double? topRight,
    $core.double? bottomLeft,
    $core.double? bottomRight,
  }) {
    final result = create();
    if (topLeft != null) result.topLeft = topLeft;
    if (topRight != null) result.topRight = topRight;
    if (bottomLeft != null) result.bottomLeft = bottomLeft;
    if (bottomRight != null) result.bottomRight = bottomRight;
    return result;
  }

  CornerRadius._();

  factory CornerRadius.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CornerRadius.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CornerRadius',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'topLeft', protoName: 'topLeft')
    ..aD(2, _omitFieldNames ? '' : 'topRight', protoName: 'topRight')
    ..aD(3, _omitFieldNames ? '' : 'bottomLeft', protoName: 'bottomLeft')
    ..aD(4, _omitFieldNames ? '' : 'bottomRight', protoName: 'bottomRight')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CornerRadius clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CornerRadius copyWith(void Function(CornerRadius) updates) =>
      super.copyWith((message) => updates(message as CornerRadius))
          as CornerRadius;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CornerRadius create() => CornerRadius._();
  @$core.override
  CornerRadius createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CornerRadius getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CornerRadius>(create);
  static CornerRadius? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get topLeft => $_getN(0);
  @$pb.TagNumber(1)
  set topLeft($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTopLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopLeft() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get topRight => $_getN(1);
  @$pb.TagNumber(2)
  set topRight($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTopRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopRight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get bottomLeft => $_getN(2);
  @$pb.TagNumber(3)
  set bottomLeft($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBottomLeft() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottomLeft() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get bottomRight => $_getN(3);
  @$pb.TagNumber(4)
  set bottomRight($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBottomRight() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottomRight() => $_clearField(4);
}

class VectorVertex extends $pb.GeneratedMessage {
  factory VectorVertex({
    $core.double? x,
    $core.double? y,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    $core.double? cornerRadius,
    HandleMirroring? handleMirroring,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (strokeCap != null) result.strokeCap = strokeCap;
    if (strokeJoin != null) result.strokeJoin = strokeJoin;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (handleMirroring != null) result.handleMirroring = handleMirroring;
    return result;
  }

  VectorVertex._();

  factory VectorVertex.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorVertex.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorVertex',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..aE<StrokeCap>(3, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
    ..aE<StrokeJoin>(4, _omitFieldNames ? '' : 'strokeJoin',
        protoName: 'strokeJoin', enumValues: StrokeJoin.values)
    ..aD(5, _omitFieldNames ? '' : 'cornerRadius', protoName: 'cornerRadius')
    ..aE<HandleMirroring>(6, _omitFieldNames ? '' : 'handleMirroring',
        protoName: 'handleMirroring', enumValues: HandleMirroring.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorVertex clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorVertex copyWith(void Function(VectorVertex) updates) =>
      super.copyWith((message) => updates(message as VectorVertex))
          as VectorVertex;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorVertex create() => VectorVertex._();
  @$core.override
  VectorVertex createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorVertex getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorVertex>(create);
  static VectorVertex? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);

  @$pb.TagNumber(3)
  StrokeCap get strokeCap => $_getN(2);
  @$pb.TagNumber(3)
  set strokeCap(StrokeCap value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStrokeCap() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrokeCap() => $_clearField(3);

  @$pb.TagNumber(4)
  StrokeJoin get strokeJoin => $_getN(3);
  @$pb.TagNumber(4)
  set strokeJoin(StrokeJoin value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStrokeJoin() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrokeJoin() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get cornerRadius => $_getN(4);
  @$pb.TagNumber(5)
  set cornerRadius($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasCornerRadius() => $_has(4);
  @$pb.TagNumber(5)
  void clearCornerRadius() => $_clearField(5);

  @$pb.TagNumber(6)
  HandleMirroring get handleMirroring => $_getN(5);
  @$pb.TagNumber(6)
  set handleMirroring(HandleMirroring value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHandleMirroring() => $_has(5);
  @$pb.TagNumber(6)
  void clearHandleMirroring() => $_clearField(6);
}

class Vector extends $pb.GeneratedMessage {
  factory Vector({
    $core.double? x,
    $core.double? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  Vector._();

  factory Vector.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Vector.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Vector',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vector clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Vector copyWith(void Function(Vector) updates) =>
      super.copyWith((message) => updates(message as Vector)) as Vector;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Vector create() => Vector._();
  @$core.override
  Vector createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Vector getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Vector>(create);
  static Vector? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get x => $_getN(0);
  @$pb.TagNumber(1)
  set x($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasX() => $_has(0);
  @$pb.TagNumber(1)
  void clearX() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get y => $_getN(1);
  @$pb.TagNumber(2)
  set y($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasY() => $_has(1);
  @$pb.TagNumber(2)
  void clearY() => $_clearField(2);
}

class VectorSegment extends $pb.GeneratedMessage {
  factory VectorSegment({
    $core.int? start,
    $core.int? end,
    Vector? tangentStart,
    Vector? tangentEnd,
  }) {
    final result = create();
    if (start != null) result.start = start;
    if (end != null) result.end = end;
    if (tangentStart != null) result.tangentStart = tangentStart;
    if (tangentEnd != null) result.tangentEnd = tangentEnd;
    return result;
  }

  VectorSegment._();

  factory VectorSegment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorSegment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorSegment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'start')
    ..aI(2, _omitFieldNames ? '' : 'end')
    ..aOM<Vector>(3, _omitFieldNames ? '' : 'tangentStart',
        protoName: 'tangentStart', subBuilder: Vector.create)
    ..aOM<Vector>(4, _omitFieldNames ? '' : 'tangentEnd',
        protoName: 'tangentEnd', subBuilder: Vector.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorSegment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorSegment copyWith(void Function(VectorSegment) updates) =>
      super.copyWith((message) => updates(message as VectorSegment))
          as VectorSegment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorSegment create() => VectorSegment._();
  @$core.override
  VectorSegment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorSegment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorSegment>(create);
  static VectorSegment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get start => $_getIZ(0);
  @$pb.TagNumber(1)
  set start($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get end => $_getIZ(1);
  @$pb.TagNumber(2)
  set end($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => $_clearField(2);

  @$pb.TagNumber(3)
  Vector get tangentStart => $_getN(2);
  @$pb.TagNumber(3)
  set tangentStart(Vector value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTangentStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearTangentStart() => $_clearField(3);
  @$pb.TagNumber(3)
  Vector ensureTangentStart() => $_ensure(2);

  @$pb.TagNumber(4)
  Vector get tangentEnd => $_getN(3);
  @$pb.TagNumber(4)
  set tangentEnd(Vector value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTangentEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearTangentEnd() => $_clearField(4);
  @$pb.TagNumber(4)
  Vector ensureTangentEnd() => $_ensure(3);
}

class VectorRegionLoop extends $pb.GeneratedMessage {
  factory VectorRegionLoop({
    $core.Iterable<$core.int>? segments,
  }) {
    final result = create();
    if (segments != null) result.segments.addAll(segments);
    return result;
  }

  VectorRegionLoop._();

  factory VectorRegionLoop.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorRegionLoop.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorRegionLoop',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'segments', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorRegionLoop clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorRegionLoop copyWith(void Function(VectorRegionLoop) updates) =>
      super.copyWith((message) => updates(message as VectorRegionLoop))
          as VectorRegionLoop;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorRegionLoop create() => VectorRegionLoop._();
  @$core.override
  VectorRegionLoop createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorRegionLoop getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorRegionLoop>(create);
  static VectorRegionLoop? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get segments => $_getList(0);
}

class VectorRegion extends $pb.GeneratedMessage {
  factory VectorRegion({
    WindingRule? windingRule,
    $core.Iterable<VectorRegionLoop>? loops,
    $core.Iterable<Paint>? fills,
  }) {
    final result = create();
    if (windingRule != null) result.windingRule = windingRule;
    if (loops != null) result.loops.addAll(loops);
    if (fills != null) result.fills.addAll(fills);
    return result;
  }

  VectorRegion._();

  factory VectorRegion.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorRegion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorRegion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aE<WindingRule>(1, _omitFieldNames ? '' : 'windingRule',
        protoName: 'windingRule', enumValues: WindingRule.values)
    ..pPM<VectorRegionLoop>(2, _omitFieldNames ? '' : 'loops',
        subBuilder: VectorRegionLoop.create)
    ..pPM<Paint>(3, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorRegion clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorRegion copyWith(void Function(VectorRegion) updates) =>
      super.copyWith((message) => updates(message as VectorRegion))
          as VectorRegion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorRegion create() => VectorRegion._();
  @$core.override
  VectorRegion createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorRegion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorRegion>(create);
  static VectorRegion? _defaultInstance;

  @$pb.TagNumber(1)
  WindingRule get windingRule => $_getN(0);
  @$pb.TagNumber(1)
  set windingRule(WindingRule value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasWindingRule() => $_has(0);
  @$pb.TagNumber(1)
  void clearWindingRule() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<VectorRegionLoop> get loops => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<Paint> get fills => $_getList(2);
}

class RGBA extends $pb.GeneratedMessage {
  factory RGBA({
    $core.double? r,
    $core.double? g,
    $core.double? b,
    $core.double? a,
  }) {
    final result = create();
    if (r != null) result.r = r;
    if (g != null) result.g = g;
    if (b != null) result.b = b;
    if (a != null) result.a = a;
    return result;
  }

  RGBA._();

  factory RGBA.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RGBA.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RGBA',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'r')
    ..aD(2, _omitFieldNames ? '' : 'g')
    ..aD(3, _omitFieldNames ? '' : 'b')
    ..aD(4, _omitFieldNames ? '' : 'a')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RGBA clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RGBA copyWith(void Function(RGBA) updates) =>
      super.copyWith((message) => updates(message as RGBA)) as RGBA;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RGBA create() => RGBA._();
  @$core.override
  RGBA createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RGBA getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RGBA>(create);
  static RGBA? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get r => $_getN(0);
  @$pb.TagNumber(1)
  set r($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasR() => $_has(0);
  @$pb.TagNumber(1)
  void clearR() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get g => $_getN(1);
  @$pb.TagNumber(2)
  set g($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasG() => $_has(1);
  @$pb.TagNumber(2)
  void clearG() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get b => $_getN(2);
  @$pb.TagNumber(3)
  set b($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasB() => $_has(2);
  @$pb.TagNumber(3)
  void clearB() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get a => $_getN(3);
  @$pb.TagNumber(4)
  set a($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasA() => $_has(3);
  @$pb.TagNumber(4)
  void clearA() => $_clearField(4);
}

class Transform extends $pb.GeneratedMessage {
  factory Transform({
    $core.double? m00,
    $core.double? m01,
    $core.double? m10,
    $core.double? m11,
    $core.double? m02,
    $core.double? m12,
  }) {
    final result = create();
    if (m00 != null) result.m00 = m00;
    if (m01 != null) result.m01 = m01;
    if (m10 != null) result.m10 = m10;
    if (m11 != null) result.m11 = m11;
    if (m02 != null) result.m02 = m02;
    if (m12 != null) result.m12 = m12;
    return result;
  }

  Transform._();

  factory Transform.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Transform.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Transform',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'm00')
    ..aD(2, _omitFieldNames ? '' : 'm01')
    ..aD(3, _omitFieldNames ? '' : 'm10')
    ..aD(4, _omitFieldNames ? '' : 'm11')
    ..aD(5, _omitFieldNames ? '' : 'm02')
    ..aD(6, _omitFieldNames ? '' : 'm12')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transform clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transform copyWith(void Function(Transform) updates) =>
      super.copyWith((message) => updates(message as Transform)) as Transform;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transform create() => Transform._();
  @$core.override
  Transform createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Transform getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transform>(create);
  static Transform? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get m00 => $_getN(0);
  @$pb.TagNumber(1)
  set m00($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasM00() => $_has(0);
  @$pb.TagNumber(1)
  void clearM00() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get m01 => $_getN(1);
  @$pb.TagNumber(2)
  set m01($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasM01() => $_has(1);
  @$pb.TagNumber(2)
  void clearM01() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get m10 => $_getN(2);
  @$pb.TagNumber(3)
  set m10($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasM10() => $_has(2);
  @$pb.TagNumber(3)
  void clearM10() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get m11 => $_getN(3);
  @$pb.TagNumber(4)
  set m11($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasM11() => $_has(3);
  @$pb.TagNumber(4)
  void clearM11() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get m02 => $_getN(4);
  @$pb.TagNumber(5)
  set m02($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasM02() => $_has(4);
  @$pb.TagNumber(5)
  void clearM02() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get m12 => $_getN(5);
  @$pb.TagNumber(6)
  set m12($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasM12() => $_has(5);
  @$pb.TagNumber(6)
  void clearM12() => $_clearField(6);
}

enum Paint_Type { solid, gradient, notSet }

class Paint extends $pb.GeneratedMessage {
  factory Paint({
    $core.double? opacity,
    BlendMode? blendMode,
    SolidPaint? solid,
    GradientPaint? gradient,
  }) {
    final result = create();
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (solid != null) result.solid = solid;
    if (gradient != null) result.gradient = gradient;
    return result;
  }

  Paint._();

  factory Paint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Paint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Paint_Type> _Paint_TypeByTag = {
    3: Paint_Type.solid,
    4: Paint_Type.gradient,
    0: Paint_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Paint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [3, 4])
    ..aD(1, _omitFieldNames ? '' : 'opacity')
    ..aE<BlendMode>(2, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOM<SolidPaint>(3, _omitFieldNames ? '' : 'solid',
        subBuilder: SolidPaint.create)
    ..aOM<GradientPaint>(4, _omitFieldNames ? '' : 'gradient',
        subBuilder: GradientPaint.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Paint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Paint copyWith(void Function(Paint) updates) =>
      super.copyWith((message) => updates(message as Paint)) as Paint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Paint create() => Paint._();
  @$core.override
  Paint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Paint getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Paint>(create);
  static Paint? _defaultInstance;

  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  Paint_Type whichType() => _Paint_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get opacity => $_getN(0);
  @$pb.TagNumber(1)
  set opacity($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOpacity() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpacity() => $_clearField(1);

  @$pb.TagNumber(2)
  BlendMode get blendMode => $_getN(1);
  @$pb.TagNumber(2)
  set blendMode(BlendMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBlendMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlendMode() => $_clearField(2);

  @$pb.TagNumber(3)
  SolidPaint get solid => $_getN(2);
  @$pb.TagNumber(3)
  set solid(SolidPaint value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSolid() => $_has(2);
  @$pb.TagNumber(3)
  void clearSolid() => $_clearField(3);
  @$pb.TagNumber(3)
  SolidPaint ensureSolid() => $_ensure(2);

  @$pb.TagNumber(4)
  GradientPaint get gradient => $_getN(3);
  @$pb.TagNumber(4)
  set gradient(GradientPaint value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasGradient() => $_has(3);
  @$pb.TagNumber(4)
  void clearGradient() => $_clearField(4);
  @$pb.TagNumber(4)
  GradientPaint ensureGradient() => $_ensure(3);
}

class BoundVariable extends $pb.GeneratedMessage {
  factory BoundVariable({
    $core.int? collectionId,
    $core.int? variableId,
  }) {
    final result = create();
    if (collectionId != null) result.collectionId = collectionId;
    if (variableId != null) result.variableId = variableId;
    return result;
  }

  BoundVariable._();

  factory BoundVariable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BoundVariable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BoundVariable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'collectionId', protoName: 'collectionId')
    ..aI(2, _omitFieldNames ? '' : 'variableId', protoName: 'variableId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoundVariable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BoundVariable copyWith(void Function(BoundVariable) updates) =>
      super.copyWith((message) => updates(message as BoundVariable))
          as BoundVariable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BoundVariable create() => BoundVariable._();
  @$core.override
  BoundVariable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BoundVariable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BoundVariable>(create);
  static BoundVariable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get collectionId => $_getIZ(0);
  @$pb.TagNumber(1)
  set collectionId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCollectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearCollectionId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get variableId => $_getIZ(1);
  @$pb.TagNumber(2)
  set variableId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVariableId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariableId() => $_clearField(2);
}

enum SolidPaint_Color { value, bound, notSet }

class SolidPaint extends $pb.GeneratedMessage {
  factory SolidPaint({
    RGBA? value,
    BoundVariable? bound,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (bound != null) result.bound = bound;
    return result;
  }

  SolidPaint._();

  factory SolidPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SolidPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, SolidPaint_Color> _SolidPaint_ColorByTag = {
    1: SolidPaint_Color.value,
    2: SolidPaint_Color.bound,
    0: SolidPaint_Color.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SolidPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<RGBA>(1, _omitFieldNames ? '' : 'value', subBuilder: RGBA.create)
    ..aOM<BoundVariable>(2, _omitFieldNames ? '' : 'bound',
        subBuilder: BoundVariable.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SolidPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SolidPaint copyWith(void Function(SolidPaint) updates) =>
      super.copyWith((message) => updates(message as SolidPaint)) as SolidPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SolidPaint create() => SolidPaint._();
  @$core.override
  SolidPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SolidPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SolidPaint>(create);
  static SolidPaint? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  SolidPaint_Color whichColor() => _SolidPaint_ColorByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearColor() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RGBA get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(RGBA value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
  @$pb.TagNumber(1)
  RGBA ensureValue() => $_ensure(0);

  @$pb.TagNumber(2)
  BoundVariable get bound => $_getN(1);
  @$pb.TagNumber(2)
  set bound(BoundVariable value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBound() => $_has(1);
  @$pb.TagNumber(2)
  void clearBound() => $_clearField(2);
  @$pb.TagNumber(2)
  BoundVariable ensureBound() => $_ensure(1);
}

enum ColorStop_Color { value, bound, notSet }

class ColorStop extends $pb.GeneratedMessage {
  factory ColorStop({
    $core.double? position,
    RGBA? value,
    BoundVariable? bound,
  }) {
    final result = create();
    if (position != null) result.position = position;
    if (value != null) result.value = value;
    if (bound != null) result.bound = bound;
    return result;
  }

  ColorStop._();

  factory ColorStop.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ColorStop.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ColorStop_Color> _ColorStop_ColorByTag = {
    2: ColorStop_Color.value,
    3: ColorStop_Color.bound,
    0: ColorStop_Color.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorStop',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [2, 3])
    ..aD(1, _omitFieldNames ? '' : 'position')
    ..aOM<RGBA>(2, _omitFieldNames ? '' : 'value', subBuilder: RGBA.create)
    ..aOM<BoundVariable>(3, _omitFieldNames ? '' : 'bound',
        subBuilder: BoundVariable.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorStop clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ColorStop copyWith(void Function(ColorStop) updates) =>
      super.copyWith((message) => updates(message as ColorStop)) as ColorStop;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ColorStop create() => ColorStop._();
  @$core.override
  ColorStop createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ColorStop getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ColorStop>(create);
  static ColorStop? _defaultInstance;

  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  ColorStop_Color whichColor() => _ColorStop_ColorByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearColor() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get position => $_getN(0);
  @$pb.TagNumber(1)
  set position($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => $_clearField(1);

  @$pb.TagNumber(2)
  RGBA get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(RGBA value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  RGBA ensureValue() => $_ensure(1);

  @$pb.TagNumber(3)
  BoundVariable get bound => $_getN(2);
  @$pb.TagNumber(3)
  set bound(BoundVariable value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBound() => $_has(2);
  @$pb.TagNumber(3)
  void clearBound() => $_clearField(3);
  @$pb.TagNumber(3)
  BoundVariable ensureBound() => $_ensure(2);
}

class GradientPaint extends $pb.GeneratedMessage {
  factory GradientPaint({
    GradientType? type,
    Transform? gradientTransform,
    $core.Iterable<ColorStop>? gradientStops,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (gradientTransform != null) result.gradientTransform = gradientTransform;
    if (gradientStops != null) result.gradientStops.addAll(gradientStops);
    return result;
  }

  GradientPaint._();

  factory GradientPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GradientPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GradientPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aE<GradientType>(1, _omitFieldNames ? '' : 'type',
        enumValues: GradientType.values)
    ..aOM<Transform>(2, _omitFieldNames ? '' : 'gradientTransform',
        protoName: 'gradientTransform', subBuilder: Transform.create)
    ..pPM<ColorStop>(3, _omitFieldNames ? '' : 'gradientStops',
        protoName: 'gradientStops', subBuilder: ColorStop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradientPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradientPaint copyWith(void Function(GradientPaint) updates) =>
      super.copyWith((message) => updates(message as GradientPaint))
          as GradientPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradientPaint create() => GradientPaint._();
  @$core.override
  GradientPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GradientPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GradientPaint>(create);
  static GradientPaint? _defaultInstance;

  @$pb.TagNumber(1)
  GradientType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GradientType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  Transform get gradientTransform => $_getN(1);
  @$pb.TagNumber(2)
  set gradientTransform(Transform value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGradientTransform() => $_has(1);
  @$pb.TagNumber(2)
  void clearGradientTransform() => $_clearField(2);
  @$pb.TagNumber(2)
  Transform ensureGradientTransform() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<ColorStop> get gradientStops => $_getList(2);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
