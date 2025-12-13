class FigmaImportOptions {
  const FigmaImportOptions({
    this.components = true,
    this.variables = true,
    this.visualNodes = true,
    this.styles = true,
  });

  final bool components;
  final bool variables;
  final bool visualNodes;
  final bool styles;
}
