import 'package:binui/src/definitions.pb.dart';

class TransformDartExporter {
  const TransformDartExporter();

  String serialize(Transform value) {
    // The protobuf Transform has m00, m01, m02, m10, m11, m12 for a 2x3 affine transform
    // Flutter Matrix4 is column-major 4x4 matrix
    // We convert the 2D affine transform to a Matrix4
    return 'fl.Matrix4(${value.m00}, ${value.m10}, 0, 0, ${value.m01}, ${value.m11}, 0, 0, 0, 0, 1, 0, ${value.m02}, ${value.m12}, 0, 1)';
  }
}
