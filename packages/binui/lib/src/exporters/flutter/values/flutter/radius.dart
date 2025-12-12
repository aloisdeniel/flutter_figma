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
  const BorderRadiusDartExporter({required this.radiusSerializer});
  final RadiusDartExporter radiusSerializer;

  String serialize(BorderRadius value) {
    final allSame =
        value.topLeft == value.topRight &&
        value.topRight == value.bottomRight &&
        value.bottomRight == value.bottomLeft;

    if (allSame) {
      final radius = radiusSerializer.serialize(value.topLeft);
      return 'const fl.BorderRadius.all($radius)';
    }

    final topLeft = radiusSerializer.serialize(value.topLeft);
    final topRight = radiusSerializer.serialize(value.topRight);
    final bottomRight = radiusSerializer.serialize(value.bottomRight);
    final bottomLeft = radiusSerializer.serialize(value.bottomLeft);

    return 'const fl.BorderRadius(topLeft: $topLeft, topRight: $topRight, bottomRight: $bottomRight, bottomLeft: $bottomLeft)';
  }
}
