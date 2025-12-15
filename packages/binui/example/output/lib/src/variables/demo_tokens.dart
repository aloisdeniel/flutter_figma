import 'dart:ui' as ui;
import 'package:flutter/widgets.dart' as fl;

enum DemoTokensMode {
  light,
  dark,
}

sealed class DemoTokensData {
  DemoTokensData();

  factory DemoTokensData.fromMode(DemoTokensMode mode) {
    switch (mode) {
      case DemoTokensMode.light:
        return _Light();
      case DemoTokensMode.dark:
        return _Dark();
    }
  }

  fl.Color get tokensRedLightBackground;
  fl.Color get tokensRedOverlayForeground;
  fl.Color get tokensRedBackground;
  fl.Color get tokensRedAccent;
  fl.Color get tokensBlueForeground;
  fl.Color get tokensBlueLightBackground;
  fl.Color get tokensBlueLightBackgroundPressed;
  fl.Color get tokensBlueOverlayBackground;
  fl.Color get tokensBlueOverlayForeground;
  fl.Color get tokensBlueBackground;
  fl.Color get tokensBlueAccent;
  fl.Color get tokensBlueBackgroundAccent;
  fl.Color get tokensBlueBackgroundAccentTransparent;
  fl.Color get tokensBlueBackgroundTransparent;
  fl.Color get tokensOrangeLightBackground;
  fl.Color get tokensOrangeForeground;
}

class _Light extends DemoTokensData {
  _Light();

  @override
  final tokensRedLightBackground = const fl.Color.from(red: 0.8470588326454163, green: 0.30980393290519714, blue: 0.22745098173618317, alpha: 0.15000000596046448,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensRedOverlayForeground = const fl.Color.from(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensRedBackground = const fl.Color.from(red: 1.0, green: 0.95686274766922, blue: 0.9529411792755127, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensRedAccent = const fl.Color.from(red: 0.8470588326454163, green: 0.30980393290519714, blue: 0.22745098173618317, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueForeground = const fl.Color.from(red: 0.003921568859368563, green: 0.003921568859368563, blue: 0.003921568859368563, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueLightBackground = const fl.Color.from(red: 0.9411764740943909, green: 0.9490196108818054, blue: 0.9921568632125854, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueLightBackgroundPressed = const fl.Color.from(red: 0.7543757557868958, green: 0.7921642065048218, blue: 1.0, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueOverlayBackground = const fl.Color.from(red: 0.29411765933036804, green: 0.3843137323856354, blue: 0.886274516582489, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueOverlayForeground = const fl.Color.from(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackground = const fl.Color.from(red: 0.9686274528503418, green: 0.9686274528503418, blue: 0.9686274528503418, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueAccent = const fl.Color.from(red: 0.23137255012989044, green: 0.3294117748737335, blue: 0.8745098114013672, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackgroundAccent = const fl.Color.from(red: 0.23137255012989044, green: 0.3294117748737335, blue: 0.8745098114013672, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackgroundAccentTransparent = const fl.Color.from(red: 0.23137255012989044, green: 0.3294117748737335, blue: 0.8745098114013672, alpha: 0.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackgroundTransparent = const fl.Color.from(red: 0.9686274528503418, green: 0.9686274528503418, blue: 0.9686274528503418, alpha: 0.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensOrangeLightBackground = const fl.Color.from(red: 1.0, green: 0.8745098114013672, blue: 0.7803921699523926, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensOrangeForeground = const fl.Color.from(red: 0.5686274766921997, green: 0.33725491166114807, blue: 0.25882354378700256, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);
}

class _Dark extends DemoTokensData {
  _Dark();

  @override
  final tokensRedLightBackground = const fl.Color.from(red: 0.8470588326454163, green: 0.30980393290519714, blue: 0.22745098173618317, alpha: 0.15000000596046448,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensRedOverlayForeground = const fl.Color.from(red: 0.7370793223381042, green: 0.21790045499801636, blue: 0.17463552951812744, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensRedBackground = const fl.Color.from(red: 0.22203651070594788, green: 0.07200472801923752, blue: 0.05836547911167145, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensRedAccent = const fl.Color.from(red: 1.0, green: 0.6702659726142883, blue: 0.6197227835655212, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueForeground = const fl.Color.from(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueLightBackground = const fl.Color.from(red: 0.9762036204338074, green: 0.9790374040603638, blue: 0.9963942170143127, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueLightBackgroundPressed = const fl.Color.from(red: 0.7529411911964417, green: 0.7921568751335144, blue: 1.0, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueOverlayBackground = const fl.Color.from(red: 0.1473540961742401, green: 0.20595701038837433, blue: 0.46967023611068726, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueOverlayForeground = const fl.Color.from(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackground = const fl.Color.from(red: 0.2356289178133011, green: 0.27579379081726074, blue: 0.521803617477417, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueAccent = const fl.Color.from(red: 0.23137255012989044, green: 0.3294117748737335, blue: 0.8745098114013672, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackgroundAccent = const fl.Color.from(red: 0.09942083805799484, green: 0.11253262311220169, blue: 0.18543419241905212, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackgroundAccentTransparent = const fl.Color.from(red: 0.09803921729326248, green: 0.11372549086809158, blue: 0.18431372940540314, alpha: 0.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensBlueBackgroundTransparent = const fl.Color.from(red: 0.9686274528503418, green: 0.9686274528503418, blue: 0.9686274528503418, alpha: 0.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensOrangeLightBackground = const fl.Color.from(red: 0.1359349489212036, green: 0.05590805411338806, blue: 0.17302058637142181, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);

  @override
  final tokensOrangeForeground = const fl.Color.from(red: 0.6647964119911194, green: 0.3579654395580292, blue: 0.8424354195594788, alpha: 1.0,colorSpace: ui.ColorSpace.sRGB);
}

