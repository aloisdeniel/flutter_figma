import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/color.dart';

class BorderDartExporter {
  const BorderDartExporter();

  String serialize(Border value) {
    final sideExporter = BorderSideDartExporter();
    final top = sideExporter.serialize(value.top);
    final right = sideExporter.serialize(value.right);
    final bottom = sideExporter.serialize(value.bottom);
    final left = sideExporter.serialize(value.left);
    return 'fl.Border(top: $top, right: $right, bottom: $bottom, left: $left)';
  }
}

class BorderSideDartExporter {
  const BorderSideDartExporter();

  String serialize(BorderSide value) {
    final color = const ColorDartExporter().serialize(value.color);
    return 'fl.BorderSide(color: $color, width: ${value.width})';
  }
}
