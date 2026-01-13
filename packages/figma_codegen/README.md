# figma_codegen

Code generation for Flutter widget trees from Figma assets in the `flutter_figma` workspace. This package reads design metadata and produces strongly typed Dart widgets that align with the project's conventions.

## Features

- Generates layout, text styles, colors, and assets from Figma variable collections
- Multiple export formats: Dart (Flutter), JSON, and CSS custom properties
- Supports configuration hooks for naming and output structure
- CLI tool for easy integration into build workflows
- Programmatic API for custom tooling
- Supports multiple value types: colors, text styles, gradients, border radii, and more
- Multi-variant support for design systems (e.g., light/dark themes)
- Automatic alias resolution for design token references

## Installation

### As a CLI Tool

Add to your `pubspec.yaml`:

```yaml
dev_dependencies:
  figma_codegen: ^1.0.0
```

Then activate globally:

```bash
dart pub global activate figma_codegen
```

### As a Library

Add to your `pubspec.yaml`:

```yaml
dependencies:
  figma_codegen: ^1.0.0
```

## CLI Usage

### Quick Start

```bash
# Generate Dart code from Figma variable collections
figma_cli -i vars.json -o lib/theme/variables.dart -f dart

# Export to CSS custom properties
figma_cli -i vars.json -o styles.css -f css

# Export to JSON with pretty printing
figma_cli -i vars.json -o output.json -f json --pretty

# Export to JSON without pretty printing
figma_cli -i vars.json -o output.json -f json --no-pretty
```

### Options

```
-i, --input         INPUT JSON file path (required)
-o, --output        Output file path (required)
-f, --format        Output format: json, dart, or css (required)
-p, --pretty        Pretty print output (default: true)
-h, --help          Display usage information
-v, --version       Display version information
```

### Exit Codes

- `0`: Success
- `1`: Generic error
- `2`: Format exception (invalid arguments)
- `3`: Export error
- `4`: Invalid input error

## API Usage

### Basic Workflow

```dart
import 'dart:io';
import 'package:figma_codegen/figma_codegen.dart';

Future<void> main() async {
  // 1. Read JSON file
  final jsonContent = await File('vars.json').readAsString();

  // 2. Import variable collections
  final importer = JsonImporter();
  final collections = await importer.importVariableCollections(jsonContent);

  // 3. Export to Dart code
  final context = FlutterExportContext(variableCollections: collections);
  final exporter = FlutterExporter();
  final dartCode = exporter.exportVariableCollections(context);

  // 4. Write output
  await File('lib/theme/vars.dart').writeAsString(dartCode);
}
```

### Export to JSON

```dart
import 'package:figma_codegen/figma_codegen.dart';

Future<void> exportToJson(List<VariableCollection> collections) async {
  final context = JsonExportContext(
    variableCollections: collections,
    prettyPrint: true, // Optional: enable pretty printing
  );

  final exporter = JsonExporter();
  final json = exporter.exportVariableCollections(context);

  await File('output.json').writeAsString(json);
}
```

### Export to CSS

```dart
import 'package:figma_codegen/figma_codegen.dart';

Future<void> exportToCss(List<VariableCollection> collections) async {
  final context = CssExportContext(
    collections: collections,
    prettyPrint: true,
    colorFormat: ColorFormat.hex, // or rgb, rgba, colorMix
    includeComments: true,
  );

  final exporter = CssExporter();
  final css = exporter.exportVariableCollections(context);

  await File('styles.css').writeAsString(css);
}
```

## Input Format

The input JSON should contain an array of variable collections. Each collection has:

- `id`: Unique identifier
- `name`: Collection name (converted to Dart class name)
- `variables`: Array of variable definitions
- `variants`: Array of variant definitions with values

### Example Input

