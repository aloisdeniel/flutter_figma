/// Manages code generation with proper indentation
class CodeBuffer {
  final StringBuffer _buffer = StringBuffer();
  int _indentLevel = 0;

  void writeLine(String text) {
    _buffer.writeln('${'  ' * _indentLevel}$text');
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

  @override
  String toString() => _buffer.toString();
}
