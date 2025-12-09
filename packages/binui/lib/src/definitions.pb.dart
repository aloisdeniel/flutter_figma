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

import 'definitions.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'definitions.pbenum.dart';

class Library extends $pb.GeneratedMessage {
  factory Library({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    Version_? version,
    $core.Iterable<VariableCollection>? variables,
    $core.Iterable<Component>? components,
    $core.Iterable<VisualNode>? visualNodes,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (version != null) result.version = version;
    if (variables != null) result.variables.addAll(variables);
    if (components != null) result.components.addAll(components);
    if (visualNodes != null) result.visualNodes.addAll(visualNodes);
    return result;
  }

  Library._();

  factory Library.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Library.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Library',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..aOM<Version_>(4, _omitFieldNames ? '' : 'version',
        subBuilder: Version_.create)
    ..pPM<VariableCollection>(5, _omitFieldNames ? '' : 'variables',
        subBuilder: VariableCollection.create)
    ..pPM<Component>(6, _omitFieldNames ? '' : 'components',
        subBuilder: Component.create)
    ..pPM<VisualNode>(7, _omitFieldNames ? '' : 'visualNodes',
        protoName: 'visualNodes', subBuilder: VisualNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Library clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Library copyWith(void Function(Library) updates) =>
      super.copyWith((message) => updates(message as Library)) as Library;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Library create() => Library._();
  @$core.override
  Library createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Library getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Library>(create);
  static Library? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);

  @$pb.TagNumber(4)
  Version_ get version => $_getN(3);
  @$pb.TagNumber(4)
  set version(Version_ value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);
  @$pb.TagNumber(4)
  Version_ ensureVersion() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<VariableCollection> get variables => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<Component> get components => $_getList(5);

  @$pb.TagNumber(7)
  $pb.PbList<VisualNode> get visualNodes => $_getList(6);
}

class Version extends $pb.GeneratedMessage {
  factory Version({
    $core.int? major,
    $core.int? minor,
    $core.int? patch,
  }) {
    final result = create();
    if (major != null) result.major = major;
    if (minor != null) result.minor = minor;
    if (patch != null) result.patch = patch;
    return result;
  }

  Version._();