```json
[
  {
    "id": "1",
    "name": "Colors",
    "variables": [
      {"id": "1", "name": "primary"},
      {"id": "2", "name": "secondary"}
    ],
    "variants": [
      {
        "id": "1",
        "name": "Light",
        "values": [
          {
            "color": {
              "red": 0.2,
              "green": 0.4,
              "blue": 0.8,
              "alpha": 1.0,
              "colorSpace": "COLOR_SPACE_SRGB"
            }
          },
          {
            "color": {
              "red": 0.5,
              "green": 0.5,
              "blue": 0.5,
              "alpha": 1.0,
              "colorSpace": "COLOR_SPACE_SRGB"
            }
          }
        ]
      },
      {
        "id": "2",
        "name": "Dark",
        "values": [
          {
            "color": {
              "red": 0.6,
              "green": 0.7,
              "blue": 0.9,
              "alpha": 1.0,
              "colorSpace": "COLOR_SPACE_SRGB"
            }
          },
          {
            "color": {
              "red": 0.7,
              "green": 0.7,
              "blue": 0.7,
              "alpha": 1.0,
              "colorSpace": "COLOR_SPACE_SRGB"
            }
          }
        ]
      }
    ]
  }
]
```

## Value Types Supported

The package supports the following Figma value types, which are exported as their Flutter equivalents:

| Figma Type | Dart Type | Example |
|------------|-----------|---------|
| Color | `Color` | `fl.Color.from(alpha: 1.0, red: 0.2, green: 0.4, blue: 0.8)` |
| Text Style | `TextStyle` | `ui.TextStyle(fontFamily: 'Roboto', fontSize: 16)` |
| Gradient | `Gradient` | `ui.Gradient.linear(...)` |
| Corner Radius | `BorderRadius` | `fl.BorderRadius.circular(8.0)` |
| Border | `BorderSide` | `fl.BorderSide(width: 1.0, color: ...)` |
| String | `String` | `"Hello"` |
| Number | `double` | `42.0` |
| Boolean | `bool` | `true` |
| Alias | (resolved type) | References to other variables |

## Multi-Variant Support

### Single Variant Collections

Collections with a single variant generate a simple class:

```dart
class Colors {
  static const primary = fl.Color.from(alpha: 1.0, red: 0.2, green: 0.4, blue: 0.8);
  static const secondary = fl.Color.from(alpha: 1.0, red: 0.5, green: 0.5, blue: 0.5);
}
```

### Multi-Variant Collections

Collections with multiple variants (e.g., light/dark themes) generate separate classes:

```dart
class ColorsLight {
  static const primary = fl.Color.from(alpha: 1.0, red: 0.2, green: 0.4, blue: 0.8);
  static const secondary = fl.Color.from(alpha: 1.0, red: 0.5, green: 0.5, blue: 0.5);
}

class ColorsDark {
  static const primary = fl.Color.from(alpha: 1.0, red: 0.6, green: 0.7, blue: 0.9);
  static const secondary = fl.Color.from(alpha: 1.0, red: 0.7, green: 0.7, blue: 0.7);
}
```

## CSS Export Format

### Overview

The CSS exporter generates CSS custom properties (CSS variables) that can be used in web applications. Variables are namespaced by collection name and use kebab-case naming.

### Single Variant CSS Output

Collections with a single variant use a plain `:root` selector:

```css
/* Collection: Colors */
:root {
  --colors-primary: #3366cc;
  --colors-secondary: #808080;
}
```

### Multi-Variant CSS Output

Collections with multiple variants (e.g., light/dark themes) use data attribute selectors:

```css
/* Collection: Colors (multi-variant) */
/* Variant: Light */
:root[data-colors="light"] {
  --colors-primary: #3366cc;
  --colors-secondary: #808080;
  --colors-background: #ffffff;
}

/* Variant: Dark */
:root[data-colors="dark"] {
  --colors-primary: #99b3e6;
  --colors-secondary: #b3b3b3;
  --colors-background: #1a1a1a;
}
```

### Theme Switching

Use JavaScript to switch between themes by setting data attributes on the root element:

```html
<html data-colors="light">
  <head>
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <h1 style="color: var(--colors-primary)">Hello World</h1>
  </body>
</html>
```

```javascript
// Switch to dark theme
document.documentElement.setAttribute('data-colors', 'dark');

// Switch to light theme
document.documentElement.setAttribute('data-colors', 'light');
```

### CSS Value Type Conversions

