import 'package:figma_codegen/src/definitions/variables.pb.dart';

class BorderSideDartExporter {
  const BorderSideDartExporter();

  String serialize(BorderSide value) {
    // BorderSide in protobuf only has width and strokeAlign, no color
    return 'fl.BorderSide(width: ${value.width})';
  }
}
