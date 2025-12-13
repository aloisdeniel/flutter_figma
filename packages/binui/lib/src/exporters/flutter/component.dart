import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/exporter.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';
import 'package:binui/src/utils/dart/buffer.dart';
import 'package:binui/src/utils/dart/dart.dart';
import 'package:binui/src/utils/dart/flutter.dart';
import 'package:binui/src/utils/naming.dart';

class ComponentDefinitionDartExporter {
  const ComponentDefinitionDartExporter();

  String serialize(FlutterExportContext context, Component component) {
    final buffer = DartBuffer();
    write(buffer, context, component);
    return buffer.toString();
  }

  static void write(
    DartBuffer buffer,
    FlutterExportContext context,
    Component definition,
  ) {
    final baseTypeName = Naming.typeName(definition.name);

    final valueSerializer = ValueDartExporter();
    final fields = <DartField>[];
    for (final property in definition.properties) {
      final name = Naming.fieldName(property.name);
      final type = ValueDartExporter.getTypeName(
        context,
        property.defaultValue,
      );

      fields.add(
        DartField(
          name: name,
          type: type,
          defaultValue: valueSerializer.serialize(
            context,
            property.defaultValue,
          ),
        ),
      );
    }
    final propertiesClass = DartClass.data(
      name: '${baseTypeName}Properties',
      fields: fields,
    );

    final providerClass = InheritedWidgetClass(
      name: '${propertiesClass.name}Provider',
      data: DartField(name: 'data', type: propertiesClass.name),
    );

    buffer.writeClass(propertiesClass);
    buffer.writeClass(providerClass);
  }
}
