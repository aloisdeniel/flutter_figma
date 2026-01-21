import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/exporter/flutter/exporter.dart';
import 'package:figma_codegen/src/utils/dart/buffer.dart';
import 'package:figma_codegen/src/utils/dart/dart.dart';
import 'package:figma_codegen/src/utils/dart/naming.dart';

class ComponentsDartExporter {
  const ComponentsDartExporter();

  String export(FlutterExportContext context) {
    final buffer = DartBuffer();

    buffer.writeln("import 'package:flutter/widgets.dart';");
    buffer.writeln();

    serialize(context, buffer);

    return buffer.toString();
  }

  void serialize(FlutterExportContext context, DartBuffer buffer) {
    final components = context.components.components;
    if (components.isEmpty) {
      buffer.writeln('// No components to export.');
      return;
    }

    for (final component in components) {
      _writeComponent(buffer, component);
    }
  }
}

class _VariantInfo {
  _VariantInfo({
    required this.enumName,
    required this.options,
  });

  final String enumName;
  final Map<String, String> options;
}

class _ResolvedProperty {
  _ResolvedProperty({
    required this.fieldName,
    required this.type,
    required this.defaultLiteral,
    this.variant,
  });

  final String fieldName;
  final String type;
  final String defaultLiteral;
  final _VariantInfo? variant;
}

void _writeComponent(DartBuffer buffer, Component component) {
  final componentName = Naming.typeName(component.name);
  final variants = _resolveVariants(componentName, component.variants);
  final properties = _resolveProperties(component, variants);

  for (final variant in variants.values) {
    buffer.writeEnum(
      DartEnum(
        name: variant.enumName,
        values: variant.options.values.toList(),
      ),
    );
  }

  _writeDataClass(buffer, componentName, properties);
  _writeInheritedWidget(buffer, componentName);
  _writeWidget(buffer, componentName, properties, variants);
}

Map<String, _VariantInfo> _resolveVariants(
  String componentName,
  List<ComponentVariant> variants,
) {
  final result = <String, _VariantInfo>{};
  for (final variant in variants) {
    final variantName = variant.name.isNotEmpty ? variant.name : 'Variant';
    final enumName = '${componentName}${Naming.typeName(variantName)}Variant';
    final options = <String, String>{};
    for (final option in variant.options) {
      options[option] = Naming.fieldName(option);
    }
    result[variantName] = _VariantInfo(
      enumName: enumName,
      options: options,
    );
  }
  return result;
}

List<_ResolvedProperty> _resolveProperties(
  Component component,
  Map<String, _VariantInfo> variants,
) {
  final properties = <_ResolvedProperty>[];
  for (final property in component.properties) {
    final defaultValue = property.defaultValue;
    final fieldName = Naming.fieldName(property.name);

    switch (defaultValue.whichValue()) {
      case ComponentPropertyValue_Value.booleanValue:
        final literal = defaultValue.booleanValue ? 'true' : 'false';
        properties.add(
          _ResolvedProperty(
            fieldName: fieldName,
            type: 'bool',
            defaultLiteral: literal,
          ),
        );
      case ComponentPropertyValue_Value.stringValue:
        properties.add(
          _ResolvedProperty(
            fieldName: fieldName,
            type: 'String',
            defaultLiteral: _stringLiteral(defaultValue.stringValue),
          ),
        );
      case ComponentPropertyValue_Value.numberValue:
        properties.add(
          _ResolvedProperty(
            fieldName: fieldName,
            type: 'double',
            defaultLiteral: defaultValue.numberValue.toString(),
          ),
        );
      case ComponentPropertyValue_Value.variantValue:
        final variantValue = defaultValue.variantValue;
        final variantName =
            variantValue.variantName.isNotEmpty ? variantValue.variantName : property.name;
        final variant = variants[variantName];

        if (variant != null && variant.options.isNotEmpty) {
          final optionKey = variantValue.value;
          final optionName = variant.options[optionKey] ?? variant.options.values.first;
          final defaultLiteral = '${variant.enumName}.$optionName';
          properties.add(
            _ResolvedProperty(
              fieldName: fieldName,
              type: variant.enumName,
              defaultLiteral: defaultLiteral,
              variant: variant,
            ),
          );
        } else {
          properties.add(
            _ResolvedProperty(
              fieldName: fieldName,
              type: 'String',
              defaultLiteral: _stringLiteral(variantValue.value),
            ),
          );
        }
      case ComponentPropertyValue_Value.instanceSwapValue:
        final componentNameValue = defaultValue.instanceSwapValue.componentName;
        properties.add(
          _ResolvedProperty(
            fieldName: fieldName,
            type: 'String',
            defaultLiteral: _stringLiteral(componentNameValue),
          ),
        );
      case ComponentPropertyValue_Value.notSet:
        properties.add(
          _ResolvedProperty(
            fieldName: fieldName,
            type: 'String?',
            defaultLiteral: 'null',
          ),
        );
    }
  }

  return properties;
}

