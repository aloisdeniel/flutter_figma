import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/alias.dart';
import 'package:figma_codegen/src/exporter/flutter/values/border.dart';
import 'package:figma_codegen/src/exporter/flutter/values/color.dart';
import 'package:figma_codegen/src/exporter/flutter/values/corner_radius.dart';
import 'package:figma_codegen/src/exporter/flutter/values/gradient.dart';
import 'package:figma_codegen/src/exporter/flutter/values/text_style.dart';

class FlutterValueExporter {
  const FlutterValueExporter();

  String serialize(
    FlutterExportContext context,
    Value value,
    Value_Type expectedType,
  ) {
    String alias(Alias alias) =>
        const AliasDartExporter().serialize(context, alias, expectedType);
    return switch (value.whichType()) {
      Value_Type.stringValue => switch (value.stringValue.hasAlias()) {
        true => alias(value.stringValue.alias),
        false => "'${value.stringValue.value.replaceAll("'", "\\'")}'",
      },
      Value_Type.doubleValue => switch (value.doubleValue.hasAlias()) {
        true => alias(value.doubleValue.alias),
        false => value.doubleValue.value.toString(),
      },
      Value_Type.boolean => switch (value.boolean.hasAlias()) {
        true => alias(value.boolean.alias),
        false => value.boolean.value.toString(),
      },
      Value_Type.color => switch (value.color.hasAlias()) {
        true => alias(value.color.alias),
        false => const ColorDartExporter().serialize(value.color.value),
      },
      Value_Type.borderSide => const BorderSideDartExporter().serialize(
        value.borderSide,
      ),
      Value_Type.gradient => GradientDartExporter().serialize(value.gradient),
      Value_Type.textStyle => const TextStyleDartExporter().serialize(
        context,
        value.textStyle,
      ),
      Value_Type.cornerRadius => const CornerRadiusDartExporter().serialize(
        value.cornerRadius,
      ),
      Value_Type.notSet => 'null', //throw Exception('Value type not set'),
    };
  }

  static String mapTypeName(Value_Type type) {
    return switch (type) {
      Value_Type.color => 'fl.Color',
      Value_Type.cornerRadius => 'fl.BorderRadius',
      Value_Type.gradient => 'fl.Gradient',
      Value_Type.boolean => 'bool',
      Value_Type.stringValue => 'string',
      Value_Type.doubleValue => 'double',
      Value_Type.borderSide => 'fl.BorderSide',
      Value_Type.textStyle => 'fl.TextStyle',
      Value_Type.notSet => throw Exception(),
    };
  }
}
