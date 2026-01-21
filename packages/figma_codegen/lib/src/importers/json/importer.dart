import 'dart:convert';

import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/definitions/library.dart';
import 'package:figma_codegen/src/definitions/variables.pb.dart';
import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';

class JsonImporter {
  const JsonImporter();

  Future<Library> import(String content) async {
    final decoded = jsonDecode(content);

    if (decoded is! Map) {
      throw FormatException('Expected a JSON map.');
    }

    final decodedCollections = decoded['variables'];

    if (decodedCollections is! List) {
      throw FormatException('Expected a JSON array of VariableCollections.');
    }

    final collecions = decodedCollections
        .map<VariableCollection>((item) {
          if (item is! Map<String, dynamic>) {
            throw FormatException(
              'Expected each item to be a JSON object representing a VariableCollection.',
            );
          }
          return VariableCollection()..mergeFromProto3Json(item);
        })
        .whereType<VariableCollection>()
        .toList();

    final decodedVertexNetworks = decoded['vectorGraphics'];

    if (decodedVertexNetworks is! List) {
      throw FormatException('Expected a JSON array of VertexNetworks.');
    }

    final vectorGraphics = decodedVertexNetworks
        .map((item) {
          if (item is! Map<String, dynamic>) {
            throw FormatException(
              'Expected each item to be a JSON object representing a VertexNetwork.',
            );
          }
          return VectorGraphics()..mergeFromProto3Json(item);
        })
        .whereType<VectorGraphics>()
        .toList();

    final decodedComponents = decoded['components'];

    if (decodedComponents is! List) {
      throw FormatException('Expected a JSON array of Components.');
    }

    final components = decodedComponents
        .map((item) {
          if (item is! Map<String, dynamic>) {
            throw FormatException(
              'Expected each item to be a JSON object representing a Component.',
            );
          }
          return Component()..mergeFromProto3Json(item);
        })
        .whereType<Component>()
        .toList();

    return Library(
      vectorGraphics: vectorGraphics,
      variables: collecions,
      components: components,
    );
  }
}