| Figma Type | CSS Output | Example |
|------------|------------|---------|
| Color (sRGB) | Hex or RGB | `#3366cc` or `rgb(51 102 204)` |
| Color (Display P3) | CSS color() | `color(display-p3 0.2 0.4 0.8)` |
| Gradient | CSS gradients | `linear-gradient(180deg, #fff 0%, #000 100%)` |
| Text Style | Multiple properties | `--typography-heading-font-family`, `--typography-heading-font-size`, etc. |
| Number | Direct value | `24` or `1.5` |
| String | Quoted string | `"Roboto"` |
| Corner Radius | Border radius | `8px 8px 8px 8px` |
| Border Side | Width | `1px` |

### Text Style Variables

Text styles expand to multiple CSS custom properties:

```css
:root {
  --typography-heading-font-family: 'Inter';
  --typography-heading-font-size: 24px;
  --typography-heading-font-weight: 700;
  --typography-heading-line-height: 1.33;
  --typography-heading-letter-spacing: 0px;
  --typography-heading-font-style: normal;
}
```

Use them in CSS:

```css
h1 {
  font-family: var(--typography-heading-font-family);
  font-size: var(--typography-heading-font-size);
  font-weight: var(--typography-heading-font-weight);
  line-height: var(--typography-heading-line-height);
}
```

### CSS Naming Convention

CSS variables follow kebab-case naming:

- Collection: `MyColors` → `data-my-colors="..."`
- Variable: `primaryColor` → `--my-colors-primary-color`
- Format: `--<collection-name>-<variable-name>`

## Naming Conventions

The package follows Dart naming conventions and automatically converts Figma names:

- **Class names**: PascalCase (e.g., `MyColors`)
- **Field names**: camelCase (e.g., `primaryColor`)
- **File names**: snake_case (e.g., `my_colors.dart`)

Special handling:

- Figma node IDs (e.g., `"Color#123:456"`) are cleaned to just `"Color"`
- Dart reserved keywords have `_` appended (e.g., `class` → `class_`)

## Advanced Usage

### Resolving Aliases

Variable collections support aliases (references to other variables). Use the extension methods to resolve them:

```dart
final collections = await importer.importVariableCollections(jsonContent);

// Find a specific collection
final colorCollection = collections.findVariableCollection(1);

// Resolve an alias to its actual value
final alias = Alias(id: 5);
final resolvedValue = collections.resolveAlias(alias);

// Get the type of an alias
final aliasType = collections.resolveAliasType(alias);
```

### Custom Naming

Use the `Naming` utility class for consistent name transformations:

```dart
import 'package:figma_codegen/src/utils/dart/naming.dart';

final className = Naming.typeName('my-component'); // MyComponent
final fieldName = Naming.fieldName('PRIMARY-COLOR'); // primaryColor
final fileName = Naming.fileName('MyClass'); // my_class
```

### Code Generation Utilities

For building custom exporters, use the code generation utilities:

```dart
import 'package:figma_codegen/src/utils/dart/dart.dart';

final buffer = DartBuffer();
final myClass = DartClass(
  name: 'MyTheme',
  fields: [
    DartField(name: 'primary', type: 'Color', isStatic: true, isConst: true),
  ],
);

myClass.write(buffer);
print(buffer.toString());
```

## Examples

### Complete Example

Input (`vars.json`):
```json
[
  {
    "id": "1",
    "name": "Typography",
    "variables": [
      {"id": "1", "name": "headline"}
    ],
    "variants": [
      {
        "id": "1",
        "name": "Default",
        "values": [
          {
            "textStyle": {
              "fontFamily": "Roboto",
              "fontSize": 24,
              "fontWeight": 700,
              "lineHeight": 32
            }
          }
        ]
      }
    ]
  }
]
```

Output (generated Dart):
```dart
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart' as fl;

class Typography {
  static const headline = ui.TextStyle(
    fontFamily: 'Roboto',
    fontSize: 24.0,
    fontWeight: ui.FontWeight.w700,
    height: 1.33,
  );
}
```

## Contributing

This package is part of the `flutter_figma` workspace. See the main repository for contribution guidelines.

