import 'package:figma_codegen/src/definitions/variables.pb.dart';

class CornerRadiusDartExporter {
  const CornerRadiusDartExporter();

  String serialize(CornerRadius value) {
    final allSame =
        value.topLeft == value.topRight &&
        value.topRight == value.bottomRight &&
        value.bottomRight == value.bottomLeft;

    if (allSame) {
      return 'fl.BorderRadius.all(fl.Radius.circular(${value.topLeft}))';
    }

    return 'fl.BorderRadius.only(topLeft: fl.Radius.circular(${value.topLeft}), topRight: fl.Radius.circular(${value.topRight}), bottomRight: fl.Radius.circular(${value.bottomRight}), bottomLeft: fl.Radius.circular(${value.bottomLeft}))';
  }
}
