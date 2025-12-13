class FigmaImportOptions {
  const FigmaImportOptions({
    this.components = true,
    this.variables = true,
    this.visualNodes = true,
  });

  final bool components;
  final bool variables;
  final bool visualNodes;
}
