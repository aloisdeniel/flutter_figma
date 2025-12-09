import 'package:binui/src/definitions.pb.dart';
import 'package:recase/recase.dart';

class PubspecDartExporter {
  const PubspecDartExporter();
  String serialize(Library value) {
    final name = ReCase(value.name).snakeCase;
    return '''name: $name
description: ${value.documentation}
version: ${value.version.major}.${value.version.minor}.${value.version.patch}
environment:
  sdk: ^3.8.1
dependencies:
  flutter:
    sdk: flutter
''';
  }
}
