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
    return switch (value.whichType()) {
      Value_Type.alias => const AliasDartExporter().serialize(
        context,
        value.alias,
        expectedType,
      ),
      Value_Type.stringValue => "'${value.stringValue.replaceAll("'", "\\'")}'",
      Value_Type.doubleValue => value.doubleValue.toString(),
      Value_Type.boolean => value.boolean.toString(),
      Value_Type.color => const ColorDartExporter().serialize(value.color),
      Value_Type.borderSide => const BorderSideDartExporter().serialize(
        value.borderSide,
      ),
      Value_Type.gradient => GradientDartExporter().serialize(value.gradient),
      Value_Type.textStyle => const TextStyleDartExporter().serialize(
        value.textStyle,
      ),
      Value_Type.cornerRadius => const CornerRadiusDartExporter().serialize(
        value.cornerRadius,
      ),
      Value_Type.notSet => 'null', //throw Exception('Value type not set'),
    };
  }

  static String getTypeName(FlutterExportContext context, Value value) {
    return switch (value.whichType()) {
      Value_Type.alias => mapTypeName(
        context.collections.resolveAliasType(value.alias)!,
      ),
      _ => mapTypeName(value.whichType()),
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
      Value_Type.notSet || Value_Type.alias => throw Exception(),
    };
  }
}
