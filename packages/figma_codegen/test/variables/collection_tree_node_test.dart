import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/exporter/flutter/variables/collection.tree_data.dart';
import 'package:test/test.dart';

void main() {
  group('CollectionTreeNode.fromCollection', () {
    test('creates a tree from slash separated variable names', () {
      final collection = VariableCollection(
        id: 1,
        name: 'Tokens',
        variables: [
          VariableCollectionEntry(id: 1, name: 'color/brand/primary'),
          VariableCollectionEntry(id: 2, name: 'color/brand/secondary'),
          VariableCollectionEntry(id: 3, name: 'spacing/sm'),
          VariableCollectionEntry(id: 4, name: 'radius'),
        ],
        variants: [
          VariableCollectionVariant(
            id: 1,
            name: 'Default',
            values: [
              Value(doubleValue: NumberValue(value: 1)),
              Value(doubleValue: NumberValue(value: 2)),
              Value(doubleValue: NumberValue(value: 3)),
              Value(doubleValue: NumberValue(value: 4)),
            ],
          ),
        ],
      );

      final root = CollectionTreeNode.fromCollection(collection);

      expect(root.name, 'Tokens');
      expect(root.variables.map((v) => v.name), contains('radius'));
      expect(root.children.keys, containsAll(['color', 'spacing']));

      final colorNode = root.children['color'];
      expect(colorNode, isNotNull);
      expect(colorNode!.children.keys, contains('brand'));

      final brandNode = colorNode.children['brand'];
      expect(brandNode, isNotNull);
      expect(
        brandNode!.variables.map((v) => v.name).toList(),
        containsAll(['primary', 'secondary']),
      );

      final spacingNode = root.children['spacing'];
      expect(spacingNode, isNotNull);
      expect(spacingNode!.variables.map((v) => v.name), contains('sm'));
    });

    test('preserves variable order within each leaf node', () {
      final collection = VariableCollection(
        id: 1,
        name: 'Tokens',
        variables: [
          VariableCollectionEntry(id: 1, name: 'group/itemA'),
          VariableCollectionEntry(id: 2, name: 'group/itemB'),
        ],
        variants: [
          VariableCollectionVariant(
            id: 1,
            name: 'Default',
            values: [
              Value(stringValue: StringValue(value: 'A')),
              Value(stringValue: StringValue(value: 'B')),
            ],
          ),
        ],
      );

      final root = CollectionTreeNode.fromCollection(collection);
      final groupNode = root.children['group'];
      expect(groupNode, isNotNull);
      expect(groupNode!.variables.map((v) => v.name), ['itemA', 'itemB']);
    });

    test('ignores empty name segments', () {
      final collection = VariableCollection(
        id: 1,
        name: 'Tokens',
        variables: [
          VariableCollectionEntry(id: 1, name: 'colors//brand///primary'),
        ],
        variants: [
          VariableCollectionVariant(
            id: 1,
            name: 'Default',
            values: [Value(boolean: BooleanValue(value: true))],
          ),
        ],
      );

      final root = CollectionTreeNode.fromCollection(collection);
      expect(root.children.keys, contains('colors'));
      final colorsNode = root.children['colors'];
      expect(colorsNode, isNotNull);
      expect(colorsNode!.children.keys, contains('brand'));
      final brandNode = colorsNode.children['brand'];
      expect(brandNode, isNotNull);
      expect(brandNode!.variables.map((v) => v.name), contains('primary'));
    });
  });
}
