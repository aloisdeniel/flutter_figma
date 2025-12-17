import 'package:binui/binui.dart' as b;
import 'package:flutter/material.dart';

/// Manages selected variant indices for all variable collections.
class VariantSelectionScope extends InheritedWidget {
  const VariantSelectionScope({
    super.key,
    required this.selectedVariants,
    required this.onVariantChanged,
    required super.child,
  });

  /// Map of collection ID to selected variant index
  final Map<int, int> selectedVariants;

  /// Callback to update the selected variant for a collection
  final void Function(int collectionId, int variantIndex) onVariantChanged;

  static VariantSelectionScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<VariantSelectionScope>();
  }

  int getSelectedVariantIndex(int collectionId) {
    return selectedVariants[collectionId] ?? 0;
  }

  @override
  bool updateShouldNotify(VariantSelectionScope oldWidget) {
    return selectedVariants != oldWidget.selectedVariants;
  }
}

class VariablesModal extends StatelessWidget {
  const VariablesModal({super.key, required this.library});

  final b.Library library;

  static void show(
    BuildContext context, {
    required b.Library library,
    required ValueNotifier<Map<int, int>> variantsNotifier,
  }) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      showDragHandle: true,
      builder: (context) => ValueListenableBuilder<Map<int, int>>(
        valueListenable: variantsNotifier,
        builder: (context, selectedVariants, _) {
          return VariantSelectionScope(
            selectedVariants: selectedVariants,
            onVariantChanged: (collectionId, variantIndex) {
              final newMap = Map<int, int>.from(variantsNotifier.value);
              newMap[collectionId] = variantIndex;
              variantsNotifier.value = newMap;
            },
            child: VariablesModal(library: library),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.9,
      expand: false,
      builder: (context, scrollController) {
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Icon(
                    Icons.palette,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Variables',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            const Divider(height: 1),
            Expanded(
              child: ListView(
                controller: scrollController,
                padding: const EdgeInsets.all(16),
                children: [
                  if (library.variables.isEmpty)
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(32),
                        child: Text('No variables in this library'),
                      ),
                    )
                  else
                    ...library.variables.map(
                      (collection) => _VariableCollectionPreview(
                        collection: collection,
                        library: library,
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class _VariableCollectionPreview extends StatefulWidget {
  const _VariableCollectionPreview({
    required this.collection,
    required this.library,
  });

  final b.VariableCollection collection;
  final b.Library library;

  @override
  State<_VariableCollectionPreview> createState() =>
      _VariableCollectionPreviewState();
}

class _VariableCollectionPreviewState
    extends State<_VariableCollectionPreview> {
  bool _expanded = true; // Default to expanded in modal

  @override
  Widget build(BuildContext context) {
    final scope = VariantSelectionScope.of(context);
    final selectedVariantIndex =
        scope?.getSelectedVariantIndex(widget.collection.id) ?? 0;

    final hasVariants = widget.collection.variants.isNotEmpty;
    final selectedVariant =
        hasVariants && selectedVariantIndex < widget.collection.variants.length
        ? widget.collection.variants[selectedVariantIndex]
        : null;

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
                    Icons.palette_outlined,
                    size: 18,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      widget.collection.name,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  if (selectedVariant != null) ...[
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
                        selectedVariant.name,
                        style: TextStyle(
                          fontSize: 10,
                          color: Theme.of(
                            context,
                          ).colorScheme.onPrimaryContainer,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                  ],
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 6,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.tertiaryContainer.withAlpha(150),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      '${widget.collection.variables.length} variables',
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(
                          context,
                        ).colorScheme.onTertiaryContainer,
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
                  if (hasVariants) ...[
                    Row(
                      children: [
                        Text(
                          'Variant:',
                          style: Theme.of(context).textTheme.labelMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _VariantSelector(
                            variants: widget.collection.variants,
                            selectedIndex: selectedVariantIndex,
                            onChanged: (index) {
                              scope?.onVariantChanged(
                                widget.collection.id,
                                index,
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(height: 1),
                    const SizedBox(height: 16),
                  ],
                  Text(
                    'Variables:',
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  ...List.generate(widget.collection.variables.length, (index) {
                    final variable = widget.collection.variables[index];
                    final value =
                        selectedVariant != null &&
                            index < selectedVariant.values.length
                        ? selectedVariant.values[index]
                        : null;
                    return _VariableValueRow(
                      variable: variable,
                      value: value,
                      library: widget.library,
                    );
                  }),
                ],
              ),
            ),
        ],
      ),
    );
  }
}

class _VariantSelector extends StatelessWidget {
  const _VariantSelector({
    required this.variants,
    required this.selectedIndex,
    required this.onChanged,
  });

  final List<b.VariableCollectionVariant> variants;
  final int selectedIndex;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<int>(
      segments: [
        for (var i = 0; i < variants.length; i++)
          ButtonSegment<int>(
            value: i,
            label: Text(variants[i].name, style: const TextStyle(fontSize: 12)),
          ),
      ],
      selected: {selectedIndex},
      onSelectionChanged: (selected) => onChanged(selected.first),
      showSelectedIcon: false,
      style: ButtonStyle(
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        ),
      ),
    );
  }
}

class _VariableValueRow extends StatelessWidget {
  const _VariableValueRow({
    required this.variable,
    required this.value,
    required this.library,
  });

  final b.VariableCollectionEntry variable;
  final b.Value? value;
  final b.Library library;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(variable.name, style: const TextStyle(fontSize: 13)),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 3,
            child: _ValuePreview(value: value, library: library),
          ),
        ],
      ),
    );
  }
}

class _ValuePreview extends StatelessWidget {
  const _ValuePreview({required this.value, required this.library});

  final b.Value? value;
  final b.Library library;

  @override
  Widget build(BuildContext context) {
    if (value == null) {
      return Text(
        'No value',
        style: TextStyle(
          fontSize: 12,
          color: Theme.of(context).colorScheme.outline,
          fontStyle: FontStyle.italic,
        ),
      );
    }

    final valueType = value!.whichType();

    switch (valueType) {
      case b.Value_Type.color:
        return _ColorValuePreview(color: value!.color);
      case b.Value_Type.stringValue:
        return _TextValuePreview(
          label: 'String',
          value: '"${value!.stringValue}"',
        );
      case b.Value_Type.doubleValue:
        return _TextValuePreview(
          label: 'Number',
          value: value!.doubleValue.toString(),
        );
      case b.Value_Type.boolean:
        return _TextValuePreview(
          label: 'Boolean',
          value: value!.boolean.toString(),
        );
      case b.Value_Type.size:
        return _TextValuePreview(
          label: 'Size',
          value: '${value!.size.width} x ${value!.size.height}',
        );
      case b.Value_Type.alias:
        return _AliasValuePreview(alias: value!.alias, library: library);
      case b.Value_Type.notSet:
        return Text(
          'Not set',
          style: TextStyle(
            fontSize: 12,
            color: Theme.of(context).colorScheme.outline,
            fontStyle: FontStyle.italic,
          ),
        );
      default:
        return _TextValuePreview(label: 'Unknown', value: valueType.name);
    }
  }
}

class _ColorValuePreview extends StatelessWidget {
  const _ColorValuePreview({required this.color});

  final b.Color color;

  @override
  Widget build(BuildContext context) {
    final flutterColor = Color.fromRGBO(
      (color.red * 255).round(),
      (color.green * 255).round(),
      (color.blue * 255).round(),
      color.alpha,
    );

    return Row(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: flutterColor,
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: Theme.of(context).colorScheme.outline.withAlpha(100),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(25),
                blurRadius: 2,
                offset: const Offset(0, 1),
              ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            _colorToHex(flutterColor),
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'monospace',
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      ],
    );
  }

  String _colorToHex(Color color) {
    final r = ((color.r * 255).round() & 0xff)
        .toRadixString(16)
        .padLeft(2, '0');
    final g = ((color.g * 255).round() & 0xff)
        .toRadixString(16)
        .padLeft(2, '0');
    final b = ((color.b * 255).round() & 0xff)
        .toRadixString(16)
        .padLeft(2, '0');
    final a = (color.a * 255).round() & 0xff;
    if (a < 255) {
      final aHex = a.toRadixString(16).padLeft(2, '0');
      return '#$r$g$b$aHex'.toUpperCase();
    }
    return '#$r$g$b'.toUpperCase();
  }
}

class _TextValuePreview extends StatelessWidget {
  const _TextValuePreview({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 10,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'monospace',
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

class _AliasValuePreview extends StatelessWidget {
  const _AliasValuePreview({required this.alias, required this.library});

  final b.Alias alias;
  final b.Library library;

  @override
  Widget build(BuildContext context) {
    final scope = VariantSelectionScope.of(context);

    switch (alias.whichType()) {
      case b.Alias_Type.variable:
        return _VariableAliasPreview(
          alias: alias.variable,
          library: library,
          scope: scope,
        );
      case b.Alias_Type.property:
        return _buildAliasLabel(
          context,
          'Property: ${alias.property.propertyId}',
        );
      case b.Alias_Type.constant:
        return _buildAliasLabel(context, 'Constant value');
      case b.Alias_Type.notSet:
        return _buildAliasLabel(context, 'Unset alias');
    }
  }

  Widget _buildAliasLabel(BuildContext context, String text) {
    return Row(
      children: [
        Icon(
          Icons.link,
          size: 14,
          color: Theme.of(context).colorScheme.secondary,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}

class _VariableAliasPreview extends StatelessWidget {
  const _VariableAliasPreview({
    required this.alias,
    required this.library,
    required this.scope,
  });

  final b.VariableAlias alias;
  final b.Library library;
  final VariantSelectionScope? scope;

  @override
  Widget build(BuildContext context) {
    // Find the referenced collection
    final collection = library.variables
        .where((c) => c.id == alias.collectionId)
        .firstOrNull;

    if (collection == null) {
      return _buildUnresolvedAlias(
        context,
        'Unknown collection (${alias.collectionId})',
      );
    }

    // Find the variable entry within the collection
    final variableIndex = collection.variables.indexWhere(
      (v) => v.id == alias.variableId,
    );

    if (variableIndex < 0) {
      return _buildUnresolvedAlias(
        context,
        'Unknown variable (${alias.variableId}) in ${collection.name}',
      );
    }

    final variable = collection.variables[variableIndex];

    // Get the selected variant for the referenced collection
    final selectedVariantIndex =
        scope?.getSelectedVariantIndex(collection.id) ?? 0;

    // Get the resolved value from the selected variant
    b.Value? resolvedValue;
    if (collection.variants.isNotEmpty &&
        selectedVariantIndex < collection.variants.length) {
      final variant = collection.variants[selectedVariantIndex];
      if (variableIndex < variant.values.length) {
        resolvedValue = variant.values[variableIndex];
      }
    }

    final aliasPath = '${collection.name}/${variable.name}';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Show alias reference
        Row(
          children: [
            Icon(
              Icons.link,
              size: 14,
              color: Theme.of(context).colorScheme.secondary,
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                aliasPath,
                style: TextStyle(
                  fontSize: 11,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        // Show resolved value
        if (resolvedValue != null)
          _ValuePreview(value: resolvedValue, library: library)
        else
          Text(
            'No value for selected variant',
            style: TextStyle(
              fontSize: 11,
              color: Theme.of(context).colorScheme.outline,
              fontStyle: FontStyle.italic,
            ),
          ),
      ],
    );
  }

  Widget _buildUnresolvedAlias(BuildContext context, String message) {
    return Row(
      children: [
        Icon(
          Icons.link_off,
          size: 14,
          color: Theme.of(context).colorScheme.error,
        ),
        const SizedBox(width: 6),
        Expanded(
          child: Text(
            message,
            style: TextStyle(
              fontSize: 12,
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ),
      ],
    );
  }
}
