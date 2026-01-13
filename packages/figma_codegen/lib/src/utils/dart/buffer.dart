import 'package:figma_codegen/src/utils/dart/dart.dart';

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
    writeln('enum ${value.name} {');
    indented(() {
      // Values
      for (var i = 0; i < value.values.length; i++) {
        writeIndent();
        write(value.values[i]);
        if (value.methods.isEmpty || i < value.values.length - 1) {
          write(',');
        } else if (value.methods.isNotEmpty) {
          write(';');
        }
        writeln();
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

  void writeArguments(List<DartArgument> args) {
    final positionalArgs = args.where((arg) => !arg.isNamed).toList();
    final namedArgs = args.where((arg) => arg.isNamed).toList();

    // Write positional args inline
    for (var i = 0; i < positionalArgs.length; i++) {
      final p = positionalArgs[i];
      if (p.isCovariant) {
        write('covariant ');
      }
      if (p.type case final type?) {
        write('$type ');
      }
      write(p.name);
      if (i < positionalArgs.length - 1 || namedArgs.isNotEmpty) {
        write(', ');
      }
    }

    // Write named args in braces
    if (namedArgs.isNotEmpty) {
      write('{');
      writeln();
      indented(() {
        for (var p in namedArgs) {
          writeArgument(p);
        }
      });
      writeIndent();
      write('}');
    }
  }

  void writeGetter(DartGetter value) {
    writeln();
    if (value.isOverride) writeln('@override');
    writeIndent();
    write('${value.type} get ${value.name} {');
    writeln();
    indented(() {
      value.body.build(this);
    });
    writeln('}');
  }

  void writeMethod(DartMethod value) {
    writeln();
    if (value.isOverride) writeln('@override');
    writeIndent();
    if (value.isStatic) write('static ');
    write('${value.returnType} ${value.name}(');
    writeArguments(value.parameters);
    write(') {');
    writeln();
    indented(() {
      value.body.build(this);
    });
    writeln('}');
  }

  void writeConstructor(DartConstructor constructor) {
    writeIndent();
    if (constructor.isConst) write('const ');
    write(constructor.type);
    if (constructor.name case final name?) write('.$name');
    write('(');
    if (constructor.args.isNotEmpty) {
      write('{');
      writeln();
      indented(() {
        for (var arg in constructor.args) {
          writeArgument(arg);
        }
      });
      writeln('});');
    } else {
      writeln(');');
    }
  }

  void writeArgument(DartArgument arg) {
    writeIndent();
    if (arg.isRequired && arg.isNamed) write('required ');
    if (arg.isSuper) {
      write('super.');
    } else if (arg.isThis) {
      write('this.');
    }
    if (arg.isCovariant) {
      write('covariant ');
    }
    if (arg.type case final type?) {
      write('$type ');
    }

    write(arg.name);
    if (arg.defaultValue case final value?) {
      write(' = $value');
    }
    write(',');
    writeln();
  }

  void writeField(DartField field) {
    writeIndent();
    if (field.isFinal) {
      write('final ');
    }
    write(field.type);
    write(' ');
    write(field.name);
    write(';');
    writeln();
  }

  void writeClass(DartClass value) {
    writeApiDocumentation(value.documentation);
    write('class ${value.name}');
    if (value.extend != null) {
      write(' extends ${value.extend}');
    }
    writeln(' {');
    indented(() {
      // Constructors
      for (var constructor in value.constructors) {
        writeConstructor(constructor);
      }

      // Fields
      for (var field in value.fields) {
        writeField(field);
      }

      // Getters
      for (var getter in value.getters) {
        writeGetter(getter);
      }

      // Methods
      if (value.methods.isNotEmpty) {
        for (var method in value.methods) {
          writeMethod(method);
        }
      }
    });
    writeln('}');
    writeln(); // Add blank line after class
  }

  @override
  String toString() => _buffer.toString();
}
