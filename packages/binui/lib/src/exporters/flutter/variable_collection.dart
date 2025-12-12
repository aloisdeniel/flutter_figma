import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';
import 'package:binui/src/utils/dart/buffer.dart';
import 'package:binui/src/utils/dart/dart.dart';
import 'package:binui/src/utils/dart/flutter.dart';
import 'package:binui/src/utils/naming.dart';

class VariableCollectionDartExporter {
  const VariableCollectionDartExporter();

  String serialize(Library library, VariableCollection value) {
    final buffer = DartBuffer();
    write(buffer, library, value);
    return buffer.toString();
  }

  static void write(
    DartBuffer buffer,
    Library library,
    VariableCollection definition,
  ) {
    final baseTypeName = Naming.typeName(definition.name);

    // Mode
    final values = <String>[];
    for (var variant in definition.variants) {
      final valueName = Naming.fieldName(variant.name);
      values.add(valueName);
    }
    final modeEnum = DartEnum(name: '${baseTypeName}Mode', values: values);
    buffer.writeEnum(modeEnum);

    // Properties
    final fields = <DartField>[];
    for (var i = 0; i < definition.variables.length; i++) {
      final variable = definition.variables[i];
      final defaultValue = definition.variants.first.values[i];

      final name = Naming.fieldName(variable.name);
      final type = ValueDartExporter.getTypeName(library, defaultValue);

      fields.add(DartField(name: name, type: type));
    }

    final propertiesClass = DartClass.data(
      name: '${baseTypeName}Properties',
      fields: fields,
    );
    buffer.writeClass(propertiesClass);

    // Provider
    final providerClass = InheritedWidgetClass(
      name: '${baseTypeName}Properties',
      data: DartField(name: 'data', type: propertiesClass.name),
    );
    buffer.writeClass(providerClass);
  }
}