  factory Version.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Version.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Version',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'major')
    ..aI(2, _omitFieldNames ? '' : 'minor')
    ..aI(3, _omitFieldNames ? '' : 'patch')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Version clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Version copyWith(void Function(Version) updates) =>
      super.copyWith((message) => updates(message as Version)) as Version;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  @$core.override
  Version createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get major => $_getIZ(0);
  @$pb.TagNumber(1)
  set major($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMajor() => $_has(0);
  @$pb.TagNumber(1)
  void clearMajor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get minor => $_getIZ(1);
  @$pb.TagNumber(2)
  set minor($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinor() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get patch => $_getIZ(2);
  @$pb.TagNumber(3)
  set patch($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatch() => $_clearField(3);
}

class ComponentProperty extends $pb.GeneratedMessage {
  factory ComponentProperty({
    $core.int? componentId,
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    Value? defaultValue,
  }) {
    final result = create();
    if (componentId != null) result.componentId = componentId;
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (defaultValue != null) result.defaultValue = defaultValue;
    return result;
  }

  ComponentProperty._();

  factory ComponentProperty.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentProperty.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentProperty',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'componentId', protoName: 'componentId')
    ..aI(2, _omitFieldNames ? '' : 'id')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'documentation')
    ..aOM<Value>(5, _omitFieldNames ? '' : 'defaultValue',
        protoName: 'defaultValue', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentProperty clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentProperty copyWith(void Function(ComponentProperty) updates) =>
      super.copyWith((message) => updates(message as ComponentProperty))
          as ComponentProperty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentProperty create() => ComponentProperty._();
  @$core.override
  ComponentProperty createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentProperty getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentProperty>(create);
  static ComponentProperty? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get componentId => $_getIZ(0);
  @$pb.TagNumber(1)
  set componentId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.String get documentation => $_getSZ(3);
  @$pb.TagNumber(4)
  set documentation($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDocumentation() => $_has(3);
  @$pb.TagNumber(4)
  void clearDocumentation() => $_clearField(4);

  @$pb.TagNumber(5)
  Value get defaultValue => $_getN(4);
  @$pb.TagNumber(5)
  set defaultValue(Value value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDefaultValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearDefaultValue() => $_clearField(5);
  @$pb.TagNumber(5)
  Value ensureDefaultValue() => $_ensure(4);
}

class ComponentVariantValueDefinition extends $pb.GeneratedMessage {
  factory ComponentVariantValueDefinition({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    return result;
  }

  ComponentVariantValueDefinition._();

  factory ComponentVariantValueDefinition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentVariantValueDefinition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentVariantValueDefinition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariantValueDefinition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariantValueDefinition copyWith(
          void Function(ComponentVariantValueDefinition) updates) =>
      super.copyWith(
              (message) => updates(message as ComponentVariantValueDefinition))
          as ComponentVariantValueDefinition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentVariantValueDefinition create() =>
      ComponentVariantValueDefinition._();
  @$core.override
  ComponentVariantValueDefinition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentVariantValueDefinition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentVariantValueDefinition>(
          create);
  static ComponentVariantValueDefinition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);
}

class ComponentVariantDefinition extends $pb.GeneratedMessage {
  factory ComponentVariantDefinition({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    $core.Iterable<ComponentVariantValueDefinition>? values,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (values != null) result.values.addAll(values);
    return result;
  }

  ComponentVariantDefinition._();

  factory ComponentVariantDefinition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentVariantDefinition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentVariantDefinition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..pPM<ComponentVariantValueDefinition>(4, _omitFieldNames ? '' : 'values',
        subBuilder: ComponentVariantValueDefinition.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariantDefinition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariantDefinition copyWith(
          void Function(ComponentVariantDefinition) updates) =>
      super.copyWith(
              (message) => updates(message as ComponentVariantDefinition))
          as ComponentVariantDefinition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentVariantDefinition create() => ComponentVariantDefinition._();
  @$core.override
  ComponentVariantDefinition createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentVariantDefinition getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentVariantDefinition>(create);
  static ComponentVariantDefinition? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<ComponentVariantValueDefinition> get values => $_getList(3);
}

class ComponentVariantValue extends $pb.GeneratedMessage {
  factory ComponentVariantValue({
    $core.int? componentId,
    $core.int? variantId,
    $core.int? id,
  }) {
    final result = create();
    if (componentId != null) result.componentId = componentId;
    if (variantId != null) result.variantId = variantId;
    if (id != null) result.id = id;
    return result;
  }

  ComponentVariantValue._();

  factory ComponentVariantValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentVariantValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentVariantValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'componentId', protoName: 'componentId')
    ..aI(2, _omitFieldNames ? '' : 'variantId', protoName: 'variantId')
    ..aI(3, _omitFieldNames ? '' : 'id')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariantValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariantValue copyWith(
          void Function(ComponentVariantValue) updates) =>
      super.copyWith((message) => updates(message as ComponentVariantValue))
          as ComponentVariantValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentVariantValue create() => ComponentVariantValue._();
  @$core.override
  ComponentVariantValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentVariantValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentVariantValue>(create);
  static ComponentVariantValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get componentId => $_getIZ(0);
  @$pb.TagNumber(1)
  set componentId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get variantId => $_getIZ(1);
  @$pb.TagNumber(2)
  set variantId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVariantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariantId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get id => $_getIZ(2);
  @$pb.TagNumber(3)
  set id($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasId() => $_has(2);
  @$pb.TagNumber(3)
  void clearId() => $_clearField(3);
}

class ComponentVariant extends $pb.GeneratedMessage {
  factory ComponentVariant({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    $core.Iterable<ComponentVariantValue>? variants,
    VisualNode? root,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (variants != null) result.variants.addAll(variants);
    if (root != null) result.root = root;
    return result;
  }

  ComponentVariant._();

  factory ComponentVariant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentVariant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentVariant',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..pPM<ComponentVariantValue>(4, _omitFieldNames ? '' : 'variants',
        subBuilder: ComponentVariantValue.create)
    ..aOM<VisualNode>(5, _omitFieldNames ? '' : 'root',
        subBuilder: VisualNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariant clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentVariant copyWith(void Function(ComponentVariant) updates) =>
      super.copyWith((message) => updates(message as ComponentVariant))
          as ComponentVariant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentVariant create() => ComponentVariant._();
  @$core.override
  ComponentVariant createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentVariant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentVariant>(create);
  static ComponentVariant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<ComponentVariantValue> get variants => $_getList(3);

  @$pb.TagNumber(5)
  VisualNode get root => $_getN(4);
  @$pb.TagNumber(5)
  set root(VisualNode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasRoot() => $_has(4);
  @$pb.TagNumber(5)
  void clearRoot() => $_clearField(5);
  @$pb.TagNumber(5)
  VisualNode ensureRoot() => $_ensure(4);
}

class Component extends $pb.GeneratedMessage {
  factory Component({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    $core.Iterable<ComponentProperty>? properties,
    $core.Iterable<ComponentVariantDefinition>? variantDefinitions,
    $core.Iterable<ComponentVariant>? variants,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (properties != null) result.properties.addAll(properties);
    if (variantDefinitions != null)
      result.variantDefinitions.addAll(variantDefinitions);
    if (variants != null) result.variants.addAll(variants);
    return result;
  }

  Component._();

  factory Component.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Component.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Component',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..pPM<ComponentProperty>(4, _omitFieldNames ? '' : 'properties',
        subBuilder: ComponentProperty.create)
    ..pPM<ComponentVariantDefinition>(
        5, _omitFieldNames ? '' : 'variantDefinitions',
        protoName: 'variantDefinitions',
        subBuilder: ComponentVariantDefinition.create)
    ..pPM<ComponentVariant>(6, _omitFieldNames ? '' : 'variants',
        subBuilder: ComponentVariant.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Component clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Component copyWith(void Function(Component) updates) =>
      super.copyWith((message) => updates(message as Component)) as Component;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Component create() => Component._();
  @$core.override
  Component createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Component getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Component>(create);
  static Component? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<ComponentProperty> get properties => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<ComponentVariantDefinition> get variantDefinitions => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<ComponentVariant> get variants => $_getList(5);
}

class VariableCollection extends $pb.GeneratedMessage {
  factory VariableCollection({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    $core.Iterable<VariableCollectionEntry>? variables,
    $core.Iterable<VariableCollectionVariant>? variants,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (variables != null) result.variables.addAll(variables);
    if (variants != null) result.variants.addAll(variants);
    return result;
  }

  VariableCollection._();

  factory VariableCollection.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariableCollection.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariableCollection',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..pPM<VariableCollectionEntry>(4, _omitFieldNames ? '' : 'variables',
        subBuilder: VariableCollectionEntry.create)
    ..pPM<VariableCollectionVariant>(5, _omitFieldNames ? '' : 'variants',
        subBuilder: VariableCollectionVariant.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableCollection clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableCollection copyWith(void Function(VariableCollection) updates) =>
      super.copyWith((message) => updates(message as VariableCollection))
          as VariableCollection;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableCollection create() => VariableCollection._();
  @$core.override
  VariableCollection createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariableCollection getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableCollection>(create);
  static VariableCollection? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<VariableCollectionEntry> get variables => $_getList(3);

  @$pb.TagNumber(5)
  $pb.PbList<VariableCollectionVariant> get variants => $_getList(4);
}

class VariableCollectionEntry extends $pb.GeneratedMessage {
  factory VariableCollectionEntry({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    return result;
  }

  VariableCollectionEntry._();

  factory VariableCollectionEntry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariableCollectionEntry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariableCollectionEntry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableCollectionEntry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableCollectionEntry copyWith(
          void Function(VariableCollectionEntry) updates) =>
      super.copyWith((message) => updates(message as VariableCollectionEntry))
          as VariableCollectionEntry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableCollectionEntry create() => VariableCollectionEntry._();
  @$core.override
  VariableCollectionEntry createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariableCollectionEntry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableCollectionEntry>(create);
  static VariableCollectionEntry? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);
}

class VariableCollectionVariant extends $pb.GeneratedMessage {
  factory VariableCollectionVariant({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    $core.Iterable<Value>? values,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (values != null) result.values.addAll(values);
    return result;
  }

  VariableCollectionVariant._();

  factory VariableCollectionVariant.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariableCollectionVariant.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariableCollectionVariant',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'documentation')
    ..pPM<Value>(4, _omitFieldNames ? '' : 'values', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableCollectionVariant clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableCollectionVariant copyWith(
          void Function(VariableCollectionVariant) updates) =>
      super.copyWith((message) => updates(message as VariableCollectionVariant))
          as VariableCollectionVariant;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableCollectionVariant create() => VariableCollectionVariant._();
  @$core.override
  VariableCollectionVariant createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariableCollectionVariant getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableCollectionVariant>(create);
  static VariableCollectionVariant? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get documentation => $_getSZ(2);
  @$pb.TagNumber(3)
  set documentation($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDocumentation() => $_has(2);
  @$pb.TagNumber(3)
  void clearDocumentation() => $_clearField(3);

  @$pb.TagNumber(4)
  $pb.PbList<Value> get values => $_getList(3);
}

enum Value_Type {
  alias,
  stringValue,
  doubleValue,
  boolean,
  size,
  color,
  border,
  borderSide,
  gradient,
  label,
  offset,
  radius,
  borderRadius,
  rect,
  textStyle,
  transform2D,
  variantValue,
  vectorGraphics,
  version,
  visualNode,
  notSet
}

class Value extends $pb.GeneratedMessage {
  factory Value({
    Alias? alias,
    $core.String? stringValue,
    $core.double? doubleValue,
    $core.bool? boolean,
    Size? size,
    Color? color,
    Border? border,
    BorderSide? borderSide,
    Gradient? gradient,
    Label? label,
    Offset? offset,
    Radius? radius,
    BorderRadius? borderRadius,
    Rect? rect,
    TextStyle? textStyle,
    Transform2D? transform2D,
    VariantValue? variantValue,
    VectorGraphics? vectorGraphics,
    Version_? version,
    VisualNode? visualNode,
  }) {
    final result = create();
    if (alias != null) result.alias = alias;
    if (stringValue != null) result.stringValue = stringValue;
    if (doubleValue != null) result.doubleValue = doubleValue;
    if (boolean != null) result.boolean = boolean;
    if (size != null) result.size = size;
    if (color != null) result.color = color;
    if (border != null) result.border = border;
    if (borderSide != null) result.borderSide = borderSide;
    if (gradient != null) result.gradient = gradient;
    if (label != null) result.label = label;
    if (offset != null) result.offset = offset;
    if (radius != null) result.radius = radius;
    if (borderRadius != null) result.borderRadius = borderRadius;
    if (rect != null) result.rect = rect;
    if (textStyle != null) result.textStyle = textStyle;
    if (transform2D != null) result.transform2D = transform2D;
    if (variantValue != null) result.variantValue = variantValue;
    if (vectorGraphics != null) result.vectorGraphics = vectorGraphics;
    if (version != null) result.version = version;
    if (visualNode != null) result.visualNode = visualNode;
    return result;
  }

  Value._();

  factory Value.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Value.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Value_Type> _Value_TypeByTag = {
    1: Value_Type.alias,
    2: Value_Type.stringValue,
    3: Value_Type.doubleValue,
    4: Value_Type.boolean,
    5: Value_Type.size,
    6: Value_Type.color,
    7: Value_Type.border,
    8: Value_Type.borderSide,
    9: Value_Type.gradient,
    11: Value_Type.label,
    12: Value_Type.offset,
    13: Value_Type.radius,
    14: Value_Type.borderRadius,
    15: Value_Type.rect,
    16: Value_Type.textStyle,
    17: Value_Type.transform2D,
    18: Value_Type.variantValue,
    19: Value_Type.vectorGraphics,
    20: Value_Type.version,
    21: Value_Type.visualNode,
    0: Value_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0,
        [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21])
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'alias', subBuilder: Alias.create)
    ..aOS(2, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..aD(3, _omitFieldNames ? '' : 'doubleValue', protoName: 'doubleValue')
    ..aOB(4, _omitFieldNames ? '' : 'boolean')
    ..aOM<Size>(5, _omitFieldNames ? '' : 'size', subBuilder: Size.create)
    ..aOM<Color>(6, _omitFieldNames ? '' : 'color', subBuilder: Color.create)
    ..aOM<Border>(7, _omitFieldNames ? '' : 'border', subBuilder: Border.create)
    ..aOM<BorderSide>(8, _omitFieldNames ? '' : 'borderSide',
        protoName: 'borderSide', subBuilder: BorderSide.create)
    ..aOM<Gradient>(9, _omitFieldNames ? '' : 'gradient',
        subBuilder: Gradient.create)
    ..aOM<Label>(11, _omitFieldNames ? '' : 'label', subBuilder: Label.create)
    ..aOM<Offset>(12, _omitFieldNames ? '' : 'offset',
        subBuilder: Offset.create)
    ..aOM<Radius>(13, _omitFieldNames ? '' : 'radius',
        subBuilder: Radius.create)
    ..aOM<BorderRadius>(14, _omitFieldNames ? '' : 'borderRadius',
        protoName: 'borderRadius', subBuilder: BorderRadius.create)
    ..aOM<Rect>(15, _omitFieldNames ? '' : 'rect', subBuilder: Rect.create)
    ..aOM<TextStyle>(16, _omitFieldNames ? '' : 'textStyle',
        protoName: 'textStyle', subBuilder: TextStyle.create)
    ..aOM<Transform2D>(17, _omitFieldNames ? '' : 'transform2D',
        protoName: 'transform2D', subBuilder: Transform2D.create)
    ..aOM<VariantValue>(18, _omitFieldNames ? '' : 'variantValue',
        protoName: 'variantValue', subBuilder: VariantValue.create)
    ..aOM<VectorGraphics>(19, _omitFieldNames ? '' : 'vectorGraphics',
        protoName: 'vectorGraphics', subBuilder: VectorGraphics.create)
    ..aOM<Version_>(20, _omitFieldNames ? '' : 'version',
        subBuilder: Version_.create)
    ..aOM<VisualNode>(21, _omitFieldNames ? '' : 'visualNode',
        protoName: 'visualNode', subBuilder: VisualNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Value clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Value copyWith(void Function(Value) updates) =>
      super.copyWith((message) => updates(message as Value)) as Value;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Value create() => Value._();
  @$core.override
  Value createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Value getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Value>(create);
  static Value? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  Value_Type whichType() => _Value_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(11)
  @$pb.TagNumber(12)
  @$pb.TagNumber(13)
  @$pb.TagNumber(14)
  @$pb.TagNumber(15)
  @$pb.TagNumber(16)
  @$pb.TagNumber(17)
  @$pb.TagNumber(18)
  @$pb.TagNumber(19)
  @$pb.TagNumber(20)
  @$pb.TagNumber(21)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Alias get alias => $_getN(0);
  @$pb.TagNumber(1)
  set alias(Alias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasAlias() => $_has(0);
  @$pb.TagNumber(1)
  void clearAlias() => $_clearField(1);
  @$pb.TagNumber(1)
  Alias ensureAlias() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get doubleValue => $_getN(2);
  @$pb.TagNumber(3)
  set doubleValue($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDoubleValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDoubleValue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.bool get boolean => $_getBF(3);
  @$pb.TagNumber(4)
  set boolean($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBoolean() => $_has(3);
  @$pb.TagNumber(4)
  void clearBoolean() => $_clearField(4);

  @$pb.TagNumber(5)
  Size get size => $_getN(4);
  @$pb.TagNumber(5)
  set size(Size value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearSize() => $_clearField(5);
  @$pb.TagNumber(5)
  Size ensureSize() => $_ensure(4);

  @$pb.TagNumber(6)
  Color get color => $_getN(5);
  @$pb.TagNumber(6)
  set color(Color value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasColor() => $_has(5);
  @$pb.TagNumber(6)
  void clearColor() => $_clearField(6);
  @$pb.TagNumber(6)
  Color ensureColor() => $_ensure(5);

  @$pb.TagNumber(7)
  Border get border => $_getN(6);
  @$pb.TagNumber(7)
  set border(Border value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasBorder() => $_has(6);
  @$pb.TagNumber(7)
  void clearBorder() => $_clearField(7);
  @$pb.TagNumber(7)
  Border ensureBorder() => $_ensure(6);

  @$pb.TagNumber(8)
  BorderSide get borderSide => $_getN(7);
  @$pb.TagNumber(8)
  set borderSide(BorderSide value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasBorderSide() => $_has(7);
  @$pb.TagNumber(8)
  void clearBorderSide() => $_clearField(8);
  @$pb.TagNumber(8)
  BorderSide ensureBorderSide() => $_ensure(7);

  @$pb.TagNumber(9)
  Gradient get gradient => $_getN(8);
  @$pb.TagNumber(9)
  set gradient(Gradient value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasGradient() => $_has(8);
  @$pb.TagNumber(9)
  void clearGradient() => $_clearField(9);
  @$pb.TagNumber(9)
  Gradient ensureGradient() => $_ensure(8);

  @$pb.TagNumber(11)
  Label get label => $_getN(9);
  @$pb.TagNumber(11)
  set label(Label value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasLabel() => $_has(9);
  @$pb.TagNumber(11)
  void clearLabel() => $_clearField(11);
  @$pb.TagNumber(11)
  Label ensureLabel() => $_ensure(9);

  @$pb.TagNumber(12)
  Offset get offset => $_getN(10);
  @$pb.TagNumber(12)
  set offset(Offset value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasOffset() => $_has(10);
  @$pb.TagNumber(12)
  void clearOffset() => $_clearField(12);
  @$pb.TagNumber(12)
  Offset ensureOffset() => $_ensure(10);

  @$pb.TagNumber(13)
  Radius get radius => $_getN(11);
  @$pb.TagNumber(13)
  set radius(Radius value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasRadius() => $_has(11);
  @$pb.TagNumber(13)
  void clearRadius() => $_clearField(13);
  @$pb.TagNumber(13)
  Radius ensureRadius() => $_ensure(11);

  @$pb.TagNumber(14)
  BorderRadius get borderRadius => $_getN(12);
  @$pb.TagNumber(14)
  set borderRadius(BorderRadius value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBorderRadius() => $_has(12);
  @$pb.TagNumber(14)
  void clearBorderRadius() => $_clearField(14);
  @$pb.TagNumber(14)
  BorderRadius ensureBorderRadius() => $_ensure(12);

  @$pb.TagNumber(15)
  Rect get rect => $_getN(13);
  @$pb.TagNumber(15)
  set rect(Rect value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasRect() => $_has(13);
  @$pb.TagNumber(15)
  void clearRect() => $_clearField(15);
  @$pb.TagNumber(15)
  Rect ensureRect() => $_ensure(13);

  @$pb.TagNumber(16)
  TextStyle get textStyle => $_getN(14);
  @$pb.TagNumber(16)
  set textStyle(TextStyle value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasTextStyle() => $_has(14);
  @$pb.TagNumber(16)
  void clearTextStyle() => $_clearField(16);
  @$pb.TagNumber(16)
  TextStyle ensureTextStyle() => $_ensure(14);

  @$pb.TagNumber(17)
  Transform2D get transform2D => $_getN(15);
  @$pb.TagNumber(17)
  set transform2D(Transform2D value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasTransform2D() => $_has(15);
  @$pb.TagNumber(17)
  void clearTransform2D() => $_clearField(17);
  @$pb.TagNumber(17)
  Transform2D ensureTransform2D() => $_ensure(15);

  @$pb.TagNumber(18)
  VariantValue get variantValue => $_getN(16);
  @$pb.TagNumber(18)
  set variantValue(VariantValue value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasVariantValue() => $_has(16);
  @$pb.TagNumber(18)
  void clearVariantValue() => $_clearField(18);
  @$pb.TagNumber(18)
  VariantValue ensureVariantValue() => $_ensure(16);

  @$pb.TagNumber(19)
  VectorGraphics get vectorGraphics => $_getN(17);
  @$pb.TagNumber(19)
  set vectorGraphics(VectorGraphics value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasVectorGraphics() => $_has(17);
  @$pb.TagNumber(19)
  void clearVectorGraphics() => $_clearField(19);
  @$pb.TagNumber(19)
  VectorGraphics ensureVectorGraphics() => $_ensure(17);

  @$pb.TagNumber(20)
  Version_ get version => $_getN(18);
  @$pb.TagNumber(20)
  set version(Version_ value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasVersion() => $_has(18);
  @$pb.TagNumber(20)
  void clearVersion() => $_clearField(20);
  @$pb.TagNumber(20)
  Version_ ensureVersion() => $_ensure(18);

  @$pb.TagNumber(21)
  VisualNode get visualNode => $_getN(19);
  @$pb.TagNumber(21)
  set visualNode(VisualNode value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasVisualNode() => $_has(19);
  @$pb.TagNumber(21)
  void clearVisualNode() => $_clearField(21);
  @$pb.TagNumber(21)
  VisualNode ensureVisualNode() => $_ensure(19);
}

enum Alias_Type { constant, property, variable, notSet }

class Alias extends $pb.GeneratedMessage {
  factory Alias({
    ConstantAlias? constant,
    PropertyAlias? property,
    VariableAlias? variable,
  }) {
    final result = create();
    if (constant != null) result.constant = constant;
    if (property != null) result.property = property;
    if (variable != null) result.variable = variable;
    return result;
  }

  Alias._();

  factory Alias.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Alias.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Alias_Type> _Alias_TypeByTag = {
    1: Alias_Type.constant,
    2: Alias_Type.property,
    3: Alias_Type.variable,
    0: Alias_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<ConstantAlias>(1, _omitFieldNames ? '' : 'constant',
        subBuilder: ConstantAlias.create)
    ..aOM<PropertyAlias>(2, _omitFieldNames ? '' : 'property',
        subBuilder: PropertyAlias.create)
    ..aOM<VariableAlias>(3, _omitFieldNames ? '' : 'variable',
        subBuilder: VariableAlias.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alias clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Alias copyWith(void Function(Alias) updates) =>
      super.copyWith((message) => updates(message as Alias)) as Alias;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Alias create() => Alias._();
  @$core.override
  Alias createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Alias getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Alias>(create);
  static Alias? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Alias_Type whichType() => _Alias_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ConstantAlias get constant => $_getN(0);
  @$pb.TagNumber(1)
  set constant(ConstantAlias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConstant() => $_has(0);
  @$pb.TagNumber(1)
  void clearConstant() => $_clearField(1);
  @$pb.TagNumber(1)
  ConstantAlias ensureConstant() => $_ensure(0);

  @$pb.TagNumber(2)
  PropertyAlias get property => $_getN(1);
  @$pb.TagNumber(2)
  set property(PropertyAlias value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasProperty() => $_has(1);
  @$pb.TagNumber(2)
  void clearProperty() => $_clearField(2);
  @$pb.TagNumber(2)
  PropertyAlias ensureProperty() => $_ensure(1);

  @$pb.TagNumber(3)
  VariableAlias get variable => $_getN(2);
  @$pb.TagNumber(3)
  set variable(VariableAlias value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasVariable() => $_has(2);
  @$pb.TagNumber(3)
  void clearVariable() => $_clearField(3);
  @$pb.TagNumber(3)
  VariableAlias ensureVariable() => $_ensure(2);
}

class ConstantAlias extends $pb.GeneratedMessage {
  factory ConstantAlias({
    Value? value,
  }) {
    final result = create();
    if (value != null) result.value = value;
    return result;
  }

  ConstantAlias._();

  factory ConstantAlias.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ConstantAlias.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ConstantAlias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Value>(1, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstantAlias clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ConstantAlias copyWith(void Function(ConstantAlias) updates) =>
      super.copyWith((message) => updates(message as ConstantAlias))
          as ConstantAlias;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConstantAlias create() => ConstantAlias._();
  @$core.override
  ConstantAlias createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ConstantAlias getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ConstantAlias>(create);
  static ConstantAlias? _defaultInstance;

  @$pb.TagNumber(1)
  Value get value => $_getN(0);
  @$pb.TagNumber(1)
  set value(Value value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);
  @$pb.TagNumber(1)
  Value ensureValue() => $_ensure(0);
}

class VariableAlias extends $pb.GeneratedMessage {
  factory VariableAlias({
    $core.int? collectionId,
    $core.int? variableId,
    Value? defaultValue,
  }) {
    final result = create();
    if (collectionId != null) result.collectionId = collectionId;
    if (variableId != null) result.variableId = variableId;
    if (defaultValue != null) result.defaultValue = defaultValue;
    return result;
  }

  VariableAlias._();

  factory VariableAlias.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariableAlias.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariableAlias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'collectionId', protoName: 'collectionId')
    ..aI(2, _omitFieldNames ? '' : 'variableId', protoName: 'variableId')
    ..aOM<Value>(3, _omitFieldNames ? '' : 'defaultValue',
        protoName: 'defaultValue', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableAlias clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableAlias copyWith(void Function(VariableAlias) updates) =>
      super.copyWith((message) => updates(message as VariableAlias))
          as VariableAlias;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableAlias create() => VariableAlias._();
  @$core.override
  VariableAlias createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariableAlias getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableAlias>(create);
  static VariableAlias? _defaultInstance;

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

  @$pb.TagNumber(3)
  Value get defaultValue => $_getN(2);
  @$pb.TagNumber(3)
  set defaultValue(Value value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultValue() => $_clearField(3);
  @$pb.TagNumber(3)
  Value ensureDefaultValue() => $_ensure(2);
}

class PropertyAlias extends $pb.GeneratedMessage {
  factory PropertyAlias({
    $core.int? componentId,
    $core.int? propertyId,
    Value? defaultValue,
  }) {
    final result = create();
    if (componentId != null) result.componentId = componentId;
    if (propertyId != null) result.propertyId = propertyId;
    if (defaultValue != null) result.defaultValue = defaultValue;
    return result;
  }

  PropertyAlias._();

  factory PropertyAlias.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PropertyAlias.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PropertyAlias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'componentId', protoName: 'componentId')
    ..aI(2, _omitFieldNames ? '' : 'propertyId', protoName: 'propertyId')
    ..aOM<Value>(3, _omitFieldNames ? '' : 'defaultValue',
        protoName: 'defaultValue', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyAlias clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PropertyAlias copyWith(void Function(PropertyAlias) updates) =>
      super.copyWith((message) => updates(message as PropertyAlias))
          as PropertyAlias;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PropertyAlias create() => PropertyAlias._();
  @$core.override
  PropertyAlias createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PropertyAlias getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PropertyAlias>(create);
  static PropertyAlias? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get componentId => $_getIZ(0);
  @$pb.TagNumber(1)
  set componentId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get propertyId => $_getIZ(1);
  @$pb.TagNumber(2)
  set propertyId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPropertyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPropertyId() => $_clearField(2);

  @$pb.TagNumber(3)
  Value get defaultValue => $_getN(2);
  @$pb.TagNumber(3)
  set defaultValue(Value value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasDefaultValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearDefaultValue() => $_clearField(3);
  @$pb.TagNumber(3)
  Value ensureDefaultValue() => $_ensure(2);
}

class Size extends $pb.GeneratedMessage {
  factory Size({
    $core.double? width,
    $core.double? height,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    return result;
  }

  Size._();

  factory Size.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Size.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Size',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'width')
    ..aD(2, _omitFieldNames ? '' : 'height')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Size clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Size copyWith(void Function(Size) updates) =>
      super.copyWith((message) => updates(message as Size)) as Size;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Size create() => Size._();
  @$core.override
  Size createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Size getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Size>(create);
  static Size? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get height => $_getN(1);
  @$pb.TagNumber(2)
  set height($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => $_clearField(2);
}

class Color extends $pb.GeneratedMessage {
  factory Color({
    $core.double? red,
    $core.double? green,
    $core.double? blue,
    $core.double? alpha,
    ColorSpace? colorSpace,
  }) {
    final result = create();
    if (red != null) result.red = red;
    if (green != null) result.green = green;
    if (blue != null) result.blue = blue;
    if (alpha != null) result.alpha = alpha;
    if (colorSpace != null) result.colorSpace = colorSpace;
    return result;
  }

  Color._();

  factory Color.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Color.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Color',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'red')
    ..aD(2, _omitFieldNames ? '' : 'green')
    ..aD(3, _omitFieldNames ? '' : 'blue')
    ..aD(4, _omitFieldNames ? '' : 'alpha')
    ..aE<ColorSpace>(5, _omitFieldNames ? '' : 'colorSpace',
        protoName: 'colorSpace', enumValues: ColorSpace.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Color clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Color copyWith(void Function(Color) updates) =>
      super.copyWith((message) => updates(message as Color)) as Color;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Color create() => Color._();
  @$core.override
  Color createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Color getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Color>(create);
  static Color? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get red => $_getN(0);
  @$pb.TagNumber(1)
  set red($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRed() => $_has(0);
  @$pb.TagNumber(1)
  void clearRed() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get green => $_getN(1);
  @$pb.TagNumber(2)
  set green($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasGreen() => $_has(1);
  @$pb.TagNumber(2)
  void clearGreen() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get blue => $_getN(2);
  @$pb.TagNumber(3)
  set blue($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasBlue() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlue() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get alpha => $_getN(3);
  @$pb.TagNumber(4)
  set alpha($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasAlpha() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlpha() => $_clearField(4);

  @$pb.TagNumber(5)
  ColorSpace get colorSpace => $_getN(4);
  @$pb.TagNumber(5)
  set colorSpace(ColorSpace value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasColorSpace() => $_has(4);
  @$pb.TagNumber(5)
  void clearColorSpace() => $_clearField(5);
}

class Offset extends $pb.GeneratedMessage {
  factory Offset({
    $core.double? x,
    $core.double? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  Offset._();

  factory Offset.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Offset.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Offset',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Offset clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Offset copyWith(void Function(Offset) updates) =>
      super.copyWith((message) => updates(message as Offset)) as Offset;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Offset create() => Offset._();
  @$core.override
  Offset createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Offset getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Offset>(create);
  static Offset? _defaultInstance;

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

class Radius extends $pb.GeneratedMessage {
  factory Radius({
    $core.double? x,
    $core.double? y,
  }) {
    final result = create();
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    return result;
  }

  Radius._();

  factory Radius.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Radius.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Radius',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Radius clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Radius copyWith(void Function(Radius) updates) =>
      super.copyWith((message) => updates(message as Radius)) as Radius;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Radius create() => Radius._();
  @$core.override
  Radius createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Radius getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Radius>(create);
  static Radius? _defaultInstance;

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

class BorderRadius extends $pb.GeneratedMessage {
  factory BorderRadius({
    Radius? topLeft,
    Radius? topRight,
    Radius? bottomRight,
    Radius? bottomLeft,
  }) {
    final result = create();
    if (topLeft != null) result.topLeft = topLeft;
    if (topRight != null) result.topRight = topRight;
    if (bottomRight != null) result.bottomRight = bottomRight;
    if (bottomLeft != null) result.bottomLeft = bottomLeft;
    return result;
  }

  BorderRadius._();

  factory BorderRadius.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BorderRadius.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BorderRadius',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Radius>(1, _omitFieldNames ? '' : 'topLeft',
        protoName: 'topLeft', subBuilder: Radius.create)
    ..aOM<Radius>(2, _omitFieldNames ? '' : 'topRight',
        protoName: 'topRight', subBuilder: Radius.create)
    ..aOM<Radius>(3, _omitFieldNames ? '' : 'bottomRight',
        protoName: 'bottomRight', subBuilder: Radius.create)
    ..aOM<Radius>(4, _omitFieldNames ? '' : 'bottomLeft',
        protoName: 'bottomLeft', subBuilder: Radius.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderRadius clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderRadius copyWith(void Function(BorderRadius) updates) =>
      super.copyWith((message) => updates(message as BorderRadius))
          as BorderRadius;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderRadius create() => BorderRadius._();
  @$core.override
  BorderRadius createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BorderRadius getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BorderRadius>(create);
  static BorderRadius? _defaultInstance;

  @$pb.TagNumber(1)
  Radius get topLeft => $_getN(0);
  @$pb.TagNumber(1)
  set topLeft(Radius value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTopLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopLeft() => $_clearField(1);
  @$pb.TagNumber(1)
  Radius ensureTopLeft() => $_ensure(0);

  @$pb.TagNumber(2)
  Radius get topRight => $_getN(1);
  @$pb.TagNumber(2)
  set topRight(Radius value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTopRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearTopRight() => $_clearField(2);
  @$pb.TagNumber(2)
  Radius ensureTopRight() => $_ensure(1);

  @$pb.TagNumber(3)
  Radius get bottomRight => $_getN(2);
  @$pb.TagNumber(3)
  set bottomRight(Radius value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBottomRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottomRight() => $_clearField(3);
  @$pb.TagNumber(3)
  Radius ensureBottomRight() => $_ensure(2);

  @$pb.TagNumber(4)
  Radius get bottomLeft => $_getN(3);
  @$pb.TagNumber(4)
  set bottomLeft(Radius value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBottomLeft() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottomLeft() => $_clearField(4);
  @$pb.TagNumber(4)
  Radius ensureBottomLeft() => $_ensure(3);
}

class Rect extends $pb.GeneratedMessage {
  factory Rect({
    Offset? position,
    Size? size,
  }) {
    final result = create();
    if (position != null) result.position = position;
    if (size != null) result.size = size;
    return result;
  }

  Rect._();

  factory Rect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Rect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Rect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Offset>(1, _omitFieldNames ? '' : 'position',
        subBuilder: Offset.create)
    ..aOM<Size>(2, _omitFieldNames ? '' : 'size', subBuilder: Size.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Rect copyWith(void Function(Rect) updates) =>
      super.copyWith((message) => updates(message as Rect)) as Rect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Rect create() => Rect._();
  @$core.override
  Rect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Rect getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rect>(create);
  static Rect? _defaultInstance;

  @$pb.TagNumber(1)
  Offset get position => $_getN(0);
  @$pb.TagNumber(1)
  set position(Offset value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => $_clearField(1);
  @$pb.TagNumber(1)
  Offset ensurePosition() => $_ensure(0);

  @$pb.TagNumber(2)
  Size get size => $_getN(1);
  @$pb.TagNumber(2)
  set size(Size value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearSize() => $_clearField(2);
  @$pb.TagNumber(2)
  Size ensureSize() => $_ensure(1);
}

class BorderSide extends $pb.GeneratedMessage {
  factory BorderSide({
    Color? color,
    $core.double? width,
    $core.double? strokeAlign,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (width != null) result.width = width;
    if (strokeAlign != null) result.strokeAlign = strokeAlign;
    return result;
  }

  BorderSide._();

  factory BorderSide.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BorderSide.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BorderSide',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Color>(1, _omitFieldNames ? '' : 'color', subBuilder: Color.create)
    ..aD(2, _omitFieldNames ? '' : 'width')
    ..aD(3, _omitFieldNames ? '' : 'strokeAlign', protoName: 'strokeAlign')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderSide clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BorderSide copyWith(void Function(BorderSide) updates) =>
      super.copyWith((message) => updates(message as BorderSide)) as BorderSide;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BorderSide create() => BorderSide._();
  @$core.override
  BorderSide createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BorderSide getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BorderSide>(create);
  static BorderSide? _defaultInstance;

  @$pb.TagNumber(1)
  Color get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(Color value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  Color ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get width => $_getN(1);
  @$pb.TagNumber(2)
  set width($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasWidth() => $_has(1);
  @$pb.TagNumber(2)
  void clearWidth() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get strokeAlign => $_getN(2);
  @$pb.TagNumber(3)
  set strokeAlign($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStrokeAlign() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrokeAlign() => $_clearField(3);
}

class Border extends $pb.GeneratedMessage {
  factory Border({
    BorderSide? top,
    BorderSide? right,
    BorderSide? bottom,
    BorderSide? left,
  }) {
    final result = create();
    if (top != null) result.top = top;
    if (right != null) result.right = right;
    if (bottom != null) result.bottom = bottom;
    if (left != null) result.left = left;
    return result;
  }

  Border._();

  factory Border.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Border.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Border',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<BorderSide>(1, _omitFieldNames ? '' : 'top',
        subBuilder: BorderSide.create)
    ..aOM<BorderSide>(2, _omitFieldNames ? '' : 'right',
        subBuilder: BorderSide.create)
    ..aOM<BorderSide>(3, _omitFieldNames ? '' : 'bottom',
        subBuilder: BorderSide.create)
    ..aOM<BorderSide>(4, _omitFieldNames ? '' : 'left',
        subBuilder: BorderSide.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Border clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Border copyWith(void Function(Border) updates) =>
      super.copyWith((message) => updates(message as Border)) as Border;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Border create() => Border._();
  @$core.override
  Border createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Border getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Border>(create);
  static Border? _defaultInstance;

  @$pb.TagNumber(1)
  BorderSide get top => $_getN(0);
  @$pb.TagNumber(1)
  set top(BorderSide value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasTop() => $_has(0);
  @$pb.TagNumber(1)
  void clearTop() => $_clearField(1);
  @$pb.TagNumber(1)
  BorderSide ensureTop() => $_ensure(0);

  @$pb.TagNumber(2)
  BorderSide get right => $_getN(1);
  @$pb.TagNumber(2)
  set right(BorderSide value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRight() => $_has(1);
  @$pb.TagNumber(2)
  void clearRight() => $_clearField(2);
  @$pb.TagNumber(2)
  BorderSide ensureRight() => $_ensure(1);

  @$pb.TagNumber(3)
  BorderSide get bottom => $_getN(2);
  @$pb.TagNumber(3)
  set bottom(BorderSide value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBottom() => $_has(2);
  @$pb.TagNumber(3)
  void clearBottom() => $_clearField(3);
  @$pb.TagNumber(3)
  BorderSide ensureBottom() => $_ensure(2);

  @$pb.TagNumber(4)
  BorderSide get left => $_getN(3);
  @$pb.TagNumber(4)
  set left(BorderSide value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLeft() => $_has(3);
  @$pb.TagNumber(4)
  void clearLeft() => $_clearField(4);
  @$pb.TagNumber(4)
  BorderSide ensureLeft() => $_ensure(3);
}

class GradientStop extends $pb.GeneratedMessage {
  factory GradientStop({
    $core.double? offset,
    Color? color,
  }) {
    final result = create();
    if (offset != null) result.offset = offset;
    if (color != null) result.color = color;
    return result;
  }

  GradientStop._();

  factory GradientStop.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GradientStop.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GradientStop',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'offset')
    ..aOM<Color>(2, _omitFieldNames ? '' : 'color', subBuilder: Color.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradientStop clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GradientStop copyWith(void Function(GradientStop) updates) =>
      super.copyWith((message) => updates(message as GradientStop))
          as GradientStop;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GradientStop create() => GradientStop._();
  @$core.override
  GradientStop createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GradientStop getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GradientStop>(create);
  static GradientStop? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get offset => $_getN(0);
  @$pb.TagNumber(1)
  set offset($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOffset() => $_has(0);
  @$pb.TagNumber(1)
  void clearOffset() => $_clearField(1);

  @$pb.TagNumber(2)
  Color get color => $_getN(1);
  @$pb.TagNumber(2)
  set color(Color value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => $_clearField(2);
  @$pb.TagNumber(2)
  Color ensureColor() => $_ensure(1);
}

enum Gradient_Type { linear, radial, notSet }

class Gradient extends $pb.GeneratedMessage {
  factory Gradient({
    LinearGradient? linear,
    RadialGradient? radial,
  }) {
    final result = create();
    if (linear != null) result.linear = linear;
    if (radial != null) result.radial = radial;
    return result;
  }

  Gradient._();

  factory Gradient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Gradient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Gradient_Type> _Gradient_TypeByTag = {
    1: Gradient_Type.linear,
    2: Gradient_Type.radial,
    0: Gradient_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Gradient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<LinearGradient>(1, _omitFieldNames ? '' : 'linear',
        subBuilder: LinearGradient.create)
    ..aOM<RadialGradient>(2, _omitFieldNames ? '' : 'radial',
        subBuilder: RadialGradient.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gradient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Gradient copyWith(void Function(Gradient) updates) =>
      super.copyWith((message) => updates(message as Gradient)) as Gradient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Gradient create() => Gradient._();
  @$core.override
  Gradient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Gradient getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gradient>(create);
  static Gradient? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  Gradient_Type whichType() => _Gradient_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  LinearGradient get linear => $_getN(0);
  @$pb.TagNumber(1)
  set linear(LinearGradient value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasLinear() => $_has(0);
  @$pb.TagNumber(1)
  void clearLinear() => $_clearField(1);
  @$pb.TagNumber(1)
  LinearGradient ensureLinear() => $_ensure(0);

  @$pb.TagNumber(2)
  RadialGradient get radial => $_getN(1);
  @$pb.TagNumber(2)
  set radial(RadialGradient value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasRadial() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadial() => $_clearField(2);
  @$pb.TagNumber(2)
  RadialGradient ensureRadial() => $_ensure(1);
}

class LinearGradient extends $pb.GeneratedMessage {
  factory LinearGradient({
    $core.Iterable<GradientStop>? stops,
    Offset? begin,
    Offset? end,
  }) {
    final result = create();
    if (stops != null) result.stops.addAll(stops);
    if (begin != null) result.begin = begin;
    if (end != null) result.end = end;
    return result;
  }

  LinearGradient._();

  factory LinearGradient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinearGradient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinearGradient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<GradientStop>(1, _omitFieldNames ? '' : 'stops',
        subBuilder: GradientStop.create)
    ..aOM<Offset>(2, _omitFieldNames ? '' : 'begin', subBuilder: Offset.create)
    ..aOM<Offset>(3, _omitFieldNames ? '' : 'end', subBuilder: Offset.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinearGradient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinearGradient copyWith(void Function(LinearGradient) updates) =>
      super.copyWith((message) => updates(message as LinearGradient))
          as LinearGradient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinearGradient create() => LinearGradient._();
  @$core.override
  LinearGradient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LinearGradient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinearGradient>(create);
  static LinearGradient? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GradientStop> get stops => $_getList(0);

  @$pb.TagNumber(2)
  Offset get begin => $_getN(1);
  @$pb.TagNumber(2)
  set begin(Offset value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBegin() => $_has(1);
  @$pb.TagNumber(2)
  void clearBegin() => $_clearField(2);
  @$pb.TagNumber(2)
  Offset ensureBegin() => $_ensure(1);

  @$pb.TagNumber(3)
  Offset get end => $_getN(2);
  @$pb.TagNumber(3)
  set end(Offset value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasEnd() => $_has(2);
  @$pb.TagNumber(3)
  void clearEnd() => $_clearField(3);
  @$pb.TagNumber(3)
  Offset ensureEnd() => $_ensure(2);
}

class RadialGradient extends $pb.GeneratedMessage {
  factory RadialGradient({
    $core.Iterable<GradientStop>? stops,
    Offset? center,
    $core.double? radius,
  }) {
    final result = create();
    if (stops != null) result.stops.addAll(stops);
    if (center != null) result.center = center;
    if (radius != null) result.radius = radius;
    return result;
  }

  RadialGradient._();

  factory RadialGradient.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadialGradient.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadialGradient',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<GradientStop>(1, _omitFieldNames ? '' : 'stops',
        subBuilder: GradientStop.create)
    ..aOM<Offset>(2, _omitFieldNames ? '' : 'center', subBuilder: Offset.create)
    ..aD(3, _omitFieldNames ? '' : 'radius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadialGradient clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadialGradient copyWith(void Function(RadialGradient) updates) =>
      super.copyWith((message) => updates(message as RadialGradient))
          as RadialGradient;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadialGradient create() => RadialGradient._();
  @$core.override
  RadialGradient createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadialGradient getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadialGradient>(create);
  static RadialGradient? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<GradientStop> get stops => $_getList(0);

  @$pb.TagNumber(2)
  Offset get center => $_getN(1);
  @$pb.TagNumber(2)
  set center(Offset value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCenter() => $_has(1);
  @$pb.TagNumber(2)
  void clearCenter() => $_clearField(2);
  @$pb.TagNumber(2)
  Offset ensureCenter() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get radius => $_getN(2);
  @$pb.TagNumber(3)
  set radius($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadius() => $_clearField(3);
}

class Label extends $pb.GeneratedMessage {
  factory Label({
    LabelSegment? segment,
    $core.Iterable<LabelVariable>? variables,
  }) {
    final result = create();
    if (segment != null) result.segment = segment;
    if (variables != null) result.variables.addAll(variables);
    return result;
  }

  Label._();

  factory Label.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Label.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Label',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<LabelSegment>(1, _omitFieldNames ? '' : 'segment',
        subBuilder: LabelSegment.create)
    ..pPM<LabelVariable>(2, _omitFieldNames ? '' : 'variables',
        subBuilder: LabelVariable.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Label clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Label copyWith(void Function(Label) updates) =>
      super.copyWith((message) => updates(message as Label)) as Label;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Label create() => Label._();
  @$core.override
  Label createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Label getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Label>(create);
  static Label? _defaultInstance;

  @$pb.TagNumber(1)
  LabelSegment get segment => $_getN(0);
  @$pb.TagNumber(1)
  set segment(LabelSegment value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSegment() => $_has(0);
  @$pb.TagNumber(1)
  void clearSegment() => $_clearField(1);
  @$pb.TagNumber(1)
  LabelSegment ensureSegment() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<LabelVariable> get variables => $_getList(1);
}

class LabelVariable extends $pb.GeneratedMessage {
  factory LabelVariable({
    $core.int? id,
    LabelVariableType? variableType,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (variableType != null) result.variableType = variableType;
    return result;
  }

  LabelVariable._();

  factory LabelVariable.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LabelVariable.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LabelVariable',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'id')
    ..aE<LabelVariableType>(2, _omitFieldNames ? '' : 'variableType',
        protoName: 'variableType', enumValues: LabelVariableType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LabelVariable clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LabelVariable copyWith(void Function(LabelVariable) updates) =>
      super.copyWith((message) => updates(message as LabelVariable))
          as LabelVariable;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelVariable create() => LabelVariable._();
  @$core.override
  LabelVariable createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LabelVariable getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LabelVariable>(create);
  static LabelVariable? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  LabelVariableType get variableType => $_getN(1);
  @$pb.TagNumber(2)
  set variableType(LabelVariableType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVariableType() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariableType() => $_clearField(2);
}

enum LabelSegment_Type { styled, static, variable, notSet }

class LabelSegment extends $pb.GeneratedMessage {
  factory LabelSegment({
    StyledSegment? styled,
    StaticSegment? static,
    VariableSegment? variable,
  }) {
    final result = create();
    if (styled != null) result.styled = styled;
    if (static != null) result.static = static;
    if (variable != null) result.variable = variable;
    return result;
  }

  LabelSegment._();

  factory LabelSegment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LabelSegment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, LabelSegment_Type> _LabelSegment_TypeByTag =
      {
    1: LabelSegment_Type.styled,
    2: LabelSegment_Type.static,
    3: LabelSegment_Type.variable,
    0: LabelSegment_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LabelSegment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<StyledSegment>(1, _omitFieldNames ? '' : 'styled',
        subBuilder: StyledSegment.create)
    ..aOM<StaticSegment>(2, _omitFieldNames ? '' : 'static',
        subBuilder: StaticSegment.create)
    ..aOM<VariableSegment>(3, _omitFieldNames ? '' : 'variable',
        subBuilder: VariableSegment.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LabelSegment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LabelSegment copyWith(void Function(LabelSegment) updates) =>
      super.copyWith((message) => updates(message as LabelSegment))
          as LabelSegment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelSegment create() => LabelSegment._();
  @$core.override
  LabelSegment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LabelSegment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LabelSegment>(create);
  static LabelSegment? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  LabelSegment_Type whichType() => _LabelSegment_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  StyledSegment get styled => $_getN(0);
  @$pb.TagNumber(1)
  set styled(StyledSegment value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStyled() => $_has(0);
  @$pb.TagNumber(1)
  void clearStyled() => $_clearField(1);
  @$pb.TagNumber(1)
  StyledSegment ensureStyled() => $_ensure(0);

  @$pb.TagNumber(2)
  StaticSegment get static => $_getN(1);
  @$pb.TagNumber(2)
  set static(StaticSegment value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatic() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatic() => $_clearField(2);
  @$pb.TagNumber(2)
  StaticSegment ensureStatic() => $_ensure(1);

  @$pb.TagNumber(3)
  VariableSegment get variable => $_getN(2);
  @$pb.TagNumber(3)
  set variable(VariableSegment value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasVariable() => $_has(2);
  @$pb.TagNumber(3)
  void clearVariable() => $_clearField(3);
  @$pb.TagNumber(3)
  VariableSegment ensureVariable() => $_ensure(2);
}

class StyledSegment extends $pb.GeneratedMessage {
  factory StyledSegment({
    LabelStyle? style,
    Label? child,
  }) {
    final result = create();
    if (style != null) result.style = style;
    if (child != null) result.child = child;
    return result;
  }

  StyledSegment._();

  factory StyledSegment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StyledSegment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StyledSegment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<LabelStyle>(1, _omitFieldNames ? '' : 'style',
        enumValues: LabelStyle.values)
    ..aOM<Label>(2, _omitFieldNames ? '' : 'child', subBuilder: Label.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyledSegment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StyledSegment copyWith(void Function(StyledSegment) updates) =>
      super.copyWith((message) => updates(message as StyledSegment))
          as StyledSegment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StyledSegment create() => StyledSegment._();
  @$core.override
  StyledSegment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StyledSegment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StyledSegment>(create);
  static StyledSegment? _defaultInstance;

  @$pb.TagNumber(1)
  LabelStyle get style => $_getN(0);
  @$pb.TagNumber(1)
  set style(LabelStyle value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasStyle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStyle() => $_clearField(1);

  @$pb.TagNumber(2)
  Label get child => $_getN(1);
  @$pb.TagNumber(2)
  set child(Label value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasChild() => $_has(1);
  @$pb.TagNumber(2)
  void clearChild() => $_clearField(2);
  @$pb.TagNumber(2)
  Label ensureChild() => $_ensure(1);
}

class StaticSegment extends $pb.GeneratedMessage {
  factory StaticSegment({
    $core.String? text,
  }) {
    final result = create();
    if (text != null) result.text = text;
    return result;
  }

  StaticSegment._();

  factory StaticSegment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory StaticSegment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'StaticSegment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaticSegment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaticSegment copyWith(void Function(StaticSegment) updates) =>
      super.copyWith((message) => updates(message as StaticSegment))
          as StaticSegment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StaticSegment create() => StaticSegment._();
  @$core.override
  StaticSegment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static StaticSegment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<StaticSegment>(create);
  static StaticSegment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);
}

class VariableSegment extends $pb.GeneratedMessage {
  factory VariableSegment({
    $core.int? variableId,
  }) {
    final result = create();
    if (variableId != null) result.variableId = variableId;
    return result;
  }

  VariableSegment._();

  factory VariableSegment.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariableSegment.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariableSegment',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'variableId', protoName: 'variableId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableSegment clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariableSegment copyWith(void Function(VariableSegment) updates) =>
      super.copyWith((message) => updates(message as VariableSegment))
          as VariableSegment;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariableSegment create() => VariableSegment._();
  @$core.override
  VariableSegment createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariableSegment getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariableSegment>(create);
  static VariableSegment? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get variableId => $_getIZ(0);
  @$pb.TagNumber(1)
  set variableId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVariableId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariableId() => $_clearField(1);
}

class FontVariation extends $pb.GeneratedMessage {
  factory FontVariation({
    $core.String? axis,
    $core.double? value,
  }) {
    final result = create();
    if (axis != null) result.axis = axis;
    if (value != null) result.value = value;
    return result;
  }

  FontVariation._();

  factory FontVariation.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FontVariation.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FontVariation',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'axis')
    ..aD(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FontVariation clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FontVariation copyWith(void Function(FontVariation) updates) =>
      super.copyWith((message) => updates(message as FontVariation))
          as FontVariation;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FontVariation create() => FontVariation._();
  @$core.override
  FontVariation createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FontVariation getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FontVariation>(create);
  static FontVariation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get axis => $_getSZ(0);
  @$pb.TagNumber(1)
  set axis($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAxis() => $_has(0);
  @$pb.TagNumber(1)
  void clearAxis() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

class TextStyle extends $pb.GeneratedMessage {
  factory TextStyle({
    $core.String? fontFamily,
    $core.double? fontSize,
    $core.int? fontWeight,
    $core.double? letterSpacing,
    $core.double? wordSpacing,
    $core.double? lineHeight,
    $core.Iterable<FontVariation>? fontVariations,
  }) {
    final result = create();
    if (fontFamily != null) result.fontFamily = fontFamily;
    if (fontSize != null) result.fontSize = fontSize;
    if (fontWeight != null) result.fontWeight = fontWeight;
    if (letterSpacing != null) result.letterSpacing = letterSpacing;
    if (wordSpacing != null) result.wordSpacing = wordSpacing;
    if (lineHeight != null) result.lineHeight = lineHeight;
    if (fontVariations != null) result.fontVariations.addAll(fontVariations);
    return result;
  }

  TextStyle._();

  factory TextStyle.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextStyle.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextStyle',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'fontFamily', protoName: 'fontFamily')
    ..aD(2, _omitFieldNames ? '' : 'fontSize', protoName: 'fontSize')
    ..aI(3, _omitFieldNames ? '' : 'fontWeight', protoName: 'fontWeight')
    ..aD(4, _omitFieldNames ? '' : 'letterSpacing', protoName: 'letterSpacing')
    ..aD(5, _omitFieldNames ? '' : 'wordSpacing', protoName: 'wordSpacing')
    ..aD(6, _omitFieldNames ? '' : 'lineHeight', protoName: 'lineHeight')
    ..pPM<FontVariation>(7, _omitFieldNames ? '' : 'fontVariations',
        protoName: 'fontVariations', subBuilder: FontVariation.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextStyle clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextStyle copyWith(void Function(TextStyle) updates) =>
      super.copyWith((message) => updates(message as TextStyle)) as TextStyle;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextStyle create() => TextStyle._();
  @$core.override
  TextStyle createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextStyle getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextStyle>(create);
  static TextStyle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fontFamily => $_getSZ(0);
  @$pb.TagNumber(1)
  set fontFamily($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFontFamily() => $_has(0);
  @$pb.TagNumber(1)
  void clearFontFamily() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get fontSize => $_getN(1);
  @$pb.TagNumber(2)
  set fontSize($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFontSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearFontSize() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get fontWeight => $_getIZ(2);
  @$pb.TagNumber(3)
  set fontWeight($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasFontWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearFontWeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get letterSpacing => $_getN(3);
  @$pb.TagNumber(4)
  set letterSpacing($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasLetterSpacing() => $_has(3);
  @$pb.TagNumber(4)
  void clearLetterSpacing() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get wordSpacing => $_getN(4);
  @$pb.TagNumber(5)
  set wordSpacing($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasWordSpacing() => $_has(4);
  @$pb.TagNumber(5)
  void clearWordSpacing() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get lineHeight => $_getN(5);
  @$pb.TagNumber(6)
  set lineHeight($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasLineHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearLineHeight() => $_clearField(6);

  @$pb.TagNumber(7)
  $pb.PbList<FontVariation> get fontVariations => $_getList(6);
}

class Transform2D extends $pb.GeneratedMessage {
  factory Transform2D({
    $core.Iterable<MatrixRow>? rows,
  }) {
    final result = create();
    if (rows != null) result.rows.addAll(rows);
    return result;
  }

  Transform2D._();

  factory Transform2D.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Transform2D.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Transform2D',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<MatrixRow>(1, _omitFieldNames ? '' : 'rows',
        subBuilder: MatrixRow.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transform2D clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Transform2D copyWith(void Function(Transform2D) updates) =>
      super.copyWith((message) => updates(message as Transform2D))
          as Transform2D;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Transform2D create() => Transform2D._();
  @$core.override
  Transform2D createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Transform2D getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Transform2D>(create);
  static Transform2D? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<MatrixRow> get rows => $_getList(0);
}

class MatrixRow extends $pb.GeneratedMessage {
  factory MatrixRow({
    $core.Iterable<$core.double>? values,
  }) {
    final result = create();
    if (values != null) result.values.addAll(values);
    return result;
  }

  MatrixRow._();

  factory MatrixRow.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MatrixRow.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MatrixRow',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..p<$core.double>(1, _omitFieldNames ? '' : 'values', $pb.PbFieldType.KD)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatrixRow clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MatrixRow copyWith(void Function(MatrixRow) updates) =>
      super.copyWith((message) => updates(message as MatrixRow)) as MatrixRow;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatrixRow create() => MatrixRow._();
  @$core.override
  MatrixRow createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MatrixRow getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatrixRow>(create);
  static MatrixRow? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.double> get values => $_getList(0);
}

class VariantValue extends $pb.GeneratedMessage {
  factory VariantValue({
    $core.int? componentId,
    $core.int? variantId,
    $core.int? valueId,
  }) {
    final result = create();
    if (componentId != null) result.componentId = componentId;
    if (variantId != null) result.variantId = variantId;
    if (valueId != null) result.valueId = valueId;
    return result;
  }

  VariantValue._();

  factory VariantValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VariantValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VariantValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'componentId', protoName: 'componentId')
    ..aI(2, _omitFieldNames ? '' : 'variantId', protoName: 'variantId')
    ..aI(3, _omitFieldNames ? '' : 'valueId', protoName: 'valueId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariantValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VariantValue copyWith(void Function(VariantValue) updates) =>
      super.copyWith((message) => updates(message as VariantValue))
          as VariantValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VariantValue create() => VariantValue._();
  @$core.override
  VariantValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VariantValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VariantValue>(create);
  static VariantValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get componentId => $_getIZ(0);
  @$pb.TagNumber(1)
  set componentId($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComponentId() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get variantId => $_getIZ(1);
  @$pb.TagNumber(2)
  set variantId($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVariantId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariantId() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get valueId => $_getIZ(2);
  @$pb.TagNumber(3)
  set valueId($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasValueId() => $_has(2);
  @$pb.TagNumber(3)
  void clearValueId() => $_clearField(3);
}

enum VectorGraphics_Type { svg, notSet }

class VectorGraphics extends $pb.GeneratedMessage {
  factory VectorGraphics({
    SvgVectorGraphics? svg,
  }) {
    final result = create();
    if (svg != null) result.svg = svg;
    return result;
  }

  VectorGraphics._();

  factory VectorGraphics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorGraphics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VectorGraphics_Type>
      _VectorGraphics_TypeByTag = {
    1: VectorGraphics_Type.svg,
    0: VectorGraphics_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorGraphics',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1])
    ..aOM<SvgVectorGraphics>(1, _omitFieldNames ? '' : 'svg',
        subBuilder: SvgVectorGraphics.create)
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
  VectorGraphics_Type whichType() =>
      _VectorGraphics_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SvgVectorGraphics get svg => $_getN(0);
  @$pb.TagNumber(1)
  set svg(SvgVectorGraphics value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSvg() => $_has(0);
  @$pb.TagNumber(1)
  void clearSvg() => $_clearField(1);
  @$pb.TagNumber(1)
  SvgVectorGraphics ensureSvg() => $_ensure(0);
}

class SvgVectorGraphics extends $pb.GeneratedMessage {
  factory SvgVectorGraphics({
    $core.String? data,
    Rect? viewBox,
  }) {
    final result = create();
    if (data != null) result.data = data;
    if (viewBox != null) result.viewBox = viewBox;
    return result;
  }

  SvgVectorGraphics._();

  factory SvgVectorGraphics.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SvgVectorGraphics.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SvgVectorGraphics',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'data')
    ..aOM<Rect>(2, _omitFieldNames ? '' : 'viewBox',
        protoName: 'viewBox', subBuilder: Rect.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SvgVectorGraphics clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SvgVectorGraphics copyWith(void Function(SvgVectorGraphics) updates) =>
      super.copyWith((message) => updates(message as SvgVectorGraphics))
          as SvgVectorGraphics;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SvgVectorGraphics create() => SvgVectorGraphics._();
  @$core.override
  SvgVectorGraphics createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SvgVectorGraphics getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SvgVectorGraphics>(create);
  static SvgVectorGraphics? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get data => $_getSZ(0);
  @$pb.TagNumber(1)
  set data($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => $_clearField(1);

  @$pb.TagNumber(2)
  Rect get viewBox => $_getN(1);
  @$pb.TagNumber(2)
  set viewBox(Rect value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasViewBox() => $_has(1);
  @$pb.TagNumber(2)
  void clearViewBox() => $_clearField(2);
  @$pb.TagNumber(2)
  Rect ensureViewBox() => $_ensure(1);
}

class Version_ extends $pb.GeneratedMessage {
  factory Version_({
    $core.int? major,
    $core.int? minor,
    $core.int? patch,
  }) {
    final result = create();
    if (major != null) result.major = major;
    if (minor != null) result.minor = minor;
    if (patch != null) result.patch = patch;
    return result;
  }

  Version_._();

  factory Version_.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Version_.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Version',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'major')
    ..aI(2, _omitFieldNames ? '' : 'minor')
    ..aI(3, _omitFieldNames ? '' : 'patch')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Version_ clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Version_ copyWith(void Function(Version_) updates) =>
      super.copyWith((message) => updates(message as Version_)) as Version_;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Version_ create() => Version_._();
  @$core.override
  Version_ createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Version_ getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version_>(create);
  static Version_? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get major => $_getIZ(0);
  @$pb.TagNumber(1)
  set major($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMajor() => $_has(0);
  @$pb.TagNumber(1)
  void clearMajor() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get minor => $_getIZ(1);
  @$pb.TagNumber(2)
  set minor($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMinor() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinor() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get patch => $_getIZ(2);
  @$pb.TagNumber(3)
  set patch($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasPatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearPatch() => $_clearField(3);
}

enum VisualNode_Type {
  frame,
  group,
  rectangle,
  ellipse,
  line,
  vector,
  text,
  component,
  instance,
  booleanOperation,
  notSet
}

class VisualNode extends $pb.GeneratedMessage {
  factory VisualNode({
    FrameNode? frame,
    GroupNode? group,
    RectangleNode? rectangle,
    EllipseNode? ellipse,
    LineNode? line,
    VectorNode? vector,
    TextNode? text,
    ComponentNode? component,
    InstanceNode? instance,
    BooleanOperationNode? booleanOperation,
  }) {
    final result = create();
    if (frame != null) result.frame = frame;
    if (group != null) result.group = group;
    if (rectangle != null) result.rectangle = rectangle;
    if (ellipse != null) result.ellipse = ellipse;
    if (line != null) result.line = line;
    if (vector != null) result.vector = vector;
    if (text != null) result.text = text;
    if (component != null) result.component = component;
    if (instance != null) result.instance = instance;
    if (booleanOperation != null) result.booleanOperation = booleanOperation;
    return result;
  }

  VisualNode._();

  factory VisualNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VisualNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VisualNode_Type> _VisualNode_TypeByTag = {
    1: VisualNode_Type.frame,
    2: VisualNode_Type.group,
    3: VisualNode_Type.rectangle,
    4: VisualNode_Type.ellipse,
    5: VisualNode_Type.line,
    6: VisualNode_Type.vector,
    7: VisualNode_Type.text,
    8: VisualNode_Type.component,
    9: VisualNode_Type.instance,
    10: VisualNode_Type.booleanOperation,
    0: VisualNode_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VisualNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<FrameNode>(1, _omitFieldNames ? '' : 'frame',
        subBuilder: FrameNode.create)
    ..aOM<GroupNode>(2, _omitFieldNames ? '' : 'group',
        subBuilder: GroupNode.create)
    ..aOM<RectangleNode>(3, _omitFieldNames ? '' : 'rectangle',
        subBuilder: RectangleNode.create)
    ..aOM<EllipseNode>(4, _omitFieldNames ? '' : 'ellipse',
        subBuilder: EllipseNode.create)
    ..aOM<LineNode>(5, _omitFieldNames ? '' : 'line',
        subBuilder: LineNode.create)
    ..aOM<VectorNode>(6, _omitFieldNames ? '' : 'vector',
        subBuilder: VectorNode.create)
    ..aOM<TextNode>(7, _omitFieldNames ? '' : 'text',
        subBuilder: TextNode.create)
    ..aOM<ComponentNode>(8, _omitFieldNames ? '' : 'component',
        subBuilder: ComponentNode.create)
    ..aOM<InstanceNode>(9, _omitFieldNames ? '' : 'instance',
        subBuilder: InstanceNode.create)
    ..aOM<BooleanOperationNode>(10, _omitFieldNames ? '' : 'booleanOperation',
        protoName: 'booleanOperation', subBuilder: BooleanOperationNode.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VisualNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VisualNode copyWith(void Function(VisualNode) updates) =>
      super.copyWith((message) => updates(message as VisualNode)) as VisualNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VisualNode create() => VisualNode._();
  @$core.override
  VisualNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VisualNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VisualNode>(create);
  static VisualNode? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  VisualNode_Type whichType() => _VisualNode_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FrameNode get frame => $_getN(0);
  @$pb.TagNumber(1)
  set frame(FrameNode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFrame() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrame() => $_clearField(1);
  @$pb.TagNumber(1)
  FrameNode ensureFrame() => $_ensure(0);

  @$pb.TagNumber(2)
  GroupNode get group => $_getN(1);
  @$pb.TagNumber(2)
  set group(GroupNode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => $_clearField(2);
  @$pb.TagNumber(2)
  GroupNode ensureGroup() => $_ensure(1);

  @$pb.TagNumber(3)
  RectangleNode get rectangle => $_getN(2);
  @$pb.TagNumber(3)
  set rectangle(RectangleNode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRectangle() => $_has(2);
  @$pb.TagNumber(3)
  void clearRectangle() => $_clearField(3);
  @$pb.TagNumber(3)
  RectangleNode ensureRectangle() => $_ensure(2);

  @$pb.TagNumber(4)
  EllipseNode get ellipse => $_getN(3);
  @$pb.TagNumber(4)
  set ellipse(EllipseNode value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasEllipse() => $_has(3);
  @$pb.TagNumber(4)
  void clearEllipse() => $_clearField(4);
  @$pb.TagNumber(4)
  EllipseNode ensureEllipse() => $_ensure(3);

  @$pb.TagNumber(5)
  LineNode get line => $_getN(4);
  @$pb.TagNumber(5)
  set line(LineNode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasLine() => $_has(4);
  @$pb.TagNumber(5)
  void clearLine() => $_clearField(5);
  @$pb.TagNumber(5)
  LineNode ensureLine() => $_ensure(4);

  @$pb.TagNumber(6)
  VectorNode get vector => $_getN(5);
  @$pb.TagNumber(6)
  set vector(VectorNode value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasVector() => $_has(5);
  @$pb.TagNumber(6)
  void clearVector() => $_clearField(6);
  @$pb.TagNumber(6)
  VectorNode ensureVector() => $_ensure(5);

  @$pb.TagNumber(7)
  TextNode get text => $_getN(6);
  @$pb.TagNumber(7)
  set text(TextNode value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasText() => $_has(6);
  @$pb.TagNumber(7)
  void clearText() => $_clearField(7);
  @$pb.TagNumber(7)
  TextNode ensureText() => $_ensure(6);

  @$pb.TagNumber(8)
  ComponentNode get component => $_getN(7);
  @$pb.TagNumber(8)
  set component(ComponentNode value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasComponent() => $_has(7);
  @$pb.TagNumber(8)
  void clearComponent() => $_clearField(8);
  @$pb.TagNumber(8)
  ComponentNode ensureComponent() => $_ensure(7);

  @$pb.TagNumber(9)
  InstanceNode get instance => $_getN(8);
  @$pb.TagNumber(9)
  set instance(InstanceNode value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasInstance() => $_has(8);
  @$pb.TagNumber(9)
  void clearInstance() => $_clearField(9);
  @$pb.TagNumber(9)
  InstanceNode ensureInstance() => $_ensure(8);

  @$pb.TagNumber(10)
  BooleanOperationNode get booleanOperation => $_getN(9);
  @$pb.TagNumber(10)
  set booleanOperation(BooleanOperationNode value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasBooleanOperation() => $_has(9);
  @$pb.TagNumber(10)
  void clearBooleanOperation() => $_clearField(10);
  @$pb.TagNumber(10)
  BooleanOperationNode ensureBooleanOperation() => $_ensure(9);
}

enum Paint_Type { solid, gradient, image, notSet }

class Paint extends $pb.GeneratedMessage {
  factory Paint({
    SolidPaint? solid,
    GradientPaint? gradient,
    ImagePaint? image,
    $core.bool? visible,
    $core.double? opacity,
    BlendMode? blendMode,
  }) {
    final result = create();
    if (solid != null) result.solid = solid;
    if (gradient != null) result.gradient = gradient;
    if (image != null) result.image = image;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    1: Paint_Type.solid,
    2: Paint_Type.gradient,
    3: Paint_Type.image,
    0: Paint_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Paint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<SolidPaint>(1, _omitFieldNames ? '' : 'solid',
        subBuilder: SolidPaint.create)
    ..aOM<GradientPaint>(2, _omitFieldNames ? '' : 'gradient',
        subBuilder: GradientPaint.create)
    ..aOM<ImagePaint>(3, _omitFieldNames ? '' : 'image',
        subBuilder: ImagePaint.create)
    ..aOB(4, _omitFieldNames ? '' : 'visible')
    ..aD(5, _omitFieldNames ? '' : 'opacity')
    ..aE<BlendMode>(6, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
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

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Paint_Type whichType() => _Paint_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SolidPaint get solid => $_getN(0);
  @$pb.TagNumber(1)
  set solid(SolidPaint value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSolid() => $_has(0);
  @$pb.TagNumber(1)
  void clearSolid() => $_clearField(1);
  @$pb.TagNumber(1)
  SolidPaint ensureSolid() => $_ensure(0);

  @$pb.TagNumber(2)
  GradientPaint get gradient => $_getN(1);
  @$pb.TagNumber(2)
  set gradient(GradientPaint value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGradient() => $_has(1);
  @$pb.TagNumber(2)
  void clearGradient() => $_clearField(2);
  @$pb.TagNumber(2)
  GradientPaint ensureGradient() => $_ensure(1);

  @$pb.TagNumber(3)
  ImagePaint get image => $_getN(2);
  @$pb.TagNumber(3)
  set image(ImagePaint value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasImage() => $_has(2);
  @$pb.TagNumber(3)
  void clearImage() => $_clearField(3);
  @$pb.TagNumber(3)
  ImagePaint ensureImage() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get visible => $_getBF(3);
  @$pb.TagNumber(4)
  set visible($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVisible() => $_has(3);
  @$pb.TagNumber(4)
  void clearVisible() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get opacity => $_getN(4);
  @$pb.TagNumber(5)
  set opacity($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOpacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpacity() => $_clearField(5);

  @$pb.TagNumber(6)
  BlendMode get blendMode => $_getN(5);
  @$pb.TagNumber(6)
  set blendMode(BlendMode value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBlendMode() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlendMode() => $_clearField(6);
}

class SolidPaint extends $pb.GeneratedMessage {
  factory SolidPaint({
    Alias? color,
  }) {
    final result = create();
    if (color != null) result.color = color;
    return result;
  }

  SolidPaint._();

  factory SolidPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SolidPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SolidPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
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
  Alias get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(Alias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  Alias ensureColor() => $_ensure(0);
}

class GradientPaint extends $pb.GeneratedMessage {
  factory GradientPaint({
    GradientType? type,
    Transform2D? gradientTransform,
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<GradientType>(1, _omitFieldNames ? '' : 'type',
        enumValues: GradientType.values)
    ..aOM<Transform2D>(2, _omitFieldNames ? '' : 'gradientTransform',
        protoName: 'gradientTransform', subBuilder: Transform2D.create)
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
  Transform2D get gradientTransform => $_getN(1);
  @$pb.TagNumber(2)
  set gradientTransform(Transform2D value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasGradientTransform() => $_has(1);
  @$pb.TagNumber(2)
  void clearGradientTransform() => $_clearField(2);
  @$pb.TagNumber(2)
  Transform2D ensureGradientTransform() => $_ensure(1);

  @$pb.TagNumber(3)
  $pb.PbList<ColorStop> get gradientStops => $_getList(2);
}

class ColorStop extends $pb.GeneratedMessage {
  factory ColorStop({
    $core.double? position,
    Alias? color,
  }) {
    final result = create();
    if (position != null) result.position = position;
    if (color != null) result.color = color;
    return result;
  }

  ColorStop._();

  factory ColorStop.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ColorStop.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ColorStop',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'position')
    ..aOM<Alias>(2, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
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

  @$pb.TagNumber(1)
  $core.double get position => $_getN(0);
  @$pb.TagNumber(1)
  set position($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPosition() => $_has(0);
  @$pb.TagNumber(1)
  void clearPosition() => $_clearField(1);

  @$pb.TagNumber(2)
  Alias get color => $_getN(1);
  @$pb.TagNumber(2)
  set color(Alias value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasColor() => $_has(1);
  @$pb.TagNumber(2)
  void clearColor() => $_clearField(2);
  @$pb.TagNumber(2)
  Alias ensureColor() => $_ensure(1);
}

class ImagePaint extends $pb.GeneratedMessage {
  factory ImagePaint({
    ScaleMode? scaleMode,
    $core.String? imageHash,
    Transform2D? imageTransform,
    $core.double? scalingFactor,
    $core.double? rotation,
  }) {
    final result = create();
    if (scaleMode != null) result.scaleMode = scaleMode;
    if (imageHash != null) result.imageHash = imageHash;
    if (imageTransform != null) result.imageTransform = imageTransform;
    if (scalingFactor != null) result.scalingFactor = scalingFactor;
    if (rotation != null) result.rotation = rotation;
    return result;
  }

  ImagePaint._();

  factory ImagePaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImagePaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImagePaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<ScaleMode>(1, _omitFieldNames ? '' : 'scaleMode',
        protoName: 'scaleMode', enumValues: ScaleMode.values)
    ..aOS(2, _omitFieldNames ? '' : 'imageHash', protoName: 'imageHash')
    ..aOM<Transform2D>(3, _omitFieldNames ? '' : 'imageTransform',
        protoName: 'imageTransform', subBuilder: Transform2D.create)
    ..aD(4, _omitFieldNames ? '' : 'scalingFactor', protoName: 'scalingFactor')
    ..aD(5, _omitFieldNames ? '' : 'rotation')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImagePaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImagePaint copyWith(void Function(ImagePaint) updates) =>
      super.copyWith((message) => updates(message as ImagePaint)) as ImagePaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImagePaint create() => ImagePaint._();
  @$core.override
  ImagePaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImagePaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImagePaint>(create);
  static ImagePaint? _defaultInstance;

  @$pb.TagNumber(1)
  ScaleMode get scaleMode => $_getN(0);
  @$pb.TagNumber(1)
  set scaleMode(ScaleMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScaleMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearScaleMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get imageHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set imageHash($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasImageHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearImageHash() => $_clearField(2);

  @$pb.TagNumber(3)
  Transform2D get imageTransform => $_getN(2);
  @$pb.TagNumber(3)
  set imageTransform(Transform2D value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasImageTransform() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageTransform() => $_clearField(3);
  @$pb.TagNumber(3)
  Transform2D ensureImageTransform() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get scalingFactor => $_getN(3);
  @$pb.TagNumber(4)
  set scalingFactor($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasScalingFactor() => $_has(3);
  @$pb.TagNumber(4)
  void clearScalingFactor() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get rotation => $_getN(4);
  @$pb.TagNumber(5)
  set rotation($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasRotation() => $_has(4);
  @$pb.TagNumber(5)
  void clearRotation() => $_clearField(5);
}

enum Effect_Type { dropShadow, innerShadow, blur, notSet }

class Effect extends $pb.GeneratedMessage {
  factory Effect({
    DropShadowEffect? dropShadow,
    InnerShadowEffect? innerShadow,
    BlurEffect? blur,
    $core.bool? visible,
  }) {
    final result = create();
    if (dropShadow != null) result.dropShadow = dropShadow;
    if (innerShadow != null) result.innerShadow = innerShadow;
    if (blur != null) result.blur = blur;
    if (visible != null) result.visible = visible;
    return result;
  }

  Effect._();

  factory Effect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Effect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Effect_Type> _Effect_TypeByTag = {
    1: Effect_Type.dropShadow,
    2: Effect_Type.innerShadow,
    3: Effect_Type.blur,
    0: Effect_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Effect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<DropShadowEffect>(1, _omitFieldNames ? '' : 'dropShadow',
        protoName: 'dropShadow', subBuilder: DropShadowEffect.create)
    ..aOM<InnerShadowEffect>(2, _omitFieldNames ? '' : 'innerShadow',
        protoName: 'innerShadow', subBuilder: InnerShadowEffect.create)
    ..aOM<BlurEffect>(3, _omitFieldNames ? '' : 'blur',
        subBuilder: BlurEffect.create)
    ..aOB(4, _omitFieldNames ? '' : 'visible')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Effect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Effect copyWith(void Function(Effect) updates) =>
      super.copyWith((message) => updates(message as Effect)) as Effect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Effect create() => Effect._();
  @$core.override
  Effect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Effect getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Effect>(create);
  static Effect? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Effect_Type whichType() => _Effect_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  DropShadowEffect get dropShadow => $_getN(0);
  @$pb.TagNumber(1)
  set dropShadow(DropShadowEffect value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasDropShadow() => $_has(0);
  @$pb.TagNumber(1)
  void clearDropShadow() => $_clearField(1);
  @$pb.TagNumber(1)
  DropShadowEffect ensureDropShadow() => $_ensure(0);

  @$pb.TagNumber(2)
  InnerShadowEffect get innerShadow => $_getN(1);
  @$pb.TagNumber(2)
  set innerShadow(InnerShadowEffect value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasInnerShadow() => $_has(1);
  @$pb.TagNumber(2)
  void clearInnerShadow() => $_clearField(2);
  @$pb.TagNumber(2)
  InnerShadowEffect ensureInnerShadow() => $_ensure(1);

  @$pb.TagNumber(3)
  BlurEffect get blur => $_getN(2);
  @$pb.TagNumber(3)
  set blur(BlurEffect value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasBlur() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlur() => $_clearField(3);
  @$pb.TagNumber(3)
  BlurEffect ensureBlur() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.bool get visible => $_getBF(3);
  @$pb.TagNumber(4)
  set visible($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasVisible() => $_has(3);
  @$pb.TagNumber(4)
  void clearVisible() => $_clearField(4);
}

class DropShadowEffect extends $pb.GeneratedMessage {
  factory DropShadowEffect({
    Alias? color,
    Offset? offset,
    $core.double? radius,
    $core.double? spread,
    BlendMode? blendMode,
    $core.bool? showShadowBehindNode,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (offset != null) result.offset = offset;
    if (radius != null) result.radius = radius;
    if (spread != null) result.spread = spread;
    if (blendMode != null) result.blendMode = blendMode;
    if (showShadowBehindNode != null)
      result.showShadowBehindNode = showShadowBehindNode;
    return result;
  }

  DropShadowEffect._();

  factory DropShadowEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DropShadowEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DropShadowEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
    ..aOM<Offset>(2, _omitFieldNames ? '' : 'offset', subBuilder: Offset.create)
    ..aD(3, _omitFieldNames ? '' : 'radius')
    ..aD(4, _omitFieldNames ? '' : 'spread')
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOB(6, _omitFieldNames ? '' : 'showShadowBehindNode',
        protoName: 'showShadowBehindNode')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropShadowEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DropShadowEffect copyWith(void Function(DropShadowEffect) updates) =>
      super.copyWith((message) => updates(message as DropShadowEffect))
          as DropShadowEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DropShadowEffect create() => DropShadowEffect._();
  @$core.override
  DropShadowEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DropShadowEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DropShadowEffect>(create);
  static DropShadowEffect? _defaultInstance;

  @$pb.TagNumber(1)
  Alias get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(Alias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  Alias ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  Offset get offset => $_getN(1);
  @$pb.TagNumber(2)
  set offset(Offset value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);
  @$pb.TagNumber(2)
  Offset ensureOffset() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get radius => $_getN(2);
  @$pb.TagNumber(3)
  set radius($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadius() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get spread => $_getN(3);
  @$pb.TagNumber(4)
  set spread($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSpread() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpread() => $_clearField(4);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.bool get showShadowBehindNode => $_getBF(5);
  @$pb.TagNumber(6)
  set showShadowBehindNode($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasShowShadowBehindNode() => $_has(5);
  @$pb.TagNumber(6)
  void clearShowShadowBehindNode() => $_clearField(6);
}

class InnerShadowEffect extends $pb.GeneratedMessage {
  factory InnerShadowEffect({
    Alias? color,
    Offset? offset,
    $core.double? radius,
    $core.double? spread,
    BlendMode? blendMode,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (offset != null) result.offset = offset;
    if (radius != null) result.radius = radius;
    if (spread != null) result.spread = spread;
    if (blendMode != null) result.blendMode = blendMode;
    return result;
  }

  InnerShadowEffect._();

  factory InnerShadowEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InnerShadowEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InnerShadowEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
    ..aOM<Offset>(2, _omitFieldNames ? '' : 'offset', subBuilder: Offset.create)
    ..aD(3, _omitFieldNames ? '' : 'radius')
    ..aD(4, _omitFieldNames ? '' : 'spread')
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InnerShadowEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InnerShadowEffect copyWith(void Function(InnerShadowEffect) updates) =>
      super.copyWith((message) => updates(message as InnerShadowEffect))
          as InnerShadowEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InnerShadowEffect create() => InnerShadowEffect._();
  @$core.override
  InnerShadowEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InnerShadowEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InnerShadowEffect>(create);
  static InnerShadowEffect? _defaultInstance;

  @$pb.TagNumber(1)
  Alias get color => $_getN(0);
  @$pb.TagNumber(1)
  set color(Alias value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasColor() => $_has(0);
  @$pb.TagNumber(1)
  void clearColor() => $_clearField(1);
  @$pb.TagNumber(1)
  Alias ensureColor() => $_ensure(0);

  @$pb.TagNumber(2)
  Offset get offset => $_getN(1);
  @$pb.TagNumber(2)
  set offset(Offset value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearOffset() => $_clearField(2);
  @$pb.TagNumber(2)
  Offset ensureOffset() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get radius => $_getN(2);
  @$pb.TagNumber(3)
  set radius($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadius() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get spread => $_getN(3);
  @$pb.TagNumber(4)
  set spread($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSpread() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpread() => $_clearField(4);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);
}

class BlurEffect extends $pb.GeneratedMessage {
  factory BlurEffect({
    BlurType? type,
    $core.double? radius,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (radius != null) result.radius = radius;
    return result;
  }

  BlurEffect._();

  factory BlurEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BlurEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BlurEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<BlurType>(1, _omitFieldNames ? '' : 'type',
        enumValues: BlurType.values)
    ..aD(2, _omitFieldNames ? '' : 'radius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlurEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BlurEffect copyWith(void Function(BlurEffect) updates) =>
      super.copyWith((message) => updates(message as BlurEffect)) as BlurEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BlurEffect create() => BlurEffect._();
  @$core.override
  BlurEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BlurEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BlurEffect>(create);
  static BlurEffect? _defaultInstance;

  @$pb.TagNumber(1)
  BlurType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(BlurType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get radius => $_getN(1);
  @$pb.TagNumber(2)
  set radius($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRadius() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadius() => $_clearField(2);
}

class LayoutConstraints extends $pb.GeneratedMessage {
  factory LayoutConstraints({
    ConstraintType? horizontal,
    ConstraintType? vertical,
  }) {
    final result = create();
    if (horizontal != null) result.horizontal = horizontal;
    if (vertical != null) result.vertical = vertical;
    return result;
  }

  LayoutConstraints._();

  factory LayoutConstraints.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LayoutConstraints.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LayoutConstraints',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<ConstraintType>(1, _omitFieldNames ? '' : 'horizontal',
        enumValues: ConstraintType.values)
    ..aE<ConstraintType>(2, _omitFieldNames ? '' : 'vertical',
        enumValues: ConstraintType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayoutConstraints clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayoutConstraints copyWith(void Function(LayoutConstraints) updates) =>
      super.copyWith((message) => updates(message as LayoutConstraints))
          as LayoutConstraints;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayoutConstraints create() => LayoutConstraints._();
  @$core.override
  LayoutConstraints createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LayoutConstraints getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LayoutConstraints>(create);
  static LayoutConstraints? _defaultInstance;

  @$pb.TagNumber(1)
  ConstraintType get horizontal => $_getN(0);
  @$pb.TagNumber(1)
  set horizontal(ConstraintType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasHorizontal() => $_has(0);
  @$pb.TagNumber(1)
  void clearHorizontal() => $_clearField(1);

  @$pb.TagNumber(2)
  ConstraintType get vertical => $_getN(1);
  @$pb.TagNumber(2)
  set vertical(ConstraintType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVertical() => $_has(1);
  @$pb.TagNumber(2)
  void clearVertical() => $_clearField(2);
}

class FrameNode extends $pb.GeneratedMessage {
  factory FrameNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    $core.Iterable<VisualNode>? children,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    $core.bool? clipsContent,
    Alias? opacity,
    BlendMode? blendMode,
    $core.Iterable<Effect>? effects,
    Alias? cornerRadius,
    LayoutMode? layoutMode,
    Alias? paddingLeft,
    Alias? paddingRight,
    Alias? paddingTop,
    Alias? paddingBottom,
    Alias? itemSpacing,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (children != null) result.children.addAll(children);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (clipsContent != null) result.clipsContent = clipsContent;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (effects != null) result.effects.addAll(effects);
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (layoutMode != null) result.layoutMode = layoutMode;
    if (paddingLeft != null) result.paddingLeft = paddingLeft;
    if (paddingRight != null) result.paddingRight = paddingRight;
    if (paddingTop != null) result.paddingTop = paddingTop;
    if (paddingBottom != null) result.paddingBottom = paddingBottom;
    if (itemSpacing != null) result.itemSpacing = itemSpacing;
    return result;
  }

  FrameNode._();

  factory FrameNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FrameNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FrameNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..pPM<VisualNode>(13, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..pPM<Paint>(14, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(15, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(16, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aOB(17, _omitFieldNames ? '' : 'clipsContent', protoName: 'clipsContent')
    ..aOM<Alias>(18, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(19, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..pPM<Effect>(20, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Alias>(21, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: Alias.create)
    ..aE<LayoutMode>(22, _omitFieldNames ? '' : 'layoutMode',
        protoName: 'layoutMode', enumValues: LayoutMode.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'paddingLeft',
        protoName: 'paddingLeft', subBuilder: Alias.create)
    ..aOM<Alias>(24, _omitFieldNames ? '' : 'paddingRight',
        protoName: 'paddingRight', subBuilder: Alias.create)
    ..aOM<Alias>(25, _omitFieldNames ? '' : 'paddingTop',
        protoName: 'paddingTop', subBuilder: Alias.create)
    ..aOM<Alias>(26, _omitFieldNames ? '' : 'paddingBottom',
        protoName: 'paddingBottom', subBuilder: Alias.create)
    ..aOM<Alias>(27, _omitFieldNames ? '' : 'itemSpacing',
        protoName: 'itemSpacing', subBuilder: Alias.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrameNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FrameNode copyWith(void Function(FrameNode) updates) =>
      super.copyWith((message) => updates(message as FrameNode)) as FrameNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FrameNode create() => FrameNode._();
  @$core.override
  FrameNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FrameNode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FrameNode>(create);
  static FrameNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<VisualNode> get children => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbList<Paint> get fills => $_getList(13);

  @$pb.TagNumber(15)
  $pb.PbList<Paint> get strokes => $_getList(14);

  @$pb.TagNumber(16)
  Alias get strokeWeight => $_getN(15);
  @$pb.TagNumber(16)
  set strokeWeight(Alias value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasStrokeWeight() => $_has(15);
  @$pb.TagNumber(16)
  void clearStrokeWeight() => $_clearField(16);
  @$pb.TagNumber(16)
  Alias ensureStrokeWeight() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.bool get clipsContent => $_getBF(16);
  @$pb.TagNumber(17)
  set clipsContent($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasClipsContent() => $_has(16);
  @$pb.TagNumber(17)
  void clearClipsContent() => $_clearField(17);

  @$pb.TagNumber(18)
  Alias get opacity => $_getN(17);
  @$pb.TagNumber(18)
  set opacity(Alias value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasOpacity() => $_has(17);
  @$pb.TagNumber(18)
  void clearOpacity() => $_clearField(18);
  @$pb.TagNumber(18)
  Alias ensureOpacity() => $_ensure(17);

  @$pb.TagNumber(19)
  BlendMode get blendMode => $_getN(18);
  @$pb.TagNumber(19)
  set blendMode(BlendMode value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasBlendMode() => $_has(18);
  @$pb.TagNumber(19)
  void clearBlendMode() => $_clearField(19);

  @$pb.TagNumber(20)
  $pb.PbList<Effect> get effects => $_getList(19);

  @$pb.TagNumber(21)
  Alias get cornerRadius => $_getN(20);
  @$pb.TagNumber(21)
  set cornerRadius(Alias value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasCornerRadius() => $_has(20);
  @$pb.TagNumber(21)
  void clearCornerRadius() => $_clearField(21);
  @$pb.TagNumber(21)
  Alias ensureCornerRadius() => $_ensure(20);

  @$pb.TagNumber(22)
  LayoutMode get layoutMode => $_getN(21);
  @$pb.TagNumber(22)
  set layoutMode(LayoutMode value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasLayoutMode() => $_has(21);
  @$pb.TagNumber(22)
  void clearLayoutMode() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get paddingLeft => $_getN(22);
  @$pb.TagNumber(23)
  set paddingLeft(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasPaddingLeft() => $_has(22);
  @$pb.TagNumber(23)
  void clearPaddingLeft() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensurePaddingLeft() => $_ensure(22);

  @$pb.TagNumber(24)
  Alias get paddingRight => $_getN(23);
  @$pb.TagNumber(24)
  set paddingRight(Alias value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasPaddingRight() => $_has(23);
  @$pb.TagNumber(24)
  void clearPaddingRight() => $_clearField(24);
  @$pb.TagNumber(24)
  Alias ensurePaddingRight() => $_ensure(23);

  @$pb.TagNumber(25)
  Alias get paddingTop => $_getN(24);
  @$pb.TagNumber(25)
  set paddingTop(Alias value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasPaddingTop() => $_has(24);
  @$pb.TagNumber(25)
  void clearPaddingTop() => $_clearField(25);
  @$pb.TagNumber(25)
  Alias ensurePaddingTop() => $_ensure(24);

  @$pb.TagNumber(26)
  Alias get paddingBottom => $_getN(25);
  @$pb.TagNumber(26)
  set paddingBottom(Alias value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasPaddingBottom() => $_has(25);
  @$pb.TagNumber(26)
  void clearPaddingBottom() => $_clearField(26);
  @$pb.TagNumber(26)
  Alias ensurePaddingBottom() => $_ensure(25);

  @$pb.TagNumber(27)
  Alias get itemSpacing => $_getN(26);
  @$pb.TagNumber(27)
  set itemSpacing(Alias value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasItemSpacing() => $_has(26);
  @$pb.TagNumber(27)
  void clearItemSpacing() => $_clearField(27);
  @$pb.TagNumber(27)
  Alias ensureItemSpacing() => $_ensure(26);
}

class GroupNode extends $pb.GeneratedMessage {
  factory GroupNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    $core.Iterable<VisualNode>? children,
    Alias? opacity,
    BlendMode? blendMode,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (children != null) result.children.addAll(children);
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    return result;
  }

  GroupNode._();

  factory GroupNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GroupNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..pPM<VisualNode>(13, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..aOM<Alias>(14, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(15, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupNode copyWith(void Function(GroupNode) updates) =>
      super.copyWith((message) => updates(message as GroupNode)) as GroupNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupNode create() => GroupNode._();
  @$core.override
  GroupNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GroupNode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupNode>(create);
  static GroupNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<VisualNode> get children => $_getList(12);

  @$pb.TagNumber(14)
  Alias get opacity => $_getN(13);
  @$pb.TagNumber(14)
  set opacity(Alias value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasOpacity() => $_has(13);
  @$pb.TagNumber(14)
  void clearOpacity() => $_clearField(14);
  @$pb.TagNumber(14)
  Alias ensureOpacity() => $_ensure(13);

  @$pb.TagNumber(15)
  BlendMode get blendMode => $_getN(14);
  @$pb.TagNumber(15)
  set blendMode(BlendMode value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasBlendMode() => $_has(14);
  @$pb.TagNumber(15)
  void clearBlendMode() => $_clearField(15);
}

class RectangleNode extends $pb.GeneratedMessage {
  factory RectangleNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    Alias? opacity,
    BlendMode? blendMode,
    $core.bool? isMask,
    $core.Iterable<Effect>? effects,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    StrokeAlign? strokeAlign,
    Alias? cornerRadius,
    Alias? topLeftRadius,
    Alias? topRightRadius,
    Alias? bottomLeftRadius,
    Alias? bottomRightRadius,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (isMask != null) result.isMask = isMask;
    if (effects != null) result.effects.addAll(effects);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (strokeCap != null) result.strokeCap = strokeCap;
    if (strokeJoin != null) result.strokeJoin = strokeJoin;
    if (strokeAlign != null) result.strokeAlign = strokeAlign;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (topLeftRadius != null) result.topLeftRadius = topLeftRadius;
    if (topRightRadius != null) result.topRightRadius = topRightRadius;
    if (bottomLeftRadius != null) result.bottomLeftRadius = bottomLeftRadius;
    if (bottomRightRadius != null) result.bottomRightRadius = bottomRightRadius;
    return result;
  }

  RectangleNode._();

  factory RectangleNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RectangleNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RectangleNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<Alias>(13, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(14, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOB(15, _omitFieldNames ? '' : 'isMask', protoName: 'isMask')
    ..pPM<Effect>(16, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(19, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aE<StrokeCap>(20, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
    ..aE<StrokeJoin>(21, _omitFieldNames ? '' : 'strokeJoin',
        protoName: 'strokeJoin', enumValues: StrokeJoin.values)
    ..aE<StrokeAlign>(22, _omitFieldNames ? '' : 'strokeAlign',
        protoName: 'strokeAlign', enumValues: StrokeAlign.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: Alias.create)
    ..aOM<Alias>(24, _omitFieldNames ? '' : 'topLeftRadius',
        protoName: 'topLeftRadius', subBuilder: Alias.create)
    ..aOM<Alias>(25, _omitFieldNames ? '' : 'topRightRadius',
        protoName: 'topRightRadius', subBuilder: Alias.create)
    ..aOM<Alias>(26, _omitFieldNames ? '' : 'bottomLeftRadius',
        protoName: 'bottomLeftRadius', subBuilder: Alias.create)
    ..aOM<Alias>(27, _omitFieldNames ? '' : 'bottomRightRadius',
        protoName: 'bottomRightRadius', subBuilder: Alias.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RectangleNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RectangleNode copyWith(void Function(RectangleNode) updates) =>
      super.copyWith((message) => updates(message as RectangleNode))
          as RectangleNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RectangleNode create() => RectangleNode._();
  @$core.override
  RectangleNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RectangleNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RectangleNode>(create);
  static RectangleNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  Alias get opacity => $_getN(12);
  @$pb.TagNumber(13)
  set opacity(Alias value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOpacity() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpacity() => $_clearField(13);
  @$pb.TagNumber(13)
  Alias ensureOpacity() => $_ensure(12);

  @$pb.TagNumber(14)
  BlendMode get blendMode => $_getN(13);
  @$pb.TagNumber(14)
  set blendMode(BlendMode value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBlendMode() => $_has(13);
  @$pb.TagNumber(14)
  void clearBlendMode() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isMask => $_getBF(14);
  @$pb.TagNumber(15)
  set isMask($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsMask() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsMask() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<Effect> get effects => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get fills => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get strokes => $_getList(17);

  @$pb.TagNumber(19)
  Alias get strokeWeight => $_getN(18);
  @$pb.TagNumber(19)
  set strokeWeight(Alias value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStrokeWeight() => $_has(18);
  @$pb.TagNumber(19)
  void clearStrokeWeight() => $_clearField(19);
  @$pb.TagNumber(19)
  Alias ensureStrokeWeight() => $_ensure(18);

  @$pb.TagNumber(20)
  StrokeCap get strokeCap => $_getN(19);
  @$pb.TagNumber(20)
  set strokeCap(StrokeCap value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStrokeCap() => $_has(19);
  @$pb.TagNumber(20)
  void clearStrokeCap() => $_clearField(20);

  @$pb.TagNumber(21)
  StrokeJoin get strokeJoin => $_getN(20);
  @$pb.TagNumber(21)
  set strokeJoin(StrokeJoin value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStrokeJoin() => $_has(20);
  @$pb.TagNumber(21)
  void clearStrokeJoin() => $_clearField(21);

  @$pb.TagNumber(22)
  StrokeAlign get strokeAlign => $_getN(21);
  @$pb.TagNumber(22)
  set strokeAlign(StrokeAlign value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStrokeAlign() => $_has(21);
  @$pb.TagNumber(22)
  void clearStrokeAlign() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get cornerRadius => $_getN(22);
  @$pb.TagNumber(23)
  set cornerRadius(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasCornerRadius() => $_has(22);
  @$pb.TagNumber(23)
  void clearCornerRadius() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensureCornerRadius() => $_ensure(22);

  @$pb.TagNumber(24)
  Alias get topLeftRadius => $_getN(23);
  @$pb.TagNumber(24)
  set topLeftRadius(Alias value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasTopLeftRadius() => $_has(23);
  @$pb.TagNumber(24)
  void clearTopLeftRadius() => $_clearField(24);
  @$pb.TagNumber(24)
  Alias ensureTopLeftRadius() => $_ensure(23);

  @$pb.TagNumber(25)
  Alias get topRightRadius => $_getN(24);
  @$pb.TagNumber(25)
  set topRightRadius(Alias value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasTopRightRadius() => $_has(24);
  @$pb.TagNumber(25)
  void clearTopRightRadius() => $_clearField(25);
  @$pb.TagNumber(25)
  Alias ensureTopRightRadius() => $_ensure(24);

  @$pb.TagNumber(26)
  Alias get bottomLeftRadius => $_getN(25);
  @$pb.TagNumber(26)
  set bottomLeftRadius(Alias value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasBottomLeftRadius() => $_has(25);
  @$pb.TagNumber(26)
  void clearBottomLeftRadius() => $_clearField(26);
  @$pb.TagNumber(26)
  Alias ensureBottomLeftRadius() => $_ensure(25);

  @$pb.TagNumber(27)
  Alias get bottomRightRadius => $_getN(26);
  @$pb.TagNumber(27)
  set bottomRightRadius(Alias value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasBottomRightRadius() => $_has(26);
  @$pb.TagNumber(27)
  void clearBottomRightRadius() => $_clearField(27);
  @$pb.TagNumber(27)
  Alias ensureBottomRightRadius() => $_ensure(26);
}

class EllipseNode extends $pb.GeneratedMessage {
  factory EllipseNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    Alias? opacity,
    BlendMode? blendMode,
    $core.bool? isMask,
    $core.Iterable<Effect>? effects,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    StrokeAlign? strokeAlign,
    Alias? cornerRadius,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (isMask != null) result.isMask = isMask;
    if (effects != null) result.effects.addAll(effects);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (strokeCap != null) result.strokeCap = strokeCap;
    if (strokeJoin != null) result.strokeJoin = strokeJoin;
    if (strokeAlign != null) result.strokeAlign = strokeAlign;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    return result;
  }

  EllipseNode._();

  factory EllipseNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EllipseNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EllipseNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<Alias>(13, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(14, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOB(15, _omitFieldNames ? '' : 'isMask', protoName: 'isMask')
    ..pPM<Effect>(16, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(19, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aE<StrokeCap>(20, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
    ..aE<StrokeJoin>(21, _omitFieldNames ? '' : 'strokeJoin',
        protoName: 'strokeJoin', enumValues: StrokeJoin.values)
    ..aE<StrokeAlign>(22, _omitFieldNames ? '' : 'strokeAlign',
        protoName: 'strokeAlign', enumValues: StrokeAlign.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: Alias.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EllipseNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EllipseNode copyWith(void Function(EllipseNode) updates) =>
      super.copyWith((message) => updates(message as EllipseNode))
          as EllipseNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EllipseNode create() => EllipseNode._();
  @$core.override
  EllipseNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EllipseNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EllipseNode>(create);
  static EllipseNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  Alias get opacity => $_getN(12);
  @$pb.TagNumber(13)
  set opacity(Alias value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOpacity() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpacity() => $_clearField(13);
  @$pb.TagNumber(13)
  Alias ensureOpacity() => $_ensure(12);

  @$pb.TagNumber(14)
  BlendMode get blendMode => $_getN(13);
  @$pb.TagNumber(14)
  set blendMode(BlendMode value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBlendMode() => $_has(13);
  @$pb.TagNumber(14)
  void clearBlendMode() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isMask => $_getBF(14);
  @$pb.TagNumber(15)
  set isMask($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsMask() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsMask() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<Effect> get effects => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get fills => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get strokes => $_getList(17);

  @$pb.TagNumber(19)
  Alias get strokeWeight => $_getN(18);
  @$pb.TagNumber(19)
  set strokeWeight(Alias value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStrokeWeight() => $_has(18);
  @$pb.TagNumber(19)
  void clearStrokeWeight() => $_clearField(19);
  @$pb.TagNumber(19)
  Alias ensureStrokeWeight() => $_ensure(18);

  @$pb.TagNumber(20)
  StrokeCap get strokeCap => $_getN(19);
  @$pb.TagNumber(20)
  set strokeCap(StrokeCap value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStrokeCap() => $_has(19);
  @$pb.TagNumber(20)
  void clearStrokeCap() => $_clearField(20);

  @$pb.TagNumber(21)
  StrokeJoin get strokeJoin => $_getN(20);
  @$pb.TagNumber(21)
  set strokeJoin(StrokeJoin value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStrokeJoin() => $_has(20);
  @$pb.TagNumber(21)
  void clearStrokeJoin() => $_clearField(21);

  @$pb.TagNumber(22)
  StrokeAlign get strokeAlign => $_getN(21);
  @$pb.TagNumber(22)
  set strokeAlign(StrokeAlign value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStrokeAlign() => $_has(21);
  @$pb.TagNumber(22)
  void clearStrokeAlign() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get cornerRadius => $_getN(22);
  @$pb.TagNumber(23)
  set cornerRadius(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasCornerRadius() => $_has(22);
  @$pb.TagNumber(23)
  void clearCornerRadius() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensureCornerRadius() => $_ensure(22);
}

class LineNode extends $pb.GeneratedMessage {
  factory LineNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    Alias? opacity,
    BlendMode? blendMode,
    $core.bool? isMask,
    $core.Iterable<Effect>? effects,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    StrokeAlign? strokeAlign,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (isMask != null) result.isMask = isMask;
    if (effects != null) result.effects.addAll(effects);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (strokeCap != null) result.strokeCap = strokeCap;
    if (strokeJoin != null) result.strokeJoin = strokeJoin;
    if (strokeAlign != null) result.strokeAlign = strokeAlign;
    return result;
  }

  LineNode._();

  factory LineNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LineNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LineNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<Alias>(13, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(14, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOB(15, _omitFieldNames ? '' : 'isMask', protoName: 'isMask')
    ..pPM<Effect>(16, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(19, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aE<StrokeCap>(20, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
    ..aE<StrokeJoin>(21, _omitFieldNames ? '' : 'strokeJoin',
        protoName: 'strokeJoin', enumValues: StrokeJoin.values)
    ..aE<StrokeAlign>(22, _omitFieldNames ? '' : 'strokeAlign',
        protoName: 'strokeAlign', enumValues: StrokeAlign.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LineNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LineNode copyWith(void Function(LineNode) updates) =>
      super.copyWith((message) => updates(message as LineNode)) as LineNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LineNode create() => LineNode._();
  @$core.override
  LineNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LineNode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LineNode>(create);
  static LineNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  Alias get opacity => $_getN(12);
  @$pb.TagNumber(13)
  set opacity(Alias value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOpacity() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpacity() => $_clearField(13);
  @$pb.TagNumber(13)
  Alias ensureOpacity() => $_ensure(12);

  @$pb.TagNumber(14)
  BlendMode get blendMode => $_getN(13);
  @$pb.TagNumber(14)
  set blendMode(BlendMode value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBlendMode() => $_has(13);
  @$pb.TagNumber(14)
  void clearBlendMode() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isMask => $_getBF(14);
  @$pb.TagNumber(15)
  set isMask($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsMask() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsMask() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<Effect> get effects => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get fills => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get strokes => $_getList(17);

  @$pb.TagNumber(19)
  Alias get strokeWeight => $_getN(18);
  @$pb.TagNumber(19)
  set strokeWeight(Alias value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStrokeWeight() => $_has(18);
  @$pb.TagNumber(19)
  void clearStrokeWeight() => $_clearField(19);
  @$pb.TagNumber(19)
  Alias ensureStrokeWeight() => $_ensure(18);

  @$pb.TagNumber(20)
  StrokeCap get strokeCap => $_getN(19);
  @$pb.TagNumber(20)
  set strokeCap(StrokeCap value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStrokeCap() => $_has(19);
  @$pb.TagNumber(20)
  void clearStrokeCap() => $_clearField(20);

  @$pb.TagNumber(21)
  StrokeJoin get strokeJoin => $_getN(20);
  @$pb.TagNumber(21)
  set strokeJoin(StrokeJoin value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStrokeJoin() => $_has(20);
  @$pb.TagNumber(21)
  void clearStrokeJoin() => $_clearField(21);

  @$pb.TagNumber(22)
  StrokeAlign get strokeAlign => $_getN(21);
  @$pb.TagNumber(22)
  set strokeAlign(StrokeAlign value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStrokeAlign() => $_has(21);
  @$pb.TagNumber(22)
  void clearStrokeAlign() => $_clearField(22);
}

class VectorNode extends $pb.GeneratedMessage {
  factory VectorNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    Alias? opacity,
    BlendMode? blendMode,
    $core.bool? isMask,
    $core.Iterable<Effect>? effects,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    StrokeAlign? strokeAlign,
    Alias? cornerRadius,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (isMask != null) result.isMask = isMask;
    if (effects != null) result.effects.addAll(effects);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (strokeCap != null) result.strokeCap = strokeCap;
    if (strokeJoin != null) result.strokeJoin = strokeJoin;
    if (strokeAlign != null) result.strokeAlign = strokeAlign;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    return result;
  }

  VectorNode._();

  factory VectorNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<Alias>(13, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(14, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOB(15, _omitFieldNames ? '' : 'isMask', protoName: 'isMask')
    ..pPM<Effect>(16, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(19, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aE<StrokeCap>(20, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
    ..aE<StrokeJoin>(21, _omitFieldNames ? '' : 'strokeJoin',
        protoName: 'strokeJoin', enumValues: StrokeJoin.values)
    ..aE<StrokeAlign>(22, _omitFieldNames ? '' : 'strokeAlign',
        protoName: 'strokeAlign', enumValues: StrokeAlign.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: Alias.create)
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
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  Alias get opacity => $_getN(12);
  @$pb.TagNumber(13)
  set opacity(Alias value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOpacity() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpacity() => $_clearField(13);
  @$pb.TagNumber(13)
  Alias ensureOpacity() => $_ensure(12);

  @$pb.TagNumber(14)
  BlendMode get blendMode => $_getN(13);
  @$pb.TagNumber(14)
  set blendMode(BlendMode value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBlendMode() => $_has(13);
  @$pb.TagNumber(14)
  void clearBlendMode() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isMask => $_getBF(14);
  @$pb.TagNumber(15)
  set isMask($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsMask() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsMask() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<Effect> get effects => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get fills => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get strokes => $_getList(17);

  @$pb.TagNumber(19)
  Alias get strokeWeight => $_getN(18);
  @$pb.TagNumber(19)
  set strokeWeight(Alias value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStrokeWeight() => $_has(18);
  @$pb.TagNumber(19)
  void clearStrokeWeight() => $_clearField(19);
  @$pb.TagNumber(19)
  Alias ensureStrokeWeight() => $_ensure(18);

  @$pb.TagNumber(20)
  StrokeCap get strokeCap => $_getN(19);
  @$pb.TagNumber(20)
  set strokeCap(StrokeCap value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStrokeCap() => $_has(19);
  @$pb.TagNumber(20)
  void clearStrokeCap() => $_clearField(20);

  @$pb.TagNumber(21)
  StrokeJoin get strokeJoin => $_getN(20);
  @$pb.TagNumber(21)
  set strokeJoin(StrokeJoin value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStrokeJoin() => $_has(20);
  @$pb.TagNumber(21)
  void clearStrokeJoin() => $_clearField(21);

  @$pb.TagNumber(22)
  StrokeAlign get strokeAlign => $_getN(21);
  @$pb.TagNumber(22)
  set strokeAlign(StrokeAlign value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStrokeAlign() => $_has(21);
  @$pb.TagNumber(22)
  void clearStrokeAlign() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get cornerRadius => $_getN(22);
  @$pb.TagNumber(23)
  set cornerRadius(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasCornerRadius() => $_has(22);
  @$pb.TagNumber(23)
  void clearCornerRadius() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensureCornerRadius() => $_ensure(22);
}

class TextNode extends $pb.GeneratedMessage {
  factory TextNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    Alias? opacity,
    BlendMode? blendMode,
    $core.bool? isMask,
    $core.Iterable<Effect>? effects,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    StrokeCap? strokeCap,
    StrokeJoin? strokeJoin,
    StrokeAlign? strokeAlign,
    Alias? characters,
    TextAlignHorizontal? textAlignHorizontal,
    TextAlignVertical? textAlignVertical,
    Alias? fontSize,
    $core.String? fontFamily,
    $core.String? fontStyle,
    $core.int? fontWeight,
    $core.double? lineHeight,
    $core.double? letterSpacing,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (isMask != null) result.isMask = isMask;
    if (effects != null) result.effects.addAll(effects);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (strokeCap != null) result.strokeCap = strokeCap;
    if (strokeJoin != null) result.strokeJoin = strokeJoin;
    if (strokeAlign != null) result.strokeAlign = strokeAlign;
    if (characters != null) result.characters = characters;
    if (textAlignHorizontal != null)
      result.textAlignHorizontal = textAlignHorizontal;
    if (textAlignVertical != null) result.textAlignVertical = textAlignVertical;
    if (fontSize != null) result.fontSize = fontSize;
    if (fontFamily != null) result.fontFamily = fontFamily;
    if (fontStyle != null) result.fontStyle = fontStyle;
    if (fontWeight != null) result.fontWeight = fontWeight;
    if (lineHeight != null) result.lineHeight = lineHeight;
    if (letterSpacing != null) result.letterSpacing = letterSpacing;
    return result;
  }

  TextNode._();

  factory TextNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<Alias>(13, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(14, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aOB(15, _omitFieldNames ? '' : 'isMask', protoName: 'isMask')
    ..pPM<Effect>(16, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(19, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aE<StrokeCap>(20, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
    ..aE<StrokeJoin>(21, _omitFieldNames ? '' : 'strokeJoin',
        protoName: 'strokeJoin', enumValues: StrokeJoin.values)
    ..aE<StrokeAlign>(22, _omitFieldNames ? '' : 'strokeAlign',
        protoName: 'strokeAlign', enumValues: StrokeAlign.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'characters',
        subBuilder: Alias.create)
    ..aE<TextAlignHorizontal>(24, _omitFieldNames ? '' : 'textAlignHorizontal',
        protoName: 'textAlignHorizontal',
        enumValues: TextAlignHorizontal.values)
    ..aE<TextAlignVertical>(25, _omitFieldNames ? '' : 'textAlignVertical',
        protoName: 'textAlignVertical', enumValues: TextAlignVertical.values)
    ..aOM<Alias>(26, _omitFieldNames ? '' : 'fontSize',
        protoName: 'fontSize', subBuilder: Alias.create)
    ..aOS(27, _omitFieldNames ? '' : 'fontFamily', protoName: 'fontFamily')
    ..aOS(28, _omitFieldNames ? '' : 'fontStyle', protoName: 'fontStyle')
    ..aI(29, _omitFieldNames ? '' : 'fontWeight', protoName: 'fontWeight')
    ..aD(30, _omitFieldNames ? '' : 'lineHeight', protoName: 'lineHeight')
    ..aD(31, _omitFieldNames ? '' : 'letterSpacing', protoName: 'letterSpacing')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextNode copyWith(void Function(TextNode) updates) =>
      super.copyWith((message) => updates(message as TextNode)) as TextNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextNode create() => TextNode._();
  @$core.override
  TextNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextNode getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextNode>(create);
  static TextNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  Alias get opacity => $_getN(12);
  @$pb.TagNumber(13)
  set opacity(Alias value) => $_setField(13, value);
  @$pb.TagNumber(13)
  $core.bool hasOpacity() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpacity() => $_clearField(13);
  @$pb.TagNumber(13)
  Alias ensureOpacity() => $_ensure(12);

  @$pb.TagNumber(14)
  BlendMode get blendMode => $_getN(13);
  @$pb.TagNumber(14)
  set blendMode(BlendMode value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBlendMode() => $_has(13);
  @$pb.TagNumber(14)
  void clearBlendMode() => $_clearField(14);

  @$pb.TagNumber(15)
  $core.bool get isMask => $_getBF(14);
  @$pb.TagNumber(15)
  set isMask($core.bool value) => $_setBool(14, value);
  @$pb.TagNumber(15)
  $core.bool hasIsMask() => $_has(14);
  @$pb.TagNumber(15)
  void clearIsMask() => $_clearField(15);

  @$pb.TagNumber(16)
  $pb.PbList<Effect> get effects => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get fills => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get strokes => $_getList(17);

  @$pb.TagNumber(19)
  Alias get strokeWeight => $_getN(18);
  @$pb.TagNumber(19)
  set strokeWeight(Alias value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStrokeWeight() => $_has(18);
  @$pb.TagNumber(19)
  void clearStrokeWeight() => $_clearField(19);
  @$pb.TagNumber(19)
  Alias ensureStrokeWeight() => $_ensure(18);

  @$pb.TagNumber(20)
  StrokeCap get strokeCap => $_getN(19);
  @$pb.TagNumber(20)
  set strokeCap(StrokeCap value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStrokeCap() => $_has(19);
  @$pb.TagNumber(20)
  void clearStrokeCap() => $_clearField(20);

  @$pb.TagNumber(21)
  StrokeJoin get strokeJoin => $_getN(20);
  @$pb.TagNumber(21)
  set strokeJoin(StrokeJoin value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStrokeJoin() => $_has(20);
  @$pb.TagNumber(21)
  void clearStrokeJoin() => $_clearField(21);

  @$pb.TagNumber(22)
  StrokeAlign get strokeAlign => $_getN(21);
  @$pb.TagNumber(22)
  set strokeAlign(StrokeAlign value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStrokeAlign() => $_has(21);
  @$pb.TagNumber(22)
  void clearStrokeAlign() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get characters => $_getN(22);
  @$pb.TagNumber(23)
  set characters(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasCharacters() => $_has(22);
  @$pb.TagNumber(23)
  void clearCharacters() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensureCharacters() => $_ensure(22);

  @$pb.TagNumber(24)
  TextAlignHorizontal get textAlignHorizontal => $_getN(23);
  @$pb.TagNumber(24)
  set textAlignHorizontal(TextAlignHorizontal value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasTextAlignHorizontal() => $_has(23);
  @$pb.TagNumber(24)
  void clearTextAlignHorizontal() => $_clearField(24);

  @$pb.TagNumber(25)
  TextAlignVertical get textAlignVertical => $_getN(24);
  @$pb.TagNumber(25)
  set textAlignVertical(TextAlignVertical value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasTextAlignVertical() => $_has(24);
  @$pb.TagNumber(25)
  void clearTextAlignVertical() => $_clearField(25);

  @$pb.TagNumber(26)
  Alias get fontSize => $_getN(25);
  @$pb.TagNumber(26)
  set fontSize(Alias value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasFontSize() => $_has(25);
  @$pb.TagNumber(26)
  void clearFontSize() => $_clearField(26);
  @$pb.TagNumber(26)
  Alias ensureFontSize() => $_ensure(25);

  @$pb.TagNumber(27)
  $core.String get fontFamily => $_getSZ(26);
  @$pb.TagNumber(27)
  set fontFamily($core.String value) => $_setString(26, value);
  @$pb.TagNumber(27)
  $core.bool hasFontFamily() => $_has(26);
  @$pb.TagNumber(27)
  void clearFontFamily() => $_clearField(27);

  @$pb.TagNumber(28)
  $core.String get fontStyle => $_getSZ(27);
  @$pb.TagNumber(28)
  set fontStyle($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasFontStyle() => $_has(27);
  @$pb.TagNumber(28)
  void clearFontStyle() => $_clearField(28);

  @$pb.TagNumber(29)
  $core.int get fontWeight => $_getIZ(28);
  @$pb.TagNumber(29)
  set fontWeight($core.int value) => $_setSignedInt32(28, value);
  @$pb.TagNumber(29)
  $core.bool hasFontWeight() => $_has(28);
  @$pb.TagNumber(29)
  void clearFontWeight() => $_clearField(29);

  @$pb.TagNumber(30)
  $core.double get lineHeight => $_getN(29);
  @$pb.TagNumber(30)
  set lineHeight($core.double value) => $_setDouble(29, value);
  @$pb.TagNumber(30)
  $core.bool hasLineHeight() => $_has(29);
  @$pb.TagNumber(30)
  void clearLineHeight() => $_clearField(30);

  @$pb.TagNumber(31)
  $core.double get letterSpacing => $_getN(30);
  @$pb.TagNumber(31)
  set letterSpacing($core.double value) => $_setDouble(30, value);
  @$pb.TagNumber(31)
  $core.bool hasLetterSpacing() => $_has(30);
  @$pb.TagNumber(31)
  void clearLetterSpacing() => $_clearField(31);
}

class ComponentNode extends $pb.GeneratedMessage {
  factory ComponentNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    $core.Iterable<VisualNode>? children,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    $core.bool? clipsContent,
    Alias? opacity,
    BlendMode? blendMode,
    $core.Iterable<Effect>? effects,
    Alias? cornerRadius,
    LayoutMode? layoutMode,
    Alias? paddingLeft,
    Alias? paddingRight,
    Alias? paddingTop,
    Alias? paddingBottom,
    Alias? itemSpacing,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (children != null) result.children.addAll(children);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (clipsContent != null) result.clipsContent = clipsContent;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (effects != null) result.effects.addAll(effects);
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (layoutMode != null) result.layoutMode = layoutMode;
    if (paddingLeft != null) result.paddingLeft = paddingLeft;
    if (paddingRight != null) result.paddingRight = paddingRight;
    if (paddingTop != null) result.paddingTop = paddingTop;
    if (paddingBottom != null) result.paddingBottom = paddingBottom;
    if (itemSpacing != null) result.itemSpacing = itemSpacing;
    return result;
  }

  ComponentNode._();

  factory ComponentNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..pPM<VisualNode>(13, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..pPM<Paint>(14, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(15, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(16, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aOB(17, _omitFieldNames ? '' : 'clipsContent', protoName: 'clipsContent')
    ..aOM<Alias>(18, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(19, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..pPM<Effect>(20, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Alias>(21, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: Alias.create)
    ..aE<LayoutMode>(22, _omitFieldNames ? '' : 'layoutMode',
        protoName: 'layoutMode', enumValues: LayoutMode.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'paddingLeft',
        protoName: 'paddingLeft', subBuilder: Alias.create)
    ..aOM<Alias>(24, _omitFieldNames ? '' : 'paddingRight',
        protoName: 'paddingRight', subBuilder: Alias.create)
    ..aOM<Alias>(25, _omitFieldNames ? '' : 'paddingTop',
        protoName: 'paddingTop', subBuilder: Alias.create)
    ..aOM<Alias>(26, _omitFieldNames ? '' : 'paddingBottom',
        protoName: 'paddingBottom', subBuilder: Alias.create)
    ..aOM<Alias>(27, _omitFieldNames ? '' : 'itemSpacing',
        protoName: 'itemSpacing', subBuilder: Alias.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentNode copyWith(void Function(ComponentNode) updates) =>
      super.copyWith((message) => updates(message as ComponentNode))
          as ComponentNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentNode create() => ComponentNode._();
  @$core.override
  ComponentNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentNode>(create);
  static ComponentNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<VisualNode> get children => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbList<Paint> get fills => $_getList(13);

  @$pb.TagNumber(15)
  $pb.PbList<Paint> get strokes => $_getList(14);

  @$pb.TagNumber(16)
  Alias get strokeWeight => $_getN(15);
  @$pb.TagNumber(16)
  set strokeWeight(Alias value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasStrokeWeight() => $_has(15);
  @$pb.TagNumber(16)
  void clearStrokeWeight() => $_clearField(16);
  @$pb.TagNumber(16)
  Alias ensureStrokeWeight() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.bool get clipsContent => $_getBF(16);
  @$pb.TagNumber(17)
  set clipsContent($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasClipsContent() => $_has(16);
  @$pb.TagNumber(17)
  void clearClipsContent() => $_clearField(17);

  @$pb.TagNumber(18)
  Alias get opacity => $_getN(17);
  @$pb.TagNumber(18)
  set opacity(Alias value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasOpacity() => $_has(17);
  @$pb.TagNumber(18)
  void clearOpacity() => $_clearField(18);
  @$pb.TagNumber(18)
  Alias ensureOpacity() => $_ensure(17);

  @$pb.TagNumber(19)
  BlendMode get blendMode => $_getN(18);
  @$pb.TagNumber(19)
  set blendMode(BlendMode value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasBlendMode() => $_has(18);
  @$pb.TagNumber(19)
  void clearBlendMode() => $_clearField(19);

  @$pb.TagNumber(20)
  $pb.PbList<Effect> get effects => $_getList(19);

  @$pb.TagNumber(21)
  Alias get cornerRadius => $_getN(20);
  @$pb.TagNumber(21)
  set cornerRadius(Alias value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasCornerRadius() => $_has(20);
  @$pb.TagNumber(21)
  void clearCornerRadius() => $_clearField(21);
  @$pb.TagNumber(21)
  Alias ensureCornerRadius() => $_ensure(20);

  @$pb.TagNumber(22)
  LayoutMode get layoutMode => $_getN(21);
  @$pb.TagNumber(22)
  set layoutMode(LayoutMode value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasLayoutMode() => $_has(21);
  @$pb.TagNumber(22)
  void clearLayoutMode() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get paddingLeft => $_getN(22);
  @$pb.TagNumber(23)
  set paddingLeft(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasPaddingLeft() => $_has(22);
  @$pb.TagNumber(23)
  void clearPaddingLeft() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensurePaddingLeft() => $_ensure(22);

  @$pb.TagNumber(24)
  Alias get paddingRight => $_getN(23);
  @$pb.TagNumber(24)
  set paddingRight(Alias value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasPaddingRight() => $_has(23);
  @$pb.TagNumber(24)
  void clearPaddingRight() => $_clearField(24);
  @$pb.TagNumber(24)
  Alias ensurePaddingRight() => $_ensure(23);

  @$pb.TagNumber(25)
  Alias get paddingTop => $_getN(24);
  @$pb.TagNumber(25)
  set paddingTop(Alias value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasPaddingTop() => $_has(24);
  @$pb.TagNumber(25)
  void clearPaddingTop() => $_clearField(25);
  @$pb.TagNumber(25)
  Alias ensurePaddingTop() => $_ensure(24);

  @$pb.TagNumber(26)
  Alias get paddingBottom => $_getN(25);
  @$pb.TagNumber(26)
  set paddingBottom(Alias value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasPaddingBottom() => $_has(25);
  @$pb.TagNumber(26)
  void clearPaddingBottom() => $_clearField(26);
  @$pb.TagNumber(26)
  Alias ensurePaddingBottom() => $_ensure(25);

  @$pb.TagNumber(27)
  Alias get itemSpacing => $_getN(26);
  @$pb.TagNumber(27)
  set itemSpacing(Alias value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasItemSpacing() => $_has(26);
  @$pb.TagNumber(27)
  void clearItemSpacing() => $_clearField(27);
  @$pb.TagNumber(27)
  Alias ensureItemSpacing() => $_ensure(26);
}

class InstanceNode extends $pb.GeneratedMessage {
  factory InstanceNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    $core.Iterable<VisualNode>? children,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    $core.bool? clipsContent,
    Alias? opacity,
    BlendMode? blendMode,
    $core.Iterable<Effect>? effects,
    Alias? cornerRadius,
    LayoutMode? layoutMode,
    Alias? paddingLeft,
    Alias? paddingRight,
    Alias? paddingTop,
    Alias? paddingBottom,
    Alias? itemSpacing,
    $core.String? mainComponentId,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (children != null) result.children.addAll(children);
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (clipsContent != null) result.clipsContent = clipsContent;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (effects != null) result.effects.addAll(effects);
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (layoutMode != null) result.layoutMode = layoutMode;
    if (paddingLeft != null) result.paddingLeft = paddingLeft;
    if (paddingRight != null) result.paddingRight = paddingRight;
    if (paddingTop != null) result.paddingTop = paddingTop;
    if (paddingBottom != null) result.paddingBottom = paddingBottom;
    if (itemSpacing != null) result.itemSpacing = itemSpacing;
    if (mainComponentId != null) result.mainComponentId = mainComponentId;
    return result;
  }

  InstanceNode._();

  factory InstanceNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InstanceNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InstanceNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..pPM<VisualNode>(13, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..pPM<Paint>(14, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(15, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(16, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aOB(17, _omitFieldNames ? '' : 'clipsContent', protoName: 'clipsContent')
    ..aOM<Alias>(18, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(19, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..pPM<Effect>(20, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Alias>(21, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: Alias.create)
    ..aE<LayoutMode>(22, _omitFieldNames ? '' : 'layoutMode',
        protoName: 'layoutMode', enumValues: LayoutMode.values)
    ..aOM<Alias>(23, _omitFieldNames ? '' : 'paddingLeft',
        protoName: 'paddingLeft', subBuilder: Alias.create)
    ..aOM<Alias>(24, _omitFieldNames ? '' : 'paddingRight',
        protoName: 'paddingRight', subBuilder: Alias.create)
    ..aOM<Alias>(25, _omitFieldNames ? '' : 'paddingTop',
        protoName: 'paddingTop', subBuilder: Alias.create)
    ..aOM<Alias>(26, _omitFieldNames ? '' : 'paddingBottom',
        protoName: 'paddingBottom', subBuilder: Alias.create)
    ..aOM<Alias>(27, _omitFieldNames ? '' : 'itemSpacing',
        protoName: 'itemSpacing', subBuilder: Alias.create)
    ..aOS(28, _omitFieldNames ? '' : 'mainComponentId',
        protoName: 'mainComponentId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstanceNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InstanceNode copyWith(void Function(InstanceNode) updates) =>
      super.copyWith((message) => updates(message as InstanceNode))
          as InstanceNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InstanceNode create() => InstanceNode._();
  @$core.override
  InstanceNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InstanceNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InstanceNode>(create);
  static InstanceNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<VisualNode> get children => $_getList(12);

  @$pb.TagNumber(14)
  $pb.PbList<Paint> get fills => $_getList(13);

  @$pb.TagNumber(15)
  $pb.PbList<Paint> get strokes => $_getList(14);

  @$pb.TagNumber(16)
  Alias get strokeWeight => $_getN(15);
  @$pb.TagNumber(16)
  set strokeWeight(Alias value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasStrokeWeight() => $_has(15);
  @$pb.TagNumber(16)
  void clearStrokeWeight() => $_clearField(16);
  @$pb.TagNumber(16)
  Alias ensureStrokeWeight() => $_ensure(15);

  @$pb.TagNumber(17)
  $core.bool get clipsContent => $_getBF(16);
  @$pb.TagNumber(17)
  set clipsContent($core.bool value) => $_setBool(16, value);
  @$pb.TagNumber(17)
  $core.bool hasClipsContent() => $_has(16);
  @$pb.TagNumber(17)
  void clearClipsContent() => $_clearField(17);

  @$pb.TagNumber(18)
  Alias get opacity => $_getN(17);
  @$pb.TagNumber(18)
  set opacity(Alias value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasOpacity() => $_has(17);
  @$pb.TagNumber(18)
  void clearOpacity() => $_clearField(18);
  @$pb.TagNumber(18)
  Alias ensureOpacity() => $_ensure(17);

  @$pb.TagNumber(19)
  BlendMode get blendMode => $_getN(18);
  @$pb.TagNumber(19)
  set blendMode(BlendMode value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasBlendMode() => $_has(18);
  @$pb.TagNumber(19)
  void clearBlendMode() => $_clearField(19);

  @$pb.TagNumber(20)
  $pb.PbList<Effect> get effects => $_getList(19);

  @$pb.TagNumber(21)
  Alias get cornerRadius => $_getN(20);
  @$pb.TagNumber(21)
  set cornerRadius(Alias value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasCornerRadius() => $_has(20);
  @$pb.TagNumber(21)
  void clearCornerRadius() => $_clearField(21);
  @$pb.TagNumber(21)
  Alias ensureCornerRadius() => $_ensure(20);

  @$pb.TagNumber(22)
  LayoutMode get layoutMode => $_getN(21);
  @$pb.TagNumber(22)
  set layoutMode(LayoutMode value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasLayoutMode() => $_has(21);
  @$pb.TagNumber(22)
  void clearLayoutMode() => $_clearField(22);

  @$pb.TagNumber(23)
  Alias get paddingLeft => $_getN(22);
  @$pb.TagNumber(23)
  set paddingLeft(Alias value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasPaddingLeft() => $_has(22);
  @$pb.TagNumber(23)
  void clearPaddingLeft() => $_clearField(23);
  @$pb.TagNumber(23)
  Alias ensurePaddingLeft() => $_ensure(22);

  @$pb.TagNumber(24)
  Alias get paddingRight => $_getN(23);
  @$pb.TagNumber(24)
  set paddingRight(Alias value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasPaddingRight() => $_has(23);
  @$pb.TagNumber(24)
  void clearPaddingRight() => $_clearField(24);
  @$pb.TagNumber(24)
  Alias ensurePaddingRight() => $_ensure(23);

  @$pb.TagNumber(25)
  Alias get paddingTop => $_getN(24);
  @$pb.TagNumber(25)
  set paddingTop(Alias value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasPaddingTop() => $_has(24);
  @$pb.TagNumber(25)
  void clearPaddingTop() => $_clearField(25);
  @$pb.TagNumber(25)
  Alias ensurePaddingTop() => $_ensure(24);

  @$pb.TagNumber(26)
  Alias get paddingBottom => $_getN(25);
  @$pb.TagNumber(26)
  set paddingBottom(Alias value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasPaddingBottom() => $_has(25);
  @$pb.TagNumber(26)
  void clearPaddingBottom() => $_clearField(26);
  @$pb.TagNumber(26)
  Alias ensurePaddingBottom() => $_ensure(25);

  @$pb.TagNumber(27)
  Alias get itemSpacing => $_getN(26);
  @$pb.TagNumber(27)
  set itemSpacing(Alias value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasItemSpacing() => $_has(26);
  @$pb.TagNumber(27)
  void clearItemSpacing() => $_clearField(27);
  @$pb.TagNumber(27)
  Alias ensureItemSpacing() => $_ensure(26);

  @$pb.TagNumber(28)
  $core.String get mainComponentId => $_getSZ(27);
  @$pb.TagNumber(28)
  set mainComponentId($core.String value) => $_setString(27, value);
  @$pb.TagNumber(28)
  $core.bool hasMainComponentId() => $_has(27);
  @$pb.TagNumber(28)
  void clearMainComponentId() => $_clearField(28);
}

class BooleanOperationNode extends $pb.GeneratedMessage {
  factory BooleanOperationNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform2D? relativeTransform,
    Transform2D? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    $core.Iterable<VisualNode>? children,
    BooleanOperation? booleanOperation,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    Alias? strokeWeight,
    Alias? opacity,
    BlendMode? blendMode,
    $core.Iterable<Effect>? effects,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (relativeTransform != null) result.relativeTransform = relativeTransform;
    if (absoluteTransform != null) result.absoluteTransform = absoluteTransform;
    if (absoluteBoundingBox != null)
      result.absoluteBoundingBox = absoluteBoundingBox;
    if (rotation != null) result.rotation = rotation;
    if (constraints != null) result.constraints = constraints;
    if (children != null) result.children.addAll(children);
    if (booleanOperation != null) result.booleanOperation = booleanOperation;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (strokeWeight != null) result.strokeWeight = strokeWeight;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    if (effects != null) result.effects.addAll(effects);
    return result;
  }

  BooleanOperationNode._();

  factory BooleanOperationNode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BooleanOperationNode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BooleanOperationNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aD(4, _omitFieldNames ? '' : 'x')
    ..aD(5, _omitFieldNames ? '' : 'y')
    ..aD(6, _omitFieldNames ? '' : 'width')
    ..aD(7, _omitFieldNames ? '' : 'height')
    ..aOM<Transform2D>(8, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform2D.create)
    ..aOM<Transform2D>(9, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform2D.create)
    ..aOM<Rect>(10, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(11, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(12, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..pPM<VisualNode>(13, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..aE<BooleanOperation>(14, _omitFieldNames ? '' : 'booleanOperation',
        protoName: 'booleanOperation', enumValues: BooleanOperation.values)
    ..pPM<Paint>(15, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..aOM<Alias>(17, _omitFieldNames ? '' : 'strokeWeight',
        protoName: 'strokeWeight', subBuilder: Alias.create)
    ..aOM<Alias>(18, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(19, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..pPM<Effect>(20, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BooleanOperationNode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BooleanOperationNode copyWith(void Function(BooleanOperationNode) updates) =>
      super.copyWith((message) => updates(message as BooleanOperationNode))
          as BooleanOperationNode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BooleanOperationNode create() => BooleanOperationNode._();
  @$core.override
  BooleanOperationNode createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BooleanOperationNode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BooleanOperationNode>(create);
  static BooleanOperationNode? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get visible => $_getBF(2);
  @$pb.TagNumber(3)
  set visible($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVisible() => $_has(2);
  @$pb.TagNumber(3)
  void clearVisible() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get x => $_getN(3);
  @$pb.TagNumber(4)
  set x($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasX() => $_has(3);
  @$pb.TagNumber(4)
  void clearX() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get y => $_getN(4);
  @$pb.TagNumber(5)
  set y($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasY() => $_has(4);
  @$pb.TagNumber(5)
  void clearY() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get width => $_getN(5);
  @$pb.TagNumber(6)
  set width($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasWidth() => $_has(5);
  @$pb.TagNumber(6)
  void clearWidth() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get height => $_getN(6);
  @$pb.TagNumber(7)
  set height($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearHeight() => $_clearField(7);

  @$pb.TagNumber(8)
  Transform2D get relativeTransform => $_getN(7);
  @$pb.TagNumber(8)
  set relativeTransform(Transform2D value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasRelativeTransform() => $_has(7);
  @$pb.TagNumber(8)
  void clearRelativeTransform() => $_clearField(8);
  @$pb.TagNumber(8)
  Transform2D ensureRelativeTransform() => $_ensure(7);

  @$pb.TagNumber(9)
  Transform2D get absoluteTransform => $_getN(8);
  @$pb.TagNumber(9)
  set absoluteTransform(Transform2D value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasAbsoluteTransform() => $_has(8);
  @$pb.TagNumber(9)
  void clearAbsoluteTransform() => $_clearField(9);
  @$pb.TagNumber(9)
  Transform2D ensureAbsoluteTransform() => $_ensure(8);

  @$pb.TagNumber(10)
  Rect get absoluteBoundingBox => $_getN(9);
  @$pb.TagNumber(10)
  set absoluteBoundingBox(Rect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasAbsoluteBoundingBox() => $_has(9);
  @$pb.TagNumber(10)
  void clearAbsoluteBoundingBox() => $_clearField(10);
  @$pb.TagNumber(10)
  Rect ensureAbsoluteBoundingBox() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get rotation => $_getN(10);
  @$pb.TagNumber(11)
  set rotation($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasRotation() => $_has(10);
  @$pb.TagNumber(11)
  void clearRotation() => $_clearField(11);

  @$pb.TagNumber(12)
  LayoutConstraints get constraints => $_getN(11);
  @$pb.TagNumber(12)
  set constraints(LayoutConstraints value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasConstraints() => $_has(11);
  @$pb.TagNumber(12)
  void clearConstraints() => $_clearField(12);
  @$pb.TagNumber(12)
  LayoutConstraints ensureConstraints() => $_ensure(11);

  @$pb.TagNumber(13)
  $pb.PbList<VisualNode> get children => $_getList(12);

  @$pb.TagNumber(14)
  BooleanOperation get booleanOperation => $_getN(13);
  @$pb.TagNumber(14)
  set booleanOperation(BooleanOperation value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBooleanOperation() => $_has(13);
  @$pb.TagNumber(14)
  void clearBooleanOperation() => $_clearField(14);

  @$pb.TagNumber(15)
  $pb.PbList<Paint> get fills => $_getList(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get strokes => $_getList(15);

  @$pb.TagNumber(17)
  Alias get strokeWeight => $_getN(16);
  @$pb.TagNumber(17)
  set strokeWeight(Alias value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasStrokeWeight() => $_has(16);
  @$pb.TagNumber(17)
  void clearStrokeWeight() => $_clearField(17);
  @$pb.TagNumber(17)
  Alias ensureStrokeWeight() => $_ensure(16);

  @$pb.TagNumber(18)
  Alias get opacity => $_getN(17);
  @$pb.TagNumber(18)
  set opacity(Alias value) => $_setField(18, value);
  @$pb.TagNumber(18)
  $core.bool hasOpacity() => $_has(17);
  @$pb.TagNumber(18)
  void clearOpacity() => $_clearField(18);
  @$pb.TagNumber(18)
  Alias ensureOpacity() => $_ensure(17);

  @$pb.TagNumber(19)
  BlendMode get blendMode => $_getN(18);
  @$pb.TagNumber(19)
  set blendMode(BlendMode value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasBlendMode() => $_has(18);
  @$pb.TagNumber(19)
  void clearBlendMode() => $_clearField(19);

  @$pb.TagNumber(20)
  $pb.PbList<Effect> get effects => $_getList(19);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