void _writeDataClass(
  DartBuffer buffer,
  String componentName,
  List<_ResolvedProperty> properties,
) {
  final className = '${componentName}Data';
  final fields = properties
      .map(
        (prop) => DartField(
          name: prop.fieldName,
          type: prop.type,
        ),
      )
      .toList();

  final constructor = DartConstructor(
    type: className,
    args: properties
        .map(
          (prop) => DartArgument(
            name: prop.fieldName,
            type: prop.type,
            isNamed: true,
            defaultValue: prop.defaultLiteral == 'null' ? null : prop.defaultLiteral,
          ),
        )
        .toList(),
  );

  final dataClass = DartClass(
    name: className,
    fields: fields,
    constructors: [constructor],
    getters: [DartGetter.hashCode(props: fields)],
    methods: [
      DartMethod.equals(typeName: className, props: fields),
      DartMethod.toString(typeName: className, props: fields),
      DartMethod.copyWith(typeName: className, props: fields),
    ],
  );

  buffer.writeClass(dataClass);
}

void _writeInheritedWidget(DartBuffer buffer, String componentName) {
  final className = '${componentName}Properties';
  final dataType = '${componentName}Data';
  buffer.writeln('class $className extends InheritedWidget {');
  buffer.indent();
  buffer.writeln(
    'const $className({super.key, required this.data, required super.child});',
  );
  buffer.writeln();
  buffer.writeln('final $dataType data;');
  buffer.writeln();
  buffer.writeln('static $dataType of(BuildContext context) {');
  buffer.indent();
  buffer.writeln(
    'final result = context.dependOnInheritedWidgetOfExactType<$className>();',
  );
  buffer.writeln(
    "assert(result != null, 'No $className found in the widget tree');",
  );
  buffer.writeln('return result!.data;');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();
  buffer.writeln('@override');
  buffer.writeln(
    'bool updateShouldNotify($className oldWidget) => data != oldWidget.data;',
  );
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();
}

void _writeWidget(
  DartBuffer buffer,
  String componentName,
  List<_ResolvedProperty> properties,
  Map<String, _VariantInfo> variants,
) {
  final widgetName = componentName;
  final dataType = '${componentName}Data';
  final propertiesClass = '${componentName}Properties';
  final singleVariant = variants.length == 1 ? variants.values.first : null;
  final variantField = properties.firstWhere(
    (prop) => prop.variant == singleVariant,
    orElse: () => _ResolvedProperty(
      fieldName: '',
      type: '',
      defaultLiteral: '',
    ),
  );

  buffer.writeln('class $widgetName extends StatelessWidget {');
  buffer.indent();
  buffer.writeln('const $widgetName({');
  buffer.indent();
  buffer.writeln('super.key,');
  buffer.writeln('required this.child,');
  buffer.writeln('$dataType? data,');
  for (final prop in properties) {
    final defaultLiteral = prop.defaultLiteral;
    final defaultPart = defaultLiteral == 'null' ? '' : ' = $defaultLiteral';
    buffer.writeln('${prop.type} ${prop.fieldName}$defaultPart,');
  }
  buffer.unindent();
  buffer.writeln('}) : data = data ?? $dataType(');
  buffer.indent();
  for (final prop in properties) {
    buffer.writeln('${prop.fieldName}: ${prop.fieldName},');
  }
  buffer.unindent();
  buffer.writeln(');');
  buffer.writeln();
  buffer.writeln('final Widget child;');
  buffer.writeln('final $dataType data;');

  if (singleVariant != null && variantField.fieldName.isNotEmpty) {
    for (final option in singleVariant.options.entries) {
      final constructorName = option.value;
      final variantLiteral = '${singleVariant.enumName}.${option.value}';
      buffer.writeln();
      buffer.writeln('const $widgetName.$constructorName({');
      buffer.indent();
      buffer.writeln('super.key,');
      buffer.writeln('required Widget child,');
      buffer.writeln('$dataType? data,');
      for (final prop in properties) {
        if (prop.variant == singleVariant) {
          continue;
        }
        final defaultLiteral = prop.defaultLiteral;
        final defaultPart = defaultLiteral == 'null' ? '' : ' = $defaultLiteral';
        buffer.writeln('${prop.type} ${prop.fieldName}$defaultPart,');
      }
      buffer.unindent();
      buffer.writeln('}) : this(');
      buffer.indent();
      buffer.writeln('key: key,');
      buffer.writeln('child: child,');
      buffer.writeln('data: data,');
      buffer.writeln('${variantField.fieldName}: $variantLiteral,');
      for (final prop in properties) {
        if (prop.variant == singleVariant) {
          continue;
        }
        buffer.writeln('${prop.fieldName}: ${prop.fieldName},');
      }
      buffer.unindent();
      buffer.writeln(');');
    }
  }

  buffer.writeln();
  buffer.writeln('@override');
  buffer.writeln('Widget build(BuildContext context) {');
  buffer.indent();
  buffer.writeln('return $propertiesClass(');
  buffer.indent();
  buffer.writeln('data: data,');
  buffer.writeln('child: child,');
  buffer.unindent();
  buffer.writeln(');');
  buffer.unindent();
  buffer.writeln('}');
  buffer.unindent();
  buffer.writeln('}');
  buffer.writeln();
}

String _stringLiteral(String value) {
  final escaped = value.replaceAll("'", "\\'");
  return "'$escaped'";
}
