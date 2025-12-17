import 'formatter.dart';

/// Creates a platform-specific formatter.
/// On web platforms, this returns a no-op formatter since dart_style
/// is not compatible with web/JS environments.
DartCodeFormatter createFormatter() => _WebFormatter();

class _WebFormatter implements DartCodeFormatter {
  @override
  String format(String code) => code;
}
