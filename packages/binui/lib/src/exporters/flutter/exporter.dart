import 'dart:async';

import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';
import 'package:binui/src/exporters/flutter/barrel.dart';
import 'package:binui/src/exporters/flutter/component.dart';
import 'package:binui/src/exporters/flutter/metadata.dart';
import 'package:binui/src/exporters/flutter/pubspec.dart';
import 'package:binui/src/exporters/flutter/variables/variables.dart';
import 'package:binui/src/exporters/flutter/variables/collection.dart';

import '../../utils/naming.dart';
import 'formatter/formatter.dart';
import 'formatter/formatter_native.dart'
    if (dart.library.js_interop) 'formatter/formatter_web.dart'
    as platform;
import 'options.dart';

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
    final DartCodeFormatter formatter = platform.createFormatter();

    // Export variable collections
    final variableCollectionExporter = VariableCollectionDartExporter();
    for (final collection in library.variables) {
      final fileName = Naming.fileName(collection.name);
      final content = variableCollectionExporter.serialize(context, collection);
      files.add(
        StringBundleFile(
          'lib/src/variables/$fileName.dart',
          formatter.format(content),
        ),
      );
    }

    // Export aggregated variables file (if there are variable collections)
    if (library.variables.isNotEmpty) {
      final variablesExporter = VariablesDartExporter();
      final variablesContent = variablesExporter.serialize(context);
      files.add(
        StringBundleFile(
          'lib/src/variables/variables.dart',
          formatter.format(variablesContent),
        ),
      );
    }

    // Export components
    final componentExporter = ComponentDefinitionDartExporter();
    for (final component in library.components) {
      final fileName = Naming.fileName(component.name);
      final content = componentExporter.serialize(context, component);
      files.add(
        StringBundleFile(
          'lib/src/components/$fileName.dart',
          formatter.format(content),
        ),
      );
    }

    // Export metadata
    final metadataExporter = MetadataDartExporter();
    final metadataContent = metadataExporter.serialize(library);
    files.add(
      StringBundleFile(
        'lib/src/metadata.dart',
        formatter.format(metadataContent),
      ),
    );

    // Export barrel file
    final barrelExporter = BarrelDartExporter();
    final barrelContent = barrelExporter.serialize(files);
    final libraryName = Naming.fileName(library.name);
    files.add(
      StringBundleFile(
        'lib/$libraryName.dart',
        formatter.format(barrelContent),
      ),
    );

    // Export pubspec.yaml (no formatting needed for YAML)
    final pubspecExporter = PubspecDartExporter();
    final pubspecContent = pubspecExporter.serialize(library);
    files.add(StringBundleFile('pubspec.yaml', pubspecContent));

    return Bundle(name: libraryName, files: files);
  }
}
