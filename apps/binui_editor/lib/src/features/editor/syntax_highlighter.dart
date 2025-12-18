import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:highlight/highlight.dart' as hl;

/// A widget that displays code with syntax highlighting.
class SyntaxHighlightedCode extends StatelessWidget {
  const SyntaxHighlightedCode({
    super.key,
    required this.code,
    required this.language,
    this.fontSize = 12,
    this.showLineNumbers = true,
  });

  final String code;
  final String language;
  final double fontSize;
  final bool showLineNumbers;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final theme = isDark ? _darkTheme : _lightTheme;

    if (showLineNumbers) {
      return _buildWithLineNumbers(context, theme);
    }

    return HighlightView(
      code,
      language: language,
      theme: theme,
      textStyle: TextStyle(
        fontFamily: 'monospace',
        fontSize: fontSize,
        height: 1.5,
      ),
    );
  }

  Widget _buildWithLineNumbers(
    BuildContext context,
    Map<String, TextStyle> theme,
  ) {
    final lines = code.split('\n');
    final lineNumberWidth = '${lines.length}'.length * 10.0 + 24;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Line numbers
        Container(
          width: lineNumberWidth,
          padding: const EdgeInsets.symmetric(vertical: 0),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
              lines.length,
              (index) => SizedBox(
                height: fontSize * 1.5,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Text(
                    '${index + 1}',
                    style: TextStyle(
                      fontFamily: 'monospace',
                      fontSize: fontSize,
                      height: 1.5,
                      color: Theme.of(context).colorScheme.outline,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        // Code content
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 12),
            child: HighlightView(
              code,
              language: language,
              theme: theme,
              textStyle: TextStyle(
                fontFamily: 'monospace',
                fontSize: fontSize,
                height: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/// Light theme for syntax highlighting (VS Code inspired)
final Map<String, TextStyle> _lightTheme = {
  'root': const TextStyle(
    color: Color(0xFF24292E),
    backgroundColor: Colors.transparent,
  ),
  'comment': const TextStyle(color: Color(0xFF6A737D)),
  'quote': const TextStyle(color: Color(0xFF6A737D)),
  'keyword': const TextStyle(color: Color(0xFFD73A49)),
  'selector-tag': const TextStyle(color: Color(0xFFD73A49)),
  'literal': const TextStyle(color: Color(0xFF005CC5)),
  'number': const TextStyle(color: Color(0xFF005CC5)),
  'string': const TextStyle(color: Color(0xFF032F62)),
  'doctag': const TextStyle(color: Color(0xFF032F62)),
  'title': const TextStyle(color: Color(0xFF6F42C1)),
  'section': const TextStyle(color: Color(0xFF6F42C1)),
  'selector-id': const TextStyle(color: Color(0xFF6F42C1)),
  'class': const TextStyle(color: Color(0xFF6F42C1)),
  'type': const TextStyle(color: Color(0xFF6F42C1)),
  'function': const TextStyle(color: Color(0xFF6F42C1)),
  'name': const TextStyle(color: Color(0xFF22863A)),
  'tag': const TextStyle(color: Color(0xFF22863A)),
  'attribute': const TextStyle(color: Color(0xFF005CC5)),
  'variable': const TextStyle(color: Color(0xFFE36209)),
  'template-variable': const TextStyle(color: Color(0xFFE36209)),
  'symbol': const TextStyle(color: Color(0xFF005CC5)),
  'bullet': const TextStyle(color: Color(0xFF005CC5)),
  'link': const TextStyle(color: Color(0xFF032F62)),
  'meta': const TextStyle(color: Color(0xFF005CC5)),
  'deletion': const TextStyle(
    color: Color(0xFFB31D28),
    backgroundColor: Color(0xFFFFEEF0),
  ),
  'addition': const TextStyle(
    color: Color(0xFF22863A),
    backgroundColor: Color(0xFFF0FFF4),
  ),
  'subst': const TextStyle(color: Color(0xFF24292E)),
  'emphasis': const TextStyle(fontStyle: FontStyle.italic),
  'strong': const TextStyle(fontWeight: FontWeight.bold),
  'built_in': const TextStyle(color: Color(0xFFE36209)),
  'params': const TextStyle(color: Color(0xFF24292E)),
  'attr': const TextStyle(color: Color(0xFF005CC5)),
};

/// Dark theme for syntax highlighting (VS Code Dark+ inspired)
final Map<String, TextStyle> _darkTheme = {
  'root': const TextStyle(
    color: Color(0xFFD4D4D4),
    backgroundColor: Colors.transparent,
  ),
  'comment': const TextStyle(color: Color(0xFF6A9955)),
  'quote': const TextStyle(color: Color(0xFF6A9955)),
  'keyword': const TextStyle(color: Color(0xFF569CD6)),
  'selector-tag': const TextStyle(color: Color(0xFF569CD6)),
  'literal': const TextStyle(color: Color(0xFF569CD6)),
  'number': const TextStyle(color: Color(0xFFB5CEA8)),
  'string': const TextStyle(color: Color(0xFFCE9178)),
  'doctag': const TextStyle(color: Color(0xFFCE9178)),
  'title': const TextStyle(color: Color(0xFFDCDCAA)),
  'section': const TextStyle(color: Color(0xFFDCDCAA)),
  'selector-id': const TextStyle(color: Color(0xFFDCDCAA)),
  'class': const TextStyle(color: Color(0xFF4EC9B0)),
  'type': const TextStyle(color: Color(0xFF4EC9B0)),
  'function': const TextStyle(color: Color(0xFFDCDCAA)),
  'name': const TextStyle(color: Color(0xFF9CDCFE)),
  'tag': const TextStyle(color: Color(0xFF569CD6)),
  'attribute': const TextStyle(color: Color(0xFF9CDCFE)),
  'variable': const TextStyle(color: Color(0xFF9CDCFE)),
  'template-variable': const TextStyle(color: Color(0xFF9CDCFE)),
  'symbol': const TextStyle(color: Color(0xFFB5CEA8)),
  'bullet': const TextStyle(color: Color(0xFF6796E6)),
  'link': const TextStyle(color: Color(0xFFCE9178)),
  'meta': const TextStyle(color: Color(0xFF569CD6)),
  'deletion': const TextStyle(
    color: Color(0xFFCE9178),
    backgroundColor: Color(0xFF5D1A1A),
  ),
  'addition': const TextStyle(
    color: Color(0xFFB5CEA8),
    backgroundColor: Color(0xFF1D3D1D),
  ),
  'subst': const TextStyle(color: Color(0xFFD4D4D4)),
  'emphasis': const TextStyle(fontStyle: FontStyle.italic),
  'strong': const TextStyle(fontWeight: FontWeight.bold),
  'built_in': const TextStyle(color: Color(0xFF4EC9B0)),
  'params': const TextStyle(color: Color(0xFF9CDCFE)),
  'attr': const TextStyle(color: Color(0xFF9CDCFE)),
};

/// A text editing controller that applies syntax highlighting.
class SyntaxHighlightingController extends TextEditingController {
  SyntaxHighlightingController({super.text, required this.language});

  final String language;

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final theme = isDark ? _darkTheme : _lightTheme;

    if (text.isEmpty) {
      return TextSpan(text: text, style: style);
    }

    try {
      final result = hl.highlight.parse(text, language: language);
      final spans = _buildSpans(result.nodes ?? [], theme, style);
      return TextSpan(children: spans, style: style);
    } catch (e) {
      // Fallback to plain text if highlighting fails
      return TextSpan(text: text, style: style);
    }
  }

  List<TextSpan> _buildSpans(
    List<hl.Node> nodes,
    Map<String, TextStyle> theme,
    TextStyle? baseStyle,
  ) {
    final spans = <TextSpan>[];
    for (final node in nodes) {
      if (node.value != null) {
        final nodeStyle = node.className != null ? theme[node.className] : null;
        spans.add(
          TextSpan(
            text: node.value,
            style: nodeStyle != null ? baseStyle?.merge(nodeStyle) : baseStyle,
          ),
        );
      } else if (node.children != null) {
        final nodeStyle = node.className != null ? theme[node.className] : null;
        final childSpans = _buildSpans(
          node.children!,
          theme,
          nodeStyle != null
              ? (baseStyle?.merge(nodeStyle) ?? nodeStyle)
              : baseStyle,
        );
        spans.addAll(childSpans);
      }
    }
    return spans;
  }
}
