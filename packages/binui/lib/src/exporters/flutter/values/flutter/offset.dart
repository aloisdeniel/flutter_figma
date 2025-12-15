import 'package:binui/src/definitions.pb.dart';

class OffsetDartExporter {
  const OffsetDartExporter();

  String serialize(Offset value) {
    return 'fl.Offset(${value.x}, ${value.y})';
  }
}
