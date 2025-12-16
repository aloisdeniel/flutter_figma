import 'dart:convert';

import 'package:binui/binui.dart' as b;
import 'package:flutter/material.dart';

import 'json_editor.dart';
import 'preview_panel.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  final TextEditingController _jsonController = TextEditingController();
  b.Library? _library;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _jsonController.text = _sampleJson;
    _parseJson(_sampleJson);
  }

  @override
  void dispose() {
    _jsonController.dispose();
    super.dispose();
  }

  void _parseJson(String json) {
    if (json.trim().isEmpty) {
      setState(() {
        _library = null;
        _errorMessage = null;
      });
      return;
    }

    try {
      final library = b.Library();
      library.mergeFromProto3Json(jsonDecode(json));
      setState(() {
        _library = library;
        _errorMessage = null;
      });
    } catch (e) {
      setState(() {
        _library = null;
        _errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Binui Editor'),
        elevation: 1,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Reparse JSON',
            onPressed: () => _parseJson(_jsonController.text),
          ),
          IconButton(
            icon: const Icon(Icons.clear),
            tooltip: 'Clear',
            onPressed: () {
              _jsonController.clear();
              setState(() {
                _library = null;
                _errorMessage = null;
              });
            },
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                  ),
                ),
              ),
              child: JsonEditor(
                controller: _jsonController,
                onChanged: _parseJson,
                errorMessage: _errorMessage,
              ),
            ),
          ),
          Expanded(
            child: _library != null
                ? PreviewPanel(library: _library!)
                : _EmptyPreview(hasError: _errorMessage != null),
          ),
        ],
      ),
    );
  }
}

class _EmptyPreview extends StatelessWidget {
  const _EmptyPreview({required this.hasError});

  final bool hasError;

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
                Icons.preview,
                size: 18,
                color: Theme.of(context).colorScheme.primary,
              ),
              const SizedBox(width: 8),
              Text(
                'Preview',
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  hasError ? Icons.error_outline : Icons.data_object,
                  size: 64,
                  color: hasError
                      ? Theme.of(context).colorScheme.error.withAlpha(150)
                      : Theme.of(context).colorScheme.outline,
                ),
                const SizedBox(height: 16),
                Text(
                  hasError
                      ? 'Fix the JSON errors to see the preview'
                      : 'Paste JSON to preview',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  hasError
                      ? 'Check the error message in the editor panel'
                      : 'The preview will update automatically',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

const _sampleJson = r'''
{
  "id": 1,
  "components": [
    {
      "id": 1,
      "name": "Sample Button",
      "properties": [
        {
          "id": 1,
          "name": "label"
        }
      ],
      "variants": [
        {
          "id": 1,
          "name": "Default",
          "root": {
            "text": {
              "characters": {
                "constant": {
                  "value": {
                    "stringValue": "Hello World"
                  }
                }
              }
            }
          }
        }
      ]
    }
  ],
  "variables": []
}
''';
