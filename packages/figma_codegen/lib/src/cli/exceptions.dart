class CliException implements Exception {
  CliException(this.message);
  final String message;

  @override
  String toString() => message;
}

class InvalidInputException extends CliException {
  InvalidInputException(super.message);
}

class ExportException extends CliException {
  ExportException(super.message);
}
