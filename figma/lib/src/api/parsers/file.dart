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
