import 'dart:convert';
import 'dart:ui';

import 'package:flutter_figma/src/widgets/node.dart';
import 'package:flutter_figma/widgets.dart';
import 'package:meta/meta.dart';

import 'parsers/file.dart';
import 'package:http/http.dart' as http;

class FigmaApi {
  static const _fileParser = FigmaFileParser();

  static const host = 'https://api.figma.com';

  final String token;

  const FigmaApi(this.token) : assert(token != null);

  Map<String, String> get headers {
    return {
      'X-FIGMA-TOKEN': token,
    };
  }

  Future<FigmaApiFile> getFile(String id) async {
    final response =
        await http.get('$host/v1/files/$id?geometry=paths', headers: headers);
    if (response.statusCode != 200) throw Exception();
    final json = jsonDecode(response.body);
    return _fileParser.parse(json);
  }
}

class FigmaApiFile {
  final String name;
  final String role;
  final String version;
  final String lastModified;
  final FigmaApiDocument document;

  const FigmaApiFile({
    @required this.name,
    @required this.role,
    @required this.version,
    @required this.lastModified,
    @required this.document,
  });

  FigmaNode findNode(String id) {
    if (document?.pages == null) return null;
    for (var page in document.pages) {
      for (var child in page.children) {
        final found = _findNode(child, id);
        if (found != null) {
          return found;
        }
      }
    }
    return null;
  }
}

FigmaNode _findNode(FigmaNode node, String id) {
  if (node == null) return null;
  if (node.id == id) return node;
  if (node is FigmaFrame) {
    for (var child in node.children) {
      final found = _findNode(child, id);
      if (found != null) {
        return found;
      }
    }
  }
  return null;
}

class FigmaApiDocument {
  final List<FigmaApiCanvas> pages;
  const FigmaApiDocument({
    @required this.pages,
  });
}

class FigmaApiCanvas {
  final String id;
  final String name;
  final Color backgroundColor;
  final List<FigmaNode> children;

  const FigmaApiCanvas({
    @required this.id,
    @required this.name,
    @required this.backgroundColor,
    @required this.children,
  });
}
