import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/flutter/exporter.dart';
import 'package:binui/src/exporters/flutter/values/flutter/visual_node/visual_node.dart';
import 'package:binui/src/exporters/flutter/values/flutter/value.dart';
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
    final packageName = Naming.fileName(context.library.name);

    // Add imports
    buffer.writeln("import 'package:flutter/widgets.dart' as fl;");
    buffer.writeln("import 'package:flutter_figma/widgets.dart' as figma;");

    // Import variables if we have any variable collections
    if (context.library.variables.isNotEmpty) {
      buffer.writeln(
        "import 'package:$packageName/src/variables/variables.dart';",
      );
    }
    buffer.writeln();

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
            property.defaultValue.whichType(),
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

    // Generate a StatelessWidget for each variant
    final visualNodeExporter = VisualNodeDartExporter(
      valueSerializer: FlutterValueExporter(),
    );

    final hasVariables = context.library.variables.isNotEmpty;
    final hasProperties = definition.properties.isNotEmpty;

    for (final variant in definition.variants) {
      final variantTypeName = Naming.typeName(variant.name);

      final widgetClass = StatelessWidgetClass(
        name: variantTypeName,
        fields: const [],
        build: DartBody(
          build: (b) {
            // Declare variables at the beginning of the build method
            if (hasVariables) {
              b.writeln('final variables = Variables.of(context);');
            }
            if (hasProperties) {
              b.writeln(
                'final properties = ${baseTypeName}PropertiesProvider.of(context);',
              );
            }
            if (hasVariables || hasProperties) {
              b.writeln();
            }

            if (variant.hasRoot()) {
              final widgetCode = visualNodeExporter.serialize(
                context.library,
                variant.root,
              );
              b.writeln('return $widgetCode;');
            } else {
              b.writeln('return const fl.SizedBox.shrink();');
            }
          },
        ),
      );

      buffer.writeClass(widgetClass);
    }
  }
}
