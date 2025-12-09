import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';

class EnumDefinitionDartExporter {
  const EnumDefinitionDartExporter({this.prefix = ''});

  final String prefix;

  String serializeVariant(ComponentVariantDefinition definition) {
    final buffer = StringBuffer();

    if (definition.documentation.isNotEmpty) {
      buffer.writeln('/// ${definition.documentation}');
    }

    final enumName = prefix + Naming.typeName(definition.name);
    buffer.writeln('enum $enumName {');

    for (var i = 0; i < definition.values.length; i++) {
      final value = definition.values[i];
      if (value.documentation.isNotEmpty) {
        buffer.writeln('  /// ${value.documentation}');
      }
      final comma = i < definition.values.length - 1 ? ',' : ';';
      final valueName = Naming.fieldName(value.name);
      buffer.writeln('  $valueName$comma');
    }

    buffer.writeln('}');

    return buffer.toString();
  }
}
