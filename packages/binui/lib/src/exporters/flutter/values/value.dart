import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/exporter.dart';
import 'package:binui/src/exporters/flutter/options.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';

class ValueDartExporter {
  const ValueDartExporter();

  String serialize(
    FlutterExportContext context,
    Value value,
    Value_Type expectedType,
  ) {
    switch (context.options.visualNodes.mode) {
      case FlutterVisualNodeExportMode.flutter:
        return FlutterValueExporter().serialize(
          context.library,
          value,
          expectedType,
        );
      case FlutterVisualNodeExportMode.flutterFigma:
        throw UnimplementedError();
    }
  }

  static String getTypeName(FlutterExportContext context, Value value) {
    switch (context.options.visualNodes.mode) {
      case FlutterVisualNodeExportMode.flutter:
        return FlutterValueExporter.getTypeName(context.library, value);
      case FlutterVisualNodeExportMode.flutterFigma:
        throw UnimplementedError();
    }
  }
}
