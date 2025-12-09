import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/utils/dart_buffer.dart';

class BarrelDartExporter {
  const BarrelDartExporter();
  String serialize(List<BundleFile> value) {
    final result = DartBuffer();
    final fileNames = value.map((file) => file.path).toList();
    for (final fileName in fileNames) {
      if (fileName.startsWith('lib/src/') && fileName.endsWith('.dart')) {
        final exportName = fileName.substring(4); // Remove 'lib/src/' prefix
        result.writeln("export '$exportName';");
      }
    }
    return result.toString();
  }
}
