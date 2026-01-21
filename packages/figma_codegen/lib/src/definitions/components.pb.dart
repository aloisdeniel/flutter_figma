// This is a generated file - do not edit.
//
// Generated from components.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class Component extends $pb.GeneratedMessage {
  factory Component({
    $core.String? name,
    $core.String? description,
    $core.Iterable<ComponentVariant>? variants,
    $core.Iterable<ComponentProperty>? properties,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (description != null) result.description = description;
    if (variants != null) result.variants.addAll(variants);
    if (properties != null) result.properties.addAll(properties);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'description')
    ..pPM<ComponentVariant>(3, _omitFieldNames ? '' : 'variants',
        subBuilder: ComponentVariant.create)
    ..pPM<ComponentProperty>(4, _omitFieldNames ? '' : 'properties',
        subBuilder: ComponentProperty.create)
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get description => $_getSZ(1);
  @$pb.TagNumber(2)
  set description($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasDescription() => $_has(1);
  @$pb.TagNumber(2)
  void clearDescription() => $_clearField(2);

  @$pb.TagNumber(3)
  $pb.PbList<ComponentVariant> get variants => $_getList(2);

  @$pb.TagNumber(4)
  $pb.PbList<ComponentProperty> get properties => $_getList(3);
}

class ComponentVariant extends $pb.GeneratedMessage {
  factory ComponentVariant({
    $core.String? name,
    $core.Iterable<$core.String>? options,
  }) {
    final result = create();
    if (name != null) result.name = name;
    if (options != null) result.options.addAll(options);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(3, _omitFieldNames ? '' : 'options')
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(3)
  $pb.PbList<$core.String> get options => $_getList(1);
}

class ComponentProperty extends $pb.GeneratedMessage {
  factory ComponentProperty({
    $core.String? name,
    ComponentPropertyValue? defaultValue,
  }) {
    final result = create();
    if (name != null) result.name = name;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<ComponentPropertyValue>(2, _omitFieldNames ? '' : 'defaultValue',
        protoName: 'defaultValue', subBuilder: ComponentPropertyValue.create)
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
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  @$pb.TagNumber(2)
  ComponentPropertyValue get defaultValue => $_getN(1);
  @$pb.TagNumber(2)
  set defaultValue(ComponentPropertyValue value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasDefaultValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearDefaultValue() => $_clearField(2);
  @$pb.TagNumber(2)
  ComponentPropertyValue ensureDefaultValue() => $_ensure(1);
}

enum ComponentPropertyValue_Value {
  booleanValue,
  stringValue,
  numberValue,
  variantValue,
  instanceSwapValue,
  notSet
}

class ComponentPropertyValue extends $pb.GeneratedMessage {
  factory ComponentPropertyValue({
    $core.bool? booleanValue,
    $core.String? stringValue,
    $core.double? numberValue,
    ComponentVariantValue? variantValue,
    ComponentInstance? instanceSwapValue,
  }) {
    final result = create();
    if (booleanValue != null) result.booleanValue = booleanValue;
    if (stringValue != null) result.stringValue = stringValue;
    if (numberValue != null) result.numberValue = numberValue;
    if (variantValue != null) result.variantValue = variantValue;
    if (instanceSwapValue != null) result.instanceSwapValue = instanceSwapValue;
    return result;
  }

  ComponentPropertyValue._();

  factory ComponentPropertyValue.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentPropertyValue.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ComponentPropertyValue_Value>
      _ComponentPropertyValue_ValueByTag = {
    1: ComponentPropertyValue_Value.booleanValue,
    2: ComponentPropertyValue_Value.stringValue,
    3: ComponentPropertyValue_Value.numberValue,
    4: ComponentPropertyValue_Value.variantValue,
    5: ComponentPropertyValue_Value.instanceSwapValue,
    0: ComponentPropertyValue_Value.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentPropertyValue',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5])
    ..aOB(1, _omitFieldNames ? '' : 'booleanValue', protoName: 'booleanValue')
    ..aOS(2, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..aD(3, _omitFieldNames ? '' : 'numberValue', protoName: 'numberValue')
    ..aOM<ComponentVariantValue>(4, _omitFieldNames ? '' : 'variantValue',
        protoName: 'variantValue', subBuilder: ComponentVariantValue.create)
    ..aOM<ComponentInstance>(5, _omitFieldNames ? '' : 'instanceSwapValue',
        protoName: 'instanceSwapValue', subBuilder: ComponentInstance.create)
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
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  ComponentPropertyValue_Value whichValue() =>
      _ComponentPropertyValue_ValueByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  @$pb.TagNumber(3)
  @$pb.TagNumber(4)
  @$pb.TagNumber(5)
  void clearValue() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get booleanValue => $_getBF(0);
  @$pb.TagNumber(1)
  set booleanValue($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasBooleanValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearBooleanValue() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.double get numberValue => $_getN(2);
  @$pb.TagNumber(3)
  set numberValue($core.double value) => $_setDouble(2, value);
  @$pb.TagNumber(3)
  $core.bool hasNumberValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumberValue() => $_clearField(3);

  @$pb.TagNumber(4)
  ComponentVariantValue get variantValue => $_getN(3);
  @$pb.TagNumber(4)
  set variantValue(ComponentVariantValue value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasVariantValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearVariantValue() => $_clearField(4);
  @$pb.TagNumber(4)
  ComponentVariantValue ensureVariantValue() => $_ensure(3);

  @$pb.TagNumber(5)
  ComponentInstance get instanceSwapValue => $_getN(4);
  @$pb.TagNumber(5)
  set instanceSwapValue(ComponentInstance value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasInstanceSwapValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearInstanceSwapValue() => $_clearField(5);
  @$pb.TagNumber(5)
  ComponentInstance ensureInstanceSwapValue() => $_ensure(4);
}

class ComponentVariantValue extends $pb.GeneratedMessage {
  factory ComponentVariantValue({
    $core.String? variantName,
    $core.String? value,
    $core.String? description,
  }) {
    final result = create();
    if (variantName != null) result.variantName = variantName;
    if (value != null) result.value = value;
    if (description != null) result.description = description;
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'variantName', protoName: 'variantName')
    ..aOS(2, _omitFieldNames ? '' : 'value')
    ..aOS(3, _omitFieldNames ? '' : 'description')
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
  $core.String get variantName => $_getSZ(0);
  @$pb.TagNumber(1)
  set variantName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVariantName() => $_has(0);
  @$pb.TagNumber(1)
  void clearVariantName() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get value => $_getSZ(1);
  @$pb.TagNumber(2)
  set value($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => $_clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => $_clearField(3);
}

class ComponentInstance extends $pb.GeneratedMessage {
  factory ComponentInstance({
    $core.String? componentName,
    $core.Iterable<ComponentProperty>? properties,
  }) {
    final result = create();
    if (componentName != null) result.componentName = componentName;
    if (properties != null) result.properties.addAll(properties);
    return result;
  }

  ComponentInstance._();

  factory ComponentInstance.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(data, registry);
  factory ComponentInstance.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ComponentInstance',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'componentName', protoName: 'componentName')
    ..pPM<ComponentProperty>(2, _omitFieldNames ? '' : 'properties',
        subBuilder: ComponentProperty.create)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentInstance clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ComponentInstance copyWith(void Function(ComponentInstance) updates) =>
      super.copyWith((message) => updates(message as ComponentInstance))
          as ComponentInstance;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ComponentInstance create() => ComponentInstance._();
  @$core.override
  ComponentInstance createEmptyInstance() => create();
  @$core.pragma('dart2js:noInline')
  static ComponentInstance getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ComponentInstance>(create);
  static ComponentInstance? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get componentName => $_getSZ(0);
  @$pb.TagNumber(1)
  set componentName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasComponentName() => $_has(0);
  @$pb.TagNumber(1)
  void clearComponentName() => $_clearField(1);

  @$pb.TagNumber(2)
  $pb.PbList<ComponentProperty> get properties => $_getList(1);
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
