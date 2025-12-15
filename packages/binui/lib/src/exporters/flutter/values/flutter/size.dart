import 'package:binui/src/definitions.pb.dart';

class SizeDartExporter {
  const SizeDartExporter();

  String serialize(Size value) {
    return 'fl.Size(${value.width}, ${value.height})';
  }
}
