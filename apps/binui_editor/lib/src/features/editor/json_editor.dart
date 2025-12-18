import 'package:flutter/material.dart';

import 'syntax_highlighter.dart';

class JsonEditor extends StatefulWidget {
  const JsonEditor({
    super.key,
    required this.controller,
    this.onChanged,
    this.onClear,
    this.onFormat,
    this.errorMessage,
  });

  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final VoidCallback? onFormat;
  final String? errorMessage;

  @override
  State<JsonEditor> createState() => _JsonEditorState();
}

class _JsonEditorState extends State<JsonEditor> {
  late SyntaxHighlightingController _highlightingController;

  @override
  void initState() {
    super.initState();
    _highlightingController = SyntaxHighlightingController(
      text: widget.controller.text,
      language: 'json',
    );
    // Sync with external controller
    widget.controller.addListener(_syncFromExternal);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_syncFromExternal);
    _highlightingController.dispose();
    super.dispose();
  }

  void _syncFromExternal() {
    if (_highlightingController.text != widget.controller.text) {
      _highlightingController.text = widget.controller.text;
    }
  }

  void _onChanged(String value) {
    widget.controller.text = value;
    widget.onChanged?.call(value);
  }

  TextEditingController get controller => widget.controller;
  ValueChanged<String>? get onChanged => widget.onChanged;
  VoidCallback? get onClear => widget.onClear;
  VoidCallback? get onFormat => widget.onFormat;
  String? get errorMessage => widget.errorMessage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          child: Row(
            children: [
              Icon(
                Icons.code,
                size: 18,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                'JSON Editor',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              if (onFormat != null)
                IconButton(
                  icon: const Icon(Icons.format_align_left, size: 18),
                  tooltip: 'Format JSON',
                  onPressed: onFormat,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              if (onFormat != null) const SizedBox(width: 12),
              if (onClear != null)
                IconButton(
                  icon: const Icon(Icons.clear, size: 18),
                  tooltip: 'Clear',
                  onPressed: onClear,
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              if (onClear != null) const SizedBox(width: 12),
              if (errorMessage != null)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.errorContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Parse Error',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
                  ),
                )
              else
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    'Valid',
                    style: TextStyle(
                      fontSize: 12,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
            ],
          ),
        ),
        if (errorMessage != null)
          Container(
            padding: const EdgeInsets.all(12),
            color: Theme.of(context).colorScheme.errorContainer.withAlpha(100),
            child: Text(
              errorMessage!,
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.error,
                fontFamily: 'monospace',
              ),
            ),
          ),
        Expanded(
          child: TextField(
            controller: _highlightingController,
            onChanged: _onChanged,
            maxLines: null,
            expands: true,
            textAlignVertical: TextAlignVertical.top,
            style: const TextStyle(
              fontFamily: 'monospace',
              fontSize: 13,
              height: 1.5,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Theme.of(context).colorScheme.surface,
              hintText: 'Paste your Library JSON here...',
              hintStyle: TextStyle(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
                fontFamily: 'monospace',
              ),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
            ),
          ),
        ),
      ],
    );
  }
}
