import 'package:binui/binui.dart' as b;
import 'package:flutter/material.dart';
import 'package:flutter_binui/flutter_binui.dart';

import 'variables_modal.dart';

class PreviewPanel extends StatefulWidget {
  const PreviewPanel({super.key, required this.library});

  final b.Library library;

  @override
  State<PreviewPanel> createState() => _PreviewPanelState();
}

class _PreviewPanelState extends State<PreviewPanel> {
  /// Tracks selected variant index for each collection by collection ID
  final ValueNotifier<Map<int, int>> _selectedVariantsNotifier = ValueNotifier(
    {},
  );

  @override
  void didUpdateWidget(PreviewPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset selections when library changes
    if (widget.library != oldWidget.library) {
      _selectedVariantsNotifier.value = {};
    }
  }

  @override
  void dispose() {
    _selectedVariantsNotifier.dispose();
    super.dispose();
  }

  void _onVariantChanged(int collectionId, int variantIndex) {
    final newMap = Map<int, int>.from(_selectedVariantsNotifier.value);
    newMap[collectionId] = variantIndex;
    _selectedVariantsNotifier.value = newMap;
  }

  void _openVariablesModal() {
    VariablesModal.show(
      context,
      library: widget.library,
      variantsNotifier: _selectedVariantsNotifier,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Map<int, int>>(
      valueListenable: _selectedVariantsNotifier,
      builder: (context, selectedVariants, _) {
        return VariantSelectionScope(
          selectedVariants: selectedVariants,
          onVariantChanged: _onVariantChanged,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildHeader(context, selectedVariants),
              Expanded(child: _buildPreviewContent()),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, Map<int, int> selectedVariants) {
    return Container(
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
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          if (widget.library.variables.isNotEmpty) ...[
            _buildSelectedVariantsTags(selectedVariants),
            const SizedBox(width: 8),
            IconButton.filledTonal(
              icon: const Icon(Icons.tune, size: 18),
              tooltip: 'Variables',
              onPressed: _openVariablesModal,
              visualDensity: VisualDensity.compact,
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildSelectedVariantsTags(Map<int, int> selectedVariants) {
    final activeVariants = <String>[];

    for (final collection in widget.library.variables) {
      if (collection.variants.isEmpty) continue;

      final selectedIndex = selectedVariants[collection.id] ?? 0;
      if (selectedIndex < collection.variants.length) {
        final variant = collection.variants[selectedIndex];
        activeVariants.add('${collection.name}: ${variant.name}');
      }
    }

    if (activeVariants.isEmpty) return const SizedBox();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: activeVariants.map((tag) {
        return Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.tertiaryContainer.withAlpha(150),
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: Theme.of(
                  context,
                ).colorScheme.outlineVariant.withAlpha(100),
              ),
            ),
            child: Text(
              tag,
              style: TextStyle(
                fontSize: 10,
                color: Theme.of(context).colorScheme.onTertiaryContainer,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildPreviewContent() {
    return BinuiProvider(
      config: BinuiConfig(widget.library),
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (widget.library.components.isNotEmpty) ...[
            ...widget.library.components.map(
              (component) => _ComponentPreview(
                component: component,
                library: widget.library,
              ),
            ),
          ] else if (widget.library.visualNodes.isNotEmpty) ...[
            _SectionHeader(title: 'Visual Nodes'),
            const SizedBox(height: 12),
            // ... (Visual nodes logic omitted as it wasn't fully implemented in original)
          ],
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  const _SectionHeader({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w700,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}

class _ComponentPreview extends StatefulWidget {
  const _ComponentPreview({required this.component, required this.library});

  final b.Component component;
  final b.Library library;

  @override
  State<_ComponentPreview> createState() => _ComponentPreviewState();
}

class _ComponentPreviewState extends State<_ComponentPreview> {
  bool _expanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => setState(() => _expanded = !_expanded),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(
                    _expanded ? Icons.expand_less : Icons.expand_more,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Icon(
                    Icons.widgets_outlined,
                    size: 18,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.component.name,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.primaryContainer.withAlpha(150),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'ID: ${widget.component.id}',
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (_expanded)
            Container(
              width: double.infinity,
              constraints: BoxConstraints(maxHeight: 600),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (widget.component.properties.isNotEmpty) ...[
                    Text(
                      'Properties (${widget.component.properties.length}):',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: widget.component.properties.map((prop) {
                        return Chip(
                          visualDensity: VisualDensity.compact,
                          label: Text(
                            prop.name,
                            style: const TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16),
                  ],
                  if (widget.component.variantDefinitions.isNotEmpty) ...[
                    Text(
                      'Variant Definitions (${widget.component.variantDefinitions.length}):',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      runSpacing: 4,
                      children: widget.component.variantDefinitions.map((
                        variant,
                      ) {
                        return Chip(
                          visualDensity: VisualDensity.compact,
                          backgroundColor: Theme.of(
                            context,
                          ).colorScheme.secondaryContainer,
                          label: Text(
                            variant.name,
                            style: const TextStyle(fontSize: 11),
                          ),
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 16),
                  ],
                  if (widget.component.variants.isNotEmpty) ...[
                    Text(
                      'Variants (${widget.component.variants.length}):',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...widget.component.variants.map((variant) {
                      return _ComponentVariantPreview(
                        variant: variant,
                        library: widget.library,
                      );
                    }),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _ComponentVariantPreview extends StatefulWidget {
  const _ComponentVariantPreview({
    required this.variant,
    required this.library,
  });

  final b.ComponentVariant variant;
  final b.Library library;

  @override
  State<_ComponentVariantPreview> createState() =>
      _ComponentVariantPreviewState();
}

class _ComponentVariantPreviewState extends State<_ComponentVariantPreview> {
  bool _showVisualNode = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 8),
      color: Theme.of(context).colorScheme.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () => setState(() => _showVisualNode = !_showVisualNode),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(
                    _showVisualNode ? Icons.expand_less : Icons.expand_more,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.variant.name.isNotEmpty
                          ? widget.variant.name
                          : 'Variant ${widget.variant.id}',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  if (widget.variant.hasRoot())
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Has Visual Node',
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(
                            context,
                          ).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          if (_showVisualNode && widget.variant.hasRoot())
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline,
                ),
              ),
              child: _VisualNodeRenderer(
                node: widget.variant.root,
                library: widget.library,
              ),
            ),
        ],
      ),
    );
  }
}

class _VisualNodeRenderer extends StatelessWidget {
  const _VisualNodeRenderer({required this.node, required this.library});

  final b.VisualNode node;
  final b.Library library;

  @override
  Widget build(BuildContext context) {
    try {
      return node.toFigmaFlutter();
    } catch (e) {
      return Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.errorContainer.withAlpha(100),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.warning_amber,
                  color: Theme.of(context).colorScheme.error,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Text(
                  'Render Error',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              e.toString(),
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'monospace',
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          ],
        ),
      );
    }
  }
}
