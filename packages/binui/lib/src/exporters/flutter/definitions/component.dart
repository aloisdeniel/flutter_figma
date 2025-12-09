import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';

class ComponentDefinitionDartExporter {
  const ComponentDefinitionDartExporter();

  String serialize(Library library, Component component) {
    final buffer = StringBuffer();

    _serializeType(buffer, definition, context);

    return buffer.toString();
  }

  void _serializeType(StringBuffer buffer, Component definition) {
    final baseTypeName = Naming.typeName(definition.name);
    final typeName = '${baseTypeName}Properties';
    final inheritedTypeName = '${typeName}Provider';

    if (definition.documentation.isNotEmpty) {
      buffer.writeln('/// ${definition.documentation}');
    }

    buffer.writeln('class $typeName {');

    // constructor
    buffer.writeConstructor(typeName, {
      for (final property in definition.properties)
        property.name: valueSerializer.serialize(
          property.defaultValue,
          context,
        ),
    });

    buffer.writeln();

    // fields
    for (final property in definition.properties) {
      final serialized = propertySerializer.serialize(property, context);
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
