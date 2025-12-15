import 'package:flutter/widgets.dart' as fl;

enum DemoTokensMode { light }

sealed class DemoTokensData {
  DemoTokensData();

  factory DemoTokensData.fromMode(DemoTokensMode mode) {
    switch (mode) {
      case DemoTokensMode.light:
        return _Light();
    }
  }

  fl.Color get tokensBlueBackground;
  fl.Color get tokensBlueForeground;
}

class _Light extends DemoTokensData {
  _Light();

  @override
  final tokensBlueBackground = const fl.Color(0xFFFFE5E5);

  @override
  final tokensBlueForeground = const fl.Color(0xFF000000);
}
