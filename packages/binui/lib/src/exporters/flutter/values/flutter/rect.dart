import 'package:binui/src/definitions.pb.dart';

class RectDartExporter {
  const RectDartExporter();

  String serialize(Rect value) {
    return 'fl.Rect.fromLTWH(${value.position.x}, ${value.position.y}, ${value.size.width}, ${value.size.height})';
  }
}
