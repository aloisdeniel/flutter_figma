import 'package:flutter_figma/src/widgets/node.dart';

import '../api.dart';

import 'base.dart' as base;
import 'nodes.dart';

class FigmaFileParser {
  const FigmaFileParser();

  FigmaApiFile parse(dynamic json) {
    return FigmaApiFile(
      name: json['name'],
      lastModified: json['lastModified'],
      role: json['role'],
      version: json['version'],
      styles: _fileStyleMap(json['styles']),
      components: _fileComponentMap(json['components']),
      document: _document(json['document']),
    );
  }
}

const _nodeParser = FigmaNodeParser();

FigmaApiDocument _document(dynamic json) {
  return FigmaApiDocument(
    pages: json['children']?.map<FigmaApiCanvas>(_canvas)?.toList() ??
        const <FigmaApiCanvas>[],
  );
}

FigmaApiCanvas _canvas(dynamic json) {
  return FigmaApiCanvas(
    id: json['id'],
    name: json['name'],
    backgroundColor: base.color(json['backgroundColor']),
    children: json['children']?.map<FigmaNode>(_nodeParser.parse)?.toList() ??
        const <FigmaApiCanvas>[],
  );
}

Map<String, FigmaFileComponent> _fileComponentMap(dynamic json) {
  final map = json as Map;
  return map.map(
    (key, value) => MapEntry<String, FigmaFileComponent>(
      key,
      _fileComponent(value),
    ),
  );
}

FigmaFileComponent _fileComponent(dynamic json) {
  return FigmaFileComponent(
    key: json['key'],
    name: json['name'],
    description: json['description'],
  );
}

Map<String, FigmaFileStyle> _fileStyleMap(dynamic json) {
  final map = json as Map;
  return map.map(
    (key, value) => MapEntry<String, FigmaFileStyle>(
      key,
      _fileStyle(value),
    ),
  );
}

FigmaFileStyle _fileStyle(dynamic json) {
  return FigmaFileStyle(
    key: json['key'],
    name: json['name'],
    description: json['description'],
    type: _fileStyleType(json['type']),
  );
}

FigmaFileStyleType _fileStyleType(dynamic json) {
  switch (json) {
    case 'TEXT':
      return FigmaFileStyleType.text;
    case 'EFFECT':
      return FigmaFileStyleType.effect;
    case 'GRID':
      return FigmaFileStyleType.grid;
    default:
      return FigmaFileStyleType.fill;
  }
}
