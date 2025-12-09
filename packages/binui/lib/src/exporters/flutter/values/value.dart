import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/utils/naming.dart';
import 'package:binui/src/exporters/flutter/values/alias.dart';
import 'package:binui/src/exporters/flutter/values/color.dart';
import 'package:binui/src/exporters/flutter/values/gradient.dart';
import 'package:binui/src/exporters/flutter/values/label.dart';
import 'package:binui/src/exporters/flutter/values/radius.dart';

class ValueDartExporter {
  const ValueDartExporter({this.alwaysFallback = true});

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
      Value_Type.size => 'fl.Size(${value.size.width}, ${value.size.height})',
      Value_Type.color => const ColorDartExporter().serialize(value.color),
      Value_Type.border => _serializeBorder(library, value.border),
      Value_Type.borderSide => _serializeBorderSide(library, value.borderSide),
      Value_Type.gradient => GradientDartExporter().serialize(
        library,
        value.gradient,
      ),
      Value_Type.label => LabelDartExporter(
        valueSerializer: this,
      ).serialize(library, value.label),
      Value_Type.offset => 'fl.Offset(${value.offset.x}, ${value.offset.y})',
      Value_Type.radius => const RadiusDartExporter().serialize(value.radius),
      Value_Type.borderRadius => const BorderRadiusDartExporter(
        radiusSerializer: RadiusDartExporter(),
      ).serialize(value.borderRadius),
      Value_Type.rect =>
        'fl.Rect.fromLTWH(${value.rect.position.x}, ${value.rect.position.y}, ${value.rect.size.width}, ${value.rect.size.height})',
      Value_Type.textStyle => _serializeTextStyle(value.textStyle),
      Value_Type.transform2D => _serializeTransform2D(value.transform2D),
      Value_Type.variantValue => _serializeVariantValue(
        library,
        value.variantValue,
      ),
      Value_Type.vectorGraphics =>
        "'${value.vectorGraphics.svg.data.replaceAll("'", "\\'")}'",
      Value_Type.version =>
        '(${value.version.major}, ${value.version.minor}, ${value.version.patch})',
      Value_Type.visualNode => throw UnimplementedError(
        'VisualNode serialization requires VisualNodeDartExporter',
      ),
      Value_Type.notSet => throw Exception('Value type not set'),
    };
  }

  String _serializeBorder(Library library, Border border) {
    final top = _serializeBorderSide(library, border.top);
    final right = _serializeBorderSide(library, border.right);
    final bottom = _serializeBorderSide(library, border.bottom);
    final left = _serializeBorderSide(library, border.left);
    return 'fl.Border(top: $top, right: $right, bottom: $bottom, left: $left)';
  }

  String _serializeBorderSide(Library library, BorderSide borderSide) {
    final color = const ColorDartExporter().serialize(borderSide.color);
    return 'fl.BorderSide(color: $color, width: ${borderSide.width})';
  }

  String _serializeTextStyle(TextStyle textStyle) {
    final buffer = StringBuffer('fl.TextStyle(');
    buffer.write("fontFamily: '${textStyle.fontFamily}'");
    buffer.write(', fontSize: ${textStyle.fontSize}');
    buffer.write(', fontWeight: fl.FontWeight.w${textStyle.fontWeight}');
    if (textStyle.letterSpacing != 0) {
      buffer.write(', letterSpacing: ${textStyle.letterSpacing}');
    }
    if (textStyle.wordSpacing != 0) {
      buffer.write(', wordSpacing: ${textStyle.wordSpacing}');
    }
    if (textStyle.lineHeight != 0) {
      buffer.write(', height: ${textStyle.lineHeight}');
    }
    buffer.write(')');
    return buffer.toString();
  }

  String _serializeTransform2D(Transform2D transform) {
    final rows = transform.rows.map((row) => row.values.toList()).toList();
    if (rows.isEmpty) return 'fl.Matrix4.identity()';

    // Flutter Matrix4 is column-major, but we'll use the convenience constructor
    if (rows.length == 3 && rows[0].length == 3) {
      // 2D transformation matrix
      return 'fl.Matrix4(${rows[0][0]}, ${rows[1][0]}, 0, 0, ${rows[0][1]}, ${rows[1][1]}, 0, 0, 0, 0, 1, 0, ${rows[0][2]}, ${rows[1][2]}, 0, 1)';
    }
    return 'fl.Matrix4.identity()';
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
