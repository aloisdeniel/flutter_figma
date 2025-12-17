import 'package:binui/binui.dart' as b;
import 'package:file_selector/file_selector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_html/html.dart' as html;

class CodePanel extends StatefulWidget {
  const CodePanel({super.key, required this.library});

  final b.Library library;

  @override
  State<CodePanel> createState() => _CodePanelState();
}

class _CodePanelState extends State<CodePanel> {
  b.Bundle? _cachedBundle;
  bool _isGenerating = false;
  String? _generationError;

  @override
  void initState() {
    super.initState();
    _generateCode();
  }

  @override
  void didUpdateWidget(CodePanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.library != oldWidget.library) {
      _cachedBundle = null;
      _generationError = null;
      _generateCode();
    }
  }

  Future<void> _generateCode() async {
    setState(() {
      _isGenerating = true;
      _generationError = null;
    });

    try {
      final exporter = b.FlutterExporter();
      final context = b.FlutterExportContext(
        widget.library,
        const b.FlutterExportOptions(),
      );
      final bundle = await exporter.export(context);
      if (mounted) {
        setState(() {
          _cachedBundle = bundle;
          _isGenerating = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _generationError = e.toString();
          _isGenerating = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isGenerating) {
      return const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text('Generating Flutter code...'),
          ],
        ),
      );
    }

    if (_generationError != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.error_outline,
                size: 48,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Code Generation Error',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                _generationError!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'monospace',
                  color: Theme.of(context).colorScheme.error,
                ),
              ),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: _generateCode,
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }

    if (_cachedBundle == null) {
      return const Center(child: Text('No code generated yet'));
    }

    return _CodeBundleView(bundle: _cachedBundle!);
  }
}

class _CodeBundleView extends StatefulWidget {
  const _CodeBundleView({required this.bundle});

  final b.Bundle bundle;

  @override
  State<_CodeBundleView> createState() => _CodeBundleViewState();
}

class _CodeBundleViewState extends State<_CodeBundleView> {
  int _selectedFileIndex = 0;

  List<b.StringBundleFile> get _dartFiles => widget.bundle.files
      .whereType<b.StringBundleFile>()
      .where((f) => f.path.endsWith('.dart') || f.path.endsWith('.yaml'))
      .toList();

  Future<void> _downloadCode() async {
    final zipData = widget.bundle.toZip();
    final fileName = '${widget.bundle.name}.zip';

    if (kIsWeb) {
      final blob = html.Blob([zipData]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      html.AnchorElement(href: url)
        ..setAttribute('download', fileName)
        ..click();
      html.Url.revokeObjectUrl(url);
    } else {
      final location = await getSaveLocation(suggestedName: fileName);
      if (location == null) return;

      final file = XFile.fromData(
        zipData,
        name: fileName,
        mimeType: 'application/zip',
      );
      await file.saveTo(location.path);
    }

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Code downloaded successfully'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final files = _dartFiles;

    if (files.isEmpty) {
      return const Center(child: Text('No code files generated'));
    }

    // Clamp selected index if files changed
    if (_selectedFileIndex >= files.length) {
      _selectedFileIndex = 0;
    }

    final selectedFile = files[_selectedFileIndex];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // File tree
        Container(
          width: 220,
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).colorScheme.outlineVariant,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      'Files (${files.length})',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.download, size: 16),
                      tooltip: 'Download as ZIP',
                      onPressed: _downloadCode,
                      visualDensity: VisualDensity.compact,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: files.length,
                  itemBuilder: (context, index) {
                    final file = files[index];
                    final isSelected = index == _selectedFileIndex;
                    return _FileListItem(
                      file: file,
                      isSelected: isSelected,
                      onTap: () => setState(() => _selectedFileIndex = index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        // Code view
        Expanded(child: _CodeFileView(file: selectedFile)),
      ],
    );
  }
}

class _FileListItem extends StatelessWidget {
  const _FileListItem({
    required this.file,
    required this.isSelected,
    required this.onTap,
  });

  final b.StringBundleFile file;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final fileName = file.path.split('/').last;
    final dirPath = file.path.contains('/')
        ? file.path.substring(0, file.path.lastIndexOf('/'))
        : '';

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected
              ? Theme.of(context).colorScheme.primaryContainer.withAlpha(100)
              : null,
          border: Border(
            left: BorderSide(
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
              width: 3,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  file.path.endsWith('.yaml')
                      ? Icons.settings
                      : Icons.description,
                  size: 14,
                  color: isSelected
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    fileName,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: isSelected ? FontWeight.w600 : null,
                      color: isSelected
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            if (dirPath.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 2),
                child: Text(
                  dirPath,
                  style: TextStyle(
                    fontSize: 10,
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _CodeFileView extends StatelessWidget {
  const _CodeFileView({required this.file});

  final b.StringBundleFile file;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // File header
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerLow,
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).colorScheme.outlineVariant,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  file.path,
                  style: Theme.of(
                    context,
                  ).textTheme.labelMedium?.copyWith(fontFamily: 'monospace'),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.copy, size: 16),
                tooltip: 'Copy to clipboard',
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: file.content));
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Copied to clipboard'),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                visualDensity: VisualDensity.compact,
              ),
            ],
          ),
        ),
        // Code content
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: SelectableText(
              file.content,
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'monospace',
                height: 1.5,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
