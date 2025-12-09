import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';
import 'package:binui/src/utils/dart_buffer.dart';

class VariableCollectionDartExporter {
  const VariableCollectionDartExporter();

  String serialize(Library library, VariableCollection definition) {
    final valueSerializer = ValueDartExporter();
    final props = definition.variables;
    final baseTypeName = Naming.typeName(definition.name);
    final buffer = DartBuffer();

    // Mode enum
    buffer.writeln('enum ${baseTypeName}Mode {');
    for (final variant in definition.variants) {
      if (variant.documentation.isNotEmpty) {
        buffer.writeApiDocumentation(definition.documentation);
      }
      final valueName = Naming.fieldName(variant.name);
      buffer.writeln('  $valueName,');
    }

    buffer.writeln('}');

    buffer.writeln();

    buffer.writeApiDocumentation(definition.documentation);

    final dataTypeName = '${baseTypeName}Data';
    buffer.writeln('class $dataTypeName {');

    // constructorj
    buffer.writeln('  const $dataTypeName({');
    for (final property in props) {
      final propName = Naming.fieldName(property.name);
      buffer.writeln('    required this.$propName,');
    }
    buffer.writeln('    this.key = null,');
    buffer.writeln('  });');

    // variant constructors
    for (final variant in definition.variants) {
      buffer.writeApiDocumentation(variant.documentation);
      buffer.writeln(
        '  const $dataTypeName.${Naming.fieldName(variant.name)}() :',
      );

      final modeValueName = Naming.fieldName(variant.name);
      buffer.writeln('    key = ${baseTypeName}Mode.$modeValueName,');
      for (var i = 0; i < variant.values.length; i++) {
        final prop = props[i];
        final propName = Naming.fieldName(prop.name);

        final variantValue = variant.values[i];
        final value = valueSerializer.serialize(library, variantValue);
        buffer.writeln('    $propName = $value');

        final isLast = i == variant.values.length - 1;
        if (!isLast) {
          buffer.write(',');
        }
      }
      buffer.writeln(';');
    }

    buffer.writeln();

    // fields
    buffer.writeln('/// Unique mode identifier.');
    buffer.writeln('final dynamic key;');
    for (var i = 0; i < definition.variables.length; i++) {
      final variable = definition.variables[i];
      final defaultValue = definition.variants.first.values[i];
      buffer.writeApiDocumentation(variable.documentation);
      final propName = Naming.fieldName(variable.name);
      var typeName = ValueDartExporter.getTypeName(library, defaultValue);
      buffer.writeln('final $typeName $propName;');
    }

    final propMap = {
      for (var i = 0; i < definition.variables.length; i++)
        Naming.fieldName(
          definition.variables[i].name,
        ): ValueDartExporter.getTypeName(
          library,
          definition.variants.first.values[i],
        ),
    };
    final propNames = propMap.keys.toList();
    // copyWith
    buffer.writeln();
    buffer.writeCopyWith(dataTypeName, propMap);

    // equality
    buffer.writeln();
    buffer.writeOperatorEquals(dataTypeName, propNames);
    buffer.writeHashCode(propNames);

    buffer.writeln('}');

    // Inherited widget

    buffer.writeln();
    buffer.writeln('''class $baseTypeName extends fl.InheritedWidget {
  const $baseTypeName({super.key, required this.data, required super.child});

  final $dataTypeName data;

  static $dataTypeName? maybeOf(fl.BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<$baseTypeName>();
    return instance?.data;
  }

  static $dataTypeName of(fl.BuildContext context) {
    final instance = maybeOf(context);
    assert(instance != null, 'No $baseTypeName found in context');
    return instance!;
  }

  @override
  bool updateShouldNotify(covariant $baseTypeName oldWidget) {
    if (data.key != null && oldWidget.data.key != null) {
      return oldWidget.data.key != data.key;
    }
    return oldWidget.data != data;
  }
}
''');

    return buffer.toString();
  }
}
