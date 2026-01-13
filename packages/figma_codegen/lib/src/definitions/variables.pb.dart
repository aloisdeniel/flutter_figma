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

import 'variables.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'variables.pbenum.dart';

enum Alias_Type { constant, variable, notSet }

class Alias extends $pb.GeneratedMessage {
  factory Alias({
    ConstantAlias? constant,
    VariableAlias? variable,
  }) {
    final result = create();
    if (constant != null) result.constant = constant;
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
    2: Alias_Type.variable,
    0: Alias_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Alias',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ConstantAlias>(1, _omitFieldNames ? '' : 'constant',
        subBuilder: ConstantAlias.create)
    ..aOM<VariableAlias>(2, _omitFieldNames ? '' : 'variable',
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
  Alias_Type whichType() => _Alias_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
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
  VariableAlias get variable => $_getN(1);
  @$pb.TagNumber(2)
  set variable(VariableAlias value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVariable() => $_has(1);
  @$pb.TagNumber(2)
  void clearVariable() => $_clearField(2);
  @$pb.TagNumber(2)
  VariableAlias ensureVariable() => $_ensure(1);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
  color,
  borderSide,
  gradient,
  cornerRadius,
  textStyle,
  notSet
}

class Value extends $pb.GeneratedMessage {
  factory Value({
    Alias? alias,
    $core.String? stringValue,
    $core.double? doubleValue,
    $core.bool? boolean,
    Color? color,
    BorderSide? borderSide,
    Gradient? gradient,
    CornerRadius? cornerRadius,
    TextStyle? textStyle,
  }) {
    final result = create();
    if (alias != null) result.alias = alias;
    if (stringValue != null) result.stringValue = stringValue;
    if (doubleValue != null) result.doubleValue = doubleValue;
    if (boolean != null) result.boolean = boolean;
    if (color != null) result.color = color;
    if (borderSide != null) result.borderSide = borderSide;
    if (gradient != null) result.gradient = gradient;
    if (cornerRadius != null) result.cornerRadius = cornerRadius;
    if (textStyle != null) result.textStyle = textStyle;
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
    5: Value_Type.color,
    6: Value_Type.borderSide,
    7: Value_Type.gradient,
    8: Value_Type.cornerRadius,
    9: Value_Type.textStyle,
    0: Value_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Value',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
      createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOM<Alias>(1, _omitFieldNames ? '' : 'alias', subBuilder: Alias.create)
    ..aOS(2, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..aD(3, _omitFieldNames ? '' : 'doubleValue', protoName: 'doubleValue')
    ..aOB(4, _omitFieldNames ? '' : 'boolean')
    ..aOM<Color>(5, _omitFieldNames ? '' : 'color', subBuilder: Color.create)
    ..aOM<BorderSide>(6, _omitFieldNames ? '' : 'borderSide',
        protoName: 'borderSide', subBuilder: BorderSide.create)
    ..aOM<Gradient>(7, _omitFieldNames ? '' : 'gradient',
        subBuilder: Gradient.create)
    ..aOM<CornerRadius>(8, _omitFieldNames ? '' : 'cornerRadius',
        protoName: 'cornerRadius', subBuilder: CornerRadius.create)
    ..aOM<TextStyle>(9, _omitFieldNames ? '' : 'textStyle',
        protoName: 'textStyle', subBuilder: TextStyle.create)
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
  Color get color => $_getN(4);
  @$pb.TagNumber(5)
  set color(Color value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor() => $_clearField(5);
  @$pb.TagNumber(5)
  Color ensureColor() => $_ensure(4);

  @$pb.TagNumber(6)
  BorderSide get borderSide => $_getN(5);
  @$pb.TagNumber(6)
  set borderSide(BorderSide value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasBorderSide() => $_has(5);
  @$pb.TagNumber(6)
  void clearBorderSide() => $_clearField(6);
  @$pb.TagNumber(6)
  BorderSide ensureBorderSide() => $_ensure(5);

  @$pb.TagNumber(7)
  Gradient get gradient => $_getN(6);
  @$pb.TagNumber(7)
  set gradient(Gradient value) => $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasGradient() => $_has(6);
  @$pb.TagNumber(7)
  void clearGradient() => $_clearField(7);
  @$pb.TagNumber(7)
  Gradient ensureGradient() => $_ensure(6);

  @$pb.TagNumber(8)
  CornerRadius get cornerRadius => $_getN(7);
  @$pb.TagNumber(8)
  set cornerRadius(CornerRadius value) => $_setField(8, value);
  @$pb.TagNumber(8)
  $core.bool hasCornerRadius() => $_has(7);
  @$pb.TagNumber(8)
  void clearCornerRadius() => $_clearField(8);
  @$pb.TagNumber(8)
  CornerRadius ensureCornerRadius() => $_ensure(7);

  @$pb.TagNumber(9)
  TextStyle get textStyle => $_getN(8);
  @$pb.TagNumber(9)
  set textStyle(TextStyle value) => $_setField(9, value);
  @$pb.TagNumber(9)
  $core.bool hasTextStyle() => $_has(8);
  @$pb.TagNumber(9)
  void clearTextStyle() => $_clearField(9);
  @$pb.TagNumber(9)
  TextStyle ensureTextStyle() => $_ensure(8);
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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
      package: const $pb.PackageName(_omitMessageNames ? '' : 'definitions'),
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

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
