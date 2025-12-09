import 'package:binui/src/definitions.pb.dart';

class VariableCollectionDartExporter {
  const VariableCollectionDartExporter();

  String serialize(VariableCollection definition) {
    final baseVariables = definition.variants.first.variables;
    final props = definition.variants.first.variableNames.toList();
    final baseTypeName = Naming.typeName(definition.name);
    final buffer = StringBuffer();

    // Mode enum
    buffer.writeln('enum ${baseTypeName}Mode {');
    for (final variant in definition.variants) {
      if (variant.documentation.isNotEmpty) {
        buffer.writeln('/// ${definition.documentation}');
      }
      final valueName = Naming.fieldName(variant.name);
      buffer.writeln('  $valueName,');
    }

    buffer.writeln('}');

    buffer.writeln();

    if (definition.documentation != null) {
      buffer.writeln('/// ${definition.documentation}');
    }

    final dataTypeName = '${baseTypeName}Data';
    buffer.writeln('class $dataTypeName {');

    // constructorj
    buffer.writeln('  const $dataTypeName({');
    for (final property in baseVariables) {
      final propName = Naming.fieldName(property.name);
      buffer.writeln('    required this.$propName,');
    }
    buffer.writeln('    this.key = null,');
    buffer.writeln('  });');

    // variant constructors
    for (final variant in definition.variants) {
      if (variant.documentation != null) {
        buffer.writeln('/// ${definition.documentation}');
      }
      buffer.writeln(
        '  const $dataTypeName.${Naming.fieldName(variant.name)}() :',
      );

      final modeValueName = Naming.fieldName(variant.name);
      buffer.writeln('    key = ${baseTypeName}Mode.$modeValueName,');
      for (var i = 0; i < baseVariables.length; i++) {
        final property = baseVariables[i];
        final isLast = i == baseVariables.length - 1;
        final propName = Naming.fieldName(property.name);
        final value = valueSerializer.serialize(property.value, context);
        buffer.writeln('    $propName = $value');
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
    for (final variable in baseVariables) {
      if (variable.documentation != null) {
        buffer.writeln('/// ${variable.documentation}');
      }
      final propName = Naming.fieldName(variable.name);
      var typeName = ValueDartExporter.getTypeName(variable.value);
      buffer.writeln('final $typeName $propName;');
    }

    // copyWith
    buffer.writeln();
    buffer.writeCopyWith(dataTypeName, {
      for (final property in baseVariables)
        property.name: ValueDartExporter.getTypeName(property.value),
    });

    // equality
    buffer.writeln();
    buffer.writeOperatorEquals(dataTypeName, props);
    buffer.writeHashCode(props);

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
