import 'package:binui/binui.dart' as b;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_binui/flutter_binui.dart';

import 'variables_modal.dart';

/// Manages property values for all components.
class PropertySelectionScope extends InheritedWidget {
  const PropertySelectionScope({
    super.key,
    required this.propertyValues,
    required this.onPropertyChanged,
    required super.child,
  });

  /// List of property values for components
  final List<b.PropertyValue> propertyValues;

  /// Callback to update a property value
  final void Function(b.PropertyValue value) onPropertyChanged;

  static PropertySelectionScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PropertySelectionScope>();
  }

  /// Gets the current value for a property, or null if not set
  b.Value? getPropertyValue(int componentId, int propertyId) {
    return propertyValues
        .where(
          (x) => x.componentId == componentId && x.propertyId == propertyId,
        )
        .firstOrNull
        ?.value;
  }

  @override
  bool updateShouldNotify(PropertySelectionScope oldWidget) {
    return !listEquals(propertyValues, oldWidget.propertyValues);
  }
}

class PreviewPanel extends StatefulWidget {
  const PreviewPanel({super.key, required this.library});

  final b.Library library;

  @override
  State<PreviewPanel> createState() => _PreviewPanelState();
}

class _PreviewPanelState extends State<PreviewPanel> {
  /// Tracks selected variant values for each collection
  final ValueNotifier<List<b.VariableCollectionVariantValue>>
  _selectedVariantsNotifier = ValueNotifier([]);

  /// Tracks property values for components
  final ValueNotifier<List<b.PropertyValue>> _propertyValuesNotifier =
      ValueNotifier([]);

  @override
  void didUpdateWidget(PreviewPanel oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Reset selections when library changes
    if (widget.library != oldWidget.library) {
      _selectedVariantsNotifier.value = [];
      _propertyValuesNotifier.value = [];
    }
  }

  @override
  void dispose() {
    _selectedVariantsNotifier.dispose();
    _propertyValuesNotifier.dispose();
    super.dispose();
  }

  void _onVariantChanged(b.VariableCollectionVariantValue value) {
    final newList = _selectedVariantsNotifier.value
        .where((x) => x.collectionId != value.collectionId)
        .toList();
    newList.add(value);
    _selectedVariantsNotifier.value = newList;
  }

