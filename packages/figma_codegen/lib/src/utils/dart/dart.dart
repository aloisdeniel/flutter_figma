import 'package:figma_codegen/src/utils/dart/buffer.dart';

class DartClass {
  const DartClass({
    required this.name,
    required this.fields,
    required this.constructors,
    this.methods = const [],
    this.getters = const [],
    this.extend,
    this.documentation,
  });

  DartClass.data({
    required this.name,
    required this.fields,
    this.extend,
    this.documentation,
    List<DartGetter> getters = const [],
    List<DartMethod> methods = const [],
  }) : methods = [
         DartMethod.equals(typeName: name, props: fields),
         DartMethod.toString(typeName: name, props: fields),
         DartMethod.copyWith(typeName: name, props: fields),
         ...methods,
       ],
       getters = [DartGetter.hashCode(props: fields), ...getters],
       constructors = [
         DartConstructor(
           type: name,
           args: fields
               .map((x) => DartArgument(name: x.name, isThis: true))
               .toList(),
         ),
       ];

  final String name;
  final String? documentation;
  final String? extend;
  final List<DartField> fields;
  final List<DartMethod> methods;
  final List<DartGetter> getters;
  final List<DartConstructor> constructors;
}

class DartField {
  const DartField({
    required this.name,
    required this.type,
    this.documentation,
    this.defaultValue,
    this.isFinal = true,
  });
  final String name;
  final String? documentation;
  final String type;
  final String? defaultValue;
  final bool isFinal;

  DartArgument toArgument() {
    return DartArgument(type: type, name: name, defaultValue: defaultValue);
  }
}

class DartConstructor {
  const DartConstructor({
    required this.type,
    this.isConst = true,
    this.name,
    this.args = const [],
  });

  final bool isConst;
  final String type;
  final String? name;
  final List<DartArgument> args;
}

class DartGetter {
  const DartGetter({
    required this.name,
    required this.body,
    required this.type,
    this.documentation,
    this.isOverride = false,
  });

  factory DartGetter.hashCode({required List<DartField> props}) {
    return DartGetter(
      name: 'hashCode',
      type: 'int',
      body: DartBody(
        build: (buffer) {
          if (props.isEmpty) {
            buffer.writeln('return 0;');
          } else {
            buffer.writeln('return Object.hashAll([');
            buffer.indent();
            for (var i = 0; i < props.length; i++) {
              final propName = props[i].name;
              buffer.writeln('$propName,');
            }
            buffer.unindent();
            buffer.writeln(']);');
          }
        },
      ),
      isOverride: true,
    );
  }

  final String name;
  final String? documentation;
  final String type;
  final DartBody body;
  final bool isOverride;
}

class DartMethod {
  const DartMethod({
    required this.name,
    required this.body,
    this.documentation,
    this.returnType = 'void',
    this.parameters = const [],
    this.isOverride = false,
    this.isStatic = false,
  });

  factory DartMethod.toString({
    required String typeName,
    required List<DartField> props,
  }) {
    return DartMethod(
      isOverride: true,
      name: 'toString',
      returnType: 'String',
      body: DartBody(
        build: (buffer) {
          if (props.isEmpty) {
            buffer.writeln("return '$typeName()';");
          } else {
            buffer.writeln("return '$typeName('");
            buffer.indent();
            for (var i = 0; i < props.length; i++) {
              final propName = props[i].name;
              final separator = i < props.length - 1 ? ', ' : '';
              buffer.writeln("'$propName: \$$propName$separator'");
            }
            buffer.unindent();
            buffer.writeln("')';");
          }
        },
      ),
    );
  }

  factory DartMethod.copyWith({
    required String typeName,
    required List<DartField> props,
  }) {
    return DartMethod(
      name: 'copyWith',
      returnType: typeName,
      parameters: props
          .map(
            (e) => DartArgument(
              name: e.name,
              type: e.type.endsWith('?') ? e.type : '${e.type}?',
              isRequired: false,
            ),
          )
          .toList(),
      body: DartBody(
        build: (buffer) {
          buffer.writeln('return $typeName(');
          buffer.indent();
          for (final prop in props) {
            final propName = prop.name;
            buffer.writeln('$propName: $propName ?? this.$propName,');
          }
          buffer.unindent();
          buffer.writeln(');');
        },
      ),
    );
  }

  factory DartMethod.equals({
    required String typeName,
    required List<DartField> props,
  }) {
    return DartMethod(
      name: 'operator ==',
      returnType: 'bool',
      parameters: [DartArgument(name: 'other', type: 'Object', isNamed: false)],
      body: DartBody(
        build: (buffer) {
          buffer.writeln('if (identical(this, other)) return true;');
          if (props.isEmpty) {
            buffer.writeln('return other is $typeName;');
            return;
          }
          buffer.writeln('return other is $typeName &&');
          buffer.indent();
          for (var i = 0; i < props.length; i++) {
            final propName = props[i].name;
            final isLast = i == props.length - 1;
            buffer.writeln(
              'other.$propName == $propName${isLast ? ';' : ' &&'}',
            );
          }
          buffer.unindent();
        },
      ),
      isOverride: true,
    );
  }

  final String name;
  final String? documentation;
  final String returnType;
  final List<DartArgument> parameters;
  final DartBody body;
  final bool isOverride;
  final bool isStatic;
}

class DartArgument {
  const DartArgument({
    required this.name,
    this.type,
    this.defaultValue,
    this.isCovariant = false,
    this.isThis = false,
    this.isSuper = false,
    this.isNamed = true,
    this.isRequired = true,
  });
  final String name;
  final String? type;
  final String? defaultValue;
  final bool isCovariant;
  final bool isThis;
  final bool isSuper;
  final bool isNamed;
  final bool isRequired;
}

class DartBody {
  const DartBody({required this.build});
  final void Function(DartBuffer buffer) build;
}

class DartEnum {
  const DartEnum({
    required this.name,
    required this.values,
    this.documentation,
    this.methods = const [],
  });
  final String name;
  final List<String> values;
  final String? documentation;
  final List<DartMethod> methods;
}
