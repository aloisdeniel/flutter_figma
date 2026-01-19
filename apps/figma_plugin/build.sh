
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

if ! command -v awk >/dev/null 2>&1; then
  echo "Error: awk is required to embed UI assets." >&2
  exit 1
fi

awk 'BEGIN {
  css = "";
  while ((getline line < "web/ui.css") > 0) {
    css = css line "\n";
  }
  close("web/ui.css");
  js = "";
  while ((getline line < "web/ui.js") > 0) {
    js = js line "\n";
  }
  close("web/ui.js");
}
{
  gsub(/\{\{CSS\}\}/, css);
  gsub(/\{\{JS\}\}/, js);
  print;
}' build/ui.html > build/ui.html.tmp && mv build/ui.html.tmp build/ui.html

echo ""
echo "✓ Build completed successfully!"
echo "  Generated files:"
echo "    - build/code.js"
echo "    - build/ui.html"