  void _onPropertyChanged(b.PropertyValue value) {
    final newList = _propertyValuesNotifier.value
        .where(
          (x) =>
              x.componentId != value.componentId ||
              x.propertyId != value.propertyId,
        )
        .toList();
    newList.add(value);
    _propertyValuesNotifier.value = newList;
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
    return ValueListenableBuilder<List<b.VariableCollectionVariantValue>>(
      valueListenable: _selectedVariantsNotifier,
      builder: (context, selectedVariants, _) {
        return ValueListenableBuilder<List<b.PropertyValue>>(
          valueListenable: _propertyValuesNotifier,
          builder: (context, propertyValues, _) {
            return VariantSelectionScope(
              selectedVariants: selectedVariants,
              onVariantChanged: _onVariantChanged,
              child: PropertySelectionScope(
                propertyValues: propertyValues,
                onPropertyChanged: _onPropertyChanged,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildHeader(context, selectedVariants),
                    Expanded(
                      child: _buildPreviewContent(
                        selectedVariants,
                        propertyValues,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildHeader(
    BuildContext context,
    List<b.VariableCollectionVariantValue> selectedVariants,
  ) {
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

  Widget _buildSelectedVariantsTags(
    List<b.VariableCollectionVariantValue> selectedVariants,
  ) {
    final activeVariants = <String>[];

    for (final collection in widget.library.variables) {
      if (collection.variants.isEmpty) continue;

      final selectedValue = selectedVariants
          .where((x) => x.collectionId == collection.id)
          .firstOrNull;

      // Find the variant by ID, or fall back to first variant
      final variant = selectedValue != null
          ? collection.variants
                    .where((v) => v.id == selectedValue.variantId)
                    .firstOrNull ??
                collection.variants.first
          : collection.variants.first;
      activeVariants.add(variant.name);
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

  Widget _buildPreviewContent(
    List<b.VariableCollectionVariantValue> selectedVariants,
    List<b.PropertyValue> propertyValues,
  ) {
    return BinuiProvider(
      config: BinuiConfig(
        widget.library,
        variableCollectionVariants: selectedVariants,
        componentProperties: propertyValues,
      ),
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
          ],
        ],
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
                    ...widget.component.properties.map((prop) {
                      return _PropertyEditor(
                        component: widget.component,
                        property: prop,
                        library: widget.library,
                      );
                    }),
                    const SizedBox(height: 8),
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
      return node.toFigmaFlutter(isRoot: true);
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

/// Editor widget for a component property
class _PropertyEditor extends StatelessWidget {
  const _PropertyEditor({
    required this.component,
    required this.property,
    required this.library,
  });

  final b.Component component;
  final b.ComponentProperty property;
  final b.Library library;

  @override
  Widget build(BuildContext context) {
    final scope = PropertySelectionScope.of(context);
    final currentValue =
        scope?.getPropertyValue(component.id, property.id) ??
        _getResolvedDefaultValue();

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              property.name,
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(child: _buildValueEditor(context, scope, currentValue)),
        ],
      ),
    );
  }

  /// Get the resolved default value for the property
  b.Value? _getResolvedDefaultValue() {
    if (!property.hasDefaultValue()) return null;
    final defaultValue = property.defaultValue;

    // If default is an alias, try to resolve it
    if (defaultValue.whichType() == b.Value_Type.alias) {
      return library.resolveAlias(defaultValue.alias);
    }
    return defaultValue;
  }

  Widget _buildValueEditor(
    BuildContext context,
    PropertySelectionScope? scope,
    b.Value? currentValue,
  ) {
    final valueType = currentValue?.whichType() ?? b.Value_Type.notSet;

    switch (valueType) {
      case b.Value_Type.stringValue:
        return _StringPropertyEditor(
          value: currentValue!.stringValue,
          onChanged: (newValue) => _updateProperty(scope, newValue),
        );
      case b.Value_Type.doubleValue:
        return _DoublePropertyEditor(
          value: currentValue!.doubleValue,
          onChanged: (newValue) => _updateProperty(scope, newValue),
        );
      case b.Value_Type.boolean:
        return _BooleanPropertyEditor(
          value: currentValue!.boolean,
          onChanged: (newValue) => _updateProperty(scope, newValue),
        );
      case b.Value_Type.color:
        return _ColorPropertyEditor(
          color: currentValue!.color,
          onChanged: (newValue) => _updateProperty(scope, newValue),
        );
      default:
        return _UnsupportedPropertyEditor(valueType: valueType);
    }
  }

  void _updateProperty(PropertySelectionScope? scope, b.Value newValue) {
    scope?.onPropertyChanged(
      b.PropertyValue(
        componentId: component.id,
        propertyId: property.id,
        value: newValue,
      ),
    );
  }
}

/// String property editor
class _StringPropertyEditor extends StatefulWidget {
  const _StringPropertyEditor({required this.value, required this.onChanged});

  final String value;
  final ValueChanged<b.Value> onChanged;

  @override
  State<_StringPropertyEditor> createState() => _StringPropertyEditorState();
}

class _StringPropertyEditorState extends State<_StringPropertyEditor> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value);
  }

  @override
  void didUpdateWidget(_StringPropertyEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value && widget.value != _controller.text) {
      _controller.text = widget.value;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextField(
        controller: _controller,
        style: const TextStyle(fontSize: 12),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          hintText: 'Enter text...',
          hintStyle: TextStyle(
            fontSize: 12,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        onChanged: (text) {
          widget.onChanged(b.Value()..stringValue = text);
        },
      ),
    );
  }
}

/// Double/number property editor
class _DoublePropertyEditor extends StatefulWidget {
  const _DoublePropertyEditor({required this.value, required this.onChanged});

  final double value;
  final ValueChanged<b.Value> onChanged;

  @override
  State<_DoublePropertyEditor> createState() => _DoublePropertyEditorState();
}

class _DoublePropertyEditorState extends State<_DoublePropertyEditor> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.value.toString());
  }

  @override
  void didUpdateWidget(_DoublePropertyEditor oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value) {
      final currentText = _controller.text;
      final currentValue = double.tryParse(currentText);
      if (currentValue != widget.value) {
        _controller.text = widget.value.toString();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      child: TextField(
        controller: _controller,
        keyboardType: const TextInputType.numberWithOptions(decimal: true),
        style: const TextStyle(fontSize: 12),
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 8,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
          hintText: '0.0',
          hintStyle: TextStyle(
            fontSize: 12,
            color: Theme.of(context).colorScheme.outline,
          ),
        ),
        onChanged: (text) {
          final value = double.tryParse(text);
          if (value != null) {
            widget.onChanged(b.Value()..doubleValue = value);
          }
        },
      ),
    );
  }
}

/// Boolean property editor
class _BooleanPropertyEditor extends StatelessWidget {
  const _BooleanPropertyEditor({required this.value, required this.onChanged});

  final bool value;
  final ValueChanged<b.Value> onChanged;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Switch(
        value: value,
        onChanged: (newValue) {
          onChanged(b.Value()..boolean = newValue);
        },
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }
}

/// Color property editor
class _ColorPropertyEditor extends StatelessWidget {
  const _ColorPropertyEditor({required this.color, required this.onChanged});

  final b.Color color;
  final ValueChanged<b.Value> onChanged;

  @override
  Widget build(BuildContext context) {
    final flutterColor = Color.fromRGBO(
      (color.red * 255).round(),
      (color.green * 255).round(),
      (color.blue * 255).round(),
      color.alpha,
    );

    return InkWell(
      onTap: () => _showColorPicker(context, flutterColor),
      borderRadius: BorderRadius.circular(4),
      child: Container(
        height: 32,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: Theme.of(context).colorScheme.outline.withAlpha(100),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: flutterColor,
                borderRadius: BorderRadius.circular(3),
                border: Border.all(
                  color: Theme.of(context).colorScheme.outline.withAlpha(100),
                ),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              _colorToHex(flutterColor),
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'monospace',
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showColorPicker(BuildContext context, Color currentColor) {
    // Simple color picker using predefined colors
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Select Color'),
        content: SizedBox(
          width: 280,
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children:
                [
                  Colors.red,
                  Colors.pink,
                  Colors.purple,
                  Colors.deepPurple,
                  Colors.indigo,
                  Colors.blue,
                  Colors.lightBlue,
                  Colors.cyan,
                  Colors.teal,
                  Colors.green,
                  Colors.lightGreen,
                  Colors.lime,
                  Colors.yellow,
                  Colors.amber,
                  Colors.orange,
                  Colors.deepOrange,
                  Colors.brown,
                  Colors.grey,
                  Colors.blueGrey,
                  Colors.black,
                  Colors.white,
                ].map((c) {
                  return InkWell(
                    onTap: () {
                      final newColor = b.Color()
                        ..red = c.r
                        ..green = c.g
                        ..blue = c.b
                        ..alpha = c.a;
                      onChanged(b.Value()..color = newColor);
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                        color: c,
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                          color: c == currentColor
                              ? Theme.of(context).colorScheme.primary
                              : Colors.grey.withAlpha(100),
                          width: c == currentColor ? 2 : 1,
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
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

/// Unsupported property type editor
class _UnsupportedPropertyEditor extends StatelessWidget {
  const _UnsupportedPropertyEditor({required this.valueType});

  final b.Value_Type valueType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(4),
      ),
      alignment: Alignment.centerLeft,
      child: Text(
        valueType == b.Value_Type.notSet
            ? 'No value set'
            : 'Unsupported type: ${valueType.name}',
        style: TextStyle(
          fontSize: 11,
          fontStyle: FontStyle.italic,
          color: Theme.of(context).colorScheme.outline,
        ),
      ),
    );
  }
}
