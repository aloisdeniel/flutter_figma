/// Interface for Dart code formatting.
///
/// This abstraction allows different implementations for different platforms:
/// - Native/VM: Uses dart_style for actual formatting
/// - Web/JS: Returns code as-is (dart_style is not web-compatible)
abstract class DartCodeFormatter {
  /// Formats Dart source code.
  ///
  /// Returns the formatted code, or the original code if formatting fails.
  String format(String code);
}
