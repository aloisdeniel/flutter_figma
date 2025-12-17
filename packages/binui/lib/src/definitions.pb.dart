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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'definitions.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'definitions.pbenum.dart';

class Library extends $pb.GeneratedMessage {
  factory Library({
    $core.int? id,
    $core.String? name,
    $core.String? documentation,
    Version? version,
    $core.Iterable<VariableCollection>? variables,
    $core.Iterable<Component>? components,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (documentation != null) result.documentation = documentation;
    if (version != null) result.version = version;
    if (variables != null) result.variables.addAll(variables);
    if (components != null) result.components.addAll(components);
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
    ..aOM<Version>(4, _omitFieldNames ? '' : 'version',
        subBuilder: Version.create)
    ..pPM<VariableCollection>(5, _omitFieldNames ? '' : 'variables',
        subBuilder: VariableCollection.create)
    ..pPM<Component>(6, _omitFieldNames ? '' : 'components',
        subBuilder: Component.create)
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
  Version get version => $_getN(3);
  @$pb.TagNumber(4)
  set version(Version value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => $_clearField(4);
  @$pb.TagNumber(4)
  Version ensureVersion() => $_ensure(3);

  @$pb.TagNumber(5)
  $pb.PbList<VariableCollection> get variables => $_getList(4);

  @$pb.TagNumber(6)
  $pb.PbList<Component> get components => $_getList(5);
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
  transform,
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
    CornerRadius? borderRadius,
    Rect? rect,
    TextStyle? textStyle,
    Transform? transform,
    VariantValue? variantValue,
    VectorGraphics? vectorGraphics,
    Version? version,
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
    if (transform != null) result.transform = transform;
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
    17: Value_Type.transform,
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
    ..aOM<CornerRadius>(14, _omitFieldNames ? '' : 'borderRadius',
        protoName: 'borderRadius', subBuilder: CornerRadius.create)
    ..aOM<Rect>(15, _omitFieldNames ? '' : 'rect', subBuilder: Rect.create)
    ..aOM<TextStyle>(16, _omitFieldNames ? '' : 'textStyle',
        protoName: 'textStyle', subBuilder: TextStyle.create)
    ..aOM<Transform>(17, _omitFieldNames ? '' : 'transform',
        subBuilder: Transform.create)
    ..aOM<VariantValue>(18, _omitFieldNames ? '' : 'variantValue',
        protoName: 'variantValue', subBuilder: VariantValue.create)
    ..aOM<VectorGraphics>(19, _omitFieldNames ? '' : 'vectorGraphics',
        protoName: 'vectorGraphics', subBuilder: VectorGraphics.create)
    ..aOM<Version>(20, _omitFieldNames ? '' : 'version',
        subBuilder: Version.create)
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
  CornerRadius get borderRadius => $_getN(12);
  @$pb.TagNumber(14)
  set borderRadius(CornerRadius value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasBorderRadius() => $_has(12);
  @$pb.TagNumber(14)
  void clearBorderRadius() => $_clearField(14);
  @$pb.TagNumber(14)
  CornerRadius ensureBorderRadius() => $_ensure(12);

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
  Transform get transform => $_getN(15);
  @$pb.TagNumber(17)
  set transform(Transform value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasTransform() => $_has(15);
  @$pb.TagNumber(17)
  void clearTransform() => $_clearField(17);
  @$pb.TagNumber(17)
  Transform ensureTransform() => $_ensure(15);

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
  Version get version => $_getN(18);
  @$pb.TagNumber(20)
  set version(Version value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasVersion() => $_has(18);
  @$pb.TagNumber(20)
  void clearVersion() => $_clearField(20);
  @$pb.TagNumber(20)
  Version ensureVersion() => $_ensure(18);

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

class EdgeInsets extends $pb.GeneratedMessage {
  factory EdgeInsets({
    $core.double? left,
    $core.double? top,
    $core.double? right,
    $core.double? bottom,
  }) {
    final result = create();
    if (left != null) result.left = left;
    if (top != null) result.top = top;
    if (right != null) result.right = right;
    if (bottom != null) result.bottom = bottom;
    return result;
  }

  EdgeInsets._();

  factory EdgeInsets.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory EdgeInsets.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'EdgeInsets',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'left')
    ..aD(2, _omitFieldNames ? '' : 'top')
    ..aD(3, _omitFieldNames ? '' : 'right')
    ..aD(4, _omitFieldNames ? '' : 'bottom')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdgeInsets clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  EdgeInsets copyWith(void Function(EdgeInsets) updates) =>
      super.copyWith((message) => updates(message as EdgeInsets)) as EdgeInsets;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EdgeInsets create() => EdgeInsets._();
  @$core.override
  EdgeInsets createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static EdgeInsets getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EdgeInsets>(create);
  static EdgeInsets? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get left => $_getN(0);
  @$pb.TagNumber(1)
  set left($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLeft() => $_has(0);
  @$pb.TagNumber(1)
  void clearLeft() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get top => $_getN(1);
  @$pb.TagNumber(2)
  set top($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTop() => $_has(1);
  @$pb.TagNumber(2)
  void clearTop() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get right => $_getN(2);
  @$pb.TagNumber(3)
  set right($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRight() => $_has(2);
  @$pb.TagNumber(3)
  void clearRight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get bottom => $_getN(3);
  @$pb.TagNumber(4)
  set bottom($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasBottom() => $_has(3);
  @$pb.TagNumber(4)
  void clearBottom() => $_clearField(4);
}

class Transform extends $pb.GeneratedMessage {
  factory Transform({
    $core.double? m00,
    $core.double? m01,
    $core.double? m02,
    $core.double? m10,
    $core.double? m11,
    $core.double? m12,
  }) {
    final result = create();
    if (m00 != null) result.m00 = m00;
    if (m01 != null) result.m01 = m01;
    if (m02 != null) result.m02 = m02;
    if (m10 != null) result.m10 = m10;
    if (m11 != null) result.m11 = m11;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'm00')
    ..aD(2, _omitFieldNames ? '' : 'm01')
    ..aD(3, _omitFieldNames ? '' : 'm02')
    ..aD(4, _omitFieldNames ? '' : 'm10')
    ..aD(5, _omitFieldNames ? '' : 'm11')
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
  $core.double get m02 => $_getN(2);
  @$pb.TagNumber(3)
  set m02($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasM02() => $_has(2);
  @$pb.TagNumber(3)
  void clearM02() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get m10 => $_getN(3);
  @$pb.TagNumber(4)
  set m10($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasM10() => $_has(3);
  @$pb.TagNumber(4)
  void clearM10() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get m11 => $_getN(4);
  @$pb.TagNumber(5)
  set m11($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasM11() => $_has(4);
  @$pb.TagNumber(5)
  void clearM11() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get m12 => $_getN(5);
  @$pb.TagNumber(6)
  set m12($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasM12() => $_has(5);
  @$pb.TagNumber(6)
  void clearM12() => $_clearField(6);
}

class ArcData extends $pb.GeneratedMessage {
  factory ArcData({
    $core.double? startingAngle,
    $core.double? endingAngle,
    $core.double? innerRadius,
  }) {
    final result = create();
    if (startingAngle != null) result.startingAngle = startingAngle;
    if (endingAngle != null) result.endingAngle = endingAngle;
    if (innerRadius != null) result.innerRadius = innerRadius;
    return result;
  }

  ArcData._();

  factory ArcData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ArcData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ArcData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'startingAngle', protoName: 'startingAngle')
    ..aD(2, _omitFieldNames ? '' : 'endingAngle', protoName: 'endingAngle')
    ..aD(3, _omitFieldNames ? '' : 'innerRadius', protoName: 'innerRadius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArcData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ArcData copyWith(void Function(ArcData) updates) =>
      super.copyWith((message) => updates(message as ArcData)) as ArcData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ArcData create() => ArcData._();
  @$core.override
  ArcData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ArcData getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ArcData>(create);
  static ArcData? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get startingAngle => $_getN(0);
  @$pb.TagNumber(1)
  set startingAngle($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStartingAngle() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartingAngle() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get endingAngle => $_getN(1);
  @$pb.TagNumber(2)
  set endingAngle($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasEndingAngle() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndingAngle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get innerRadius => $_getN(2);
  @$pb.TagNumber(3)
  set innerRadius($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasInnerRadius() => $_has(2);
  @$pb.TagNumber(3)
  void clearInnerRadius() => $_clearField(3);
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

class CornerRadius extends $pb.GeneratedMessage {
  factory CornerRadius({
    $core.double? topLeft,
    $core.double? topRight,
    $core.double? bottomLeft,
    $core.double? bottomRight,
    $core.double? smoothing,
  }) {
    final result = create();
    if (topLeft != null) result.topLeft = topLeft;
    if (topRight != null) result.topRight = topRight;
    if (bottomLeft != null) result.bottomLeft = bottomLeft;
    if (bottomRight != null) result.bottomRight = bottomRight;
    if (smoothing != null) result.smoothing = smoothing;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'topLeft', protoName: 'topLeft')
    ..aD(2, _omitFieldNames ? '' : 'topRight', protoName: 'topRight')
    ..aD(3, _omitFieldNames ? '' : 'bottomLeft', protoName: 'bottomLeft')
    ..aD(4, _omitFieldNames ? '' : 'bottomRight', protoName: 'bottomRight')
    ..aD(5, _omitFieldNames ? '' : 'smoothing')
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

  @$pb.TagNumber(5)
  $core.double get smoothing => $_getN(4);
  @$pb.TagNumber(5)
  set smoothing($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasSmoothing() => $_has(4);
  @$pb.TagNumber(5)
  void clearSmoothing() => $_clearField(5);
}

class BorderSide extends $pb.GeneratedMessage {
  factory BorderSide({
    $core.double? width,
    $core.double? strokeAlign,
  }) {
    final result = create();
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
    ..aD(1, _omitFieldNames ? '' : 'width')
    ..aD(2, _omitFieldNames ? '' : 'strokeAlign', protoName: 'strokeAlign')
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
  $core.double get width => $_getN(0);
  @$pb.TagNumber(1)
  set width($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get strokeAlign => $_getN(1);
  @$pb.TagNumber(2)
  set strokeAlign($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStrokeAlign() => $_has(1);
  @$pb.TagNumber(2)
  void clearStrokeAlign() => $_clearField(2);
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

enum Paint_Type {
  solid,
  linearGradient,
  radialGradient,
  angularGradient,
  diamondGradient,
  image,
  video,
  pattern,
  notSet
}

class Paint extends $pb.GeneratedMessage {
  factory Paint({
    SolidPaint? solid,
    LinearGradientPaint? linearGradient,
    RadialGradientPaint? radialGradient,
    AngularGradientPaint? angularGradient,
    DiamondGradientPaint? diamondGradient,
    ImagePaint? image,
    VideoPaint? video,
    PatternPaint? pattern,
    $core.bool? visible,
    $core.double? opacity,
    BlendMode? blendMode,
  }) {
    final result = create();
    if (solid != null) result.solid = solid;
    if (linearGradient != null) result.linearGradient = linearGradient;
    if (radialGradient != null) result.radialGradient = radialGradient;
    if (angularGradient != null) result.angularGradient = angularGradient;
    if (diamondGradient != null) result.diamondGradient = diamondGradient;
    if (image != null) result.image = image;
    if (video != null) result.video = video;
    if (pattern != null) result.pattern = pattern;
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
    2: Paint_Type.linearGradient,
    3: Paint_Type.radialGradient,
    4: Paint_Type.angularGradient,
    5: Paint_Type.diamondGradient,
    6: Paint_Type.image,
    7: Paint_Type.video,
    8: Paint_Type.pattern,
    0: Paint_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Paint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8])
    ..aOM<SolidPaint>(1, _omitFieldNames ? '' : 'solid',
        subBuilder: SolidPaint.create)
    ..aOM<LinearGradientPaint>(2, _omitFieldNames ? '' : 'linearGradient',
        protoName: 'linearGradient', subBuilder: LinearGradientPaint.create)
    ..aOM<RadialGradientPaint>(3, _omitFieldNames ? '' : 'radialGradient',
        protoName: 'radialGradient', subBuilder: RadialGradientPaint.create)
    ..aOM<AngularGradientPaint>(4, _omitFieldNames ? '' : 'angularGradient',
        protoName: 'angularGradient', subBuilder: AngularGradientPaint.create)
    ..aOM<DiamondGradientPaint>(5, _omitFieldNames ? '' : 'diamondGradient',
        protoName: 'diamondGradient', subBuilder: DiamondGradientPaint.create)
    ..aOM<ImagePaint>(6, _omitFieldNames ? '' : 'image',
        subBuilder: ImagePaint.create)
    ..aOM<VideoPaint>(7, _omitFieldNames ? '' : 'video',
        subBuilder: VideoPaint.create)
    ..aOM<PatternPaint>(8, _omitFieldNames ? '' : 'pattern',
        subBuilder: PatternPaint.create)
    ..aOB(10, _omitFieldNames ? '' : 'visible')
    ..aD(11, _omitFieldNames ? '' : 'opacity')
    ..aE<BlendMode>(12, _omitFieldNames ? '' : 'blendMode',
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
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  Paint_Type whichType() => _Paint_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
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
  LinearGradientPaint get linearGradient => $_getN(1);
  @$pb.TagNumber(2)
  set linearGradient(LinearGradientPaint value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasLinearGradient() => $_has(1);
  @$pb.TagNumber(2)
  void clearLinearGradient() => $_clearField(2);
  @$pb.TagNumber(2)
  LinearGradientPaint ensureLinearGradient() => $_ensure(1);

  @$pb.TagNumber(3)
  RadialGradientPaint get radialGradient => $_getN(2);
  @$pb.TagNumber(3)
  set radialGradient(RadialGradientPaint value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasRadialGradient() => $_has(2);
  @$pb.TagNumber(3)
  void clearRadialGradient() => $_clearField(3);
  @$pb.TagNumber(3)
  RadialGradientPaint ensureRadialGradient() => $_ensure(2);

  @$pb.TagNumber(4)
  AngularGradientPaint get angularGradient => $_getN(3);
  @$pb.TagNumber(4)
  set angularGradient(AngularGradientPaint value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAngularGradient() => $_has(3);
  @$pb.TagNumber(4)
  void clearAngularGradient() => $_clearField(4);
  @$pb.TagNumber(4)
  AngularGradientPaint ensureAngularGradient() => $_ensure(3);

  @$pb.TagNumber(5)
  DiamondGradientPaint get diamondGradient => $_getN(4);
  @$pb.TagNumber(5)
  set diamondGradient(DiamondGradientPaint value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasDiamondGradient() => $_has(4);
  @$pb.TagNumber(5)
  void clearDiamondGradient() => $_clearField(5);
  @$pb.TagNumber(5)
  DiamondGradientPaint ensureDiamondGradient() => $_ensure(4);

  @$pb.TagNumber(6)
  ImagePaint get image => $_getN(5);
  @$pb.TagNumber(6)
  set image(ImagePaint value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasImage() => $_has(5);
  @$pb.TagNumber(6)
  void clearImage() => $_clearField(6);
  @$pb.TagNumber(6)
  ImagePaint ensureImage() => $_ensure(5);

  @$pb.TagNumber(7)
  VideoPaint get video => $_getN(6);
  @$pb.TagNumber(7)
  set video(VideoPaint value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasVideo() => $_has(6);
  @$pb.TagNumber(7)
  void clearVideo() => $_clearField(7);
  @$pb.TagNumber(7)
  VideoPaint ensureVideo() => $_ensure(6);

  @$pb.TagNumber(8)
  PatternPaint get pattern => $_getN(7);
  @$pb.TagNumber(8)
  set pattern(PatternPaint value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPattern() => $_has(7);
  @$pb.TagNumber(8)
  void clearPattern() => $_clearField(8);
  @$pb.TagNumber(8)
  PatternPaint ensurePattern() => $_ensure(7);

  @$pb.TagNumber(10)
  $core.bool get visible => $_getBF(8);
  @$pb.TagNumber(10)
  set visible($core.bool value) => $_setBool(8, value);
  @$pb.TagNumber(10)
  $core.bool hasVisible() => $_has(8);
  @$pb.TagNumber(10)
  void clearVisible() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get opacity => $_getN(9);
  @$pb.TagNumber(11)
  set opacity($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(11)
  $core.bool hasOpacity() => $_has(9);
  @$pb.TagNumber(11)
  void clearOpacity() => $_clearField(11);

  @$pb.TagNumber(12)
  BlendMode get blendMode => $_getN(10);
  @$pb.TagNumber(12)
  set blendMode(BlendMode value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasBlendMode() => $_has(10);
  @$pb.TagNumber(12)
  void clearBlendMode() => $_clearField(12);
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

class LinearGradientPaint extends $pb.GeneratedMessage {
  factory LinearGradientPaint({
    Transform? gradientTransform,
    $core.Iterable<ColorStop>? gradientStops,
  }) {
    final result = create();
    if (gradientTransform != null) result.gradientTransform = gradientTransform;
    if (gradientStops != null) result.gradientStops.addAll(gradientStops);
    return result;
  }

  LinearGradientPaint._();

  factory LinearGradientPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LinearGradientPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LinearGradientPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Transform>(1, _omitFieldNames ? '' : 'gradientTransform',
        protoName: 'gradientTransform', subBuilder: Transform.create)
    ..pPM<ColorStop>(2, _omitFieldNames ? '' : 'gradientStops',
        protoName: 'gradientStops', subBuilder: ColorStop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinearGradientPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LinearGradientPaint copyWith(void Function(LinearGradientPaint) updates) =>
      super.copyWith((message) => updates(message as LinearGradientPaint))
          as LinearGradientPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinearGradientPaint create() => LinearGradientPaint._();
  @$core.override
  LinearGradientPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LinearGradientPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LinearGradientPaint>(create);
  static LinearGradientPaint? _defaultInstance;

  @$pb.TagNumber(1)
  Transform get gradientTransform => $_getN(0);
  @$pb.TagNumber(1)
  set gradientTransform(Transform value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGradientTransform() => $_has(0);
  @$pb.TagNumber(1)
  void clearGradientTransform() => $_clearField(1);
  @$pb.TagNumber(1)
  Transform ensureGradientTransform() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ColorStop> get gradientStops => $_getList(1);
}

class RadialGradientPaint extends $pb.GeneratedMessage {
  factory RadialGradientPaint({
    Transform? gradientTransform,
    $core.Iterable<ColorStop>? gradientStops,
  }) {
    final result = create();
    if (gradientTransform != null) result.gradientTransform = gradientTransform;
    if (gradientStops != null) result.gradientStops.addAll(gradientStops);
    return result;
  }

  RadialGradientPaint._();

  factory RadialGradientPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RadialGradientPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RadialGradientPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Transform>(1, _omitFieldNames ? '' : 'gradientTransform',
        protoName: 'gradientTransform', subBuilder: Transform.create)
    ..pPM<ColorStop>(2, _omitFieldNames ? '' : 'gradientStops',
        protoName: 'gradientStops', subBuilder: ColorStop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadialGradientPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RadialGradientPaint copyWith(void Function(RadialGradientPaint) updates) =>
      super.copyWith((message) => updates(message as RadialGradientPaint))
          as RadialGradientPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RadialGradientPaint create() => RadialGradientPaint._();
  @$core.override
  RadialGradientPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RadialGradientPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RadialGradientPaint>(create);
  static RadialGradientPaint? _defaultInstance;

  @$pb.TagNumber(1)
  Transform get gradientTransform => $_getN(0);
  @$pb.TagNumber(1)
  set gradientTransform(Transform value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGradientTransform() => $_has(0);
  @$pb.TagNumber(1)
  void clearGradientTransform() => $_clearField(1);
  @$pb.TagNumber(1)
  Transform ensureGradientTransform() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ColorStop> get gradientStops => $_getList(1);
}

class AngularGradientPaint extends $pb.GeneratedMessage {
  factory AngularGradientPaint({
    Transform? gradientTransform,
    $core.Iterable<ColorStop>? gradientStops,
  }) {
    final result = create();
    if (gradientTransform != null) result.gradientTransform = gradientTransform;
    if (gradientStops != null) result.gradientStops.addAll(gradientStops);
    return result;
  }

  AngularGradientPaint._();

  factory AngularGradientPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AngularGradientPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AngularGradientPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Transform>(1, _omitFieldNames ? '' : 'gradientTransform',
        protoName: 'gradientTransform', subBuilder: Transform.create)
    ..pPM<ColorStop>(2, _omitFieldNames ? '' : 'gradientStops',
        protoName: 'gradientStops', subBuilder: ColorStop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngularGradientPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AngularGradientPaint copyWith(void Function(AngularGradientPaint) updates) =>
      super.copyWith((message) => updates(message as AngularGradientPaint))
          as AngularGradientPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AngularGradientPaint create() => AngularGradientPaint._();
  @$core.override
  AngularGradientPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AngularGradientPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AngularGradientPaint>(create);
  static AngularGradientPaint? _defaultInstance;

  @$pb.TagNumber(1)
  Transform get gradientTransform => $_getN(0);
  @$pb.TagNumber(1)
  set gradientTransform(Transform value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGradientTransform() => $_has(0);
  @$pb.TagNumber(1)
  void clearGradientTransform() => $_clearField(1);
  @$pb.TagNumber(1)
  Transform ensureGradientTransform() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ColorStop> get gradientStops => $_getList(1);
}

class DiamondGradientPaint extends $pb.GeneratedMessage {
  factory DiamondGradientPaint({
    Transform? gradientTransform,
    $core.Iterable<ColorStop>? gradientStops,
  }) {
    final result = create();
    if (gradientTransform != null) result.gradientTransform = gradientTransform;
    if (gradientStops != null) result.gradientStops.addAll(gradientStops);
    return result;
  }

  DiamondGradientPaint._();

  factory DiamondGradientPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DiamondGradientPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DiamondGradientPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Transform>(1, _omitFieldNames ? '' : 'gradientTransform',
        protoName: 'gradientTransform', subBuilder: Transform.create)
    ..pPM<ColorStop>(2, _omitFieldNames ? '' : 'gradientStops',
        protoName: 'gradientStops', subBuilder: ColorStop.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiamondGradientPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DiamondGradientPaint copyWith(void Function(DiamondGradientPaint) updates) =>
      super.copyWith((message) => updates(message as DiamondGradientPaint))
          as DiamondGradientPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DiamondGradientPaint create() => DiamondGradientPaint._();
  @$core.override
  DiamondGradientPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DiamondGradientPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DiamondGradientPaint>(create);
  static DiamondGradientPaint? _defaultInstance;

  @$pb.TagNumber(1)
  Transform get gradientTransform => $_getN(0);
  @$pb.TagNumber(1)
  set gradientTransform(Transform value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGradientTransform() => $_has(0);
  @$pb.TagNumber(1)
  void clearGradientTransform() => $_clearField(1);
  @$pb.TagNumber(1)
  Transform ensureGradientTransform() => $_ensure(0);

  @$pb.TagNumber(2)
  $pb.PbList<ColorStop> get gradientStops => $_getList(1);
}

class ImageFilters extends $pb.GeneratedMessage {
  factory ImageFilters({
    $core.double? exposure,
    $core.double? contrast,
    $core.double? saturation,
    $core.double? temperature,
    $core.double? tint,
    $core.double? highlights,
    $core.double? shadows,
  }) {
    final result = create();
    if (exposure != null) result.exposure = exposure;
    if (contrast != null) result.contrast = contrast;
    if (saturation != null) result.saturation = saturation;
    if (temperature != null) result.temperature = temperature;
    if (tint != null) result.tint = tint;
    if (highlights != null) result.highlights = highlights;
    if (shadows != null) result.shadows = shadows;
    return result;
  }

  ImageFilters._();

  factory ImageFilters.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ImageFilters.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ImageFilters',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'exposure')
    ..aD(2, _omitFieldNames ? '' : 'contrast')
    ..aD(3, _omitFieldNames ? '' : 'saturation')
    ..aD(4, _omitFieldNames ? '' : 'temperature')
    ..aD(5, _omitFieldNames ? '' : 'tint')
    ..aD(6, _omitFieldNames ? '' : 'highlights')
    ..aD(7, _omitFieldNames ? '' : 'shadows')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImageFilters clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ImageFilters copyWith(void Function(ImageFilters) updates) =>
      super.copyWith((message) => updates(message as ImageFilters))
          as ImageFilters;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageFilters create() => ImageFilters._();
  @$core.override
  ImageFilters createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ImageFilters getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ImageFilters>(create);
  static ImageFilters? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get exposure => $_getN(0);
  @$pb.TagNumber(1)
  set exposure($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasExposure() => $_has(0);
  @$pb.TagNumber(1)
  void clearExposure() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get contrast => $_getN(1);
  @$pb.TagNumber(2)
  set contrast($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasContrast() => $_has(1);
  @$pb.TagNumber(2)
  void clearContrast() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get saturation => $_getN(2);
  @$pb.TagNumber(3)
  set saturation($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSaturation() => $_has(2);
  @$pb.TagNumber(3)
  void clearSaturation() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get temperature => $_getN(3);
  @$pb.TagNumber(4)
  set temperature($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemperature() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get tint => $_getN(4);
  @$pb.TagNumber(5)
  set tint($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasTint() => $_has(4);
  @$pb.TagNumber(5)
  void clearTint() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get highlights => $_getN(5);
  @$pb.TagNumber(6)
  set highlights($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasHighlights() => $_has(5);
  @$pb.TagNumber(6)
  void clearHighlights() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get shadows => $_getN(6);
  @$pb.TagNumber(7)
  set shadows($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasShadows() => $_has(6);
  @$pb.TagNumber(7)
  void clearShadows() => $_clearField(7);
}

class ImagePaint extends $pb.GeneratedMessage {
  factory ImagePaint({
    ScaleMode? scaleMode,
    $core.String? imageHash,
    Transform? imageTransform,
    $core.double? scalingFactor,
    $core.double? rotation,
    ImageFilters? filters,
  }) {
    final result = create();
    if (scaleMode != null) result.scaleMode = scaleMode;
    if (imageHash != null) result.imageHash = imageHash;
    if (imageTransform != null) result.imageTransform = imageTransform;
    if (scalingFactor != null) result.scalingFactor = scalingFactor;
    if (rotation != null) result.rotation = rotation;
    if (filters != null) result.filters = filters;
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
    ..aOM<Transform>(3, _omitFieldNames ? '' : 'imageTransform',
        protoName: 'imageTransform', subBuilder: Transform.create)
    ..aD(4, _omitFieldNames ? '' : 'scalingFactor', protoName: 'scalingFactor')
    ..aD(5, _omitFieldNames ? '' : 'rotation')
    ..aOM<ImageFilters>(6, _omitFieldNames ? '' : 'filters',
        subBuilder: ImageFilters.create)
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
  Transform get imageTransform => $_getN(2);
  @$pb.TagNumber(3)
  set imageTransform(Transform value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasImageTransform() => $_has(2);
  @$pb.TagNumber(3)
  void clearImageTransform() => $_clearField(3);
  @$pb.TagNumber(3)
  Transform ensureImageTransform() => $_ensure(2);

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

  @$pb.TagNumber(6)
  ImageFilters get filters => $_getN(5);
  @$pb.TagNumber(6)
  set filters(ImageFilters value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasFilters() => $_has(5);
  @$pb.TagNumber(6)
  void clearFilters() => $_clearField(6);
  @$pb.TagNumber(6)
  ImageFilters ensureFilters() => $_ensure(5);
}

class VideoPaint extends $pb.GeneratedMessage {
  factory VideoPaint({
    ScaleMode? scaleMode,
    $core.String? videoHash,
    Transform? videoTransform,
    $core.double? scalingFactor,
    $core.double? rotation,
    ImageFilters? filters,
  }) {
    final result = create();
    if (scaleMode != null) result.scaleMode = scaleMode;
    if (videoHash != null) result.videoHash = videoHash;
    if (videoTransform != null) result.videoTransform = videoTransform;
    if (scalingFactor != null) result.scalingFactor = scalingFactor;
    if (rotation != null) result.rotation = rotation;
    if (filters != null) result.filters = filters;
    return result;
  }

  VideoPaint._();

  factory VideoPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VideoPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VideoPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<ScaleMode>(1, _omitFieldNames ? '' : 'scaleMode',
        protoName: 'scaleMode', enumValues: ScaleMode.values)
    ..aOS(2, _omitFieldNames ? '' : 'videoHash', protoName: 'videoHash')
    ..aOM<Transform>(3, _omitFieldNames ? '' : 'videoTransform',
        protoName: 'videoTransform', subBuilder: Transform.create)
    ..aD(4, _omitFieldNames ? '' : 'scalingFactor', protoName: 'scalingFactor')
    ..aD(5, _omitFieldNames ? '' : 'rotation')
    ..aOM<ImageFilters>(6, _omitFieldNames ? '' : 'filters',
        subBuilder: ImageFilters.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VideoPaint copyWith(void Function(VideoPaint) updates) =>
      super.copyWith((message) => updates(message as VideoPaint)) as VideoPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoPaint create() => VideoPaint._();
  @$core.override
  VideoPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VideoPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VideoPaint>(create);
  static VideoPaint? _defaultInstance;

  @$pb.TagNumber(1)
  ScaleMode get scaleMode => $_getN(0);
  @$pb.TagNumber(1)
  set scaleMode(ScaleMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasScaleMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearScaleMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get videoHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set videoHash($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVideoHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearVideoHash() => $_clearField(2);

  @$pb.TagNumber(3)
  Transform get videoTransform => $_getN(2);
  @$pb.TagNumber(3)
  set videoTransform(Transform value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasVideoTransform() => $_has(2);
  @$pb.TagNumber(3)
  void clearVideoTransform() => $_clearField(3);
  @$pb.TagNumber(3)
  Transform ensureVideoTransform() => $_ensure(2);

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

  @$pb.TagNumber(6)
  ImageFilters get filters => $_getN(5);
  @$pb.TagNumber(6)
  set filters(ImageFilters value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasFilters() => $_has(5);
  @$pb.TagNumber(6)
  void clearFilters() => $_clearField(6);
  @$pb.TagNumber(6)
  ImageFilters ensureFilters() => $_ensure(5);
}

class PatternPaint extends $pb.GeneratedMessage {
  factory PatternPaint({
    $core.String? sourceNodeId,
    PatternTileType? tileType,
    $core.double? scalingFactor,
    Offset? spacing,
    PatternHorizontalAlignment? horizontalAlignment,
  }) {
    final result = create();
    if (sourceNodeId != null) result.sourceNodeId = sourceNodeId;
    if (tileType != null) result.tileType = tileType;
    if (scalingFactor != null) result.scalingFactor = scalingFactor;
    if (spacing != null) result.spacing = spacing;
    if (horizontalAlignment != null)
      result.horizontalAlignment = horizontalAlignment;
    return result;
  }

  PatternPaint._();

  factory PatternPaint.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory PatternPaint.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PatternPaint',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceNodeId', protoName: 'sourceNodeId')
    ..aE<PatternTileType>(2, _omitFieldNames ? '' : 'tileType',
        protoName: 'tileType', enumValues: PatternTileType.values)
    ..aD(3, _omitFieldNames ? '' : 'scalingFactor', protoName: 'scalingFactor')
    ..aOM<Offset>(4, _omitFieldNames ? '' : 'spacing',
        subBuilder: Offset.create)
    ..aE<PatternHorizontalAlignment>(
        5, _omitFieldNames ? '' : 'horizontalAlignment',
        protoName: 'horizontalAlignment',
        enumValues: PatternHorizontalAlignment.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PatternPaint clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PatternPaint copyWith(void Function(PatternPaint) updates) =>
      super.copyWith((message) => updates(message as PatternPaint))
          as PatternPaint;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatternPaint create() => PatternPaint._();
  @$core.override
  PatternPaint createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static PatternPaint getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PatternPaint>(create);
  static PatternPaint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceNodeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceNodeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceNodeId() => $_clearField(1);

  @$pb.TagNumber(2)
  PatternTileType get tileType => $_getN(1);
  @$pb.TagNumber(2)
  set tileType(PatternTileType value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasTileType() => $_has(1);
  @$pb.TagNumber(2)
  void clearTileType() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get scalingFactor => $_getN(2);
  @$pb.TagNumber(3)
  set scalingFactor($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasScalingFactor() => $_has(2);
  @$pb.TagNumber(3)
  void clearScalingFactor() => $_clearField(3);

  @$pb.TagNumber(4)
  Offset get spacing => $_getN(3);
  @$pb.TagNumber(4)
  set spacing(Offset value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasSpacing() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpacing() => $_clearField(4);
  @$pb.TagNumber(4)
  Offset ensureSpacing() => $_ensure(3);

  @$pb.TagNumber(5)
  PatternHorizontalAlignment get horizontalAlignment => $_getN(4);
  @$pb.TagNumber(5)
  set horizontalAlignment(PatternHorizontalAlignment value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasHorizontalAlignment() => $_has(4);
  @$pb.TagNumber(5)
  void clearHorizontalAlignment() => $_clearField(5);
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

enum Effect_Type {
  dropShadow,
  innerShadow,
  layerBlur,
  backgroundBlur,
  progressiveBlur,
  monotoneNoise,
  duotoneNoise,
  multitoneNoise,
  texture,
  glass,
  notSet
}

class Effect extends $pb.GeneratedMessage {
  factory Effect({
    DropShadowEffect? dropShadow,
    InnerShadowEffect? innerShadow,
    LayerBlurEffect? layerBlur,
    BackgroundBlurEffect? backgroundBlur,
    ProgressiveBlurEffect? progressiveBlur,
    MonotoneNoiseEffect? monotoneNoise,
    DuotoneNoiseEffect? duotoneNoise,
    MultitoneNoiseEffect? multitoneNoise,
    TextureEffect? texture,
    GlassEffect? glass,
    $core.bool? visible,
  }) {
    final result = create();
    if (dropShadow != null) result.dropShadow = dropShadow;
    if (innerShadow != null) result.innerShadow = innerShadow;
    if (layerBlur != null) result.layerBlur = layerBlur;
    if (backgroundBlur != null) result.backgroundBlur = backgroundBlur;
    if (progressiveBlur != null) result.progressiveBlur = progressiveBlur;
    if (monotoneNoise != null) result.monotoneNoise = monotoneNoise;
    if (duotoneNoise != null) result.duotoneNoise = duotoneNoise;
    if (multitoneNoise != null) result.multitoneNoise = multitoneNoise;
    if (texture != null) result.texture = texture;
    if (glass != null) result.glass = glass;
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
    3: Effect_Type.layerBlur,
    4: Effect_Type.backgroundBlur,
    5: Effect_Type.progressiveBlur,
    6: Effect_Type.monotoneNoise,
    7: Effect_Type.duotoneNoise,
    8: Effect_Type.multitoneNoise,
    9: Effect_Type.texture,
    10: Effect_Type.glass,
    0: Effect_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Effect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<DropShadowEffect>(1, _omitFieldNames ? '' : 'dropShadow',
        protoName: 'dropShadow', subBuilder: DropShadowEffect.create)
    ..aOM<InnerShadowEffect>(2, _omitFieldNames ? '' : 'innerShadow',
        protoName: 'innerShadow', subBuilder: InnerShadowEffect.create)
    ..aOM<LayerBlurEffect>(3, _omitFieldNames ? '' : 'layerBlur',
        protoName: 'layerBlur', subBuilder: LayerBlurEffect.create)
    ..aOM<BackgroundBlurEffect>(4, _omitFieldNames ? '' : 'backgroundBlur',
        protoName: 'backgroundBlur', subBuilder: BackgroundBlurEffect.create)
    ..aOM<ProgressiveBlurEffect>(5, _omitFieldNames ? '' : 'progressiveBlur',
        protoName: 'progressiveBlur', subBuilder: ProgressiveBlurEffect.create)
    ..aOM<MonotoneNoiseEffect>(6, _omitFieldNames ? '' : 'monotoneNoise',
        protoName: 'monotoneNoise', subBuilder: MonotoneNoiseEffect.create)
    ..aOM<DuotoneNoiseEffect>(7, _omitFieldNames ? '' : 'duotoneNoise',
        protoName: 'duotoneNoise', subBuilder: DuotoneNoiseEffect.create)
    ..aOM<MultitoneNoiseEffect>(8, _omitFieldNames ? '' : 'multitoneNoise',
        protoName: 'multitoneNoise', subBuilder: MultitoneNoiseEffect.create)
    ..aOM<TextureEffect>(9, _omitFieldNames ? '' : 'texture',
        subBuilder: TextureEffect.create)
    ..aOM<GlassEffect>(10, _omitFieldNames ? '' : 'glass',
        subBuilder: GlassEffect.create)
    ..aOB(20, _omitFieldNames ? '' : 'visible')
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
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  @$pb.TagNumber(6)
  @$pb.TagNumber(7)
  @$pb.TagNumber(8)
  @$pb.TagNumber(9)
  @$pb.TagNumber(10)
  Effect_Type whichType() => _Effect_TypeByTag[$_whichOneof(0)]!;
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
  LayerBlurEffect get layerBlur => $_getN(2);
  @$pb.TagNumber(3)
  set layerBlur(LayerBlurEffect value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLayerBlur() => $_has(2);
  @$pb.TagNumber(3)
  void clearLayerBlur() => $_clearField(3);
  @$pb.TagNumber(3)
  LayerBlurEffect ensureLayerBlur() => $_ensure(2);

  @$pb.TagNumber(4)
  BackgroundBlurEffect get backgroundBlur => $_getN(3);
  @$pb.TagNumber(4)
  set backgroundBlur(BackgroundBlurEffect value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasBackgroundBlur() => $_has(3);
  @$pb.TagNumber(4)
  void clearBackgroundBlur() => $_clearField(4);
  @$pb.TagNumber(4)
  BackgroundBlurEffect ensureBackgroundBlur() => $_ensure(3);

  @$pb.TagNumber(5)
  ProgressiveBlurEffect get progressiveBlur => $_getN(4);
  @$pb.TagNumber(5)
  set progressiveBlur(ProgressiveBlurEffect value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasProgressiveBlur() => $_has(4);
  @$pb.TagNumber(5)
  void clearProgressiveBlur() => $_clearField(5);
  @$pb.TagNumber(5)
  ProgressiveBlurEffect ensureProgressiveBlur() => $_ensure(4);

  @$pb.TagNumber(6)
  MonotoneNoiseEffect get monotoneNoise => $_getN(5);
  @$pb.TagNumber(6)
  set monotoneNoise(MonotoneNoiseEffect value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMonotoneNoise() => $_has(5);
  @$pb.TagNumber(6)
  void clearMonotoneNoise() => $_clearField(6);
  @$pb.TagNumber(6)
  MonotoneNoiseEffect ensureMonotoneNoise() => $_ensure(5);

  @$pb.TagNumber(7)
  DuotoneNoiseEffect get duotoneNoise => $_getN(6);
  @$pb.TagNumber(7)
  set duotoneNoise(DuotoneNoiseEffect value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasDuotoneNoise() => $_has(6);
  @$pb.TagNumber(7)
  void clearDuotoneNoise() => $_clearField(7);
  @$pb.TagNumber(7)
  DuotoneNoiseEffect ensureDuotoneNoise() => $_ensure(6);

  @$pb.TagNumber(8)
  MultitoneNoiseEffect get multitoneNoise => $_getN(7);
  @$pb.TagNumber(8)
  set multitoneNoise(MultitoneNoiseEffect value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasMultitoneNoise() => $_has(7);
  @$pb.TagNumber(8)
  void clearMultitoneNoise() => $_clearField(8);
  @$pb.TagNumber(8)
  MultitoneNoiseEffect ensureMultitoneNoise() => $_ensure(7);

  @$pb.TagNumber(9)
  TextureEffect get texture => $_getN(8);
  @$pb.TagNumber(9)
  set texture(TextureEffect value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTexture() => $_has(8);
  @$pb.TagNumber(9)
  void clearTexture() => $_clearField(9);
  @$pb.TagNumber(9)
  TextureEffect ensureTexture() => $_ensure(8);

  @$pb.TagNumber(10)
  GlassEffect get glass => $_getN(9);
  @$pb.TagNumber(10)
  set glass(GlassEffect value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasGlass() => $_has(9);
  @$pb.TagNumber(10)
  void clearGlass() => $_clearField(10);
  @$pb.TagNumber(10)
  GlassEffect ensureGlass() => $_ensure(9);

  @$pb.TagNumber(20)
  $core.bool get visible => $_getBF(10);
  @$pb.TagNumber(20)
  set visible($core.bool value) => $_setBool(10, value);
  @$pb.TagNumber(20)
  $core.bool hasVisible() => $_has(10);
  @$pb.TagNumber(20)
  void clearVisible() => $_clearField(20);
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

class LayerBlurEffect extends $pb.GeneratedMessage {
  factory LayerBlurEffect({
    $core.double? radius,
  }) {
    final result = create();
    if (radius != null) result.radius = radius;
    return result;
  }

  LayerBlurEffect._();

  factory LayerBlurEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LayerBlurEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LayerBlurEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'radius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayerBlurEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayerBlurEffect copyWith(void Function(LayerBlurEffect) updates) =>
      super.copyWith((message) => updates(message as LayerBlurEffect))
          as LayerBlurEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayerBlurEffect create() => LayerBlurEffect._();
  @$core.override
  LayerBlurEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LayerBlurEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LayerBlurEffect>(create);
  static LayerBlurEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get radius => $_getN(0);
  @$pb.TagNumber(1)
  set radius($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRadius() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadius() => $_clearField(1);
}

class BackgroundBlurEffect extends $pb.GeneratedMessage {
  factory BackgroundBlurEffect({
    $core.double? radius,
  }) {
    final result = create();
    if (radius != null) result.radius = radius;
    return result;
  }

  BackgroundBlurEffect._();

  factory BackgroundBlurEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackgroundBlurEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackgroundBlurEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'radius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackgroundBlurEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackgroundBlurEffect copyWith(void Function(BackgroundBlurEffect) updates) =>
      super.copyWith((message) => updates(message as BackgroundBlurEffect))
          as BackgroundBlurEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackgroundBlurEffect create() => BackgroundBlurEffect._();
  @$core.override
  BackgroundBlurEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackgroundBlurEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackgroundBlurEffect>(create);
  static BackgroundBlurEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get radius => $_getN(0);
  @$pb.TagNumber(1)
  set radius($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRadius() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadius() => $_clearField(1);
}

class ProgressiveBlurEffect extends $pb.GeneratedMessage {
  factory ProgressiveBlurEffect({
    $core.double? radius,
    $core.double? startRadius,
    Offset? startOffset,
    Offset? endOffset,
  }) {
    final result = create();
    if (radius != null) result.radius = radius;
    if (startRadius != null) result.startRadius = startRadius;
    if (startOffset != null) result.startOffset = startOffset;
    if (endOffset != null) result.endOffset = endOffset;
    return result;
  }

  ProgressiveBlurEffect._();

  factory ProgressiveBlurEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ProgressiveBlurEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProgressiveBlurEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'radius')
    ..aD(2, _omitFieldNames ? '' : 'startRadius', protoName: 'startRadius')
    ..aOM<Offset>(3, _omitFieldNames ? '' : 'startOffset',
        protoName: 'startOffset', subBuilder: Offset.create)
    ..aOM<Offset>(4, _omitFieldNames ? '' : 'endOffset',
        protoName: 'endOffset', subBuilder: Offset.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProgressiveBlurEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProgressiveBlurEffect copyWith(
          void Function(ProgressiveBlurEffect) updates) =>
      super.copyWith((message) => updates(message as ProgressiveBlurEffect))
          as ProgressiveBlurEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ProgressiveBlurEffect create() => ProgressiveBlurEffect._();
  @$core.override
  ProgressiveBlurEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ProgressiveBlurEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ProgressiveBlurEffect>(create);
  static ProgressiveBlurEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get radius => $_getN(0);
  @$pb.TagNumber(1)
  set radius($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRadius() => $_has(0);
  @$pb.TagNumber(1)
  void clearRadius() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get startRadius => $_getN(1);
  @$pb.TagNumber(2)
  set startRadius($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartRadius() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartRadius() => $_clearField(2);

  @$pb.TagNumber(3)
  Offset get startOffset => $_getN(2);
  @$pb.TagNumber(3)
  set startOffset(Offset value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasStartOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearStartOffset() => $_clearField(3);
  @$pb.TagNumber(3)
  Offset ensureStartOffset() => $_ensure(2);

  @$pb.TagNumber(4)
  Offset get endOffset => $_getN(3);
  @$pb.TagNumber(4)
  set endOffset(Offset value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasEndOffset() => $_has(3);
  @$pb.TagNumber(4)
  void clearEndOffset() => $_clearField(4);
  @$pb.TagNumber(4)
  Offset ensureEndOffset() => $_ensure(3);
}

class MonotoneNoiseEffect extends $pb.GeneratedMessage {
  factory MonotoneNoiseEffect({
    Alias? color,
    BlendMode? blendMode,
    $core.double? noiseSize,
    $core.double? density,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (blendMode != null) result.blendMode = blendMode;
    if (noiseSize != null) result.noiseSize = noiseSize;
    if (density != null) result.density = density;
    return result;
  }

  MonotoneNoiseEffect._();

  factory MonotoneNoiseEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MonotoneNoiseEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MonotoneNoiseEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
    ..aE<BlendMode>(2, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(3, _omitFieldNames ? '' : 'noiseSize', protoName: 'noiseSize')
    ..aD(4, _omitFieldNames ? '' : 'density')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MonotoneNoiseEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MonotoneNoiseEffect copyWith(void Function(MonotoneNoiseEffect) updates) =>
      super.copyWith((message) => updates(message as MonotoneNoiseEffect))
          as MonotoneNoiseEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MonotoneNoiseEffect create() => MonotoneNoiseEffect._();
  @$core.override
  MonotoneNoiseEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MonotoneNoiseEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MonotoneNoiseEffect>(create);
  static MonotoneNoiseEffect? _defaultInstance;

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
  BlendMode get blendMode => $_getN(1);
  @$pb.TagNumber(2)
  set blendMode(BlendMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBlendMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlendMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get noiseSize => $_getN(2);
  @$pb.TagNumber(3)
  set noiseSize($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNoiseSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoiseSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get density => $_getN(3);
  @$pb.TagNumber(4)
  set density($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDensity() => $_has(3);
  @$pb.TagNumber(4)
  void clearDensity() => $_clearField(4);
}

class DuotoneNoiseEffect extends $pb.GeneratedMessage {
  factory DuotoneNoiseEffect({
    Alias? color,
    BlendMode? blendMode,
    $core.double? noiseSize,
    $core.double? density,
    Alias? secondaryColor,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (blendMode != null) result.blendMode = blendMode;
    if (noiseSize != null) result.noiseSize = noiseSize;
    if (density != null) result.density = density;
    if (secondaryColor != null) result.secondaryColor = secondaryColor;
    return result;
  }

  DuotoneNoiseEffect._();

  factory DuotoneNoiseEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DuotoneNoiseEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DuotoneNoiseEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
    ..aE<BlendMode>(2, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(3, _omitFieldNames ? '' : 'noiseSize', protoName: 'noiseSize')
    ..aD(4, _omitFieldNames ? '' : 'density')
    ..aOM<Alias>(5, _omitFieldNames ? '' : 'secondaryColor',
        protoName: 'secondaryColor', subBuilder: Alias.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DuotoneNoiseEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DuotoneNoiseEffect copyWith(void Function(DuotoneNoiseEffect) updates) =>
      super.copyWith((message) => updates(message as DuotoneNoiseEffect))
          as DuotoneNoiseEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DuotoneNoiseEffect create() => DuotoneNoiseEffect._();
  @$core.override
  DuotoneNoiseEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DuotoneNoiseEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DuotoneNoiseEffect>(create);
  static DuotoneNoiseEffect? _defaultInstance;

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
  BlendMode get blendMode => $_getN(1);
  @$pb.TagNumber(2)
  set blendMode(BlendMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBlendMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlendMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get noiseSize => $_getN(2);
  @$pb.TagNumber(3)
  set noiseSize($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNoiseSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoiseSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get density => $_getN(3);
  @$pb.TagNumber(4)
  set density($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDensity() => $_has(3);
  @$pb.TagNumber(4)
  void clearDensity() => $_clearField(4);

  @$pb.TagNumber(5)
  Alias get secondaryColor => $_getN(4);
  @$pb.TagNumber(5)
  set secondaryColor(Alias value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasSecondaryColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearSecondaryColor() => $_clearField(5);
  @$pb.TagNumber(5)
  Alias ensureSecondaryColor() => $_ensure(4);
}

class MultitoneNoiseEffect extends $pb.GeneratedMessage {
  factory MultitoneNoiseEffect({
    Alias? color,
    BlendMode? blendMode,
    $core.double? noiseSize,
    $core.double? density,
    $core.double? opacity,
  }) {
    final result = create();
    if (color != null) result.color = color;
    if (blendMode != null) result.blendMode = blendMode;
    if (noiseSize != null) result.noiseSize = noiseSize;
    if (density != null) result.density = density;
    if (opacity != null) result.opacity = opacity;
    return result;
  }

  MultitoneNoiseEffect._();

  factory MultitoneNoiseEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MultitoneNoiseEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MultitoneNoiseEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'color', subBuilder: Alias.create)
    ..aE<BlendMode>(2, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(3, _omitFieldNames ? '' : 'noiseSize', protoName: 'noiseSize')
    ..aD(4, _omitFieldNames ? '' : 'density')
    ..aD(5, _omitFieldNames ? '' : 'opacity')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultitoneNoiseEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MultitoneNoiseEffect copyWith(void Function(MultitoneNoiseEffect) updates) =>
      super.copyWith((message) => updates(message as MultitoneNoiseEffect))
          as MultitoneNoiseEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MultitoneNoiseEffect create() => MultitoneNoiseEffect._();
  @$core.override
  MultitoneNoiseEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MultitoneNoiseEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MultitoneNoiseEffect>(create);
  static MultitoneNoiseEffect? _defaultInstance;

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
  BlendMode get blendMode => $_getN(1);
  @$pb.TagNumber(2)
  set blendMode(BlendMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasBlendMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlendMode() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get noiseSize => $_getN(2);
  @$pb.TagNumber(3)
  set noiseSize($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNoiseSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoiseSize() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get density => $_getN(3);
  @$pb.TagNumber(4)
  set density($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDensity() => $_has(3);
  @$pb.TagNumber(4)
  void clearDensity() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get opacity => $_getN(4);
  @$pb.TagNumber(5)
  set opacity($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasOpacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearOpacity() => $_clearField(5);
}

class TextureEffect extends $pb.GeneratedMessage {
  factory TextureEffect({
    $core.double? noiseSize,
    $core.double? radius,
    $core.bool? clipToShape,
  }) {
    final result = create();
    if (noiseSize != null) result.noiseSize = noiseSize;
    if (radius != null) result.radius = radius;
    if (clipToShape != null) result.clipToShape = clipToShape;
    return result;
  }

  TextureEffect._();

  factory TextureEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextureEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextureEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'noiseSize', protoName: 'noiseSize')
    ..aD(2, _omitFieldNames ? '' : 'radius')
    ..aOB(3, _omitFieldNames ? '' : 'clipToShape', protoName: 'clipToShape')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextureEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextureEffect copyWith(void Function(TextureEffect) updates) =>
      super.copyWith((message) => updates(message as TextureEffect))
          as TextureEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextureEffect create() => TextureEffect._();
  @$core.override
  TextureEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextureEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextureEffect>(create);
  static TextureEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get noiseSize => $_getN(0);
  @$pb.TagNumber(1)
  set noiseSize($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNoiseSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearNoiseSize() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get radius => $_getN(1);
  @$pb.TagNumber(2)
  set radius($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRadius() => $_has(1);
  @$pb.TagNumber(2)
  void clearRadius() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get clipToShape => $_getBF(2);
  @$pb.TagNumber(3)
  set clipToShape($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasClipToShape() => $_has(2);
  @$pb.TagNumber(3)
  void clearClipToShape() => $_clearField(3);
}

class GlassEffect extends $pb.GeneratedMessage {
  factory GlassEffect({
    $core.double? lightIntensity,
    $core.double? lightAngle,
    $core.double? refraction,
    $core.double? depth,
    $core.double? dispersion,
    $core.double? radius,
  }) {
    final result = create();
    if (lightIntensity != null) result.lightIntensity = lightIntensity;
    if (lightAngle != null) result.lightAngle = lightAngle;
    if (refraction != null) result.refraction = refraction;
    if (depth != null) result.depth = depth;
    if (dispersion != null) result.dispersion = dispersion;
    if (radius != null) result.radius = radius;
    return result;
  }

  GlassEffect._();

  factory GlassEffect.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GlassEffect.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GlassEffect',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'lightIntensity',
        protoName: 'lightIntensity')
    ..aD(2, _omitFieldNames ? '' : 'lightAngle', protoName: 'lightAngle')
    ..aD(3, _omitFieldNames ? '' : 'refraction')
    ..aD(4, _omitFieldNames ? '' : 'depth')
    ..aD(5, _omitFieldNames ? '' : 'dispersion')
    ..aD(6, _omitFieldNames ? '' : 'radius')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlassEffect clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GlassEffect copyWith(void Function(GlassEffect) updates) =>
      super.copyWith((message) => updates(message as GlassEffect))
          as GlassEffect;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GlassEffect create() => GlassEffect._();
  @$core.override
  GlassEffect createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GlassEffect getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GlassEffect>(create);
  static GlassEffect? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lightIntensity => $_getN(0);
  @$pb.TagNumber(1)
  set lightIntensity($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasLightIntensity() => $_has(0);
  @$pb.TagNumber(1)
  void clearLightIntensity() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get lightAngle => $_getN(1);
  @$pb.TagNumber(2)
  set lightAngle($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLightAngle() => $_has(1);
  @$pb.TagNumber(2)
  void clearLightAngle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get refraction => $_getN(2);
  @$pb.TagNumber(3)
  set refraction($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasRefraction() => $_has(2);
  @$pb.TagNumber(3)
  void clearRefraction() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get depth => $_getN(3);
  @$pb.TagNumber(4)
  set depth($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasDepth() => $_has(3);
  @$pb.TagNumber(4)
  void clearDepth() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get dispersion => $_getN(4);
  @$pb.TagNumber(5)
  set dispersion($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasDispersion() => $_has(4);
  @$pb.TagNumber(5)
  void clearDispersion() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get radius => $_getN(5);
  @$pb.TagNumber(6)
  set radius($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRadius() => $_has(5);
  @$pb.TagNumber(6)
  void clearRadius() => $_clearField(6);
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

class Stroke extends $pb.GeneratedMessage {
  factory Stroke({
    $core.double? topWeight,
    $core.double? bottomWeight,
    $core.double? leftWeight,
    $core.double? rightWeight,
    StrokeJoin? join,
    StrokeAlign? alignment,
  }) {
    final result = create();
    if (topWeight != null) result.topWeight = topWeight;
    if (bottomWeight != null) result.bottomWeight = bottomWeight;
    if (leftWeight != null) result.leftWeight = leftWeight;
    if (rightWeight != null) result.rightWeight = rightWeight;
    if (join != null) result.join = join;
    if (alignment != null) result.alignment = alignment;
    return result;
  }

  Stroke._();

  factory Stroke.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Stroke.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Stroke',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'topWeight', protoName: 'topWeight')
    ..aD(2, _omitFieldNames ? '' : 'bottomWeight', protoName: 'bottomWeight')
    ..aD(3, _omitFieldNames ? '' : 'leftWeight', protoName: 'leftWeight')
    ..aD(4, _omitFieldNames ? '' : 'rightWeight', protoName: 'rightWeight')
    ..aE<StrokeJoin>(5, _omitFieldNames ? '' : 'join',
        enumValues: StrokeJoin.values)
    ..aE<StrokeAlign>(6, _omitFieldNames ? '' : 'alignment',
        enumValues: StrokeAlign.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Stroke clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Stroke copyWith(void Function(Stroke) updates) =>
      super.copyWith((message) => updates(message as Stroke)) as Stroke;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Stroke create() => Stroke._();
  @$core.override
  Stroke createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Stroke getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Stroke>(create);
  static Stroke? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get topWeight => $_getN(0);
  @$pb.TagNumber(1)
  set topWeight($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasTopWeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearTopWeight() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get bottomWeight => $_getN(1);
  @$pb.TagNumber(2)
  set bottomWeight($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasBottomWeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearBottomWeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get leftWeight => $_getN(2);
  @$pb.TagNumber(3)
  set leftWeight($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasLeftWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearLeftWeight() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get rightWeight => $_getN(3);
  @$pb.TagNumber(4)
  set rightWeight($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasRightWeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearRightWeight() => $_clearField(4);

  @$pb.TagNumber(5)
  StrokeJoin get join => $_getN(4);
  @$pb.TagNumber(5)
  set join(StrokeJoin value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasJoin() => $_has(4);
  @$pb.TagNumber(5)
  void clearJoin() => $_clearField(5);

  @$pb.TagNumber(6)
  StrokeAlign get alignment => $_getN(5);
  @$pb.TagNumber(6)
  set alignment(StrokeAlign value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAlignment() => $_has(5);
  @$pb.TagNumber(6)
  void clearAlignment() => $_clearField(6);
}

enum Shape_Type { rectangle, vectorPaths, text, notSet }

class Shape extends $pb.GeneratedMessage {
  factory Shape({
    RectangleShape? rectangle,
    VectorPathsShape? vectorPaths,
    TextShape? text,
  }) {
    final result = create();
    if (rectangle != null) result.rectangle = rectangle;
    if (vectorPaths != null) result.vectorPaths = vectorPaths;
    if (text != null) result.text = text;
    return result;
  }

  Shape._();

  factory Shape.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Shape.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Shape_Type> _Shape_TypeByTag = {
    1: Shape_Type.rectangle,
    2: Shape_Type.vectorPaths,
    3: Shape_Type.text,
    0: Shape_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Shape',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<RectangleShape>(1, _omitFieldNames ? '' : 'rectangle',
        subBuilder: RectangleShape.create)
    ..aOM<VectorPathsShape>(2, _omitFieldNames ? '' : 'vectorPaths',
        protoName: 'vectorPaths', subBuilder: VectorPathsShape.create)
    ..aOM<TextShape>(3, _omitFieldNames ? '' : 'text',
        subBuilder: TextShape.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shape clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Shape copyWith(void Function(Shape) updates) =>
      super.copyWith((message) => updates(message as Shape)) as Shape;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Shape create() => Shape._();
  @$core.override
  Shape createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Shape getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Shape>(create);
  static Shape? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  Shape_Type whichType() => _Shape_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  RectangleShape get rectangle => $_getN(0);
  @$pb.TagNumber(1)
  set rectangle(RectangleShape value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRectangle() => $_has(0);
  @$pb.TagNumber(1)
  void clearRectangle() => $_clearField(1);
  @$pb.TagNumber(1)
  RectangleShape ensureRectangle() => $_ensure(0);

  @$pb.TagNumber(2)
  VectorPathsShape get vectorPaths => $_getN(1);
  @$pb.TagNumber(2)
  set vectorPaths(VectorPathsShape value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVectorPaths() => $_has(1);
  @$pb.TagNumber(2)
  void clearVectorPaths() => $_clearField(2);
  @$pb.TagNumber(2)
  VectorPathsShape ensureVectorPaths() => $_ensure(1);

  @$pb.TagNumber(3)
  TextShape get text => $_getN(2);
  @$pb.TagNumber(3)
  set text(TextShape value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasText() => $_has(2);
  @$pb.TagNumber(3)
  void clearText() => $_clearField(3);
  @$pb.TagNumber(3)
  TextShape ensureText() => $_ensure(2);
}

class RectangleShape extends $pb.GeneratedMessage {
  factory RectangleShape({
    CornerRadius? cornerRadius,
  }) {
    final result = create();
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    return result;
  }

  RectangleShape._();

  factory RectangleShape.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory RectangleShape.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'RectangleShape',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOM<CornerRadius>(1, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RectangleShape clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  RectangleShape copyWith(void Function(RectangleShape) updates) =>
      super.copyWith((message) => updates(message as RectangleShape))
          as RectangleShape;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RectangleShape create() => RectangleShape._();
  @$core.override
  RectangleShape createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static RectangleShape getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RectangleShape>(create);
  static RectangleShape? _defaultInstance;

  @$pb.TagNumber(1)
  CornerRadius get cornerRadius => $_getN(0);
  @$pb.TagNumber(1)
  set cornerRadius(CornerRadius value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasCornerRadius() => $_has(0);
  @$pb.TagNumber(1)
  void clearCornerRadius() => $_clearField(1);
  @$pb.TagNumber(1)
  CornerRadius ensureCornerRadius() => $_ensure(0);
}

class VectorPathsShape extends $pb.GeneratedMessage {
  factory VectorPathsShape({
    $core.Iterable<VectorPath>? fill,
    $core.Iterable<VectorPath>? stroke,
  }) {
    final result = create();
    if (fill != null) result.fill.addAll(fill);
    if (stroke != null) result.stroke.addAll(stroke);
    return result;
  }

  VectorPathsShape._();

  factory VectorPathsShape.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorPathsShape.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorPathsShape',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<VectorPath>(1, _omitFieldNames ? '' : 'fill',
        subBuilder: VectorPath.create)
    ..pPM<VectorPath>(2, _omitFieldNames ? '' : 'stroke',
        subBuilder: VectorPath.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorPathsShape clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorPathsShape copyWith(void Function(VectorPathsShape) updates) =>
      super.copyWith((message) => updates(message as VectorPathsShape))
          as VectorPathsShape;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorPathsShape create() => VectorPathsShape._();
  @$core.override
  VectorPathsShape createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorPathsShape getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorPathsShape>(create);
  static VectorPathsShape? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<VectorPath> get fill => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<VectorPath> get stroke => $_getList(1);
}

class TextShape extends $pb.GeneratedMessage {
  factory TextShape({
    $core.Iterable<TextSpan>? characters,
    TextStyle? style,
  }) {
    final result = create();
    if (characters != null) result.characters.addAll(characters);
    if (style != null) result.style = style;
    return result;
  }

  TextShape._();

  factory TextShape.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextShape.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextShape',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<TextSpan>(1, _omitFieldNames ? '' : 'characters',
        subBuilder: TextSpan.create)
    ..aOM<TextStyle>(2, _omitFieldNames ? '' : 'style',
        subBuilder: TextStyle.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextShape clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextShape copyWith(void Function(TextShape) updates) =>
      super.copyWith((message) => updates(message as TextShape)) as TextShape;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextShape create() => TextShape._();
  @$core.override
  TextShape createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextShape getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextShape>(create);
  static TextShape? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<TextSpan> get characters => $_getList(0);

  @$pb.TagNumber(2)
  TextStyle get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(TextStyle value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);
  @$pb.TagNumber(2)
  TextStyle ensureStyle() => $_ensure(1);
}

class FontName extends $pb.GeneratedMessage {
  factory FontName({
    $core.String? family,
    FontStyle? style,
    $core.int? weight,
  }) {
    final result = create();
    if (family != null) result.family = family;
    if (style != null) result.style = style;
    if (weight != null) result.weight = weight;
    return result;
  }

  FontName._();

  factory FontName.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FontName.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FontName',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'family')
    ..aE<FontStyle>(2, _omitFieldNames ? '' : 'style',
        enumValues: FontStyle.values)
    ..aI(3, _omitFieldNames ? '' : 'weight')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FontName clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FontName copyWith(void Function(FontName) updates) =>
      super.copyWith((message) => updates(message as FontName)) as FontName;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FontName create() => FontName._();
  @$core.override
  FontName createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FontName getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FontName>(create);
  static FontName? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get family => $_getSZ(0);
  @$pb.TagNumber(1)
  set family($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFamily() => $_has(0);
  @$pb.TagNumber(1)
  void clearFamily() => $_clearField(1);

  @$pb.TagNumber(2)
  FontStyle get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(FontStyle value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.int get weight => $_getIZ(2);
  @$pb.TagNumber(3)
  set weight($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeight() => $_clearField(3);
}

class LetterSpacing extends $pb.GeneratedMessage {
  factory LetterSpacing({
    $core.double? value,
    LetterSpacingUnit? unit,
  }) {
    final result = create();
    if (value != null) result.value = value;
    if (unit != null) result.unit = unit;
    return result;
  }

  LetterSpacing._();

  factory LetterSpacing.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LetterSpacing.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LetterSpacing',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'value')
    ..aE<LetterSpacingUnit>(2, _omitFieldNames ? '' : 'unit',
        enumValues: LetterSpacingUnit.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LetterSpacing clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LetterSpacing copyWith(void Function(LetterSpacing) updates) =>
      super.copyWith((message) => updates(message as LetterSpacing))
          as LetterSpacing;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LetterSpacing create() => LetterSpacing._();
  @$core.override
  LetterSpacing createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LetterSpacing getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LetterSpacing>(create);
  static LetterSpacing? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => $_clearField(1);

  @$pb.TagNumber(2)
  LetterSpacingUnit get unit => $_getN(1);
  @$pb.TagNumber(2)
  set unit(LetterSpacingUnit value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasUnit() => $_has(1);
  @$pb.TagNumber(2)
  void clearUnit() => $_clearField(2);
}

enum LineHeight_Type { pixels, percent, autoHeight, notSet }

class LineHeight extends $pb.GeneratedMessage {
  factory LineHeight({
    $core.double? pixels,
    $core.double? percent,
    $core.bool? autoHeight,
  }) {
    final result = create();
    if (pixels != null) result.pixels = pixels;
    if (percent != null) result.percent = percent;
    if (autoHeight != null) result.autoHeight = autoHeight;
    return result;
  }

  LineHeight._();

  factory LineHeight.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LineHeight.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, LineHeight_Type> _LineHeight_TypeByTag = {
    1: LineHeight_Type.pixels,
    2: LineHeight_Type.percent,
    3: LineHeight_Type.autoHeight,
    0: LineHeight_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LineHeight',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aD(1, _omitFieldNames ? '' : 'pixels')
    ..aD(2, _omitFieldNames ? '' : 'percent')
    ..aOB(3, _omitFieldNames ? '' : 'autoHeight', protoName: 'autoHeight')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LineHeight clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LineHeight copyWith(void Function(LineHeight) updates) =>
      super.copyWith((message) => updates(message as LineHeight)) as LineHeight;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LineHeight create() => LineHeight._();
  @$core.override
  LineHeight createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LineHeight getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LineHeight>(create);
  static LineHeight? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  LineHeight_Type whichType() => _LineHeight_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get pixels => $_getN(0);
  @$pb.TagNumber(1)
  set pixels($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPixels() => $_has(0);
  @$pb.TagNumber(1)
  void clearPixels() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get percent => $_getN(1);
  @$pb.TagNumber(2)
  set percent($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearPercent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get autoHeight => $_getBF(2);
  @$pb.TagNumber(3)
  set autoHeight($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAutoHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearAutoHeight() => $_clearField(3);
}

class TextStyle extends $pb.GeneratedMessage {
  factory TextStyle({
    FontName? fontName,
    $core.double? fontSize,
    LetterSpacing? letterSpacing,
    LineHeight? lineHeight,
  }) {
    final result = create();
    if (fontName != null) result.fontName = fontName;
    if (fontSize != null) result.fontSize = fontSize;
    if (letterSpacing != null) result.letterSpacing = letterSpacing;
    if (lineHeight != null) result.lineHeight = lineHeight;
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
    ..aOM<FontName>(1, _omitFieldNames ? '' : 'fontName',
        protoName: 'fontName', subBuilder: FontName.create)
    ..aD(2, _omitFieldNames ? '' : 'fontSize', protoName: 'fontSize')
    ..aOM<LetterSpacing>(3, _omitFieldNames ? '' : 'letterSpacing',
        protoName: 'letterSpacing', subBuilder: LetterSpacing.create)
    ..aOM<LineHeight>(4, _omitFieldNames ? '' : 'lineHeight',
        protoName: 'lineHeight', subBuilder: LineHeight.create)
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
  FontName get fontName => $_getN(0);
  @$pb.TagNumber(1)
  set fontName(FontName value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFontName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFontName() => $_clearField(1);
  @$pb.TagNumber(1)
  FontName ensureFontName() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get fontSize => $_getN(1);
  @$pb.TagNumber(2)
  set fontSize($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFontSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearFontSize() => $_clearField(2);

  @$pb.TagNumber(3)
  LetterSpacing get letterSpacing => $_getN(2);
  @$pb.TagNumber(3)
  set letterSpacing(LetterSpacing value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasLetterSpacing() => $_has(2);
  @$pb.TagNumber(3)
  void clearLetterSpacing() => $_clearField(3);
  @$pb.TagNumber(3)
  LetterSpacing ensureLetterSpacing() => $_ensure(2);

  @$pb.TagNumber(4)
  LineHeight get lineHeight => $_getN(3);
  @$pb.TagNumber(4)
  set lineHeight(LineHeight value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasLineHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearLineHeight() => $_clearField(4);
  @$pb.TagNumber(4)
  LineHeight ensureLineHeight() => $_ensure(3);
}

class TextSpan extends $pb.GeneratedMessage {
  factory TextSpan({
    $core.String? text,
    TextStyle? style,
  }) {
    final result = create();
    if (text != null) result.text = text;
    if (style != null) result.style = style;
    return result;
  }

  TextSpan._();

  factory TextSpan.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextSpan.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextSpan',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'text')
    ..aOM<TextStyle>(2, _omitFieldNames ? '' : 'style',
        subBuilder: TextStyle.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextSpan clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextSpan copyWith(void Function(TextSpan) updates) =>
      super.copyWith((message) => updates(message as TextSpan)) as TextSpan;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextSpan create() => TextSpan._();
  @$core.override
  TextSpan createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextSpan getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TextSpan>(create);
  static TextSpan? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get text => $_getSZ(0);
  @$pb.TagNumber(1)
  set text($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasText() => $_has(0);
  @$pb.TagNumber(1)
  void clearText() => $_clearField(1);

  @$pb.TagNumber(2)
  TextStyle get style => $_getN(1);
  @$pb.TagNumber(2)
  set style(TextStyle value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStyle() => $_has(1);
  @$pb.TagNumber(2)
  void clearStyle() => $_clearField(2);
  @$pb.TagNumber(2)
  TextStyle ensureStyle() => $_ensure(1);
}

class TextListOptions extends $pb.GeneratedMessage {
  factory TextListOptions({
    TextListType? type,
  }) {
    final result = create();
    if (type != null) result.type = type;
    return result;
  }

  TextListOptions._();

  factory TextListOptions.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextListOptions.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextListOptions',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<TextListType>(1, _omitFieldNames ? '' : 'type',
        enumValues: TextListType.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextListOptions clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextListOptions copyWith(void Function(TextListOptions) updates) =>
      super.copyWith((message) => updates(message as TextListOptions))
          as TextListOptions;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextListOptions create() => TextListOptions._();
  @$core.override
  TextListOptions createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextListOptions getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextListOptions>(create);
  static TextListOptions? _defaultInstance;

  @$pb.TagNumber(1)
  TextListType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(TextListType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class HyperlinkTarget extends $pb.GeneratedMessage {
  factory HyperlinkTarget({
    HyperlinkType? type,
    $core.String? value,
  }) {
    final result = create();
    if (type != null) result.type = type;
    if (value != null) result.value = value;
    return result;
  }

  HyperlinkTarget._();

  factory HyperlinkTarget.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory HyperlinkTarget.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'HyperlinkTarget',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<HyperlinkType>(1, _omitFieldNames ? '' : 'type',
        enumValues: HyperlinkType.values)
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HyperlinkTarget clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  HyperlinkTarget copyWith(void Function(HyperlinkTarget) updates) =>
      super.copyWith((message) => updates(message as HyperlinkTarget))
          as HyperlinkTarget;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HyperlinkTarget create() => HyperlinkTarget._();
  @$core.override
  HyperlinkTarget createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static HyperlinkTarget getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<HyperlinkTarget>(create);
  static HyperlinkTarget? _defaultInstance;

  @$pb.TagNumber(1)
  HyperlinkType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(HyperlinkType value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
}

enum TextDecorationOffset_Type { pixels, percent, autoOffset, notSet }

class TextDecorationOffset extends $pb.GeneratedMessage {
  factory TextDecorationOffset({
    $core.double? pixels,
    $core.double? percent,
    $core.bool? autoOffset,
  }) {
    final result = create();
    if (pixels != null) result.pixels = pixels;
    if (percent != null) result.percent = percent;
    if (autoOffset != null) result.autoOffset = autoOffset;
    return result;
  }

  TextDecorationOffset._();

  factory TextDecorationOffset.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextDecorationOffset.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TextDecorationOffset_Type>
      _TextDecorationOffset_TypeByTag = {
    1: TextDecorationOffset_Type.pixels,
    2: TextDecorationOffset_Type.percent,
    3: TextDecorationOffset_Type.autoOffset,
    0: TextDecorationOffset_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextDecorationOffset',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aD(1, _omitFieldNames ? '' : 'pixels')
    ..aD(2, _omitFieldNames ? '' : 'percent')
    ..aOB(3, _omitFieldNames ? '' : 'autoOffset', protoName: 'autoOffset')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextDecorationOffset clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextDecorationOffset copyWith(void Function(TextDecorationOffset) updates) =>
      super.copyWith((message) => updates(message as TextDecorationOffset))
          as TextDecorationOffset;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextDecorationOffset create() => TextDecorationOffset._();
  @$core.override
  TextDecorationOffset createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextDecorationOffset getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextDecorationOffset>(create);
  static TextDecorationOffset? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  TextDecorationOffset_Type whichType() =>
      _TextDecorationOffset_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get pixels => $_getN(0);
  @$pb.TagNumber(1)
  set pixels($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPixels() => $_has(0);
  @$pb.TagNumber(1)
  void clearPixels() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get percent => $_getN(1);
  @$pb.TagNumber(2)
  set percent($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearPercent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get autoOffset => $_getBF(2);
  @$pb.TagNumber(3)
  set autoOffset($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAutoOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearAutoOffset() => $_clearField(3);
}

enum TextDecorationThickness_Type { pixels, percent, autoThickness, notSet }

class TextDecorationThickness extends $pb.GeneratedMessage {
  factory TextDecorationThickness({
    $core.double? pixels,
    $core.double? percent,
    $core.bool? autoThickness,
  }) {
    final result = create();
    if (pixels != null) result.pixels = pixels;
    if (percent != null) result.percent = percent;
    if (autoThickness != null) result.autoThickness = autoThickness;
    return result;
  }

  TextDecorationThickness._();

  factory TextDecorationThickness.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory TextDecorationThickness.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, TextDecorationThickness_Type>
      _TextDecorationThickness_TypeByTag = {
    1: TextDecorationThickness_Type.pixels,
    2: TextDecorationThickness_Type.percent,
    3: TextDecorationThickness_Type.autoThickness,
    0: TextDecorationThickness_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TextDecorationThickness',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aD(1, _omitFieldNames ? '' : 'pixels')
    ..aD(2, _omitFieldNames ? '' : 'percent')
    ..aOB(3, _omitFieldNames ? '' : 'autoThickness', protoName: 'autoThickness')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextDecorationThickness clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TextDecorationThickness copyWith(
          void Function(TextDecorationThickness) updates) =>
      super.copyWith((message) => updates(message as TextDecorationThickness))
          as TextDecorationThickness;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TextDecorationThickness create() => TextDecorationThickness._();
  @$core.override
  TextDecorationThickness createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static TextDecorationThickness getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TextDecorationThickness>(create);
  static TextDecorationThickness? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  TextDecorationThickness_Type whichType() =>
      _TextDecorationThickness_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.double get pixels => $_getN(0);
  @$pb.TagNumber(1)
  set pixels($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasPixels() => $_has(0);
  @$pb.TagNumber(1)
  void clearPixels() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get percent => $_getN(1);
  @$pb.TagNumber(2)
  set percent($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearPercent() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get autoThickness => $_getBF(2);
  @$pb.TagNumber(3)
  set autoThickness($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasAutoThickness() => $_has(2);
  @$pb.TagNumber(3)
  void clearAutoThickness() => $_clearField(3);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
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

class VectorSegment extends $pb.GeneratedMessage {
  factory VectorSegment({
    $core.int? start,
    $core.int? end,
    Offset? tangentStart,
    Offset? tangentEnd,
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'start')
    ..aI(2, _omitFieldNames ? '' : 'end')
    ..aOM<Offset>(3, _omitFieldNames ? '' : 'tangentStart',
        protoName: 'tangentStart', subBuilder: Offset.create)
    ..aOM<Offset>(4, _omitFieldNames ? '' : 'tangentEnd',
        protoName: 'tangentEnd', subBuilder: Offset.create)
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
  Offset get tangentStart => $_getN(2);
  @$pb.TagNumber(3)
  set tangentStart(Offset value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTangentStart() => $_has(2);
  @$pb.TagNumber(3)
  void clearTangentStart() => $_clearField(3);
  @$pb.TagNumber(3)
  Offset ensureTangentStart() => $_ensure(2);

  @$pb.TagNumber(4)
  Offset get tangentEnd => $_getN(3);
  @$pb.TagNumber(4)
  set tangentEnd(Offset value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasTangentEnd() => $_has(3);
  @$pb.TagNumber(4)
  void clearTangentEnd() => $_clearField(4);
  @$pb.TagNumber(4)
  Offset ensureTangentEnd() => $_ensure(3);
}

class VectorRegion extends $pb.GeneratedMessage {
  factory VectorRegion({
    WindingRule? windingRule,
    $core.Iterable<VectorLoop>? loops,
    $core.Iterable<Paint>? fills,
    $core.String? fillStyleId,
  }) {
    final result = create();
    if (windingRule != null) result.windingRule = windingRule;
    if (loops != null) result.loops.addAll(loops);
    if (fills != null) result.fills.addAll(fills);
    if (fillStyleId != null) result.fillStyleId = fillStyleId;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<WindingRule>(1, _omitFieldNames ? '' : 'windingRule',
        protoName: 'windingRule', enumValues: WindingRule.values)
    ..pPM<VectorLoop>(2, _omitFieldNames ? '' : 'loops',
        subBuilder: VectorLoop.create)
    ..pPM<Paint>(3, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..aOS(4, _omitFieldNames ? '' : 'fillStyleId', protoName: 'fillStyleId')
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
  $pb.PbList<VectorLoop> get loops => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<Paint> get fills => $_getList(2);

  @$pb.TagNumber(4)
  $core.String get fillStyleId => $_getSZ(3);
  @$pb.TagNumber(4)
  set fillStyleId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasFillStyleId() => $_has(3);
  @$pb.TagNumber(4)
  void clearFillStyleId() => $_clearField(4);
}

class VectorLoop extends $pb.GeneratedMessage {
  factory VectorLoop({
    $core.Iterable<$core.int>? indices,
  }) {
    final result = create();
    if (indices != null) result.indices.addAll(indices);
    return result;
  }

  VectorLoop._();

  factory VectorLoop.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorLoop.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorLoop',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..p<$core.int>(1, _omitFieldNames ? '' : 'indices', $pb.PbFieldType.K3)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorLoop clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorLoop copyWith(void Function(VectorLoop) updates) =>
      super.copyWith((message) => updates(message as VectorLoop)) as VectorLoop;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorLoop create() => VectorLoop._();
  @$core.override
  VectorLoop createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorLoop getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorLoop>(create);
  static VectorLoop? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.int> get indices => $_getList(0);
}

class VectorNetwork extends $pb.GeneratedMessage {
  factory VectorNetwork({
    $core.Iterable<VectorVertex>? vertices,
    $core.Iterable<VectorSegment>? segments,
    $core.Iterable<VectorRegion>? regions,
  }) {
    final result = create();
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<VectorVertex>(1, _omitFieldNames ? '' : 'vertices',
        subBuilder: VectorVertex.create)
    ..pPM<VectorSegment>(2, _omitFieldNames ? '' : 'segments',
        subBuilder: VectorSegment.create)
    ..pPM<VectorRegion>(3, _omitFieldNames ? '' : 'regions',
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
  $pb.PbList<VectorVertex> get vertices => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<VectorSegment> get segments => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<VectorRegion> get regions => $_getList(2);
}

class VectorPath extends $pb.GeneratedMessage {
  factory VectorPath({
    $core.String? windingRule,
    $core.String? path,
  }) {
    final result = create();
    if (windingRule != null) result.windingRule = windingRule;
    if (path != null) result.path = path;
    return result;
  }

  VectorPath._();

  factory VectorPath.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory VectorPath.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VectorPath',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'windingRule', protoName: 'windingRule')
    ..aOS(2, _omitFieldNames ? '' : 'path')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorPath clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VectorPath copyWith(void Function(VectorPath) updates) =>
      super.copyWith((message) => updates(message as VectorPath)) as VectorPath;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VectorPath create() => VectorPath._();
  @$core.override
  VectorPath createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static VectorPath getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VectorPath>(create);
  static VectorPath? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get windingRule => $_getSZ(0);
  @$pb.TagNumber(1)
  set windingRule($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasWindingRule() => $_has(0);
  @$pb.TagNumber(1)
  void clearWindingRule() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get path => $_getSZ(1);
  @$pb.TagNumber(2)
  set path($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearPath() => $_clearField(2);
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

class ChildSize extends $pb.GeneratedMessage {
  factory ChildSize({
    $core.double? width,
    $core.double? height,
    ChildSizingMode? primaryAxisSizing,
    ChildSizingMode? counterAxisSizing,
  }) {
    final result = create();
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (primaryAxisSizing != null) result.primaryAxisSizing = primaryAxisSizing;
    if (counterAxisSizing != null) result.counterAxisSizing = counterAxisSizing;
    return result;
  }

  ChildSize._();

  factory ChildSize.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChildSize.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChildSize',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'width')
    ..aD(2, _omitFieldNames ? '' : 'height')
    ..aE<ChildSizingMode>(3, _omitFieldNames ? '' : 'primaryAxisSizing',
        protoName: 'primaryAxisSizing', enumValues: ChildSizingMode.values)
    ..aE<ChildSizingMode>(4, _omitFieldNames ? '' : 'counterAxisSizing',
        protoName: 'counterAxisSizing', enumValues: ChildSizingMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChildSize clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChildSize copyWith(void Function(ChildSize) updates) =>
      super.copyWith((message) => updates(message as ChildSize)) as ChildSize;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChildSize create() => ChildSize._();
  @$core.override
  ChildSize createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChildSize getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChildSize>(create);
  static ChildSize? _defaultInstance;

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

  @$pb.TagNumber(3)
  ChildSizingMode get primaryAxisSizing => $_getN(2);
  @$pb.TagNumber(3)
  set primaryAxisSizing(ChildSizingMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasPrimaryAxisSizing() => $_has(2);
  @$pb.TagNumber(3)
  void clearPrimaryAxisSizing() => $_clearField(3);

  @$pb.TagNumber(4)
  ChildSizingMode get counterAxisSizing => $_getN(3);
  @$pb.TagNumber(4)
  set counterAxisSizing(ChildSizingMode value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCounterAxisSizing() => $_has(3);
  @$pb.TagNumber(4)
  void clearCounterAxisSizing() => $_clearField(4);
}

class GridTrack extends $pb.GeneratedMessage {
  factory GridTrack({
    $core.double? size,
    GridTrackSizingMode? sizingMode,
  }) {
    final result = create();
    if (size != null) result.size = size;
    if (sizingMode != null) result.sizingMode = sizingMode;
    return result;
  }

  GridTrack._();

  factory GridTrack.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GridTrack.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GridTrack',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'size')
    ..aE<GridTrackSizingMode>(2, _omitFieldNames ? '' : 'sizingMode',
        protoName: 'sizingMode', enumValues: GridTrackSizingMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GridTrack clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GridTrack copyWith(void Function(GridTrack) updates) =>
      super.copyWith((message) => updates(message as GridTrack)) as GridTrack;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GridTrack create() => GridTrack._();
  @$core.override
  GridTrack createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GridTrack getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GridTrack>(create);
  static GridTrack? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get size => $_getN(0);
  @$pb.TagNumber(1)
  set size($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearSize() => $_clearField(1);

  @$pb.TagNumber(2)
  GridTrackSizingMode get sizingMode => $_getN(1);
  @$pb.TagNumber(2)
  set sizingMode(GridTrackSizingMode value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasSizingMode() => $_has(1);
  @$pb.TagNumber(2)
  void clearSizingMode() => $_clearField(2);
}

enum LayoutProperties_Type { freeform, autoLayout, grid, notSet }

class LayoutProperties extends $pb.GeneratedMessage {
  factory LayoutProperties({
    FreeformLayoutProperties? freeform,
    AutoLayoutProperties? autoLayout,
    GridLayoutProperties? grid,
  }) {
    final result = create();
    if (freeform != null) result.freeform = freeform;
    if (autoLayout != null) result.autoLayout = autoLayout;
    if (grid != null) result.grid = grid;
    return result;
  }

  LayoutProperties._();

  factory LayoutProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory LayoutProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, LayoutProperties_Type>
      _LayoutProperties_TypeByTag = {
    1: LayoutProperties_Type.freeform,
    2: LayoutProperties_Type.autoLayout,
    3: LayoutProperties_Type.grid,
    0: LayoutProperties_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'LayoutProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aOM<FreeformLayoutProperties>(1, _omitFieldNames ? '' : 'freeform',
        subBuilder: FreeformLayoutProperties.create)
    ..aOM<AutoLayoutProperties>(2, _omitFieldNames ? '' : 'autoLayout',
        protoName: 'autoLayout', subBuilder: AutoLayoutProperties.create)
    ..aOM<GridLayoutProperties>(3, _omitFieldNames ? '' : 'grid',
        subBuilder: GridLayoutProperties.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayoutProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  LayoutProperties copyWith(void Function(LayoutProperties) updates) =>
      super.copyWith((message) => updates(message as LayoutProperties))
          as LayoutProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LayoutProperties create() => LayoutProperties._();
  @$core.override
  LayoutProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static LayoutProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<LayoutProperties>(create);
  static LayoutProperties? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  LayoutProperties_Type whichType() =>
      _LayoutProperties_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FreeformLayoutProperties get freeform => $_getN(0);
  @$pb.TagNumber(1)
  set freeform(FreeformLayoutProperties value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasFreeform() => $_has(0);
  @$pb.TagNumber(1)
  void clearFreeform() => $_clearField(1);
  @$pb.TagNumber(1)
  FreeformLayoutProperties ensureFreeform() => $_ensure(0);

  @$pb.TagNumber(2)
  AutoLayoutProperties get autoLayout => $_getN(1);
  @$pb.TagNumber(2)
  set autoLayout(AutoLayoutProperties value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasAutoLayout() => $_has(1);
  @$pb.TagNumber(2)
  void clearAutoLayout() => $_clearField(2);
  @$pb.TagNumber(2)
  AutoLayoutProperties ensureAutoLayout() => $_ensure(1);

  @$pb.TagNumber(3)
  GridLayoutProperties get grid => $_getN(2);
  @$pb.TagNumber(3)
  set grid(GridLayoutProperties value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasGrid() => $_has(2);
  @$pb.TagNumber(3)
  void clearGrid() => $_clearField(3);
  @$pb.TagNumber(3)
  GridLayoutProperties ensureGrid() => $_ensure(2);
}

class FreeformLayoutProperties extends $pb.GeneratedMessage {
  factory FreeformLayoutProperties({
    $core.double? referenceWidth,
    $core.double? referenceHeight,
  }) {
    final result = create();
    if (referenceWidth != null) result.referenceWidth = referenceWidth;
    if (referenceHeight != null) result.referenceHeight = referenceHeight;
    return result;
  }

  FreeformLayoutProperties._();

  factory FreeformLayoutProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory FreeformLayoutProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'FreeformLayoutProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'referenceWidth',
        protoName: 'referenceWidth')
    ..aD(2, _omitFieldNames ? '' : 'referenceHeight',
        protoName: 'referenceHeight')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FreeformLayoutProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  FreeformLayoutProperties copyWith(
          void Function(FreeformLayoutProperties) updates) =>
      super.copyWith((message) => updates(message as FreeformLayoutProperties))
          as FreeformLayoutProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FreeformLayoutProperties create() => FreeformLayoutProperties._();
  @$core.override
  FreeformLayoutProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static FreeformLayoutProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<FreeformLayoutProperties>(create);
  static FreeformLayoutProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get referenceWidth => $_getN(0);
  @$pb.TagNumber(1)
  set referenceWidth($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReferenceWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearReferenceWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get referenceHeight => $_getN(1);
  @$pb.TagNumber(2)
  set referenceHeight($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReferenceHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearReferenceHeight() => $_clearField(2);
}

class AutoLayoutProperties extends $pb.GeneratedMessage {
  factory AutoLayoutProperties({
    $core.double? referenceWidth,
    $core.double? referenceHeight,
    $core.bool? isVertical,
    PrimaryAxisSizingMode? primaryAxisSizingMode,
    CounterAxisSizingMode? counterAxisSizingMode,
    LayoutAlign? primaryAxisAlignItems,
    LayoutAlign? counterAxisAlignItems,
    LayoutWrap? layoutWrap,
    EdgeInsets? padding,
    $core.double? itemSpacing,
    $core.double? counterAxisSpacing,
  }) {
    final result = create();
    if (referenceWidth != null) result.referenceWidth = referenceWidth;
    if (referenceHeight != null) result.referenceHeight = referenceHeight;
    if (isVertical != null) result.isVertical = isVertical;
    if (primaryAxisSizingMode != null)
      result.primaryAxisSizingMode = primaryAxisSizingMode;
    if (counterAxisSizingMode != null)
      result.counterAxisSizingMode = counterAxisSizingMode;
    if (primaryAxisAlignItems != null)
      result.primaryAxisAlignItems = primaryAxisAlignItems;
    if (counterAxisAlignItems != null)
      result.counterAxisAlignItems = counterAxisAlignItems;
    if (layoutWrap != null) result.layoutWrap = layoutWrap;
    if (padding != null) result.padding = padding;
    if (itemSpacing != null) result.itemSpacing = itemSpacing;
    if (counterAxisSpacing != null)
      result.counterAxisSpacing = counterAxisSpacing;
    return result;
  }

  AutoLayoutProperties._();

  factory AutoLayoutProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory AutoLayoutProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'AutoLayoutProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'referenceWidth',
        protoName: 'referenceWidth')
    ..aD(2, _omitFieldNames ? '' : 'referenceHeight',
        protoName: 'referenceHeight')
    ..aOB(3, _omitFieldNames ? '' : 'isVertical', protoName: 'isVertical')
    ..aE<PrimaryAxisSizingMode>(
        4, _omitFieldNames ? '' : 'primaryAxisSizingMode',
        protoName: 'primaryAxisSizingMode',
        enumValues: PrimaryAxisSizingMode.values)
    ..aE<CounterAxisSizingMode>(
        5, _omitFieldNames ? '' : 'counterAxisSizingMode',
        protoName: 'counterAxisSizingMode',
        enumValues: CounterAxisSizingMode.values)
    ..aE<LayoutAlign>(6, _omitFieldNames ? '' : 'primaryAxisAlignItems',
        protoName: 'primaryAxisAlignItems', enumValues: LayoutAlign.values)
    ..aE<LayoutAlign>(7, _omitFieldNames ? '' : 'counterAxisAlignItems',
        protoName: 'counterAxisAlignItems', enumValues: LayoutAlign.values)
    ..aE<LayoutWrap>(8, _omitFieldNames ? '' : 'layoutWrap',
        protoName: 'layoutWrap', enumValues: LayoutWrap.values)
    ..aOM<EdgeInsets>(9, _omitFieldNames ? '' : 'padding',
        subBuilder: EdgeInsets.create)
    ..aD(10, _omitFieldNames ? '' : 'itemSpacing', protoName: 'itemSpacing')
    ..aD(11, _omitFieldNames ? '' : 'counterAxisSpacing',
        protoName: 'counterAxisSpacing')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutoLayoutProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  AutoLayoutProperties copyWith(void Function(AutoLayoutProperties) updates) =>
      super.copyWith((message) => updates(message as AutoLayoutProperties))
          as AutoLayoutProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AutoLayoutProperties create() => AutoLayoutProperties._();
  @$core.override
  AutoLayoutProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static AutoLayoutProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AutoLayoutProperties>(create);
  static AutoLayoutProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get referenceWidth => $_getN(0);
  @$pb.TagNumber(1)
  set referenceWidth($core.double value) => $_setDouble(0, value);
  @$pb.TagNumber(1)
  $core.bool hasReferenceWidth() => $_has(0);
  @$pb.TagNumber(1)
  void clearReferenceWidth() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get referenceHeight => $_getN(1);
  @$pb.TagNumber(2)
  set referenceHeight($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasReferenceHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearReferenceHeight() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isVertical => $_getBF(2);
  @$pb.TagNumber(3)
  set isVertical($core.bool value) => $_setBool(2, value);
  @$pb.TagNumber(3)
  $core.bool hasIsVertical() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsVertical() => $_clearField(3);

  @$pb.TagNumber(4)
  PrimaryAxisSizingMode get primaryAxisSizingMode => $_getN(3);
  @$pb.TagNumber(4)
  set primaryAxisSizingMode(PrimaryAxisSizingMode value) =>
      $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasPrimaryAxisSizingMode() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrimaryAxisSizingMode() => $_clearField(4);

  @$pb.TagNumber(5)
  CounterAxisSizingMode get counterAxisSizingMode => $_getN(4);
  @$pb.TagNumber(5)
  set counterAxisSizingMode(CounterAxisSizingMode value) =>
      $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCounterAxisSizingMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearCounterAxisSizingMode() => $_clearField(5);

  @$pb.TagNumber(6)
  LayoutAlign get primaryAxisAlignItems => $_getN(5);
  @$pb.TagNumber(6)
  set primaryAxisAlignItems(LayoutAlign value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPrimaryAxisAlignItems() => $_has(5);
  @$pb.TagNumber(6)
  void clearPrimaryAxisAlignItems() => $_clearField(6);

  @$pb.TagNumber(7)
  LayoutAlign get counterAxisAlignItems => $_getN(6);
  @$pb.TagNumber(7)
  set counterAxisAlignItems(LayoutAlign value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasCounterAxisAlignItems() => $_has(6);
  @$pb.TagNumber(7)
  void clearCounterAxisAlignItems() => $_clearField(7);

  @$pb.TagNumber(8)
  LayoutWrap get layoutWrap => $_getN(7);
  @$pb.TagNumber(8)
  set layoutWrap(LayoutWrap value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasLayoutWrap() => $_has(7);
  @$pb.TagNumber(8)
  void clearLayoutWrap() => $_clearField(8);

  @$pb.TagNumber(9)
  EdgeInsets get padding => $_getN(8);
  @$pb.TagNumber(9)
  set padding(EdgeInsets value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasPadding() => $_has(8);
  @$pb.TagNumber(9)
  void clearPadding() => $_clearField(9);
  @$pb.TagNumber(9)
  EdgeInsets ensurePadding() => $_ensure(8);

  @$pb.TagNumber(10)
  $core.double get itemSpacing => $_getN(9);
  @$pb.TagNumber(10)
  set itemSpacing($core.double value) => $_setDouble(9, value);
  @$pb.TagNumber(10)
  $core.bool hasItemSpacing() => $_has(9);
  @$pb.TagNumber(10)
  void clearItemSpacing() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.double get counterAxisSpacing => $_getN(10);
  @$pb.TagNumber(11)
  set counterAxisSpacing($core.double value) => $_setDouble(10, value);
  @$pb.TagNumber(11)
  $core.bool hasCounterAxisSpacing() => $_has(10);
  @$pb.TagNumber(11)
  void clearCounterAxisSpacing() => $_clearField(11);
}

class GridLayoutProperties extends $pb.GeneratedMessage {
  factory GridLayoutProperties({
    $core.int? columnCount,
    $core.int? rowCount,
    $core.Iterable<GridTrack>? columns,
    $core.Iterable<GridTrack>? rows,
    $core.double? columnGap,
    $core.double? rowGap,
    EdgeInsets? padding,
  }) {
    final result = create();
    if (columnCount != null) result.columnCount = columnCount;
    if (rowCount != null) result.rowCount = rowCount;
    if (columns != null) result.columns.addAll(columns);
    if (rows != null) result.rows.addAll(rows);
    if (columnGap != null) result.columnGap = columnGap;
    if (rowGap != null) result.rowGap = rowGap;
    if (padding != null) result.padding = padding;
    return result;
  }

  GridLayoutProperties._();

  factory GridLayoutProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GridLayoutProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GridLayoutProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aI(1, _omitFieldNames ? '' : 'columnCount', protoName: 'columnCount')
    ..aI(2, _omitFieldNames ? '' : 'rowCount', protoName: 'rowCount')
    ..pPM<GridTrack>(3, _omitFieldNames ? '' : 'columns',
        subBuilder: GridTrack.create)
    ..pPM<GridTrack>(4, _omitFieldNames ? '' : 'rows',
        subBuilder: GridTrack.create)
    ..aD(5, _omitFieldNames ? '' : 'columnGap', protoName: 'columnGap')
    ..aD(6, _omitFieldNames ? '' : 'rowGap', protoName: 'rowGap')
    ..aOM<EdgeInsets>(7, _omitFieldNames ? '' : 'padding',
        subBuilder: EdgeInsets.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GridLayoutProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GridLayoutProperties copyWith(void Function(GridLayoutProperties) updates) =>
      super.copyWith((message) => updates(message as GridLayoutProperties))
          as GridLayoutProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GridLayoutProperties create() => GridLayoutProperties._();
  @$core.override
  GridLayoutProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GridLayoutProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GridLayoutProperties>(create);
  static GridLayoutProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get columnCount => $_getIZ(0);
  @$pb.TagNumber(1)
  set columnCount($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasColumnCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearColumnCount() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.int get rowCount => $_getIZ(1);
  @$pb.TagNumber(2)
  set rowCount($core.int value) => $_setSignedInt32(1, value);
  @$pb.TagNumber(2)
  $core.bool hasRowCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearRowCount() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<GridTrack> get columns => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<GridTrack> get rows => $_getList(3);

  @$pb.TagNumber(5)
  $core.double get columnGap => $_getN(4);
  @$pb.TagNumber(5)
  set columnGap($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasColumnGap() => $_has(4);
  @$pb.TagNumber(5)
  void clearColumnGap() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get rowGap => $_getN(5);
  @$pb.TagNumber(6)
  set rowGap($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasRowGap() => $_has(5);
  @$pb.TagNumber(6)
  void clearRowGap() => $_clearField(6);

  @$pb.TagNumber(7)
  EdgeInsets get padding => $_getN(6);
  @$pb.TagNumber(7)
  set padding(EdgeInsets value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasPadding() => $_has(6);
  @$pb.TagNumber(7)
  void clearPadding() => $_clearField(7);
  @$pb.TagNumber(7)
  EdgeInsets ensurePadding() => $_ensure(6);
}

class ChildLayoutData extends $pb.GeneratedMessage {
  factory ChildLayoutData({
    PositioningMode? mode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    ConstraintType? horizontalConstraint,
    ConstraintType? verticalConstraint,
    ChildSizingMode? primaryAxisSizing,
    ChildSizingMode? counterAxisSizing,
    $core.int? gridColumn,
    $core.int? gridRow,
    $core.int? gridColumnSpan,
    $core.int? gridRowSpan,
  }) {
    final result = create();
    if (mode != null) result.mode = mode;
    if (x != null) result.x = x;
    if (y != null) result.y = y;
    if (width != null) result.width = width;
    if (height != null) result.height = height;
    if (horizontalConstraint != null)
      result.horizontalConstraint = horizontalConstraint;
    if (verticalConstraint != null)
      result.verticalConstraint = verticalConstraint;
    if (primaryAxisSizing != null) result.primaryAxisSizing = primaryAxisSizing;
    if (counterAxisSizing != null) result.counterAxisSizing = counterAxisSizing;
    if (gridColumn != null) result.gridColumn = gridColumn;
    if (gridRow != null) result.gridRow = gridRow;
    if (gridColumnSpan != null) result.gridColumnSpan = gridColumnSpan;
    if (gridRowSpan != null) result.gridRowSpan = gridRowSpan;
    return result;
  }

  ChildLayoutData._();

  factory ChildLayoutData.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ChildLayoutData.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ChildLayoutData',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aE<PositioningMode>(1, _omitFieldNames ? '' : 'mode',
        enumValues: PositioningMode.values)
    ..aD(2, _omitFieldNames ? '' : 'x')
    ..aD(3, _omitFieldNames ? '' : 'y')
    ..aD(4, _omitFieldNames ? '' : 'width')
    ..aD(5, _omitFieldNames ? '' : 'height')
    ..aE<ConstraintType>(6, _omitFieldNames ? '' : 'horizontalConstraint',
        protoName: 'horizontalConstraint', enumValues: ConstraintType.values)
    ..aE<ConstraintType>(7, _omitFieldNames ? '' : 'verticalConstraint',
        protoName: 'verticalConstraint', enumValues: ConstraintType.values)
    ..aE<ChildSizingMode>(8, _omitFieldNames ? '' : 'primaryAxisSizing',
        protoName: 'primaryAxisSizing', enumValues: ChildSizingMode.values)
    ..aE<ChildSizingMode>(9, _omitFieldNames ? '' : 'counterAxisSizing',
        protoName: 'counterAxisSizing', enumValues: ChildSizingMode.values)
    ..aI(10, _omitFieldNames ? '' : 'gridColumn', protoName: 'gridColumn')
    ..aI(11, _omitFieldNames ? '' : 'gridRow', protoName: 'gridRow')
    ..aI(12, _omitFieldNames ? '' : 'gridColumnSpan',
        protoName: 'gridColumnSpan')
    ..aI(13, _omitFieldNames ? '' : 'gridRowSpan', protoName: 'gridRowSpan')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChildLayoutData clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ChildLayoutData copyWith(void Function(ChildLayoutData) updates) =>
      super.copyWith((message) => updates(message as ChildLayoutData))
          as ChildLayoutData;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ChildLayoutData create() => ChildLayoutData._();
  @$core.override
  ChildLayoutData createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ChildLayoutData getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ChildLayoutData>(create);
  static ChildLayoutData? _defaultInstance;

  @$pb.TagNumber(1)
  PositioningMode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(PositioningMode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.double get x => $_getN(1);
  @$pb.TagNumber(2)
  set x($core.double value) => $_setDouble(1, value);
  @$pb.TagNumber(2)
  $core.bool hasX() => $_has(1);
  @$pb.TagNumber(2)
  void clearX() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get y => $_getN(2);
  @$pb.TagNumber(3)
  set y($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasY() => $_has(2);
  @$pb.TagNumber(3)
  void clearY() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get width => $_getN(3);
  @$pb.TagNumber(4)
  set width($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasWidth() => $_has(3);
  @$pb.TagNumber(4)
  void clearWidth() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.double get height => $_getN(4);
  @$pb.TagNumber(5)
  set height($core.double value) => $_setDouble(4, value);
  @$pb.TagNumber(5)
  $core.bool hasHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearHeight() => $_clearField(5);

  @$pb.TagNumber(6)
  ConstraintType get horizontalConstraint => $_getN(5);
  @$pb.TagNumber(6)
  set horizontalConstraint(ConstraintType value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasHorizontalConstraint() => $_has(5);
  @$pb.TagNumber(6)
  void clearHorizontalConstraint() => $_clearField(6);

  @$pb.TagNumber(7)
  ConstraintType get verticalConstraint => $_getN(6);
  @$pb.TagNumber(7)
  set verticalConstraint(ConstraintType value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasVerticalConstraint() => $_has(6);
  @$pb.TagNumber(7)
  void clearVerticalConstraint() => $_clearField(7);

  @$pb.TagNumber(8)
  ChildSizingMode get primaryAxisSizing => $_getN(7);
  @$pb.TagNumber(8)
  set primaryAxisSizing(ChildSizingMode value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasPrimaryAxisSizing() => $_has(7);
  @$pb.TagNumber(8)
  void clearPrimaryAxisSizing() => $_clearField(8);

  @$pb.TagNumber(9)
  ChildSizingMode get counterAxisSizing => $_getN(8);
  @$pb.TagNumber(9)
  set counterAxisSizing(ChildSizingMode value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasCounterAxisSizing() => $_has(8);
  @$pb.TagNumber(9)
  void clearCounterAxisSizing() => $_clearField(9);

  @$pb.TagNumber(10)
  $core.int get gridColumn => $_getIZ(9);
  @$pb.TagNumber(10)
  set gridColumn($core.int value) => $_setSignedInt32(9, value);
  @$pb.TagNumber(10)
  $core.bool hasGridColumn() => $_has(9);
  @$pb.TagNumber(10)
  void clearGridColumn() => $_clearField(10);

  @$pb.TagNumber(11)
  $core.int get gridRow => $_getIZ(10);
  @$pb.TagNumber(11)
  set gridRow($core.int value) => $_setSignedInt32(10, value);
  @$pb.TagNumber(11)
  $core.bool hasGridRow() => $_has(10);
  @$pb.TagNumber(11)
  void clearGridRow() => $_clearField(11);

  @$pb.TagNumber(12)
  $core.int get gridColumnSpan => $_getIZ(11);
  @$pb.TagNumber(12)
  set gridColumnSpan($core.int value) => $_setSignedInt32(11, value);
  @$pb.TagNumber(12)
  $core.bool hasGridColumnSpan() => $_has(11);
  @$pb.TagNumber(12)
  void clearGridColumnSpan() => $_clearField(12);

  @$pb.TagNumber(13)
  $core.int get gridRowSpan => $_getIZ(12);
  @$pb.TagNumber(13)
  set gridRowSpan($core.int value) => $_setSignedInt32(12, value);
  @$pb.TagNumber(13)
  $core.bool hasGridRowSpan() => $_has(12);
  @$pb.TagNumber(13)
  void clearGridRowSpan() => $_clearField(13);
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

enum LabelSegment_Type { styled, staticSegment, variable, notSet }

class LabelSegment extends $pb.GeneratedMessage {
  factory LabelSegment({
    StyledSegment? styled,
    StaticSegment? staticSegment,
    VariableSegment? variable,
  }) {
    final result = create();
    if (styled != null) result.styled = styled;
    if (staticSegment != null) result.staticSegment = staticSegment;
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
    2: LabelSegment_Type.staticSegment,
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
    ..aOM<StaticSegment>(2, _omitFieldNames ? '' : 'staticSegment',
        protoName: 'staticSegment', subBuilder: StaticSegment.create)
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
  StaticSegment get staticSegment => $_getN(1);
  @$pb.TagNumber(2)
  set staticSegment(StaticSegment value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStaticSegment() => $_has(1);
  @$pb.TagNumber(2)
  void clearStaticSegment() => $_clearField(2);
  @$pb.TagNumber(2)
  StaticSegment ensureStaticSegment() => $_ensure(1);

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

class InteractionEvent extends $pb.GeneratedMessage {
  factory InteractionEvent({
    $core.String? sourceId,
    $core.String? sourceName,
    Trigger? trigger,
    Action? action,
  }) {
    final result = create();
    if (sourceId != null) result.sourceId = sourceId;
    if (sourceName != null) result.sourceName = sourceName;
    if (trigger != null) result.trigger = trigger;
    if (action != null) result.action = action;
    return result;
  }

  InteractionEvent._();

  factory InteractionEvent.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory InteractionEvent.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'InteractionEvent',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sourceId', protoName: 'sourceId')
    ..aOS(2, _omitFieldNames ? '' : 'sourceName', protoName: 'sourceName')
    ..aOM<Trigger>(3, _omitFieldNames ? '' : 'trigger',
        subBuilder: Trigger.create)
    ..aOM<Action>(4, _omitFieldNames ? '' : 'action', subBuilder: Action.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InteractionEvent clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  InteractionEvent copyWith(void Function(InteractionEvent) updates) =>
      super.copyWith((message) => updates(message as InteractionEvent))
          as InteractionEvent;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InteractionEvent create() => InteractionEvent._();
  @$core.override
  InteractionEvent createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static InteractionEvent getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InteractionEvent>(create);
  static InteractionEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sourceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get sourceName => $_getSZ(1);
  @$pb.TagNumber(2)
  set sourceName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSourceName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSourceName() => $_clearField(2);

  @$pb.TagNumber(3)
  Trigger get trigger => $_getN(2);
  @$pb.TagNumber(3)
  set trigger(Trigger value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasTrigger() => $_has(2);
  @$pb.TagNumber(3)
  void clearTrigger() => $_clearField(3);
  @$pb.TagNumber(3)
  Trigger ensureTrigger() => $_ensure(2);

  @$pb.TagNumber(4)
  Action get action => $_getN(3);
  @$pb.TagNumber(4)
  set action(Action value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearAction() => $_clearField(4);
  @$pb.TagNumber(4)
  Action ensureAction() => $_ensure(3);
}

enum Trigger_Type {
  onClick,
  onDrag,
  whileHovering,
  whilePressing,
  keyGamepad,
  mouseEnter,
  mouseLeave,
  mouseDown,
  mouseUp,
  delay,
  notSet
}

class Trigger extends $pb.GeneratedMessage {
  factory Trigger({
    OnClickTrigger? onClick,
    OnDragTrigger? onDrag,
    WhileHoveringTrigger? whileHovering,
    WhilePressingTrigger? whilePressing,
    KeyGamepadTrigger? keyGamepad,
    MouseEnterTrigger? mouseEnter,
    MouseLeaveTrigger? mouseLeave,
    MouseDownTrigger? mouseDown,
    MouseUpTrigger? mouseUp,
    DelayTrigger? delay,
  }) {
    final result = create();
    if (onClick != null) result.onClick = onClick;
    if (onDrag != null) result.onDrag = onDrag;
    if (whileHovering != null) result.whileHovering = whileHovering;
    if (whilePressing != null) result.whilePressing = whilePressing;
    if (keyGamepad != null) result.keyGamepad = keyGamepad;
    if (mouseEnter != null) result.mouseEnter = mouseEnter;
    if (mouseLeave != null) result.mouseLeave = mouseLeave;
    if (mouseDown != null) result.mouseDown = mouseDown;
    if (mouseUp != null) result.mouseUp = mouseUp;
    if (delay != null) result.delay = delay;
    return result;
  }

  Trigger._();

  factory Trigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Trigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Trigger_Type> _Trigger_TypeByTag = {
    1: Trigger_Type.onClick,
    2: Trigger_Type.onDrag,
    3: Trigger_Type.whileHovering,
    4: Trigger_Type.whilePressing,
    5: Trigger_Type.keyGamepad,
    6: Trigger_Type.mouseEnter,
    7: Trigger_Type.mouseLeave,
    8: Trigger_Type.mouseDown,
    9: Trigger_Type.mouseUp,
    10: Trigger_Type.delay,
    0: Trigger_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Trigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
    ..aOM<OnClickTrigger>(1, _omitFieldNames ? '' : 'onClick',
        protoName: 'onClick', subBuilder: OnClickTrigger.create)
    ..aOM<OnDragTrigger>(2, _omitFieldNames ? '' : 'onDrag',
        protoName: 'onDrag', subBuilder: OnDragTrigger.create)
    ..aOM<WhileHoveringTrigger>(3, _omitFieldNames ? '' : 'whileHovering',
        protoName: 'whileHovering', subBuilder: WhileHoveringTrigger.create)
    ..aOM<WhilePressingTrigger>(4, _omitFieldNames ? '' : 'whilePressing',
        protoName: 'whilePressing', subBuilder: WhilePressingTrigger.create)
    ..aOM<KeyGamepadTrigger>(5, _omitFieldNames ? '' : 'keyGamepad',
        protoName: 'keyGamepad', subBuilder: KeyGamepadTrigger.create)
    ..aOM<MouseEnterTrigger>(6, _omitFieldNames ? '' : 'mouseEnter',
        protoName: 'mouseEnter', subBuilder: MouseEnterTrigger.create)
    ..aOM<MouseLeaveTrigger>(7, _omitFieldNames ? '' : 'mouseLeave',
        protoName: 'mouseLeave', subBuilder: MouseLeaveTrigger.create)
    ..aOM<MouseDownTrigger>(8, _omitFieldNames ? '' : 'mouseDown',
        protoName: 'mouseDown', subBuilder: MouseDownTrigger.create)
    ..aOM<MouseUpTrigger>(9, _omitFieldNames ? '' : 'mouseUp',
        protoName: 'mouseUp', subBuilder: MouseUpTrigger.create)
    ..aOM<DelayTrigger>(10, _omitFieldNames ? '' : 'delay',
        subBuilder: DelayTrigger.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Trigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Trigger copyWith(void Function(Trigger) updates) =>
      super.copyWith((message) => updates(message as Trigger)) as Trigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Trigger create() => Trigger._();
  @$core.override
  Trigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Trigger getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Trigger>(create);
  static Trigger? _defaultInstance;

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
  Trigger_Type whichType() => _Trigger_TypeByTag[$_whichOneof(0)]!;
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
  OnClickTrigger get onClick => $_getN(0);
  @$pb.TagNumber(1)
  set onClick(OnClickTrigger value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasOnClick() => $_has(0);
  @$pb.TagNumber(1)
  void clearOnClick() => $_clearField(1);
  @$pb.TagNumber(1)
  OnClickTrigger ensureOnClick() => $_ensure(0);

  @$pb.TagNumber(2)
  OnDragTrigger get onDrag => $_getN(1);
  @$pb.TagNumber(2)
  set onDrag(OnDragTrigger value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOnDrag() => $_has(1);
  @$pb.TagNumber(2)
  void clearOnDrag() => $_clearField(2);
  @$pb.TagNumber(2)
  OnDragTrigger ensureOnDrag() => $_ensure(1);

  @$pb.TagNumber(3)
  WhileHoveringTrigger get whileHovering => $_getN(2);
  @$pb.TagNumber(3)
  set whileHovering(WhileHoveringTrigger value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasWhileHovering() => $_has(2);
  @$pb.TagNumber(3)
  void clearWhileHovering() => $_clearField(3);
  @$pb.TagNumber(3)
  WhileHoveringTrigger ensureWhileHovering() => $_ensure(2);

  @$pb.TagNumber(4)
  WhilePressingTrigger get whilePressing => $_getN(3);
  @$pb.TagNumber(4)
  set whilePressing(WhilePressingTrigger value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasWhilePressing() => $_has(3);
  @$pb.TagNumber(4)
  void clearWhilePressing() => $_clearField(4);
  @$pb.TagNumber(4)
  WhilePressingTrigger ensureWhilePressing() => $_ensure(3);

  @$pb.TagNumber(5)
  KeyGamepadTrigger get keyGamepad => $_getN(4);
  @$pb.TagNumber(5)
  set keyGamepad(KeyGamepadTrigger value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasKeyGamepad() => $_has(4);
  @$pb.TagNumber(5)
  void clearKeyGamepad() => $_clearField(5);
  @$pb.TagNumber(5)
  KeyGamepadTrigger ensureKeyGamepad() => $_ensure(4);

  @$pb.TagNumber(6)
  MouseEnterTrigger get mouseEnter => $_getN(5);
  @$pb.TagNumber(6)
  set mouseEnter(MouseEnterTrigger value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasMouseEnter() => $_has(5);
  @$pb.TagNumber(6)
  void clearMouseEnter() => $_clearField(6);
  @$pb.TagNumber(6)
  MouseEnterTrigger ensureMouseEnter() => $_ensure(5);

  @$pb.TagNumber(7)
  MouseLeaveTrigger get mouseLeave => $_getN(6);
  @$pb.TagNumber(7)
  set mouseLeave(MouseLeaveTrigger value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasMouseLeave() => $_has(6);
  @$pb.TagNumber(7)
  void clearMouseLeave() => $_clearField(7);
  @$pb.TagNumber(7)
  MouseLeaveTrigger ensureMouseLeave() => $_ensure(6);

  @$pb.TagNumber(8)
  MouseDownTrigger get mouseDown => $_getN(7);
  @$pb.TagNumber(8)
  set mouseDown(MouseDownTrigger value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasMouseDown() => $_has(7);
  @$pb.TagNumber(8)
  void clearMouseDown() => $_clearField(8);
  @$pb.TagNumber(8)
  MouseDownTrigger ensureMouseDown() => $_ensure(7);

  @$pb.TagNumber(9)
  MouseUpTrigger get mouseUp => $_getN(8);
  @$pb.TagNumber(9)
  set mouseUp(MouseUpTrigger value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasMouseUp() => $_has(8);
  @$pb.TagNumber(9)
  void clearMouseUp() => $_clearField(9);
  @$pb.TagNumber(9)
  MouseUpTrigger ensureMouseUp() => $_ensure(8);

  @$pb.TagNumber(10)
  DelayTrigger get delay => $_getN(9);
  @$pb.TagNumber(10)
  set delay(DelayTrigger value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasDelay() => $_has(9);
  @$pb.TagNumber(10)
  void clearDelay() => $_clearField(10);
  @$pb.TagNumber(10)
  DelayTrigger ensureDelay() => $_ensure(9);
}

class OnClickTrigger extends $pb.GeneratedMessage {
  factory OnClickTrigger() => create();

  OnClickTrigger._();

  factory OnClickTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OnClickTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OnClickTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnClickTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnClickTrigger copyWith(void Function(OnClickTrigger) updates) =>
      super.copyWith((message) => updates(message as OnClickTrigger))
          as OnClickTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnClickTrigger create() => OnClickTrigger._();
  @$core.override
  OnClickTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OnClickTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OnClickTrigger>(create);
  static OnClickTrigger? _defaultInstance;
}

class OnDragTrigger extends $pb.GeneratedMessage {
  factory OnDragTrigger() => create();

  OnDragTrigger._();

  factory OnDragTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OnDragTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OnDragTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnDragTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OnDragTrigger copyWith(void Function(OnDragTrigger) updates) =>
      super.copyWith((message) => updates(message as OnDragTrigger))
          as OnDragTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OnDragTrigger create() => OnDragTrigger._();
  @$core.override
  OnDragTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OnDragTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OnDragTrigger>(create);
  static OnDragTrigger? _defaultInstance;
}

class WhileHoveringTrigger extends $pb.GeneratedMessage {
  factory WhileHoveringTrigger() => create();

  WhileHoveringTrigger._();

  factory WhileHoveringTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WhileHoveringTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WhileHoveringTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WhileHoveringTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WhileHoveringTrigger copyWith(void Function(WhileHoveringTrigger) updates) =>
      super.copyWith((message) => updates(message as WhileHoveringTrigger))
          as WhileHoveringTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WhileHoveringTrigger create() => WhileHoveringTrigger._();
  @$core.override
  WhileHoveringTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WhileHoveringTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WhileHoveringTrigger>(create);
  static WhileHoveringTrigger? _defaultInstance;
}

class WhilePressingTrigger extends $pb.GeneratedMessage {
  factory WhilePressingTrigger() => create();

  WhilePressingTrigger._();

  factory WhilePressingTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory WhilePressingTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'WhilePressingTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WhilePressingTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  WhilePressingTrigger copyWith(void Function(WhilePressingTrigger) updates) =>
      super.copyWith((message) => updates(message as WhilePressingTrigger))
          as WhilePressingTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WhilePressingTrigger create() => WhilePressingTrigger._();
  @$core.override
  WhilePressingTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static WhilePressingTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<WhilePressingTrigger>(create);
  static WhilePressingTrigger? _defaultInstance;
}

class KeyGamepadTrigger extends $pb.GeneratedMessage {
  factory KeyGamepadTrigger({
    $core.Iterable<$core.String>? keys,
  }) {
    final result = create();
    if (keys != null) result.keys.addAll(keys);
    return result;
  }

  KeyGamepadTrigger._();

  factory KeyGamepadTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory KeyGamepadTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'KeyGamepadTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'keys')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyGamepadTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  KeyGamepadTrigger copyWith(void Function(KeyGamepadTrigger) updates) =>
      super.copyWith((message) => updates(message as KeyGamepadTrigger))
          as KeyGamepadTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static KeyGamepadTrigger create() => KeyGamepadTrigger._();
  @$core.override
  KeyGamepadTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static KeyGamepadTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<KeyGamepadTrigger>(create);
  static KeyGamepadTrigger? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get keys => $_getList(0);
}

class MouseEnterTrigger extends $pb.GeneratedMessage {
  factory MouseEnterTrigger({
    $fixnum.Int64? delayMs,
  }) {
    final result = create();
    if (delayMs != null) result.delayMs = delayMs;
    return result;
  }

  MouseEnterTrigger._();

  factory MouseEnterTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MouseEnterTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MouseEnterTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'delayMs', protoName: 'delayMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseEnterTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseEnterTrigger copyWith(void Function(MouseEnterTrigger) updates) =>
      super.copyWith((message) => updates(message as MouseEnterTrigger))
          as MouseEnterTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MouseEnterTrigger create() => MouseEnterTrigger._();
  @$core.override
  MouseEnterTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MouseEnterTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MouseEnterTrigger>(create);
  static MouseEnterTrigger? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get delayMs => $_getI64(0);
  @$pb.TagNumber(1)
  set delayMs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDelayMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelayMs() => $_clearField(1);
}

class MouseLeaveTrigger extends $pb.GeneratedMessage {
  factory MouseLeaveTrigger({
    $fixnum.Int64? delayMs,
  }) {
    final result = create();
    if (delayMs != null) result.delayMs = delayMs;
    return result;
  }

  MouseLeaveTrigger._();

  factory MouseLeaveTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MouseLeaveTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MouseLeaveTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'delayMs', protoName: 'delayMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseLeaveTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseLeaveTrigger copyWith(void Function(MouseLeaveTrigger) updates) =>
      super.copyWith((message) => updates(message as MouseLeaveTrigger))
          as MouseLeaveTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MouseLeaveTrigger create() => MouseLeaveTrigger._();
  @$core.override
  MouseLeaveTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MouseLeaveTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MouseLeaveTrigger>(create);
  static MouseLeaveTrigger? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get delayMs => $_getI64(0);
  @$pb.TagNumber(1)
  set delayMs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDelayMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelayMs() => $_clearField(1);
}

class MouseDownTrigger extends $pb.GeneratedMessage {
  factory MouseDownTrigger({
    $fixnum.Int64? delayMs,
  }) {
    final result = create();
    if (delayMs != null) result.delayMs = delayMs;
    return result;
  }

  MouseDownTrigger._();

  factory MouseDownTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MouseDownTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MouseDownTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'delayMs', protoName: 'delayMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseDownTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseDownTrigger copyWith(void Function(MouseDownTrigger) updates) =>
      super.copyWith((message) => updates(message as MouseDownTrigger))
          as MouseDownTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MouseDownTrigger create() => MouseDownTrigger._();
  @$core.override
  MouseDownTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MouseDownTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MouseDownTrigger>(create);
  static MouseDownTrigger? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get delayMs => $_getI64(0);
  @$pb.TagNumber(1)
  set delayMs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDelayMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelayMs() => $_clearField(1);
}

class MouseUpTrigger extends $pb.GeneratedMessage {
  factory MouseUpTrigger({
    $fixnum.Int64? delayMs,
  }) {
    final result = create();
    if (delayMs != null) result.delayMs = delayMs;
    return result;
  }

  MouseUpTrigger._();

  factory MouseUpTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory MouseUpTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'MouseUpTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'delayMs', protoName: 'delayMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseUpTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  MouseUpTrigger copyWith(void Function(MouseUpTrigger) updates) =>
      super.copyWith((message) => updates(message as MouseUpTrigger))
          as MouseUpTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MouseUpTrigger create() => MouseUpTrigger._();
  @$core.override
  MouseUpTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static MouseUpTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<MouseUpTrigger>(create);
  static MouseUpTrigger? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get delayMs => $_getI64(0);
  @$pb.TagNumber(1)
  set delayMs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDelayMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelayMs() => $_clearField(1);
}

class DelayTrigger extends $pb.GeneratedMessage {
  factory DelayTrigger({
    $fixnum.Int64? delayMs,
  }) {
    final result = create();
    if (delayMs != null) result.delayMs = delayMs;
    return result;
  }

  DelayTrigger._();

  factory DelayTrigger.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DelayTrigger.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DelayTrigger',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'delayMs', protoName: 'delayMs')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DelayTrigger clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DelayTrigger copyWith(void Function(DelayTrigger) updates) =>
      super.copyWith((message) => updates(message as DelayTrigger))
          as DelayTrigger;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DelayTrigger create() => DelayTrigger._();
  @$core.override
  DelayTrigger createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DelayTrigger getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DelayTrigger>(create);
  static DelayTrigger? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get delayMs => $_getI64(0);
  @$pb.TagNumber(1)
  set delayMs($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDelayMs() => $_has(0);
  @$pb.TagNumber(1)
  void clearDelayMs() => $_clearField(1);
}

enum Action_Type { navigate, openLink, swapOverlay, closeOverlay, back, notSet }

class Action extends $pb.GeneratedMessage {
  factory Action({
    NavigateAction? navigate,
    OpenLinkAction? openLink,
    SwapOverlayAction? swapOverlay,
    CloseOverlayAction? closeOverlay,
    BackAction? back,
  }) {
    final result = create();
    if (navigate != null) result.navigate = navigate;
    if (openLink != null) result.openLink = openLink;
    if (swapOverlay != null) result.swapOverlay = swapOverlay;
    if (closeOverlay != null) result.closeOverlay = closeOverlay;
    if (back != null) result.back = back;
    return result;
  }

  Action._();

  factory Action.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory Action.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, Action_Type> _Action_TypeByTag = {
    1: Action_Type.navigate,
    2: Action_Type.openLink,
    3: Action_Type.swapOverlay,
    4: Action_Type.closeOverlay,
    5: Action_Type.back,
    0: Action_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Action',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOM<NavigateAction>(1, _omitFieldNames ? '' : 'navigate',
        subBuilder: NavigateAction.create)
    ..aOM<OpenLinkAction>(2, _omitFieldNames ? '' : 'openLink',
        protoName: 'openLink', subBuilder: OpenLinkAction.create)
    ..aOM<SwapOverlayAction>(3, _omitFieldNames ? '' : 'swapOverlay',
        protoName: 'swapOverlay', subBuilder: SwapOverlayAction.create)
    ..aOM<CloseOverlayAction>(4, _omitFieldNames ? '' : 'closeOverlay',
        protoName: 'closeOverlay', subBuilder: CloseOverlayAction.create)
    ..aOM<BackAction>(5, _omitFieldNames ? '' : 'back',
        subBuilder: BackAction.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Action clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Action copyWith(void Function(Action) updates) =>
      super.copyWith((message) => updates(message as Action)) as Action;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Action create() => Action._();
  @$core.override
  Action createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static Action getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Action>(create);
  static Action? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  Action_Type whichType() => _Action_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  NavigateAction get navigate => $_getN(0);
  @$pb.TagNumber(1)
  set navigate(NavigateAction value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasNavigate() => $_has(0);
  @$pb.TagNumber(1)
  void clearNavigate() => $_clearField(1);
  @$pb.TagNumber(1)
  NavigateAction ensureNavigate() => $_ensure(0);

  @$pb.TagNumber(2)
  OpenLinkAction get openLink => $_getN(1);
  @$pb.TagNumber(2)
  set openLink(OpenLinkAction value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasOpenLink() => $_has(1);
  @$pb.TagNumber(2)
  void clearOpenLink() => $_clearField(2);
  @$pb.TagNumber(2)
  OpenLinkAction ensureOpenLink() => $_ensure(1);

  @$pb.TagNumber(3)
  SwapOverlayAction get swapOverlay => $_getN(2);
  @$pb.TagNumber(3)
  set swapOverlay(SwapOverlayAction value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasSwapOverlay() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwapOverlay() => $_clearField(3);
  @$pb.TagNumber(3)
  SwapOverlayAction ensureSwapOverlay() => $_ensure(2);

  @$pb.TagNumber(4)
  CloseOverlayAction get closeOverlay => $_getN(3);
  @$pb.TagNumber(4)
  set closeOverlay(CloseOverlayAction value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCloseOverlay() => $_has(3);
  @$pb.TagNumber(4)
  void clearCloseOverlay() => $_clearField(4);
  @$pb.TagNumber(4)
  CloseOverlayAction ensureCloseOverlay() => $_ensure(3);

  @$pb.TagNumber(5)
  BackAction get back => $_getN(4);
  @$pb.TagNumber(5)
  set back(BackAction value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBack() => $_has(4);
  @$pb.TagNumber(5)
  void clearBack() => $_clearField(5);
  @$pb.TagNumber(5)
  BackAction ensureBack() => $_ensure(4);
}

class NavigateAction extends $pb.GeneratedMessage {
  factory NavigateAction({
    $core.String? destinationId,
  }) {
    final result = create();
    if (destinationId != null) result.destinationId = destinationId;
    return result;
  }

  NavigateAction._();

  factory NavigateAction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory NavigateAction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NavigateAction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'destinationId', protoName: 'destinationId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NavigateAction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NavigateAction copyWith(void Function(NavigateAction) updates) =>
      super.copyWith((message) => updates(message as NavigateAction))
          as NavigateAction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NavigateAction create() => NavigateAction._();
  @$core.override
  NavigateAction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static NavigateAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NavigateAction>(create);
  static NavigateAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get destinationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set destinationId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasDestinationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDestinationId() => $_clearField(1);
}

class OpenLinkAction extends $pb.GeneratedMessage {
  factory OpenLinkAction({
    $core.String? url,
  }) {
    final result = create();
    if (url != null) result.url = url;
    return result;
  }

  OpenLinkAction._();

  factory OpenLinkAction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory OpenLinkAction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'OpenLinkAction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpenLinkAction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  OpenLinkAction copyWith(void Function(OpenLinkAction) updates) =>
      super.copyWith((message) => updates(message as OpenLinkAction))
          as OpenLinkAction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OpenLinkAction create() => OpenLinkAction._();
  @$core.override
  OpenLinkAction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static OpenLinkAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<OpenLinkAction>(create);
  static OpenLinkAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => $_clearField(1);
}

class SwapOverlayAction extends $pb.GeneratedMessage {
  factory SwapOverlayAction({
    $core.String? overlayId,
  }) {
    final result = create();
    if (overlayId != null) result.overlayId = overlayId;
    return result;
  }

  SwapOverlayAction._();

  factory SwapOverlayAction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory SwapOverlayAction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'SwapOverlayAction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'overlayId', protoName: 'overlayId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwapOverlayAction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  SwapOverlayAction copyWith(void Function(SwapOverlayAction) updates) =>
      super.copyWith((message) => updates(message as SwapOverlayAction))
          as SwapOverlayAction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SwapOverlayAction create() => SwapOverlayAction._();
  @$core.override
  SwapOverlayAction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static SwapOverlayAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<SwapOverlayAction>(create);
  static SwapOverlayAction? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get overlayId => $_getSZ(0);
  @$pb.TagNumber(1)
  set overlayId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasOverlayId() => $_has(0);
  @$pb.TagNumber(1)
  void clearOverlayId() => $_clearField(1);
}

class CloseOverlayAction extends $pb.GeneratedMessage {
  factory CloseOverlayAction() => create();

  CloseOverlayAction._();

  factory CloseOverlayAction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory CloseOverlayAction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CloseOverlayAction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloseOverlayAction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CloseOverlayAction copyWith(void Function(CloseOverlayAction) updates) =>
      super.copyWith((message) => updates(message as CloseOverlayAction))
          as CloseOverlayAction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CloseOverlayAction create() => CloseOverlayAction._();
  @$core.override
  CloseOverlayAction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static CloseOverlayAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CloseOverlayAction>(create);
  static CloseOverlayAction? _defaultInstance;
}

class BackAction extends $pb.GeneratedMessage {
  factory BackAction() => create();

  BackAction._();

  factory BackAction.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BackAction.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BackAction',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackAction clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BackAction copyWith(void Function(BackAction) updates) =>
      super.copyWith((message) => updates(message as BackAction)) as BackAction;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BackAction create() => BackAction._();
  @$core.override
  BackAction createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BackAction getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BackAction>(create);
  static BackAction? _defaultInstance;
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

enum VisualNode_Type {
  frame,
  group,
  rectangle,
  ellipse,
  line,
  vector,
  text,
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
    8: VisualNode_Type.instance,
    9: VisualNode_Type.booleanOperation,
    0: VisualNode_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VisualNode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
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
    ..aOM<InstanceNode>(8, _omitFieldNames ? '' : 'instance',
        subBuilder: InstanceNode.create)
    ..aOM<BooleanOperationNode>(9, _omitFieldNames ? '' : 'booleanOperation',
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
  InstanceNode get instance => $_getN(7);
  @$pb.TagNumber(8)
  set instance(InstanceNode value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasInstance() => $_has(7);
  @$pb.TagNumber(8)
  void clearInstance() => $_clearField(8);
  @$pb.TagNumber(8)
  InstanceNode ensureInstance() => $_ensure(7);

  @$pb.TagNumber(9)
  BooleanOperationNode get booleanOperation => $_getN(8);
  @$pb.TagNumber(9)
  set booleanOperation(BooleanOperationNode value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasBooleanOperation() => $_has(8);
  @$pb.TagNumber(9)
  void clearBooleanOperation() => $_clearField(9);
  @$pb.TagNumber(9)
  BooleanOperationNode ensureBooleanOperation() => $_ensure(8);
}

class BaseNodeProperties extends $pb.GeneratedMessage {
  factory BaseNodeProperties({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
    return result;
  }

  BaseNodeProperties._();

  factory BaseNodeProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory BaseNodeProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'BaseNodeProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOB(3, _omitFieldNames ? '' : 'visible')
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaseNodeProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  BaseNodeProperties copyWith(void Function(BaseNodeProperties) updates) =>
      super.copyWith((message) => updates(message as BaseNodeProperties))
          as BaseNodeProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BaseNodeProperties create() => BaseNodeProperties._();
  @$core.override
  BaseNodeProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static BaseNodeProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BaseNodeProperties>(create);
  static BaseNodeProperties? _defaultInstance;

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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);
}

class GeometryProperties extends $pb.GeneratedMessage {
  factory GeometryProperties({
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
  }) {
    final result = create();
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
    return result;
  }

  GeometryProperties._();

  factory GeometryProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory GeometryProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GeometryProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aD(1, _omitFieldNames ? '' : 'x')
    ..aD(2, _omitFieldNames ? '' : 'y')
    ..aD(3, _omitFieldNames ? '' : 'width')
    ..aD(4, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(5, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(6, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(7, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(8, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(9, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GeometryProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GeometryProperties copyWith(void Function(GeometryProperties) updates) =>
      super.copyWith((message) => updates(message as GeometryProperties))
          as GeometryProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GeometryProperties create() => GeometryProperties._();
  @$core.override
  GeometryProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static GeometryProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GeometryProperties>(create);
  static GeometryProperties? _defaultInstance;

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
  $core.double get width => $_getN(2);
  @$pb.TagNumber(3)
  set width($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasWidth() => $_has(2);
  @$pb.TagNumber(3)
  void clearWidth() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.double get height => $_getN(3);
  @$pb.TagNumber(4)
  set height($core.double value) => $_setDouble(3, value);
  @$pb.TagNumber(4)
  $core.bool hasHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeight() => $_clearField(4);

  @$pb.TagNumber(5)
  Transform get relativeTransform => $_getN(4);
  @$pb.TagNumber(5)
  set relativeTransform(Transform value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasRelativeTransform() => $_has(4);
  @$pb.TagNumber(5)
  void clearRelativeTransform() => $_clearField(5);
  @$pb.TagNumber(5)
  Transform ensureRelativeTransform() => $_ensure(4);

  @$pb.TagNumber(6)
  Transform get absoluteTransform => $_getN(5);
  @$pb.TagNumber(6)
  set absoluteTransform(Transform value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasAbsoluteTransform() => $_has(5);
  @$pb.TagNumber(6)
  void clearAbsoluteTransform() => $_clearField(6);
  @$pb.TagNumber(6)
  Transform ensureAbsoluteTransform() => $_ensure(5);

  @$pb.TagNumber(7)
  Rect get absoluteBoundingBox => $_getN(6);
  @$pb.TagNumber(7)
  set absoluteBoundingBox(Rect value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAbsoluteBoundingBox() => $_has(6);
  @$pb.TagNumber(7)
  void clearAbsoluteBoundingBox() => $_clearField(7);
  @$pb.TagNumber(7)
  Rect ensureAbsoluteBoundingBox() => $_ensure(6);

  @$pb.TagNumber(8)
  $core.double get rotation => $_getN(7);
  @$pb.TagNumber(8)
  set rotation($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasRotation() => $_has(7);
  @$pb.TagNumber(8)
  void clearRotation() => $_clearField(8);

  @$pb.TagNumber(9)
  LayoutConstraints get constraints => $_getN(8);
  @$pb.TagNumber(9)
  set constraints(LayoutConstraints value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasConstraints() => $_has(8);
  @$pb.TagNumber(9)
  void clearConstraints() => $_clearField(9);
  @$pb.TagNumber(9)
  LayoutConstraints ensureConstraints() => $_ensure(8);
}

class DecorationProperties extends $pb.GeneratedMessage {
  factory DecorationProperties({
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    CornerRadius? cornerRadius,
  }) {
    final result = create();
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    return result;
  }

  DecorationProperties._();

  factory DecorationProperties.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory DecorationProperties.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DecorationProperties',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..pPM<Paint>(1, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(2, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(3, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(4, _omitFieldNames ? '' : 'stroke', subBuilder: Stroke.create)
    ..aOM<CornerRadius>(5, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecorationProperties clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DecorationProperties copyWith(void Function(DecorationProperties) updates) =>
      super.copyWith((message) => updates(message as DecorationProperties))
          as DecorationProperties;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DecorationProperties create() => DecorationProperties._();
  @$core.override
  DecorationProperties createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static DecorationProperties getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DecorationProperties>(create);
  static DecorationProperties? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<Paint> get fills => $_getList(0);

  @$pb.TagNumber(2)
  $pb.PbList<Paint> get strokes => $_getList(1);

  @$pb.TagNumber(3)
  $pb.PbList<Effect> get effects => $_getList(2);

  @$pb.TagNumber(4)
  Stroke get stroke => $_getN(3);
  @$pb.TagNumber(4)
  set stroke(Stroke value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasStroke() => $_has(3);
  @$pb.TagNumber(4)
  void clearStroke() => $_clearField(4);
  @$pb.TagNumber(4)
  Stroke ensureStroke() => $_ensure(3);

  @$pb.TagNumber(5)
  CornerRadius get cornerRadius => $_getN(4);
  @$pb.TagNumber(5)
  set cornerRadius(CornerRadius value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasCornerRadius() => $_has(4);
  @$pb.TagNumber(5)
  void clearCornerRadius() => $_clearField(5);
  @$pb.TagNumber(5)
  CornerRadius ensureCornerRadius() => $_ensure(4);
}

class FrameNode extends $pb.GeneratedMessage {
  factory FrameNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    LayoutProperties? layout,
    ChildSize? size,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    CornerRadius? cornerRadius,
    $core.bool? clipContent,
    $core.Iterable<VisualNode>? children,
    MaskType? maskType,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (layout != null) result.layout = layout;
    if (size != null) result.size = size;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (clipContent != null) result.clipContent = clipContent;
    if (children != null) result.children.addAll(children);
    if (maskType != null) result.maskType = maskType;
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..aOM<LayoutProperties>(16, _omitFieldNames ? '' : 'layout',
        subBuilder: LayoutProperties.create)
    ..aOM<ChildSize>(17, _omitFieldNames ? '' : 'size',
        subBuilder: ChildSize.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(19, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(20, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(21, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aOM<CornerRadius>(22, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..aOB(23, _omitFieldNames ? '' : 'clipContent', protoName: 'clipContent')
    ..pPM<VisualNode>(24, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..aE<MaskType>(25, _omitFieldNames ? '' : 'maskType',
        protoName: 'maskType', enumValues: MaskType.values)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  LayoutProperties get layout => $_getN(15);
  @$pb.TagNumber(16)
  set layout(LayoutProperties value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasLayout() => $_has(15);
  @$pb.TagNumber(16)
  void clearLayout() => $_clearField(16);
  @$pb.TagNumber(16)
  LayoutProperties ensureLayout() => $_ensure(15);

  @$pb.TagNumber(17)
  ChildSize get size => $_getN(16);
  @$pb.TagNumber(17)
  set size(ChildSize value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSize() => $_has(16);
  @$pb.TagNumber(17)
  void clearSize() => $_clearField(17);
  @$pb.TagNumber(17)
  ChildSize ensureSize() => $_ensure(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get fills => $_getList(17);

  @$pb.TagNumber(19)
  $pb.PbList<Paint> get strokes => $_getList(18);

  @$pb.TagNumber(20)
  $pb.PbList<Effect> get effects => $_getList(19);

  @$pb.TagNumber(21)
  Stroke get stroke => $_getN(20);
  @$pb.TagNumber(21)
  set stroke(Stroke value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStroke() => $_has(20);
  @$pb.TagNumber(21)
  void clearStroke() => $_clearField(21);
  @$pb.TagNumber(21)
  Stroke ensureStroke() => $_ensure(20);

  @$pb.TagNumber(22)
  CornerRadius get cornerRadius => $_getN(21);
  @$pb.TagNumber(22)
  set cornerRadius(CornerRadius value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasCornerRadius() => $_has(21);
  @$pb.TagNumber(22)
  void clearCornerRadius() => $_clearField(22);
  @$pb.TagNumber(22)
  CornerRadius ensureCornerRadius() => $_ensure(21);

  @$pb.TagNumber(23)
  $core.bool get clipContent => $_getBF(22);
  @$pb.TagNumber(23)
  set clipContent($core.bool value) => $_setBool(22, value);
  @$pb.TagNumber(23)
  $core.bool hasClipContent() => $_has(22);
  @$pb.TagNumber(23)
  void clearClipContent() => $_clearField(23);

  @$pb.TagNumber(24)
  $pb.PbList<VisualNode> get children => $_getList(23);

  @$pb.TagNumber(25)
  MaskType get maskType => $_getN(24);
  @$pb.TagNumber(25)
  set maskType(MaskType value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasMaskType() => $_has(24);
  @$pb.TagNumber(25)
  void clearMaskType() => $_clearField(25);
}

class GroupNode extends $pb.GeneratedMessage {
  factory GroupNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<VisualNode>? children,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (children != null) result.children.addAll(children);
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<VisualNode>(16, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<VisualNode> get children => $_getList(15);
}

class RectangleNode extends $pb.GeneratedMessage {
  factory RectangleNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    CornerRadius? cornerRadius,
    MaskType? maskType,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (maskType != null) result.maskType = maskType;
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(18, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(19, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aOM<CornerRadius>(20, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..aE<MaskType>(21, _omitFieldNames ? '' : 'maskType',
        protoName: 'maskType', enumValues: MaskType.values)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get fills => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get strokes => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Effect> get effects => $_getList(17);

  @$pb.TagNumber(19)
  Stroke get stroke => $_getN(18);
  @$pb.TagNumber(19)
  set stroke(Stroke value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStroke() => $_has(18);
  @$pb.TagNumber(19)
  void clearStroke() => $_clearField(19);
  @$pb.TagNumber(19)
  Stroke ensureStroke() => $_ensure(18);

  @$pb.TagNumber(20)
  CornerRadius get cornerRadius => $_getN(19);
  @$pb.TagNumber(20)
  set cornerRadius(CornerRadius value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasCornerRadius() => $_has(19);
  @$pb.TagNumber(20)
  void clearCornerRadius() => $_clearField(20);
  @$pb.TagNumber(20)
  CornerRadius ensureCornerRadius() => $_ensure(19);

  @$pb.TagNumber(21)
  MaskType get maskType => $_getN(20);
  @$pb.TagNumber(21)
  set maskType(MaskType value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasMaskType() => $_has(20);
  @$pb.TagNumber(21)
  void clearMaskType() => $_clearField(21);
}

class EllipseNode extends $pb.GeneratedMessage {
  factory EllipseNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    ArcData? arcData,
    MaskType? maskType,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (arcData != null) result.arcData = arcData;
    if (maskType != null) result.maskType = maskType;
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(18, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(19, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aOM<ArcData>(20, _omitFieldNames ? '' : 'arcData',
        protoName: 'arcData', subBuilder: ArcData.create)
    ..aE<MaskType>(21, _omitFieldNames ? '' : 'maskType',
        protoName: 'maskType', enumValues: MaskType.values)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get fills => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get strokes => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Effect> get effects => $_getList(17);

  @$pb.TagNumber(19)
  Stroke get stroke => $_getN(18);
  @$pb.TagNumber(19)
  set stroke(Stroke value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStroke() => $_has(18);
  @$pb.TagNumber(19)
  void clearStroke() => $_clearField(19);
  @$pb.TagNumber(19)
  Stroke ensureStroke() => $_ensure(18);

  @$pb.TagNumber(20)
  ArcData get arcData => $_getN(19);
  @$pb.TagNumber(20)
  set arcData(ArcData value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasArcData() => $_has(19);
  @$pb.TagNumber(20)
  void clearArcData() => $_clearField(20);
  @$pb.TagNumber(20)
  ArcData ensureArcData() => $_ensure(19);

  @$pb.TagNumber(21)
  MaskType get maskType => $_getN(20);
  @$pb.TagNumber(21)
  set maskType(MaskType value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasMaskType() => $_has(20);
  @$pb.TagNumber(21)
  void clearMaskType() => $_clearField(21);
}

class LineNode extends $pb.GeneratedMessage {
  factory LineNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    StrokeCap? strokeCap,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (strokeCap != null) result.strokeCap = strokeCap;
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(18, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(19, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aE<StrokeCap>(20, _omitFieldNames ? '' : 'strokeCap',
        protoName: 'strokeCap', enumValues: StrokeCap.values)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get fills => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get strokes => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Effect> get effects => $_getList(17);

  @$pb.TagNumber(19)
  Stroke get stroke => $_getN(18);
  @$pb.TagNumber(19)
  set stroke(Stroke value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStroke() => $_has(18);
  @$pb.TagNumber(19)
  void clearStroke() => $_clearField(19);
  @$pb.TagNumber(19)
  Stroke ensureStroke() => $_ensure(18);

  @$pb.TagNumber(20)
  StrokeCap get strokeCap => $_getN(19);
  @$pb.TagNumber(20)
  set strokeCap(StrokeCap value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasStrokeCap() => $_has(19);
  @$pb.TagNumber(20)
  void clearStrokeCap() => $_clearField(20);
}

class VectorNode extends $pb.GeneratedMessage {
  factory VectorNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    CornerRadius? cornerRadius,
    VectorNetwork? vectorNetwork,
    $core.Iterable<VectorPath>? fillPaths,
    $core.Iterable<VectorPath>? strokePaths,
    MaskType? maskType,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (vectorNetwork != null) result.vectorNetwork = vectorNetwork;
    if (fillPaths != null) result.fillPaths.addAll(fillPaths);
    if (strokePaths != null) result.strokePaths.addAll(strokePaths);
    if (maskType != null) result.maskType = maskType;
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(18, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(19, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aOM<CornerRadius>(20, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..aOM<VectorNetwork>(21, _omitFieldNames ? '' : 'vectorNetwork',
        protoName: 'vectorNetwork', subBuilder: VectorNetwork.create)
    ..pPM<VectorPath>(22, _omitFieldNames ? '' : 'fillPaths',
        protoName: 'fillPaths', subBuilder: VectorPath.create)
    ..pPM<VectorPath>(23, _omitFieldNames ? '' : 'strokePaths',
        protoName: 'strokePaths', subBuilder: VectorPath.create)
    ..aE<MaskType>(24, _omitFieldNames ? '' : 'maskType',
        protoName: 'maskType', enumValues: MaskType.values)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get fills => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get strokes => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Effect> get effects => $_getList(17);

  @$pb.TagNumber(19)
  Stroke get stroke => $_getN(18);
  @$pb.TagNumber(19)
  set stroke(Stroke value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStroke() => $_has(18);
  @$pb.TagNumber(19)
  void clearStroke() => $_clearField(19);
  @$pb.TagNumber(19)
  Stroke ensureStroke() => $_ensure(18);

  @$pb.TagNumber(20)
  CornerRadius get cornerRadius => $_getN(19);
  @$pb.TagNumber(20)
  set cornerRadius(CornerRadius value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasCornerRadius() => $_has(19);
  @$pb.TagNumber(20)
  void clearCornerRadius() => $_clearField(20);
  @$pb.TagNumber(20)
  CornerRadius ensureCornerRadius() => $_ensure(19);

  @$pb.TagNumber(21)
  VectorNetwork get vectorNetwork => $_getN(20);
  @$pb.TagNumber(21)
  set vectorNetwork(VectorNetwork value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasVectorNetwork() => $_has(20);
  @$pb.TagNumber(21)
  void clearVectorNetwork() => $_clearField(21);
  @$pb.TagNumber(21)
  VectorNetwork ensureVectorNetwork() => $_ensure(20);

  @$pb.TagNumber(22)
  $pb.PbList<VectorPath> get fillPaths => $_getList(21);

  @$pb.TagNumber(23)
  $pb.PbList<VectorPath> get strokePaths => $_getList(22);

  @$pb.TagNumber(24)
  MaskType get maskType => $_getN(23);
  @$pb.TagNumber(24)
  set maskType(MaskType value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasMaskType() => $_has(23);
  @$pb.TagNumber(24)
  void clearMaskType() => $_clearField(24);
}

class TextNode extends $pb.GeneratedMessage {
  factory TextNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    Alias? characters,
    $core.Iterable<TextSpan>? spans,
    TextStyle? style,
    TextAlignHorizontal? textAlignHorizontal,
    TextAlignVertical? textAlignVertical,
    TextDecoration? textDecoration,
    TextDecorationStyle? textDecorationStyle,
    TextCase? textCase,
    TextListOptions? listOptions,
    HyperlinkTarget? hyperlink,
    LeadingTrim? leadingTrim,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (characters != null) result.characters = characters;
    if (spans != null) result.spans.addAll(spans);
    if (style != null) result.style = style;
    if (textAlignHorizontal != null)
      result.textAlignHorizontal = textAlignHorizontal;
    if (textAlignVertical != null) result.textAlignVertical = textAlignVertical;
    if (textDecoration != null) result.textDecoration = textDecoration;
    if (textDecorationStyle != null)
      result.textDecorationStyle = textDecorationStyle;
    if (textCase != null) result.textCase = textCase;
    if (listOptions != null) result.listOptions = listOptions;
    if (hyperlink != null) result.hyperlink = hyperlink;
    if (leadingTrim != null) result.leadingTrim = leadingTrim;
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(18, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(19, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aOM<Alias>(20, _omitFieldNames ? '' : 'characters',
        subBuilder: Alias.create)
    ..pPM<TextSpan>(21, _omitFieldNames ? '' : 'spans',
        subBuilder: TextSpan.create)
    ..aOM<TextStyle>(22, _omitFieldNames ? '' : 'style',
        subBuilder: TextStyle.create)
    ..aE<TextAlignHorizontal>(23, _omitFieldNames ? '' : 'textAlignHorizontal',
        protoName: 'textAlignHorizontal',
        enumValues: TextAlignHorizontal.values)
    ..aE<TextAlignVertical>(24, _omitFieldNames ? '' : 'textAlignVertical',
        protoName: 'textAlignVertical', enumValues: TextAlignVertical.values)
    ..aE<TextDecoration>(25, _omitFieldNames ? '' : 'textDecoration',
        protoName: 'textDecoration', enumValues: TextDecoration.values)
    ..aE<TextDecorationStyle>(26, _omitFieldNames ? '' : 'textDecorationStyle',
        protoName: 'textDecorationStyle',
        enumValues: TextDecorationStyle.values)
    ..aE<TextCase>(27, _omitFieldNames ? '' : 'textCase',
        protoName: 'textCase', enumValues: TextCase.values)
    ..aOM<TextListOptions>(28, _omitFieldNames ? '' : 'listOptions',
        protoName: 'listOptions', subBuilder: TextListOptions.create)
    ..aOM<HyperlinkTarget>(29, _omitFieldNames ? '' : 'hyperlink',
        subBuilder: HyperlinkTarget.create)
    ..aE<LeadingTrim>(30, _omitFieldNames ? '' : 'leadingTrim',
        protoName: 'leadingTrim', enumValues: LeadingTrim.values)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get fills => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get strokes => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Effect> get effects => $_getList(17);

  @$pb.TagNumber(19)
  Stroke get stroke => $_getN(18);
  @$pb.TagNumber(19)
  set stroke(Stroke value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStroke() => $_has(18);
  @$pb.TagNumber(19)
  void clearStroke() => $_clearField(19);
  @$pb.TagNumber(19)
  Stroke ensureStroke() => $_ensure(18);

  @$pb.TagNumber(20)
  Alias get characters => $_getN(19);
  @$pb.TagNumber(20)
  set characters(Alias value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasCharacters() => $_has(19);
  @$pb.TagNumber(20)
  void clearCharacters() => $_clearField(20);
  @$pb.TagNumber(20)
  Alias ensureCharacters() => $_ensure(19);

  @$pb.TagNumber(21)
  $pb.PbList<TextSpan> get spans => $_getList(20);

  @$pb.TagNumber(22)
  TextStyle get style => $_getN(21);
  @$pb.TagNumber(22)
  set style(TextStyle value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasStyle() => $_has(21);
  @$pb.TagNumber(22)
  void clearStyle() => $_clearField(22);
  @$pb.TagNumber(22)
  TextStyle ensureStyle() => $_ensure(21);

  @$pb.TagNumber(23)
  TextAlignHorizontal get textAlignHorizontal => $_getN(22);
  @$pb.TagNumber(23)
  set textAlignHorizontal(TextAlignHorizontal value) => $_setField(23, value);
  @$pb.TagNumber(23)
  $core.bool hasTextAlignHorizontal() => $_has(22);
  @$pb.TagNumber(23)
  void clearTextAlignHorizontal() => $_clearField(23);

  @$pb.TagNumber(24)
  TextAlignVertical get textAlignVertical => $_getN(23);
  @$pb.TagNumber(24)
  set textAlignVertical(TextAlignVertical value) => $_setField(24, value);
  @$pb.TagNumber(24)
  $core.bool hasTextAlignVertical() => $_has(23);
  @$pb.TagNumber(24)
  void clearTextAlignVertical() => $_clearField(24);

  @$pb.TagNumber(25)
  TextDecoration get textDecoration => $_getN(24);
  @$pb.TagNumber(25)
  set textDecoration(TextDecoration value) => $_setField(25, value);
  @$pb.TagNumber(25)
  $core.bool hasTextDecoration() => $_has(24);
  @$pb.TagNumber(25)
  void clearTextDecoration() => $_clearField(25);

  @$pb.TagNumber(26)
  TextDecorationStyle get textDecorationStyle => $_getN(25);
  @$pb.TagNumber(26)
  set textDecorationStyle(TextDecorationStyle value) => $_setField(26, value);
  @$pb.TagNumber(26)
  $core.bool hasTextDecorationStyle() => $_has(25);
  @$pb.TagNumber(26)
  void clearTextDecorationStyle() => $_clearField(26);

  @$pb.TagNumber(27)
  TextCase get textCase => $_getN(26);
  @$pb.TagNumber(27)
  set textCase(TextCase value) => $_setField(27, value);
  @$pb.TagNumber(27)
  $core.bool hasTextCase() => $_has(26);
  @$pb.TagNumber(27)
  void clearTextCase() => $_clearField(27);

  @$pb.TagNumber(28)
  TextListOptions get listOptions => $_getN(27);
  @$pb.TagNumber(28)
  set listOptions(TextListOptions value) => $_setField(28, value);
  @$pb.TagNumber(28)
  $core.bool hasListOptions() => $_has(27);
  @$pb.TagNumber(28)
  void clearListOptions() => $_clearField(28);
  @$pb.TagNumber(28)
  TextListOptions ensureListOptions() => $_ensure(27);

  @$pb.TagNumber(29)
  HyperlinkTarget get hyperlink => $_getN(28);
  @$pb.TagNumber(29)
  set hyperlink(HyperlinkTarget value) => $_setField(29, value);
  @$pb.TagNumber(29)
  $core.bool hasHyperlink() => $_has(28);
  @$pb.TagNumber(29)
  void clearHyperlink() => $_clearField(29);
  @$pb.TagNumber(29)
  HyperlinkTarget ensureHyperlink() => $_ensure(28);

  @$pb.TagNumber(30)
  LeadingTrim get leadingTrim => $_getN(29);
  @$pb.TagNumber(30)
  set leadingTrim(LeadingTrim value) => $_setField(30, value);
  @$pb.TagNumber(30)
  $core.bool hasLeadingTrim() => $_has(29);
  @$pb.TagNumber(30)
  void clearLeadingTrim() => $_clearField(30);
}

class InstanceNode extends $pb.GeneratedMessage {
  factory InstanceNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    LayoutProperties? layout,
    ChildSize? size,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    CornerRadius? cornerRadius,
    $core.bool? clipContent,
    $core.Iterable<VisualNode>? children,
    $core.String? mainComponentId,
    $core.Iterable<ComponentPropertyValue>? componentProperties,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (layout != null) result.layout = layout;
    if (size != null) result.size = size;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (clipContent != null) result.clipContent = clipContent;
    if (children != null) result.children.addAll(children);
    if (mainComponentId != null) result.mainComponentId = mainComponentId;
    if (componentProperties != null)
      result.componentProperties.addAll(componentProperties);
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..aOM<LayoutProperties>(16, _omitFieldNames ? '' : 'layout',
        subBuilder: LayoutProperties.create)
    ..aOM<ChildSize>(17, _omitFieldNames ? '' : 'size',
        subBuilder: ChildSize.create)
    ..pPM<Paint>(18, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(19, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(20, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(21, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aOM<CornerRadius>(22, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..aOB(23, _omitFieldNames ? '' : 'clipContent', protoName: 'clipContent')
    ..pPM<VisualNode>(24, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
    ..aOS(25, _omitFieldNames ? '' : 'mainComponentId',
        protoName: 'mainComponentId')
    ..pPM<ComponentPropertyValue>(
        26, _omitFieldNames ? '' : 'componentProperties',
        protoName: 'componentProperties',
        subBuilder: ComponentPropertyValue.create)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  LayoutProperties get layout => $_getN(15);
  @$pb.TagNumber(16)
  set layout(LayoutProperties value) => $_setField(16, value);
  @$pb.TagNumber(16)
  $core.bool hasLayout() => $_has(15);
  @$pb.TagNumber(16)
  void clearLayout() => $_clearField(16);
  @$pb.TagNumber(16)
  LayoutProperties ensureLayout() => $_ensure(15);

  @$pb.TagNumber(17)
  ChildSize get size => $_getN(16);
  @$pb.TagNumber(17)
  set size(ChildSize value) => $_setField(17, value);
  @$pb.TagNumber(17)
  $core.bool hasSize() => $_has(16);
  @$pb.TagNumber(17)
  void clearSize() => $_clearField(17);
  @$pb.TagNumber(17)
  ChildSize ensureSize() => $_ensure(16);

  @$pb.TagNumber(18)
  $pb.PbList<Paint> get fills => $_getList(17);

  @$pb.TagNumber(19)
  $pb.PbList<Paint> get strokes => $_getList(18);

  @$pb.TagNumber(20)
  $pb.PbList<Effect> get effects => $_getList(19);

  @$pb.TagNumber(21)
  Stroke get stroke => $_getN(20);
  @$pb.TagNumber(21)
  set stroke(Stroke value) => $_setField(21, value);
  @$pb.TagNumber(21)
  $core.bool hasStroke() => $_has(20);
  @$pb.TagNumber(21)
  void clearStroke() => $_clearField(21);
  @$pb.TagNumber(21)
  Stroke ensureStroke() => $_ensure(20);

  @$pb.TagNumber(22)
  CornerRadius get cornerRadius => $_getN(21);
  @$pb.TagNumber(22)
  set cornerRadius(CornerRadius value) => $_setField(22, value);
  @$pb.TagNumber(22)
  $core.bool hasCornerRadius() => $_has(21);
  @$pb.TagNumber(22)
  void clearCornerRadius() => $_clearField(22);
  @$pb.TagNumber(22)
  CornerRadius ensureCornerRadius() => $_ensure(21);

  @$pb.TagNumber(23)
  $core.bool get clipContent => $_getBF(22);
  @$pb.TagNumber(23)
  set clipContent($core.bool value) => $_setBool(22, value);
  @$pb.TagNumber(23)
  $core.bool hasClipContent() => $_has(22);
  @$pb.TagNumber(23)
  void clearClipContent() => $_clearField(23);

  @$pb.TagNumber(24)
  $pb.PbList<VisualNode> get children => $_getList(23);

  @$pb.TagNumber(25)
  $core.String get mainComponentId => $_getSZ(24);
  @$pb.TagNumber(25)
  set mainComponentId($core.String value) => $_setString(24, value);
  @$pb.TagNumber(25)
  $core.bool hasMainComponentId() => $_has(24);
  @$pb.TagNumber(25)
  void clearMainComponentId() => $_clearField(25);

  @$pb.TagNumber(26)
  $pb.PbList<ComponentPropertyValue> get componentProperties => $_getList(25);
}

class ComponentPropertyValue extends $pb.GeneratedMessage {
  factory ComponentPropertyValue({
    $core.String? key,
    Value? value,
  }) {
    final result = create();
    if (key != null) result.key = key;
    if (value != null) result.value = value;
    return result;
  }

  ComponentPropertyValue._();

  factory ComponentPropertyValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentPropertyValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentPropertyValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'binui'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOM<Value>(2, _omitFieldNames ? '' : 'value', subBuilder: Value.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentPropertyValue clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentPropertyValue copyWith(
          void Function(ComponentPropertyValue) updates) =>
      super.copyWith((message) => updates(message as ComponentPropertyValue))
          as ComponentPropertyValue;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentPropertyValue create() => ComponentPropertyValue._();
  @$core.override
  ComponentPropertyValue createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentPropertyValue getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentPropertyValue>(create);
  static ComponentPropertyValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => $_clearField(1);

  @$pb.TagNumber(2)
  Value get value => $_getN(1);
  @$pb.TagNumber(2)
  set value(Value value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);
  @$pb.TagNumber(2)
  Value ensureValue() => $_ensure(1);
}

class BooleanOperationNode extends $pb.GeneratedMessage {
  factory BooleanOperationNode({
    $core.String? id,
    $core.String? name,
    $core.bool? visible,
    Alias? opacity,
    BlendMode? blendMode,
    $core.double? x,
    $core.double? y,
    $core.double? width,
    $core.double? height,
    Transform? relativeTransform,
    Transform? absoluteTransform,
    Rect? absoluteBoundingBox,
    $core.double? rotation,
    LayoutConstraints? constraints,
    ChildLayoutData? layoutData,
    $core.Iterable<Paint>? fills,
    $core.Iterable<Paint>? strokes,
    $core.Iterable<Effect>? effects,
    Stroke? stroke,
    BooleanOperation? booleanOperation,
    $core.Iterable<VisualNode>? children,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (name != null) result.name = name;
    if (visible != null) result.visible = visible;
    if (opacity != null) result.opacity = opacity;
    if (blendMode != null) result.blendMode = blendMode;
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
    if (layoutData != null) result.layoutData = layoutData;
    if (fills != null) result.fills.addAll(fills);
    if (strokes != null) result.strokes.addAll(strokes);
    if (effects != null) result.effects.addAll(effects);
    if (stroke != null) result.stroke = stroke;
    if (booleanOperation != null) result.booleanOperation = booleanOperation;
    if (children != null) result.children.addAll(children);
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
    ..aOM<Alias>(4, _omitFieldNames ? '' : 'opacity', subBuilder: Alias.create)
    ..aE<BlendMode>(5, _omitFieldNames ? '' : 'blendMode',
        protoName: 'blendMode', enumValues: BlendMode.values)
    ..aD(6, _omitFieldNames ? '' : 'x')
    ..aD(7, _omitFieldNames ? '' : 'y')
    ..aD(8, _omitFieldNames ? '' : 'width')
    ..aD(9, _omitFieldNames ? '' : 'height')
    ..aOM<Transform>(10, _omitFieldNames ? '' : 'relativeTransform',
        protoName: 'relativeTransform', subBuilder: Transform.create)
    ..aOM<Transform>(11, _omitFieldNames ? '' : 'absoluteTransform',
        protoName: 'absoluteTransform', subBuilder: Transform.create)
    ..aOM<Rect>(12, _omitFieldNames ? '' : 'absoluteBoundingBox',
        protoName: 'absoluteBoundingBox', subBuilder: Rect.create)
    ..aD(13, _omitFieldNames ? '' : 'rotation')
    ..aOM<LayoutConstraints>(14, _omitFieldNames ? '' : 'constraints',
        subBuilder: LayoutConstraints.create)
    ..aOM<ChildLayoutData>(15, _omitFieldNames ? '' : 'layoutData',
        protoName: 'layoutData', subBuilder: ChildLayoutData.create)
    ..pPM<Paint>(16, _omitFieldNames ? '' : 'fills', subBuilder: Paint.create)
    ..pPM<Paint>(17, _omitFieldNames ? '' : 'strokes', subBuilder: Paint.create)
    ..pPM<Effect>(18, _omitFieldNames ? '' : 'effects',
        subBuilder: Effect.create)
    ..aOM<Stroke>(19, _omitFieldNames ? '' : 'stroke',
        subBuilder: Stroke.create)
    ..aE<BooleanOperation>(20, _omitFieldNames ? '' : 'booleanOperation',
        protoName: 'booleanOperation', enumValues: BooleanOperation.values)
    ..pPM<VisualNode>(21, _omitFieldNames ? '' : 'children',
        subBuilder: VisualNode.create)
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
  Alias get opacity => $_getN(3);
  @$pb.TagNumber(4)
  set opacity(Alias value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasOpacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearOpacity() => $_clearField(4);
  @$pb.TagNumber(4)
  Alias ensureOpacity() => $_ensure(3);

  @$pb.TagNumber(5)
  BlendMode get blendMode => $_getN(4);
  @$pb.TagNumber(5)
  set blendMode(BlendMode value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasBlendMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlendMode() => $_clearField(5);

  @$pb.TagNumber(6)
  $core.double get x => $_getN(5);
  @$pb.TagNumber(6)
  set x($core.double value) => $_setDouble(5, value);
  @$pb.TagNumber(6)
  $core.bool hasX() => $_has(5);
  @$pb.TagNumber(6)
  void clearX() => $_clearField(6);

  @$pb.TagNumber(7)
  $core.double get y => $_getN(6);
  @$pb.TagNumber(7)
  set y($core.double value) => $_setDouble(6, value);
  @$pb.TagNumber(7)
  $core.bool hasY() => $_has(6);
  @$pb.TagNumber(7)
  void clearY() => $_clearField(7);

  @$pb.TagNumber(8)
  $core.double get width => $_getN(7);
  @$pb.TagNumber(8)
  set width($core.double value) => $_setDouble(7, value);
  @$pb.TagNumber(8)
  $core.bool hasWidth() => $_has(7);
  @$pb.TagNumber(8)
  void clearWidth() => $_clearField(8);

  @$pb.TagNumber(9)
  $core.double get height => $_getN(8);
  @$pb.TagNumber(9)
  set height($core.double value) => $_setDouble(8, value);
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearHeight() => $_clearField(9);

  @$pb.TagNumber(10)
  Transform get relativeTransform => $_getN(9);
  @$pb.TagNumber(10)
  set relativeTransform(Transform value) => $_setField(10, value);
  @$pb.TagNumber(10)
  $core.bool hasRelativeTransform() => $_has(9);
  @$pb.TagNumber(10)
  void clearRelativeTransform() => $_clearField(10);
  @$pb.TagNumber(10)
  Transform ensureRelativeTransform() => $_ensure(9);

  @$pb.TagNumber(11)
  Transform get absoluteTransform => $_getN(10);
  @$pb.TagNumber(11)
  set absoluteTransform(Transform value) => $_setField(11, value);
  @$pb.TagNumber(11)
  $core.bool hasAbsoluteTransform() => $_has(10);
  @$pb.TagNumber(11)
  void clearAbsoluteTransform() => $_clearField(11);
  @$pb.TagNumber(11)
  Transform ensureAbsoluteTransform() => $_ensure(10);

  @$pb.TagNumber(12)
  Rect get absoluteBoundingBox => $_getN(11);
  @$pb.TagNumber(12)
  set absoluteBoundingBox(Rect value) => $_setField(12, value);
  @$pb.TagNumber(12)
  $core.bool hasAbsoluteBoundingBox() => $_has(11);
  @$pb.TagNumber(12)
  void clearAbsoluteBoundingBox() => $_clearField(12);
  @$pb.TagNumber(12)
  Rect ensureAbsoluteBoundingBox() => $_ensure(11);

  @$pb.TagNumber(13)
  $core.double get rotation => $_getN(12);
  @$pb.TagNumber(13)
  set rotation($core.double value) => $_setDouble(12, value);
  @$pb.TagNumber(13)
  $core.bool hasRotation() => $_has(12);
  @$pb.TagNumber(13)
  void clearRotation() => $_clearField(13);

  @$pb.TagNumber(14)
  LayoutConstraints get constraints => $_getN(13);
  @$pb.TagNumber(14)
  set constraints(LayoutConstraints value) => $_setField(14, value);
  @$pb.TagNumber(14)
  $core.bool hasConstraints() => $_has(13);
  @$pb.TagNumber(14)
  void clearConstraints() => $_clearField(14);
  @$pb.TagNumber(14)
  LayoutConstraints ensureConstraints() => $_ensure(13);

  @$pb.TagNumber(15)
  ChildLayoutData get layoutData => $_getN(14);
  @$pb.TagNumber(15)
  set layoutData(ChildLayoutData value) => $_setField(15, value);
  @$pb.TagNumber(15)
  $core.bool hasLayoutData() => $_has(14);
  @$pb.TagNumber(15)
  void clearLayoutData() => $_clearField(15);
  @$pb.TagNumber(15)
  ChildLayoutData ensureLayoutData() => $_ensure(14);

  @$pb.TagNumber(16)
  $pb.PbList<Paint> get fills => $_getList(15);

  @$pb.TagNumber(17)
  $pb.PbList<Paint> get strokes => $_getList(16);

  @$pb.TagNumber(18)
  $pb.PbList<Effect> get effects => $_getList(17);

  @$pb.TagNumber(19)
  Stroke get stroke => $_getN(18);
  @$pb.TagNumber(19)
  set stroke(Stroke value) => $_setField(19, value);
  @$pb.TagNumber(19)
  $core.bool hasStroke() => $_has(18);
  @$pb.TagNumber(19)
  void clearStroke() => $_clearField(19);
  @$pb.TagNumber(19)
  Stroke ensureStroke() => $_ensure(18);

  @$pb.TagNumber(20)
  BooleanOperation get booleanOperation => $_getN(19);
  @$pb.TagNumber(20)
  set booleanOperation(BooleanOperation value) => $_setField(20, value);
  @$pb.TagNumber(20)
  $core.bool hasBooleanOperation() => $_has(19);
  @$pb.TagNumber(20)
  void clearBooleanOperation() => $_clearField(20);

  @$pb.TagNumber(21)
  $pb.PbList<VisualNode> get children => $_getList(20);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
