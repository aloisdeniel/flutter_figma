import 'dart:io';

import 'package:figma_codegen/figma_codegen.dart';
import 'package:test/test.dart';

void main() {
  group('CliRunner', () {
    late Directory tempDir;

    setUp(() async {
      tempDir = await Directory.systemTemp.createTemp('figma_cli_test_');
    });

    tearDown(() async {
      if (await tempDir.exists()) {
        await tempDir.delete(recursive: true);
      }
    });

    test('successfully imports and exports to JSON', () async {
      // Create input file
      final inputFile = File('${tempDir.path}/input.json');
      await inputFile.writeAsString('''
[
  {
    "id": "1",
    "name": "TestCollection",
    "variables": [{"id": "1", "name": "testVar"}],
    "variants": [
      {
        "id": "1",
        "name": "Default",
        "values": [{"stringValue": "test"}]
      }
    ]
  }
]
''');

      final outputFile = File('${tempDir.path}/output.json');

      final runner = CliRunner(
        inputPath: inputFile.path,
        outputPath: outputFile.path,
        format: OutputFormat.json,
        prettyPrint: true,
      );

      await runner.run();

      expect(await outputFile.exists(), isTrue);
      final content = await outputFile.readAsString();
      expect(content, contains('TestCollection'));
      expect(content, contains('testVar'));
    });

    test('successfully imports and exports to Dart', () async {
      // Create input file with color
      final inputFile = File('${tempDir.path}/input.json');
      await inputFile.writeAsString('''
[
  {
    "id": "1",
    "name": "Colors",
    "variables": [{"id": "1", "name": "primary"}],
    "variants": [
      {
        "id": "1",
        "name": "Light",
        "values": [
          {
            "color": {
              "red": 0.5,
              "green": 0.5,
              "blue": 0.5,
              "alpha": 1.0
            }
          }
        ]
      }
    ]
  }
]
''');

      final outputFile = File('${tempDir.path}/output.dart');

      final runner = CliRunner(
        inputPath: inputFile.path,
        outputPath: outputFile.path,
        format: OutputFormat.dart,
        prettyPrint: false,
      );

      await runner.run();

      expect(await outputFile.exists(), isTrue);
      final content = await outputFile.readAsString();
      expect(content, contains('import'));
      expect(content, contains('class'));
      expect(content, contains('Colors'));
    });

    test('throws InvalidInputException for non-existent file', () async {
      final runner = CliRunner(
        inputPath: '${tempDir.path}/nonexistent.json',
        outputPath: '${tempDir.path}/output.json',
        format: OutputFormat.json,
        prettyPrint: true,
      );

      expect(
        () => runner.run(),
        throwsA(isA<InvalidInputException>()),
      );
    });

    test('throws InvalidInputException for malformed JSON', () async {
      final inputFile = File('${tempDir.path}/invalid.json');
      await inputFile.writeAsString('not valid json {[}]');

      final runner = CliRunner(
        inputPath: inputFile.path,
        outputPath: '${tempDir.path}/output.json',
        format: OutputFormat.json,
        prettyPrint: true,
      );

      expect(
        () => runner.run(),
        throwsA(isA<InvalidInputException>()),
      );
    });

    test('throws InvalidInputException for empty collections', () async {
      final inputFile = File('${tempDir.path}/empty.json');
      await inputFile.writeAsString('[]');

      final runner = CliRunner(
        inputPath: inputFile.path,
        outputPath: '${tempDir.path}/output.json',
        format: OutputFormat.json,
        prettyPrint: true,
      );

      expect(
        () => runner.run(),
        throwsA(
          isA<InvalidInputException>().having(
            (e) => e.message,
            'message',
            contains('No variable collections found'),
          ),
        ),
      );
    });

    test('creates output directory if it does not exist', () async {
      final inputFile = File('${tempDir.path}/input.json');
      await inputFile.writeAsString('''
[
  {
    "id": "1",
    "name": "Test",
    "variables": [{"id": "1", "name": "var"}],
    "variants": [
      {
        "id": "1",
        "name": "Default",
        "values": [{"stringValue": "test"}]
      }
    ]
  }
]
''');

      final outputFile = File('${tempDir.path}/subdir/output.json');
      expect(await outputFile.parent.exists(), isFalse);

      final runner = CliRunner(
        inputPath: inputFile.path,
        outputPath: outputFile.path,
        format: OutputFormat.json,
        prettyPrint: true,
      );

      await runner.run();

      expect(await outputFile.exists(), isTrue);
      expect(await outputFile.parent.exists(), isTrue);
    });

    test('pretty print produces formatted JSON', () async {
      final inputFile = File('${tempDir.path}/input.json');
      await inputFile.writeAsString('''
[
  {
    "id": "1",
    "name": "Test",
    "variables": [{"id": "1", "name": "var"}],
    "variants": [
      {
        "id": "1",
        "name": "Default",
        "values": [{"stringValue": "test"}]
      }
    ]
  }
]
''');

      final prettyFile = File('${tempDir.path}/pretty.json');
      final compactFile = File('${tempDir.path}/compact.json');

      // Pretty print
      final prettyRunner = CliRunner(
        inputPath: inputFile.path,
        outputPath: prettyFile.path,
        format: OutputFormat.json,
        prettyPrint: true,
      );
      await prettyRunner.run();

      // Compact
      final compactRunner = CliRunner(
        inputPath: inputFile.path,
        outputPath: compactFile.path,
        format: OutputFormat.json,
        prettyPrint: false,
      );
      await compactRunner.run();

      final prettyContent = await prettyFile.readAsString();
      final compactContent = await compactFile.readAsString();

      expect(prettyContent.length, greaterThan(compactContent.length));
      expect(prettyContent, contains('\n'));
      expect(prettyContent, contains('  '));
    });
  });
}
