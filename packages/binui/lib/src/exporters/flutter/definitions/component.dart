import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/definitions/component_property.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';
import 'package:binui/src/utils/dart_buffer.dart';

class ComponentDefinitionDartExporter {
  const ComponentDefinitionDartExporter();

  String serialize(Library library, Component component) {
    final buffer = DartBuffer();

    _serializeType(buffer, library, component);

    return buffer.toString();
  }

  void _serializeType(
    DartBuffer buffer,
    Library library,
    Component definition,
  ) {
    final baseTypeName = Naming.typeName(definition.name);
    final typeName = '${baseTypeName}Properties';
    final inheritedTypeName = '${typeName}Provider';

    if (definition.documentation.isNotEmpty) {
      buffer.writeln('/// ${definition.documentation}');
    }

    buffer.writeln('class $typeName {');

    // constructor
    final valueSerializer = ValueDartExporter();
    buffer.writeConstructor(typeName, {
      for (final property in definition.properties)
        property.name: valueSerializer.serialize(
          library,
          property.defaultValue,
        ),
    });

    buffer.writeln();

    // fields
    final propertySerializer = ComponentPropertyDartExporter();
    for (final property in definition.properties) {
      final serialized = propertySerializer.serialize(library, property);
      buffer.writeln('  $serialized');
    }

    buffer.writeln();

    // equality
    final props = definition.properties.map((e) => e.name).toList();
    buffer.writeOperatorEquals(typeName, props);
    buffer.writeHashCode(props);

    // inherited accessors
    buffer.writeln();
    buffer.writeln('''  static $typeName? maybeOf(fl.BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<$inheritedTypeName>();
    return instance?.properties;
  }

  static $typeName of(fl.BuildContext context) {
    final instance = maybeOf(context);
    assert(instance != null, 'No $inheritedTypeName found in context');
    return instance!;
  }''');
    buffer.writeln('}');

    // Inherited widget

    buffer.writeln();
    buffer.writeln('''class $inheritedTypeName extends fl.InheritedWidget {
  const $inheritedTypeName({super.key, required this.properties, required super.child});

  final $typeName properties;

  @override
  bool updateShouldNotify(covariant $inheritedTypeName oldWidget) {
    return oldWidget.properties != properties;
  }
}''');
  }
}
