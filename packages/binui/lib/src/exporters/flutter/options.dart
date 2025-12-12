class FlutterExportOptions {
  const FlutterExportOptions({
    this.visualNodes = const FlutterVisualNodeExportOptions(),
    this.variables = const FlutterVariablesExportOptions(),
    this.components = const FlutterComponentExportOptions(),
  });
  final FlutterComponentExportOptions components;
  final FlutterVisualNodeExportOptions visualNodes;
  final FlutterVariablesExportOptions variables;
}

enum FlutterVisualNodeExportMode {
  // Converts visual tree only by using Flutter built-in widgets.
  flutter,
  // Converts visual tree using the widgets from "flutter_figma" package.
  flutterFigma,
}

class FlutterVisualNodeExportOptions {
  const FlutterVisualNodeExportOptions({
    this.enabled = true,
    this.mode = FlutterVisualNodeExportMode.flutter,
  });
  final bool enabled;
  final FlutterVisualNodeExportMode mode;
}

class FlutterComponentExportOptions {
  const FlutterComponentExportOptions({this.enabled = true});
  final bool enabled;
}

class FlutterVariablesExportOptions {
  const FlutterVariablesExportOptions({this.enabled = true});
  final bool enabled;
}
