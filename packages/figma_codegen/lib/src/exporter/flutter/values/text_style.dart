import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/values/alias.dart';
import 'package:figma_codegen/src/exporter/flutter/values/value.dart';

class TextStyleDartExporter {
  const TextStyleDartExporter();

  String serialize(FlutterExportContext context, TextStyle value) {
    final buffer = StringBuffer();
    var hasArguments = false;
    if (context.useGoogleFonts && value.hasFontName()) {
      final fontFamily = const FlutterValueExporter().serialize(
        context,
        Value(stringValue: value.fontName.family),
        Value_Type.stringValue,
      );
      buffer.write('gf.GoogleFonts.getFont($fontFamily');
      hasArguments = true;
    } else {
      buffer.write('fl.TextStyle(');
      if (value.hasFontName()) {
        final fontFamily = const FlutterValueExporter().serialize(
          context,
          Value(stringValue: value.fontName.family),
          Value_Type.stringValue,
        );
        buffer.write("fontFamily: $fontFamily");
        hasArguments = true;
      }
    }
    final fontSize = const FlutterValueExporter().serialize(
      context,
      Value(doubleValue: value.fontSize),
      Value_Type.doubleValue,
    );
    if (context.useGoogleFonts && value.hasFontName()) {
      buffer.write(', textStyle: fl.TextStyle(');
      buffer.write('fontSize: $fontSize');
      if (value.fontName.hasWeight()) {
        final fw = const FontWeightDartExporter().serialize(
          context,
          value.fontName.weight,
        );
        buffer.write(', fontWeight: $fw');
      }
      if (value.hasLetterSpacing() && value.letterSpacing.value.value != 0) {
        final letterSpacing = const FlutterValueExporter().serialize(
          context,
          Value(doubleValue: value.letterSpacing.value),
          Value_Type.doubleValue,
        );
        buffer.write(', letterSpacing: $letterSpacing');
      }
      if (value.hasLineHeight()) {
        final lineHeight = value.lineHeight;
        if (lineHeight.hasPixels()) {
          // Convert pixel line height to a multiplier based on fontSize
          buffer.write(', height: ${lineHeight.pixels} / $fontSize');
        } else if (lineHeight.hasPercent()) {
          buffer.write(', height: ${lineHeight.percent / 100}');
        }
      }
      buffer.write(')');
      buffer.write(')');
    } else {
      if (hasArguments) {
        buffer.write(', ');
      }
      buffer.write('fontSize: $fontSize');
      if (value.hasFontName() && value.fontName.hasWeight()) {
        final fw = const FontWeightDartExporter().serialize(
          context,
          value.fontName.weight,
        );
        buffer.write(', fontWeight: $fw');
      }
      if (value.hasLetterSpacing() && value.letterSpacing.value.value != 0) {
        final letterSpacing = const FlutterValueExporter().serialize(
          context,
          Value(doubleValue: value.letterSpacing.value),
          Value_Type.doubleValue,
        );
        buffer.write(', letterSpacing: $letterSpacing');
      }
      if (value.hasLineHeight()) {
        final lineHeight = value.lineHeight;
        if (lineHeight.hasPixels()) {
          // Convert pixel line height to a multiplier based on fontSize
          buffer.write(', height: ${lineHeight.pixels} / $fontSize');
        } else if (lineHeight.hasPercent()) {
          buffer.write(', height: ${lineHeight.percent / 100}');
        }
      }
      buffer.write(')');
    }
    return buffer.toString();
  }
}

class FontWeightDartExporter {
  const FontWeightDartExporter();

  String serialize(FlutterExportContext context, NumberValue value) {
    if (value.hasAlias()) {
      final alias = const AliasDartExporter().serialize(
        context,
        value.alias,
        Value_Type.doubleValue,
      );
      return '''fl.FontWeight.values.firstWhere(
      (e) => $alias <= e.value.toInt(),
      orElse: () => fl.FontWeight.w400,
    )''';
    }
    // ignore: prefer_interpolation_to_compose_strings
    return 'fl.' +
        switch (value.value) {
          double v when v <= 1.0 => 'FontWeight.w400',
          double v when v <= 101.0 => 'FontWeight.w100',
          double v when v <= 201.0 => 'FontWeight.w200',
          double v when v <= 301.0 => 'FontWeight.w300',
          double v when v <= 401.0 => 'FontWeight.w400',
          double v when v <= 501.0 => 'FontWeight.w500',
          double v when v <= 601.0 => 'FontWeight.w600',
          double v when v <= 701.0 => 'FontWeight.w700',
          double v when v <= 801.0 => 'FontWeight.w800',
          _ => 'FontWeight.w900',
        };
  }
}
