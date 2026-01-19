import 'dart:io';

import 'package:figma_codegen/src/cli/exceptions.dart';
import 'package:figma_codegen/src/cli/file_operations.dart';
import 'package:figma_codegen/src/cli/output_format.dart';
import 'package:figma_codegen/src/definitions/library.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/options.dart';
import 'package:figma_codegen/src/exporter/flutter/vector_graphics/options.dart';
import 'package:figma_codegen/src/exporter/json/exporter.dart';
import 'package:figma_codegen/src/importers/json/importer.dart';

class CliRunner {
  CliRunner({
    required this.inputPath,
    required this.outputPath,
    required this.format,
    required this.prettyPrint,
    this.collectionStructure = VariableCollectionDataStructure.flat,
    this.useGoogleFonts = false,
  });

  final String inputPath;
  final String outputPath;
  final OutputFormat format;
  final bool prettyPrint;
  final VariableCollectionDataStructure collectionStructure;
  final bool useGoogleFonts;

  Future<void> run() async {
    // Step 1: Read input file
    final String content;
    try {
      content = await FileOperations.readFile(inputPath);
    } catch (e) {
      if (e is InvalidInputException) rethrow;
      throw InvalidInputException('Failed to read input file: $e');
    }

    // Step 2: Import variable collections
    final Library library;
    try {
      final importer = JsonImporter();
      library = await importer.import(content);
    } on FormatException catch (e) {
      throw InvalidInputException(
        'Invalid JSON format: ${e.message}\n'
        'The input file must contain a JSON array matching the variables.proto schema.',
      );
    } catch (e) {
      throw InvalidInputException('Failed to parse input: $e');
    }

    // Step 3: Validate collections
    if (library.variables.isEmpty) {
      throw InvalidInputException(
        'No variable collections found in input file.\n'
        'The input must contain at least one variable collection.',
      );
    }

    // Step 4: Export based on format
    final String output;
    try {
      switch (format) {
        case OutputFormat.json:
          final exporter = JsonExporter();
          final context = JsonExportContext(
            collections: library.variables,
            prettyPrint: prettyPrint,
          );
          output = exporter.exportVariableCollections(context);
          break;

        case OutputFormat.dart:
          final exporter = FlutterExporter();
          final context = FlutterExportContext(
            variables: FlutterVariablesExportOptions(
              collections: library.variables,
              collectionStructure: collectionStructure,
              useGoogleFonts: useGoogleFonts,
            ),
            vectorGraphics: FlutterVectorGraphicsExportOptions(
              format: FlutterVectorGraphicsFormat.canvas,
            ),
          );
          output = exporter.exportVariableCollections(context);
          break;
      }
    } catch (e) {
      throw ExportException('Failed to export: $e');
    }

    // Step 5: Write output file
    try {
      await FileOperations.writeFile(outputPath, output);
    } catch (e) {
      if (e is ExportException) rethrow;
      throw ExportException('Failed to write output file: $e');
    }

    // Step 6: Success message
    stdout.writeln('Successfully exported to: $outputPath');
  }
}
