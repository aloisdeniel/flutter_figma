import 'package:example/src/variables/demo_tokens.dart' as demo_tokens;
import 'package:flutter/widgets.dart' as fl;

enum DemoThemeMode { white }

sealed class DemoThemeData {
  DemoThemeData();

  factory DemoThemeData.fromMode(DemoThemeMode mode) {
    switch (mode) {
      case DemoThemeMode.white:
        return _White();
    }
  }

  late ({demo_tokens.DemoTokensData demoTokens}) alias;

  fl.Color get background;
  fl.Color get foreground;
}

class _White extends DemoThemeData {
  _White();

  @override
  get background => alias.demoTokens.tokensBlueBackground;

  @override
  get foreground => alias.demoTokens.tokensBlueForeground;
}
