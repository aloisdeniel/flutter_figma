import 'dart:ui' as ui;
import 'package:flutter/widgets.dart' as fl;

enum StylesMode { default_ }

sealed class StylesData {
  StylesData();

  factory StylesData.fromMode(StylesMode mode) {
    switch (mode) {
      case StylesMode.default_:
        return _Default();
    }
  }

  fl.TextStyle get title;
  fl.TextStyle get body;
  fl.TextStyle get button;
  fl.TextStyle get tag;
  fl.TextStyle get headline;
}

class _Default extends StylesData {
  _Default();

  @override
  final title = fl.TextStyle(
    fontFamily: 'Space Grotesk',
    fontSize: 60.0,
    fontWeight: fl.FontWeight.w0,
  );

  @override
  final body = fl.TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 24.0,
    fontWeight: fl.FontWeight.w0,
  );

  @override
  final button = fl.TextStyle(
    fontFamily: 'Space Grotesk',
    fontSize: 18.0,
    fontWeight: fl.FontWeight.w0,
  );

  @override
  final tag = fl.TextStyle(
    fontFamily: 'Space Grotesk',
    fontSize: 12.0,
    fontWeight: fl.FontWeight.w0,
  );

  @override
  final headline = fl.TextStyle(
    fontFamily: 'DM Sans',
    fontSize: 24.0,
    fontWeight: fl.FontWeight.w0,
  );
}
