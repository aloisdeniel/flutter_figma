import 'package:example/src/variables/demo_tokens.dart' as demoTokens;
import 'dart:ui' as ui;
import 'package:flutter/widgets.dart' as fl;

enum DemoThemeMode {
  white,
  red,
  orange,
  blue,
  whitePressed,
}

sealed class DemoThemeData {
  DemoThemeData();

  factory DemoThemeData.fromMode(DemoThemeMode mode) {
    switch (mode) {
      case DemoThemeMode.white:
        return _White();
      case DemoThemeMode.red:
        return _Red();
      case DemoThemeMode.orange:
        return _Orange();
      case DemoThemeMode.blue:
        return _Blue();
      case DemoThemeMode.whitePressed:
        return _WhitePressed();
    }
  }

  late ({demoTokens.DemoTokensData demoTokens}) alias;

  fl.Color get background;
  fl.Color get foreground;
  fl.Color get buttonBackground;
  fl.Color get buttonForeground;
  fl.Color get tagBackground;
  fl.Color get tagForeground;
  fl.Color get backgroundTransparent;
}

class _White extends DemoThemeData {
  _White();

  @override
  get background => alias.demoTokens.tokensBlueBackground;

  @override
  get foreground => alias.demoTokens.tokensBlueForeground;

  @override
  get buttonBackground => alias.demoTokens.tokensBlueLightBackground;

  @override
  get buttonForeground => alias.demoTokens.tokensBlueAccent;

  @override
  get tagBackground => alias.demoTokens.tokensBlueLightBackground;

  @override
  get tagForeground => alias.demoTokens.tokensBlueAccent;

  @override
  get backgroundTransparent => alias.demoTokens.tokensBlueBackgroundTransparent;
}

class _Red extends DemoThemeData {
  _Red();

  @override
  get background => alias.demoTokens.tokensRedBackground;

  @override
  get foreground => alias.demoTokens.tokensRedAccent;

  @override
  get buttonBackground => alias.demoTokens.tokensRedAccent;

  @override
  get buttonForeground => alias.demoTokens.tokensRedOverlayForeground;

  @override
  get tagBackground => alias.demoTokens.tokensRedLightBackground;

  @override
  get tagForeground => alias.demoTokens.tokensRedAccent;

  @override
  get backgroundTransparent => alias.demoTokens.tokensRedBackground;
}

class _Orange extends DemoThemeData {
  _Orange();

  @override
  get background => alias.demoTokens.tokensOrangeLightBackground;

  @override
  get foreground => alias.demoTokens.tokensOrangeForeground;

  @override
  get buttonBackground => alias.demoTokens.tokensOrangeLightBackground;

  @override
  get buttonForeground => alias.demoTokens.tokensOrangeForeground;

  @override
  get tagBackground => alias.demoTokens.tokensOrangeLightBackground;

  @override
  get tagForeground => alias.demoTokens.tokensOrangeForeground;

  @override
  get backgroundTransparent => alias.demoTokens.tokensOrangeLightBackground;
}

class _Blue extends DemoThemeData {
  _Blue();

  @override
  get background => alias.demoTokens.tokensBlueBackgroundAccent;

  @override
  get foreground => alias.demoTokens.tokensBlueOverlayForeground;

  @override
  get buttonBackground => alias.demoTokens.tokensBlueOverlayBackground;

  @override
  get buttonForeground => alias.demoTokens.tokensBlueOverlayForeground;

  @override
  get tagBackground => alias.demoTokens.tokensBlueOverlayBackground;

  @override
  get tagForeground => alias.demoTokens.tokensBlueOverlayForeground;

  @override
  get backgroundTransparent => alias.demoTokens.tokensBlueBackgroundAccentTransparent;
}

class _WhitePressed extends DemoThemeData {
  _WhitePressed();

  @override
  get background => alias.demoTokens.tokensBlueBackground;

  @override
  get foreground => alias.demoTokens.tokensBlueForeground;

  @override
  get buttonBackground => alias.demoTokens.tokensBlueLightBackgroundPressed;

  @override
  get buttonForeground => alias.demoTokens.tokensBlueAccent;

  @override
  get tagBackground => alias.demoTokens.tokensBlueOverlayBackground;

  @override
  get tagForeground => alias.demoTokens.tokensBlueOverlayForeground;

  @override
  get backgroundTransparent => alias.demoTokens.tokensBlueBackgroundTransparent;
}

