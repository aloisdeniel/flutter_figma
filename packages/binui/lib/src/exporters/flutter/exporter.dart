import 'dart:async';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/bundle.dart';
import 'package:binui/src/exporters/exporter.dart';
import 'package:binui/src/exporters/flutter/barrel.dart';
import 'package:binui/src/exporters/flutter/component.dart';
import 'package:binui/src/exporters/flutter/metadata.dart';
import 'package:binui/src/exporters/flutter/pubspec.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';
import 'package:binui/src/exporters/flutter/variables/variables.dart';
import 'package:binui/src/exporters/flutter/variables/collection.dart';
import 'package:dart_style/dart_style.dart';

import '../../utils/naming.dart';
import 'options.dart';

class FlutterExportContext extends ExportContext {
  const FlutterExportContext(super.library, this.options);
  final FlutterExportOptions options;
}

class FlutterExporter extends Exporter<FlutterExportContext> {
  const FlutterExporter();

  /// Creates a DartFormatter if possible.
  /// Returns null if the formatter cannot be created (e.g., in environments
  /// where Uri.base is not available, like Figma plugins).
  static DartFormatter? _createFormatter() {
    try {
      return DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
    } catch (_) {
      // Formatter creation may fail in certain environments (e.g., Figma plugins)
      // where Uri.base is not available.
      return null;
    }
  }

  @override
  FutureOr<Bundle> export(FlutterExportContext context) {
    final library = context.library;

    final files = <BundleFile>[];
    final formatter = _createFormatter();

    // Export visual nodes
    final valueExporter = ValueDartExporter();
    for (var i = 0; i < library.visualNodes.length; i++) {
      final item = library.visualNodes[i];
      final content = valueExporter.serialize(
        context,
        Value()..visualNode = item,
      );
      files.add(
        StringBundleFile(
          'lib/src/selected/widget_$i.dart',
          _formatDartCode(formatter, content),
        ),
      );
    }

    // Export variable collections
    final variableCollectionExporter = VariableCollectionDartExporter();
    for (final collection in library.variables) {
      final fileName = Naming.fileName(collection.name);
      final content = variableCollectionExporter.serialize(context, collection);
      files.add(
        StringBundleFile(
          'lib/src/variables/$fileName.dart',
          _formatDartCode(formatter, content),
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
          _formatDartCode(formatter, variablesContent),
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
          _formatDartCode(formatter, content),
        ),
      );
    }

    // Export metadata
    final metadataExporter = MetadataDartExporter();
    final metadataContent = metadataExporter.serialize(library);
    files.add(
      StringBundleFile(
        'lib/src/metadata.dart',
        _formatDartCode(formatter, metadataContent),
      ),
    );

    // Export barrel file
    final barrelExporter = BarrelDartExporter();
    final barrelContent = barrelExporter.serialize(files);
    final libraryName = Naming.fileName(library.name);
    files.add(
      StringBundleFile(
        'lib/$libraryName.dart',
        _formatDartCode(formatter, barrelContent),
      ),
    );

    // Export pubspec.yaml (no formatting needed for YAML)
    final pubspecExporter = PubspecDartExporter();
    final pubspecContent = pubspecExporter.serialize(library);
    files.add(StringBundleFile('pubspec.yaml', pubspecContent));

    return Bundle(name: libraryName, files: files);
  }

  /// Formats Dart code using dart_style.
  /// Returns the original code if formatting fails or if formatter is null.
  String _formatDartCode(DartFormatter? formatter, String code) {
    if (formatter == null) return code;
    try {
      return formatter.format(code);
    } catch (_) {
      // If formatting fails for any reason, return the original code
      return code;
    }
  }
}
