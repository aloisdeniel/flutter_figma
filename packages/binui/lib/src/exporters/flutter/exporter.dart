import 'dart:async';

import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';
import 'package:binui/src/exporters/flutter/barrel.dart';
import 'package:binui/src/exporters/flutter/component.dart';
import 'package:binui/src/exporters/flutter/metadata.dart';
import 'package:binui/src/exporters/flutter/pubspec.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';
import 'package:binui/src/exporters/flutter/values/visual_node.dart';

import '../../utils/naming.dart';
import 'options.dart';
import 'variable_collection.dart';

class FlutterExportContext extends ExportContext {
  const FlutterExportContext(super.library, this.options);
  final FlutterExportOptions options;
}

class FlutterExporter extends Exporter<FlutterExportContext> {
  const FlutterExporter();

  @override
  FutureOr<Bundle> export(FlutterExportContext context) {
    final library = context.library;

    final files = <BundleFile>[];

    // Export visual nodes
    final visualNodeExporter = VisualNodeDartExporter(
      valueSerializer: ValueDartExporter(),
    );
    for (var i = 0; i < library.visualNodes.length; i++) {
      final item = library.visualNodes[i];
      final content = visualNodeExporter.serialize(library, item);
      files.add(StringBundleFile('lib/src/selected/widget_$i.dart', content));
    }

    // Export variable collections
    final variableCollectionExporter = VariableCollectionDartExporter();
    for (final collection in library.variables) {
      final fileName = Naming.fileName(collection.name);
      final content = variableCollectionExporter.serialize(library, collection);
      files.add(StringBundleFile('lib/src/variables/$fileName.dart', content));
    }

    // Export components
    final componentExporter = ComponentDefinitionDartExporter();
    for (final component in library.components) {
      final fileName = Naming.fileName(component.name);
      final content = componentExporter.serialize(library, component);
      files.add(StringBundleFile('lib/src/components/$fileName.dart', content));
    }

    // Export metadata
    final metadataExporter = MetadataDartExporter();
    final metadataContent = metadataExporter.serialize(library);
    files.add(StringBundleFile('lib/src/metadata.dart', metadataContent));

    // Export barrel file
    final barrelExporter = BarrelDartExporter();
    final barrelContent = barrelExporter.serialize(files);
    final libraryName = Naming.fileName(library.name);
    files.add(StringBundleFile('lib/$libraryName.dart', barrelContent));

    // Export pubspec.yaml
    final pubspecExporter = PubspecDartExporter();
    final pubspecContent = pubspecExporter.serialize(library);
    files.add(StringBundleFile('pubspec.yaml', pubspecContent));

    return Bundle(name: libraryName, files: files);
  }
}
