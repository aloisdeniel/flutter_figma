import 'package:binui/src/exporters/flutter/utils/naming.dart';

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

  void writeApiDocumentation(String content) {
    const maxWidth = 80;
    final remainingWidth = maxWidth - 4 - indentSpaces * _indentLevel;
    for (var i = 0; i < content.length; i += remainingWidth) {
      writeln('/// ${content.substring(i, i + remainingWidth)}');
    }
  }

  void writeConstructor(String typeName, Map<String, String> props) {
    writeln('const $typeName({');
    indented(() {
      for (final property in props.entries) {
        final propName = Naming.fieldName(property.key);
        writeln('this.$propName = ${property.value},');
      }
    });
    writeln('});');
  }

  // props: name -> type
  void writeCopyWith(String typeName, Map<String, String> props) {
    writeln('$typeName copyWith({');
    indented(() {
      for (final property in props.entries) {
        final propName = Naming.fieldName(property.key);
        final typeName = property.value.endsWith('?')
            ? property.value
            : '${property.value}?';
        writeln('$typeName $propName,');
      }
    });
    writeln('}) {');
    indented(() {
      writeln('return $typeName(');
      indented(() {
        for (final property in props.entries) {
          final propName = Naming.fieldName(property.key);
          writeln('$propName: $propName ?? this.$propName,');
        }
      });
      writeln(');');
    });
    writeln('}');
  }

  // ==
  void writeOperatorEquals(String typeName, List<String> props) {
    writeln('@override');
    writeln('bool operator ==(Object other) {');
    indented(() {
      writeln('if (identical(this, other)) return true;');
      write('return other is $typeName');

      if (props.isEmpty) {
        writeln(';');
        writeln('}');
        return;
      }

      for (var i = 0; i < props.length; i++) {
        final propName = Naming.fieldName(props[i]);
        write(' && other.$propName == $propName');
        if (i < props.length - 1) {
          writeln('');
        } else {
          writeln(';');
        }
      }
    });
    writeln('}');
  }

  // hashCode
  void writeHashCode(List<String> props) {
    writeln();
    writeln('@override');
    writeln('int get hashCode {');
    indented(() {
      if (props.isEmpty) {
        writeln('return 0;');
      } else {
        write('return Object.hashAll([');
        indented(() {
          for (var i = 0; i < props.length; i++) {
            final propName = Naming.fieldName(props[i]);
            write('$propName,');
            if (i < props.length - 1) {
              writeln();
            }
          }
        });
        write(']);');
      }
    });
    writeln('}');
  }

  @override
  String toString() => _buffer.toString();
}
