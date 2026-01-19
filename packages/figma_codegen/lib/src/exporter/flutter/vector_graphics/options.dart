enum FlutterVectorGraphicsFormat {
  /// As a sequence of canvas drawing commands.
  code,

  /// As a binary encoded string of a vector_graphics object.
  vectorGraphicsBase64,
}

class FlutterVectorGraphicsExportOptions {
  const FlutterVectorGraphicsExportOptions({
    required this.format,
    this.stylesClass = false,
  });

  /// The output format for the vector graphics.
  final FlutterVectorGraphicsFormat format;

  /// Generates a class with all the colors used to draw shapes and strokes.
  final bool stylesClass;
}
