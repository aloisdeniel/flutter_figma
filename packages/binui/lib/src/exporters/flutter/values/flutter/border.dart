import 'package:binui/src/definitions.dart';

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
    // BorderSide in protobuf only has width and strokeAlign, no color
    return 'fl.BorderSide(width: ${value.width})';
  }
}
