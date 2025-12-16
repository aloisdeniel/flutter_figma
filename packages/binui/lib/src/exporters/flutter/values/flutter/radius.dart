import 'package:binui/src/definitions.pb.dart';

class RadiusDartExporter {
  const RadiusDartExporter();

  String serialize(Radius value) {
    if (value.x == value.y) {
      return 'const fl.Radius.circular(${value.x})';
    }
    return 'const fl.Radius(${value.x}, ${value.y})';
  }
}

class BorderRadiusDartExporter {
  const BorderRadiusDartExporter();

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
