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
      Value_Type.stringValue => const StringValueExporter().serialize(
        context,
        value.stringValue,
      ),
      Value_Type.doubleValue => const NumberValueExporter().serialize(
        context,
        value.doubleValue,
      ),
      Value_Type.boolean => const BooleanValueExporter().serialize(
        context,
        value.boolean,
      ),
      Value_Type.color => const ColorValueExporter().serialize(
        context,
        value.color,
      ),
      Value_Type.borderSide => const BorderSideDartExporter().serialize(
        value.borderSide,
      ),
      Value_Type.gradient => GradientFlutterExporter().serialize(
        context,
        value.gradient,
      ),
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

class StringValueExporter {
  const StringValueExporter();

  String serialize(FlutterExportContext context, StringValue value) {
    if (value.hasAlias()) {
      return const AliasDartExporter().serialize(
        context,
        value.alias,
        Value_Type.stringValue,
      );
    }
    return "'${value.value.replaceAll("'", "\\'")}'";
  }
}

class NumberValueExporter {
  const NumberValueExporter();

  String serialize(FlutterExportContext context, NumberValue value) {
    if (value.hasAlias()) {
      return const AliasDartExporter().serialize(
        context,
        value.alias,
        Value_Type.doubleValue,
      );
    }
    var result = value.value.toString();
    if (result.contains('.') == false) {
      result = '$result.0';
    }
    return result;
  }
}

class ColorValueExporter {
  const ColorValueExporter();

  String serialize(FlutterExportContext context, ColorValue value) {
    if (value.hasAlias()) {
      return const AliasDartExporter().serialize(
        context,
        value.alias,
        Value_Type.color,
      );
    }
    return const ColorDartExporter().serialize(value.value);
  }
}

class BooleanValueExporter {
  const BooleanValueExporter();

  String serialize(FlutterExportContext context, BooleanValue value) {
    if (value.hasAlias()) {
      return const AliasDartExporter().serialize(
        context,
        value.alias,
        Value_Type.boolean,
      );
    }
    return value.value.toString();
  }
}
