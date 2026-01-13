enum OutputFormat {
  json,
  dart,
  css;

  static OutputFormat fromString(String value) {
    return OutputFormat.values.firstWhere(
      (format) => format.name == value.toLowerCase(),
      orElse: () => throw ArgumentError('Invalid format: $value'),
    );
  }
}
