import 'dart:js_interop';

import 'package:figma_codegen/figma_codegen.dart';
import 'package:figma_codegen/src/importers/figma/plugin/figma.dart';

@JS('__html__')
external String get htmlContent;

extension type MessageData._(JSObject _) implements JSObject {
  external String? get type;
  external String? get format;
  external JSObject? get options;
}

extension type ExportOptions._(JSObject _) implements JSObject {
  external bool? get prettyPrint;
  external String? get colorFormat;
  external bool? get includeComments;
  external String? get stylesCollectionName;
  external String? get rootName;
  external String? get collectionStructure;
  external bool? get useGoogleFonts;
}

enum OutputFormat { dart, json }

OutputFormat _currentFormat = OutputFormat.dart;
Map<String, dynamic> _currentOptions = {};

String? _normalizeOption(String? value) {
  final trimmed = value?.trim();
  if (trimmed == null || trimmed.isEmpty) {
    return null;
  }
  return trimmed;
}

void main() {
  final uiOptions = ShowUIOptions(width: 800, height: 600)..themeColors = true;
  figma.showUI(htmlContent, uiOptions);

  // Listen for selection changes
  figma.on(
      'selectionchange',
      (() {
        _generateCode();
      }).toJS);

  // Handle messages from UI
  figma.ui.onmessage = ((MessageData msg) {
    if (msg.type == 'generate') {
      _generateCode();
      return;
    }
    if (msg.type == 'format-changed') {
      _currentFormat = switch (msg.format) {
        'json' => OutputFormat.json,
        _ => OutputFormat.dart,
      };

      // Store options if provided
      if (msg.options != null) {
        final opts = msg.options as ExportOptions;
        _currentOptions = {
          if (opts.prettyPrint != null) 'prettyPrint': opts.prettyPrint,
          if (opts.colorFormat != null) 'colorFormat': opts.colorFormat,
          if (opts.includeComments != null)
            'includeComments': opts.includeComments,
          if (opts.stylesCollectionName != null)
            'stylesCollectionName': opts.stylesCollectionName,
          if (opts.rootName != null) 'rootName': opts.rootName,
          if (opts.collectionStructure != null)
            'collectionStructure': opts.collectionStructure,
          if (opts.useGoogleFonts != null)
            'useGoogleFonts': opts.useGoogleFonts,
        };
      }

      _generateCode();
      return;
    }

    if (msg.type == 'close') {
      figma.closePlugin();
      return;
    }
  }.toJS);
}

Future<void> _generateCode() async {
  print('Generating code...');

  final stylesCollectionName = _normalizeOption(
    _currentOptions['stylesCollectionName'] as String?,
  );

  final importOptions = stylesCollectionName == null
      ? const FigmaImportOptions()
      : FigmaImportOptions(
          naming: (stylesCollection: stylesCollectionName),
        );

  final importer = FigmaImporter();
  final library = await importer.importVariableCollections(
    ImportContext(importOptions),
  );

  String variablesCode;
  switch (_currentFormat) {
    case OutputFormat.dart:
      final generator = FlutterExporter();
      final rootName = _normalizeOption(_currentOptions['rootName'] as String?);
      final structureValue =
          _normalizeOption(_currentOptions['collectionStructure'] as String?);
      final flutterNaming = (root: rootName ?? 'Variables');
      final collectionStructure = structureValue == 'tree'
          ? VariableCollectionDataStructure.tree
          : VariableCollectionDataStructure.flat;
      final useGoogleFonts =
          _currentOptions['useGoogleFonts'] as bool? ?? false;
      variablesCode = await generator.exportVariableCollections(
        FlutterExportContext(
          collections: library,
          naming: flutterNaming,
          collectionStructure: collectionStructure,
          useGoogleFonts: useGoogleFonts,
        ),
      );

      break;
    case OutputFormat.json:
      final generator = JsonExporter();
      final prettyPrint = _currentOptions['prettyPrint'] as bool? ?? true;
      variablesCode = await generator.exportVariableCollections(
        JsonExportContext(collections: library, prettyPrint: prettyPrint),
      );
      break;
  }

  print('Code successfully generated!');

  final message = {'type': 'code-generated', 'code': variablesCode}.jsify()!;

  figma.ui.postMessage(message);
}
