import 'package:binui/src/definitions.pb.dart';

class Transform2DDartExporter {
  const Transform2DDartExporter();

  String serialize(Transform2D value) {
    final rows = value.rows.map((row) => row.values.toList()).toList();
    if (rows.isEmpty) return 'fl.Matrix4.identity()';

    // Flutter Matrix4 is column-major, but we'll use the convenience constructor
    if (rows.length == 3 && rows[0].length == 3) {
      // 2D transformation matrix
      return 'fl.Matrix4(${rows[0][0]}, ${rows[1][0]}, 0, 0, ${rows[0][1]}, ${rows[1][1]}, 0, 0, 0, 0, 1, 0, ${rows[0][2]}, ${rows[1][2]}, 0, 1)';
    }
    return 'fl.Matrix4.identity()';
  }
}
