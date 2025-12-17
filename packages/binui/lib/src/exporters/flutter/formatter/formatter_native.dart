import 'package:dart_style/dart_style.dart';

import 'formatter.dart';

/// Creates a platform-specific formatter.
/// On native platforms, this returns a formatter that uses dart_style.
DartCodeFormatter createFormatter() => _NativeFormatter();

class _NativeFormatter implements DartCodeFormatter {
  _NativeFormatter() : _formatter = _createDartFormatter();

  final DartFormatter? _formatter;

  static DartFormatter? _createDartFormatter() {
    try {
      return DartFormatter(
        languageVersion: DartFormatter.latestLanguageVersion,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  String format(String code) {
    if (_formatter == null) return code;
    try {
      return _formatter.format(code);
    } catch (_) {
      return code;
    }
  }
}
