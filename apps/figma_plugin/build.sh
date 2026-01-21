
#!/bin/sh

set -e

echo "Building Figma plugin..."

# Clean build directory
rm -rf build
mkdir -p build

echo "Compiling Dart to JavaScript..."
dart compile js lib/code.dart -o build/code.js --no-source-maps --csp -O3

## Append the following code at the beginning of code.js: const self = { figma: figma, __html__: __html__ };
echo "Appending Figma plugin boilerplate to code.js..."
echo "const self = { figma: figma, __html__: __html__, setTimeout: setTimeout };" | cat - build/code.js > temp && mv temp build/code.js

echo "Generating UI HTML..."
cp web/ui.html build/ui.html

python - <<'PY'
from pathlib import Path

css = Path('web/ui.css').read_text()
js = Path('web/ui.js').read_text()
html_path = Path('build/ui.html')
html = html_path.read_text()

html = html.replace('{{CSS}}', css)
html = html.replace('{{JS}}', js)

html_path.write_text(html)
PY

echo ""
echo "✓ Build completed successfully!"
echo "  Generated files:"
echo "    - build/code.js"
echo "    - build/ui.html"
