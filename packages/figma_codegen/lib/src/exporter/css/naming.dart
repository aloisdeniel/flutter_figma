import 'package:recase/recase.dart';

abstract class CssNaming {
  /// Sanitizes a name by removing invalid CSS identifier characters.
  /// Removes #, :, and other special characters that are not valid in identifiers.
  static String _sanitize(String name) {
    // Remove # and everything after it (often Figma node IDs like "content#56:8")
    final hashIndex = name.indexOf('#');
    if (hashIndex != -1) {
      name = name.substring(0, hashIndex);
    }
    // Remove any remaining invalid characters (keep only alphanumeric, space, dash, underscore)
    name = name.replaceAll(RegExp(r'[^a-zA-Z0-9_\s\-]'), '');
    return name.trim();
  }

  /// Convert Figma collection name to kebab-case for data attributes
  /// e.g., "MyTheme" -> "my-theme", "Colors" -> "colors"
  static String collectionName(String name) {
    name = _sanitize(name);
    if (name.isEmpty) return 'collection';
    name = ReCase(name).paramCase;
    return name;
  }

  /// Convert variable name to kebab-case for CSS variable names
  /// e.g., "primaryColor" -> "primary-color", "fontSize" -> "font-size"
  static String variableName(String name) {
    name = _sanitize(name);
    if (name.isEmpty) return 'variable';
    name = ReCase(name).paramCase;
    return name;
  }

  /// Generate CSS variable name: --<collection>-<variable>
  /// e.g., collectionName("Colors"), variableName("primary") -> "--colors-primary"
  static String cssVarName(String collectionName, String variableName) {
    final collection = CssNaming.collectionName(collectionName);
    final variable = CssNaming.variableName(variableName);
    return '--$collection-$variable';
  }

  /// Generate CSS var() reference
  /// e.g., "--colors-primary" -> "var(--colors-primary)"
  static String cssVarReference(String varName) {
    return 'var($varName)';
  }
}
