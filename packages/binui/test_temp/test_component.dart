import 'package:binui/binui.dart';
import 'package:binui/src/exporters/flutter/options.dart';

void main() async {
  // Create a simple component with one variant
  final component = Component(
    id: 1,
    name: 'TestCard',
    documentation: 'A test card component',
    properties: [],
    variants: [
      ComponentVariant(
        id: 1,
        name: 'Default',
        root: VisualNode()
          ..rectangle = RectangleNode(width: 100, height: 50, visible: true),
      ),
    ],
  );

  final library = Library(name: 'Test', components: [component]);

  final context = FlutterExportContext(library, const FlutterExportOptions());
  final exporter = FlutterExporter();
  final bundle = await exporter.export(context);

  // Print all generated files
  for (final file in bundle.files) {
    if (file is StringBundleFile) {
      print('=== ${file.path} ===');
      print(file.content);
      print('');
    }
  }
}
