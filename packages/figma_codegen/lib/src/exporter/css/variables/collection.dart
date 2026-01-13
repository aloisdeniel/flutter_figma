import '../../../definitions/variables.dart';
import '../exporter.dart';
import '../naming.dart';
import '../values/text_style.dart';
import '../values/value.dart';

class CssVariableCollectionExporter {
  const CssVariableCollectionExporter();

  void serialize(
    CssExportContext context,
    StringBuffer buffer,
    VariableCollection collection,
  ) {
    final collectionName = CssNaming.collectionName(collection.name);

    if (collection.variants.length == 1) {
      _writeSingleVariant(context, buffer, collection, collectionName);
    } else {
      _writeMultiVariant(context, buffer, collection, collectionName);
    }
  }

  void _writeSingleVariant(
    CssExportContext context,
    StringBuffer buffer,
    VariableCollection collection,
    String collectionName,
  ) {
    final variant = collection.variants.first;

    if (context.includeComments) {
      buffer.writeln('/* Collection: ${collection.name} */');
      if (collection.hasDocumentation()) {
        buffer.writeln('/* ${collection.documentation} */');
      }
    }

    buffer.writeln(':root {');
    _writeVariables(context, buffer, collection, variant, collectionName);
    buffer.writeln('}');
    buffer.writeln();
  }

  void _writeMultiVariant(
    CssExportContext context,
    StringBuffer buffer,
    VariableCollection collection,
    String collectionName,
  ) {
    if (context.includeComments) {
      buffer.writeln('/* Collection: ${collection.name} (multi-variant) */');
      if (collection.hasDocumentation()) {
        buffer.writeln('/* ${collection.documentation} */');
      }
    }

    for (final variant in collection.variants) {
      final variantName = CssNaming.collectionName(variant.name);

      if (context.includeComments && variant.hasDocumentation()) {
        buffer.writeln('/* Variant: ${variant.name} - ${variant.documentation} */');
      } else if (context.includeComments) {
        buffer.writeln('/* Variant: ${variant.name} */');
      }

      buffer.writeln(':root[data-$collectionName="$variantName"] {');
      _writeVariables(context, buffer, collection, variant, collectionName);
      buffer.writeln('}');
      buffer.writeln();
    }
  }

  void _writeVariables(
    CssExportContext context,
    StringBuffer buffer,
    VariableCollection collection,
    VariableCollectionVariant variant,
    String collectionName,
  ) {
    final valueExporter = CssValueExporter();
    final textStyleExporter = CssTextStyleExporter();
    final indent = context.prettyPrint ? '  ' : '';

    for (var i = 0; i < collection.variables.length; i++) {
      final variable = collection.variables[i];
      final value = variant.values[i];
      final varName = CssNaming.cssVarName(collection.name, variable.name);

      // Handle text styles specially - they expand to multiple properties
      if (value.whichType() == Value_Type.textStyle) {
        final properties = textStyleExporter.serialize(value.textStyle);
        for (final entry in properties.entries) {
          final propVarName = '$varName-${entry.key}';
          buffer.write('$indent$propVarName: ${entry.value};');
          if (context.prettyPrint) buffer.writeln();
        }
      } else {
        final serializedValue = valueExporter.serialize(context, value);
        if (serializedValue != null) {
          buffer.write('$indent$varName: $serializedValue;');
          if (context.prettyPrint) buffer.writeln();
        }
      }
    }
  }
}
