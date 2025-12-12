import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/utils/dart/buffer.dart';

class MetadataDartExporter {
  const MetadataDartExporter();
  String serialize(Library library) {
    final result = DartBuffer();
    result.writeln('const id = \'${library.id}\';');
    result.writeln('const name = \'${library.name}\';');
    result.writeln(
      'const version = \'${library.version.major}.${library.version.minor}.${library.version.patch}\';',
    );
    return result.toString();
  }
}
