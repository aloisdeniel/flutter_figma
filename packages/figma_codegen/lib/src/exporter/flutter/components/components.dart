import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';

class ComponentsDartExporter {
  const ComponentsDartExporter();

  void serialize(FlutterExportContext context, DartBuffer buffer) {
    // TODO
    // * Create an enum named `<Component><VariantName>Variant` for each component variant.
    // * Create a data class named `<Component>Data` for each component with properties for each variant and their default values.
    // * Creates an InheritedWidget named `<Component>Properties` that takes a `<Component>Data` instance and exposes the properties to its subtree.
    // * Creates a StatelessWidget named `<Component>` that takes the same arguments as the properties from the data class. It has unique final property of type `<Component>Data` to hold the given values in constructor. If the component has a unique variant, it also create one named constructor for each of its value.
    throw UnimplementedError();
  }
}
