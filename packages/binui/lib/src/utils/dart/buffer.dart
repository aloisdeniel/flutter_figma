import 'package:binui/src/utils/dart/dart.dart';

/// Manages code generation with proper indentation
class DartBuffer {
  DartBuffer({this.indentSpaces = 2});
  final StringBuffer _buffer = StringBuffer();
  int _indentLevel = 0;
  final int indentSpaces;

  void writeln([String? text]) {
    if (text == null) {
      _buffer.writeln();
      return;
    }
    _buffer.writeln('${' ' * (_indentLevel * indentSpaces)}$text');
  }

  void writeIndent() {
    _buffer.write(' ' * (_indentLevel * indentSpaces));
  }

  void write(String text) {
    _buffer.write(text);
  }

  void indent() {
    _indentLevel++;
  }

  void unindent() {
    _indentLevel--;
  }

  void indented(void Function() scoped) {
    _indentLevel++;
    scoped();
    _indentLevel--;
  }

  void writeApiDocumentation(String? content) {
    if (content == null) return;

    const maxWidth = 80;
    final remainingWidth = maxWidth - 4 - indentSpaces * _indentLevel;
    for (var i = 0; i < content.length; i += remainingWidth) {
      writeln('/// ${content.substring(i, i + remainingWidth)}');
    }
  }

  void writeEnum(DartEnum value) {
    writeApiDocumentation(value.documentation);
    writeln('class ${value.name} {');
    indented(() {
      // Values
      for (var i = 0; i < value.values.length; i++) {
        write(value.values[i]);
        if (value.methods.isEmpty || i < value.values.length - 1) {
          write(',');
        } else if (value.methods.isNotEmpty) {
          write(';');
        }
        write('\n');
      }

      // Methods
      if (value.methods.isNotEmpty) {
        for (var method in value.methods) {
          writeMethod(method);
        }
      }
    });
    writeln('}');
  }

  void writeMethod(DartMethod value) {
    if (value.isOverride) writeln('@override');
    write('${value.returnType} ');
    write('${value.name}(');
    if (value.parameters.isNotEmpty) {
      write('\n');
      writeIndent();
      for (var p in value.parameters) {
        writeArgument(p);
      }
    }
    write('){\n');
    indented(() {
      value.body.build(this);
    });
    write('}');
  }

  void writeConstructor(DartConstructor constructor) {
    if (constructor.isConst) write('const ');
    write(constructor.type);
    if (constructor.name case final name?) write('.$name');
    write('(');
    if (constructor.args.isNotEmpty) {
      write('{\n');
      indented(() {
        for (var arg in constructor.args) {
          writeArgument(arg);
        }
      });
      write('}');
    }
    write(');');
  }

  void writeArgument(DartArgument arg) {
    if (arg.defaultValue == null) write('required ');
    if (arg.isSuper) {
      write('super.');
    } else if (arg.isThis) {
      write('this.');
    }
    write(arg.name);
    if (arg.defaultValue case final value?) {
      write('= $value');
    }
    write(',\n');
  }

  void writeField(DartField field) {
    if (field.isFinal) {
      write('final ');
    }
    write(field.type);
    write(' ');
    write(field.name);
    write(';');
  }

  void writeClass(DartClass value) {
    writeApiDocumentation(value.documentation);
    writeln('class ${value.name} {');
    indented(() {
      // Constructors
      for (var constructor in value.constructors) {
        writeConstructor(constructor);
      }

      // Fields
      for (var field in value.fields) {
        writeField(field);
      }

      // Methods
      if (value.methods.isNotEmpty) {
        for (var method in value.methods) {
          writeMethod(method);
        }
      }
    });
    writeln('}');
  }

  @override
  String toString() => _buffer.toString();
}
