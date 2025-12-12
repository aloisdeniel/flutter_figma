import 'package:binui/src/utils/dart/buffer.dart';

class DartClass {
  const DartClass({
    required this.name,
    required this.fields,
    required this.constructors,
    this.methods = const [],
    this.extend,
    this.documentation,
  });

  DartClass.data({
    required this.name,
    required this.fields,
    this.extend,
    this.documentation,
    List<DartMethod> methods = const [],
  }) : methods = [
         DartMethod.equals(typeName: name, props: fields),
         DartMethod.hashCode(props: fields),
         DartMethod.toString(typeName: name, props: fields),
         ...methods,
       ],
       constructors = [
         DartConstructor(
           type: name,
           args: fields.map((x) => x.toArgument()).toList(),
         ),
       ];

  final String name;
  final String? documentation;
  final String? extend;
  final List<DartField> fields;
  final List<DartMethod> methods;
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
          buffer.write("return '$typeName(");
          for (var i = 0; i < props.length; i++) {
            final propName = props[i].name;
            buffer.write('$propName: \$$propName');
            if (i < props.length - 1) {
              buffer.write(', ');
            }
          }
          buffer.writeln(")';");
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
            ),
          )
          .toList(),
      body: DartBody(
        build: (buffer) {
          buffer.writeln('return $typeName(');
          for (final prop in props) {
            final propName = prop.name;
            buffer.writeln('  $propName: $propName ?? this.$propName,');
          }
          buffer.writeln(');');
        },
      ),
    );
  }

  factory DartMethod.hashCode({required List<DartField> props}) {
    return DartMethod(
      name: 'hashCode',
      returnType: 'int',
      body: DartBody(
        build: (buffer) {
          if (props.isEmpty) {
            buffer.writeln('return 0;');
          } else {
            buffer.write('return Object.hashAll([');
            for (var i = 0; i < props.length; i++) {
              final propName = props[i].name;
              buffer.write(propName);
              if (i < props.length - 1) {
                buffer.writeln(',');
              }
            }
            buffer.writeln(']);');
          }
        },
      ),
      isOverride: true,
    );
  }

  factory DartMethod.equals({
    required String typeName,
    required List<DartField> props,
  }) {
    return DartMethod(
      name: 'operator ==',
      returnType: 'bool',
      parameters: [DartArgument(name: 'other', type: 'Object')],
      body: DartBody(
        build: (buffer) {
          buffer.writeln('if (identical(this, other)) return true;');
          buffer.write('return other is $typeName');
          if (props.isEmpty) {
            buffer.writeln(';');
            return;
          }
          for (var i = 0; i < props.length; i++) {
            final propName = props[i].name;
            buffer.write(' && other.$propName == $propName');
            if (i < props.length - 1) {
              buffer.writeln('');
            } else {
              buffer.writeln(';');
            }
          }
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
  });
  final String name;
  final String? type;
  final String? defaultValue;
  final bool isCovariant;
  final bool isThis;
  final bool isSuper;
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
