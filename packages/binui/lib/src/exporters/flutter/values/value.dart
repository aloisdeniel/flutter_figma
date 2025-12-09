import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';

class ValueDartExporter {
  const ValueDartExporter({this.alwaysFallback = true});

  final bool alwaysFallback;

  String serialize(Library library, Value value) {}

  static String getTypeName(Library library, Value value) {
    return switch (value.whichType()) {
      Value_Type.alias => switch (value.alias.whichType()) {
        Alias_Type.variable => getTypeName(
          library,
          value.alias.variable.defaultValue,
        ),
        Alias_Type.property => getTypeName(
          library,
          value.alias.property.defaultValue,
        ),
        Alias_Type.constant => getTypeName(library, value.alias.constant.value),
        Alias_Type.notSet => throw Exception(),
      },
      Value_Type.color => 'fl.Color',
      Value_Type.border => 'fl.Border',
      Value_Type.gradient => 'fl.Gradient',
      Value_Type.label => 'String',
      Value_Type.boolean => 'bool',
      Value_Type.stringValue => 'string',
      Value_Type.doubleValue => 'double',
      Value_Type.offset => 'fl.Offset',
      Value_Type.borderSide => 'fl.BorderSide',
      Value_Type.borderRadius => 'fl.BorderRadius',
      Value_Type.radius => 'fl.Radius',
      Value_Type.rect => 'fl.Rect',
      Value_Type.size => 'fl.Size',
      Value_Type.textStyle => 'fl.TextStyle',
      Value_Type.version => '(int,int,int)',
      Value_Type.variantValue => () {
        final component = library.findComponent(value.variantValue.componentId);
        if (component == null) return 'Never';
        final variant = component.findVariant(value.variantValue.variantId);
        if (variant == null) return 'Never';
        return Naming.typeName(component.name) + Naming.typeName(variant.name);
      }(),
      Value_Type.vectorGraphics => 'String',
      Value_Type.transform2D => 'List<List<double>>',
      Value_Type.visualNode => 'Widget',
      Value_Type.notSet => throw Exception(),
    };
  }
}
