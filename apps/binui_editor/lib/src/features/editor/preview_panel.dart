import 'package:binui/binui.dart' as b;
import 'package:flutter/material.dart';
import 'package:flutter_binui/flutter_binui.dart';

class PreviewPanel extends StatelessWidget {
  const PreviewPanel({super.key, required this.library});

  final b.Library library;

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
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  '${library.components.length} components',
                  style: TextStyle(
                    fontSize: 12,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: BinuiProvider(
            config: BinuiConfig(library),
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                if (library.components.isNotEmpty) ...[
                  _SectionHeader(title: 'Components'),
                  const SizedBox(height: 12),
                  ...library.components.map(
                    (component) => _ComponentPreview(
                      component: component,
                      library: library,
                    ),
                  ),
                ],
                if (library.variables.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  _SectionHeader(title: 'Variable Collections'),
                  const SizedBox(height: 12),
                  ...library.variables.map(
                    (collection) => _VariableCollectionPreview(
                      collection: collection,
                      library: library,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ],
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
  bool _expanded = false;
  int _selectedVariantIndex = 0;

  @override
  Widget build(BuildContext context) {
    final hasVariants = widget.collection.variants.isNotEmpty;
    final selectedVariant = hasVariants
        ? widget.collection.variants[_selectedVariantIndex]
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
                            selectedIndex: _selectedVariantIndex,
                            onChanged: (index) {
                              setState(() => _selectedVariantIndex = index);
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
    String aliasText;

    switch (alias.whichType()) {
      case b.Alias_Type.variable:
        final varAlias = alias.variable;
        final collection = library.variables
            .where((c) => c.id == varAlias.collectionId)
            .firstOrNull;
        final variable = collection?.variables
            .where((v) => v.id == varAlias.variableId)
            .firstOrNull;
        aliasText = variable != null
            ? '${collection?.name ?? 'Unknown'}/${variable.name}'
            : 'Unknown variable (${varAlias.collectionId}:${varAlias.variableId})';
        break;
      case b.Alias_Type.property:
        aliasText = 'Property: ${alias.property.propertyId}';
        break;
      case b.Alias_Type.constant:
        aliasText = 'Constant value';
        break;
      case b.Alias_Type.notSet:
        aliasText = 'Unset alias';
        break;
    }

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
            aliasText,
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
