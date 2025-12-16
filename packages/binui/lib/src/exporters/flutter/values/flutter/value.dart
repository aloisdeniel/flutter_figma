import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/flutter/alias.dart';
import 'package:binui/src/exporters/flutter/values/flutter/border.dart';
import 'package:binui/src/exporters/flutter/values/flutter/color.dart';
import 'package:binui/src/exporters/flutter/values/flutter/gradient.dart';
import 'package:binui/src/exporters/flutter/values/flutter/label.dart';
import 'package:binui/src/exporters/flutter/values/flutter/offset.dart';
import 'package:binui/src/exporters/flutter/values/flutter/radius.dart';
import 'package:binui/src/exporters/flutter/values/flutter/rect.dart';
import 'package:binui/src/exporters/flutter/values/flutter/size.dart';
import 'package:binui/src/exporters/flutter/values/flutter/text_style.dart';
import 'package:binui/src/exporters/flutter/values/flutter/transform2d.dart';
import 'package:binui/src/exporters/flutter/values/flutter/visual_node/visual_node.dart';
import 'package:binui/src/utils/naming.dart';

class FlutterValueExporter {
  const FlutterValueExporter({this.alwaysFallback = true});

  final bool alwaysFallback;

  String serialize(Library library, Value value) {
    return switch (value.whichType()) {
      Value_Type.alias => AliasDartExporter(
        alwaysFallback: alwaysFallback,
        valueSerializer: this,
      ).serialize(library, value.alias),
      Value_Type.stringValue => "'${value.stringValue.replaceAll("'", "\\'")}'",
      Value_Type.doubleValue => value.doubleValue.toString(),
      Value_Type.boolean => value.boolean.toString(),
      Value_Type.size => const SizeDartExporter().serialize(value.size),
      Value_Type.color => const ColorDartExporter().serialize(value.color),
      Value_Type.border => const BorderDartExporter().serialize(value.border),
      Value_Type.borderSide => const BorderSideDartExporter().serialize(
        value.borderSide,
      ),
      Value_Type.gradient => GradientDartExporter().serialize(
        library,
        value.gradient,
      ),
      Value_Type.label => LabelDartExporter(
        valueSerializer: this,
      ).serialize(library, value.label),
      Value_Type.offset => const OffsetDartExporter().serialize(value.offset),
      Value_Type.radius => const RadiusDartExporter().serialize(value.radius),
      Value_Type.borderRadius => const BorderRadiusDartExporter(
        radiusSerializer: RadiusDartExporter(),
      ).serialize(value.borderRadius),
      Value_Type.rect => const RectDartExporter().serialize(value.rect),
      Value_Type.textStyle => const TextStyleDartExporter().serialize(
        value.textStyle,
      ),
      Value_Type.transform2D => const Transform2DDartExporter().serialize(
        value.transform2D,
      ),
      Value_Type.variantValue => _serializeVariantValue(
        library,
        value.variantValue,
      ),
      Value_Type.vectorGraphics =>
        "'${value.vectorGraphics.svg.data.replaceAll("'", "\\'")}'",
      Value_Type.version =>
        '(${value.version.major}, ${value.version.minor}, ${value.version.patch})',
      Value_Type.visualNode => VisualNodeDartExporter(
        valueSerializer: this,
      ).serialize(library, value.visualNode),
      Value_Type.notSet => throw Exception('Value type not set'),
    };
  }

  String _serializeVariantValue(Library library, VariantValue variantValue) {
    final component = library.findComponent(variantValue.componentId);
    if (component == null) return 'null';

    final variantDef = component.findVariant(variantValue.variantId);
    if (variantDef == null) return 'null';

    final valueOption = variantDef.findValueDefinition(variantValue.valueId);
    if (valueOption == null) return 'null';

    final enumName =
        Naming.typeName(component.name) + Naming.typeName(variantDef.name);
    final valueName = Naming.fieldName(valueOption.name);

    return '$enumName.$valueName';
  }

  static String getTypeName(Library library, Value value) {
    return switch (value.whichType()) {
      Value_Type.alias => mapTypeName(library.resolveAliasType(value.alias)!),
      Value_Type.variantValue => () {
        final component = library.findComponent(value.variantValue.componentId);
        if (component == null) return 'Never';
        final variant = component.findVariant(value.variantValue.variantId);
        if (variant == null) return 'Never';
        return Naming.typeName(component.name) + Naming.typeName(variant.name);
      }(),
      _ => mapTypeName(value.whichType()),
    };
  }

  static String mapTypeName(Value_Type type) {
    return switch (type) {
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
      Value_Type.vectorGraphics => 'String',
      Value_Type.transform2D => 'List<List<double>>',
      Value_Type.visualNode => 'Widget',
      Value_Type.notSet ||
      Value_Type.alias ||
      Value_Type.variantValue => throw Exception(),
    };
  }
}
