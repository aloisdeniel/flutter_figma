import 'package:recase/recase.dart';

abstract class Naming {
  /// Sanitizes a name by removing invalid Dart identifier characters.
  /// Removes #, :, and other special characters that are not valid in identifiers.
  static String _sanitize(String name) {
    // Remove # and everything after it (often Figma node IDs like "content#56:8")
    final hashIndex = name.indexOf('#');
    if (hashIndex != -1) {
      name = name.substring(0, hashIndex);
    }
    name = name.replaceAll('/', '_');
    // Remove any remaining invalid characters (keep only alphanumeric, underscore, space, dash)
    name = name.replaceAll(RegExp(r'[^a-zA-Z0-9_\s\-]'), '');
    return name.trim();
  }

  static String typeName(String name) {
    name = _sanitize(name);
    name = _leadingDigits(name);
    name = ReCase(name).pascalCase;
    name = name.replaceAll('=', '');
    return _keyword(name);
  }

  static String fieldName(String name) {
    name = _sanitize(name);
    name = _leadingDigits(name);
    name = ReCase(name).camelCase;
    name = name.replaceAll('=', '');
    return _keyword(name);
  }

  static String fileName(String name) {
    name = _sanitize(name);
    name = _leadingDigits(name);
    name = ReCase(name).snakeCase;
    name = name.replaceAll('=', '');
    return _keyword(name);
  }

  static String _leadingDigits(String name) {
    name = name.trim();
    if (name.isEmpty) return '';
    final firstChar = name[0].codeUnitAt(0);
    final start = '0'.codeUnitAt(0);
    final end = '9'.codeUnitAt(0);
    if (firstChar >= start && firstChar <= end) {
      return 'n$firstChar${name.substring(1)}';
    }
    return name;
  }

  static String _keyword(String name) {
    const Set<String> keywords = {
      'abstract',
      'as',
      'assert',
      'async',
      'await',
      'break',
      'case',
      'catch',
      'class',
      'const',
      'continue',
      'default',
      'deferred',
      'do',
      'dynamic',
      'else',
      'enum',
      'export',
      'extends',
      'extension',
      'external',
      'factory',
      'false',
      'final',
      'finally',
      'for',
      'Function',
      'get',
      'hide',
      'if',
      'implements',
      'import',
      'in',
      'interface',
      'is',
      'library',
      'mixin',
      'new',
      'null',
      'on',
      'operator',
      'part',
      'required',
      'rethrow',
      'return',
      'set',
      'show',
      'static',
      'super',
      'switch',
      'sync',
      'this',
      'throw',
      'true',
      'try',
      'typedef',
    };
    if (keywords.contains(name)) {
      return '${name}_';
    }
    return name;
  }
}
