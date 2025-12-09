import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';

class ComponentPropertyDartExporter {
  const ComponentPropertyDartExporter();

  String serialize(
    Library library,
    ComponentProperty property, {
    bool nullable = false,
  }) {
    final buffer = StringBuffer();
    if (property.documentation.isNotEmpty) {
      buffer.writeln('/// ${property.documentation}');
    }
    final propName = Naming.fieldName(property.name);
    var typeName = ValueDartExporter.getTypeName(
      library,
      property.defaultValue,
    );
    if (nullable) {
      typeName = '$typeName?';
    }
    buffer.writeln('final $typeName $propName;');
    return buffer.toString();
  }
}
