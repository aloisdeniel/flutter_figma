import 'package:binui/src/definitions.pb.dart';

export 'definitions.pb.dart';

extension LibraryExtension on Library {
  Component? findComponent(int id) {
    return components.where((x) => x.id == id).firstOrNull;
  }

  VariableCollection? findVariableCollection(int id) {
    return variables.where((x) => x.id == id).firstOrNull;
  }
}

extension ComponentExtension on Component {
  ComponentProperty? findProperty(int id) {
    return properties.where((x) => x.id == id).firstOrNull;
  }

  ComponentVariantDefinition? findVariant(int id) {
    return variantDefinitions.where((x) => x.id == id).firstOrNull;
  }
}

extension ComponentVariantDefinitionExtension on ComponentVariantDefinition {
  ComponentVariantValueDefinition? findValueDefinition(int id) {
    return values.where((x) => x.id == id).firstOrNull;
  }
}

extension VariableCollectionExtension on VariableCollection {
  VariableCollectionEntry? findEntry(int id) {
    return variables.where((x) => x.id == id).firstOrNull;
  }
}
