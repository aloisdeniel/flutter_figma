#!/usr/bin/env dart

import 'dart:io';

import 'package:args/args.dart';
import 'package:figma_codegen/src/cli/exceptions.dart';
import 'package:figma_codegen/src/cli/output_format.dart';
import 'package:figma_codegen/src/cli/runner.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/options.dart';

const String version = '1.0.0';

void main(List<String> arguments) async {
  final parser = ArgParser()
    ..addOption(
      'input',
      abbr: 'i',
      help: 'Input JSON file path',
      mandatory: true,
    )
    ..addOption('output', abbr: 'o', help: 'Output file path', mandatory: true)
    ..addOption(
      'format',
      abbr: 'f',
      help: 'Output format (json, or dart)',
      mandatory: true,
      allowed: ['json', 'dart'],
    )
    ..addOption(
      'collection-structure',
      help: 'Dart collection structure (flat, or tree)',
      defaultsTo: 'flat',
      allowed: ['flat', 'tree'],
    )
    ..addFlag(
      'pretty',
      abbr: 'p',
      help: 'Pretty print JSON output',
      defaultsTo: true,
    )
    ..addFlag(
      'help',
      abbr: 'h',
      help: 'Display usage information',
      negatable: false,
    )
    ..addFlag(
      'version',
      abbr: 'v',
      help: 'Display version information',
      negatable: false,
    );

  try {
    final results = parser.parse(arguments);

    if (results['help'] as bool) {
      _printUsage(parser);
      exit(0);
    }

    if (results['version'] as bool) {
      _printVersion();
      exit(0);
    }

    final format = OutputFormat.fromString(results['format'] as String);

    final structureValue = results['collection-structure'] as String;
    final collectionStructure = structureValue == 'tree'
        ? VariableCollectionDataStructure.tree
        : VariableCollectionDataStructure.flat;

    final runner = CliRunner(
      inputPath: results['input'] as String,
      outputPath: results['output'] as String,
      format: format,
      prettyPrint: results['pretty'] as bool,
      collectionStructure: collectionStructure,
    );

    await runner.run();
    exit(0);
  } on FormatException catch (e) {
    stderr.writeln('Error: ${e.message}\n');
    _printUsage(parser);
    exit(2);
  } on InvalidInputException catch (e) {
    stderr.writeln('Error: $e');
    exit(4);
  } on ExportException catch (e) {
    stderr.writeln('Error: $e');
    exit(3);
  } catch (e) {
    stderr.writeln('Error: $e');
    exit(1);
  }
}

void _printUsage(ArgParser parser) {
  stdout.writeln('Usage: figma_cli [options]');
  stdout.writeln();
  stdout.writeln(
    'Import Figma variable collections from JSON and export as JSON, Dart, or CSS.',
  );
  stdout.writeln();
  stdout.writeln('Options:');
  stdout.writeln(parser.usage);
  stdout.writeln();
  stdout.writeln('Examples:');
  stdout.writeln('  figma_cli -i vars.json -o lib/theme/vars.dart -f dart');
  stdout.writeln(
    '  figma_cli -i vars.json -o lib/theme/vars.dart -f dart --collection-structure tree',
  );
  stdout.writeln(
    '  figma_cli --input vars.json --output output.json --format json',
  );
  stdout.writeln('  figma_cli -i vars.json -o output.json -f json --no-pretty');
}

void _printVersion() {
  stdout.writeln('figma_cli version $version');
}
