import 'package:flutter/widgets.dart' as fl;

enum DemoTokensMode { light, dark }

class DemoTokensData {
  const DemoTokensData({
    required this.tokensRedLightBackground,
    required this.tokensRedOverlayForeground,
    required this.tokensRedBackground,
    required this.tokensRedAccent,
    required this.tokensBlueForeground,
    required this.tokensBlueLightBackground,
    required this.tokensBlueLightBackgroundPressed,
    required this.tokensBlueOverlayBackground,
    required this.tokensBlueOverlayForeground,
    required this.tokensBlueBackground,
    required this.tokensBlueAccent,
    required this.tokensBlueBackgroundAccent,
    required this.tokensBlueBackgroundAccentTransparent,
    required this.tokensBlueBackgroundTransparent,
    required this.tokensOrangeLightBackground,
    required this.tokensOrangeForeground,
  });
  final fl.Color tokensRedLightBackground;
  final fl.Color tokensRedOverlayForeground;
  final fl.Color tokensRedBackground;
  final fl.Color tokensRedAccent;
  final fl.Color tokensBlueForeground;
  final fl.Color tokensBlueLightBackground;
  final fl.Color tokensBlueLightBackgroundPressed;
  final fl.Color tokensBlueOverlayBackground;
  final fl.Color tokensBlueOverlayForeground;
  final fl.Color tokensBlueBackground;
  final fl.Color tokensBlueAccent;
  final fl.Color tokensBlueBackgroundAccent;
  final fl.Color tokensBlueBackgroundAccentTransparent;
  final fl.Color tokensBlueBackgroundTransparent;
  final fl.Color tokensOrangeLightBackground;
  final fl.Color tokensOrangeForeground;
  @override
  int get hashCode {
    return Object.hashAll([
      tokensRedLightBackground,
      tokensRedOverlayForeground,
      tokensRedBackground,
      tokensRedAccent,
      tokensBlueForeground,
      tokensBlueLightBackground,
      tokensBlueLightBackgroundPressed,
      tokensBlueOverlayBackground,
      tokensBlueOverlayForeground,
      tokensBlueBackground,
      tokensBlueAccent,
      tokensBlueBackgroundAccent,
      tokensBlueBackgroundAccentTransparent,
      tokensBlueBackgroundTransparent,
      tokensOrangeLightBackground,
      tokensOrangeForeground,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DemoTokensData &&
        other.tokensRedLightBackground == tokensRedLightBackground &&
        other.tokensRedOverlayForeground == tokensRedOverlayForeground &&
        other.tokensRedBackground == tokensRedBackground &&
        other.tokensRedAccent == tokensRedAccent &&
        other.tokensBlueForeground == tokensBlueForeground &&
        other.tokensBlueLightBackground == tokensBlueLightBackground &&
        other.tokensBlueLightBackgroundPressed ==
            tokensBlueLightBackgroundPressed &&
        other.tokensBlueOverlayBackground == tokensBlueOverlayBackground &&
        other.tokensBlueOverlayForeground == tokensBlueOverlayForeground &&
        other.tokensBlueBackground == tokensBlueBackground &&
        other.tokensBlueAccent == tokensBlueAccent &&
        other.tokensBlueBackgroundAccent == tokensBlueBackgroundAccent &&
        other.tokensBlueBackgroundAccentTransparent ==
            tokensBlueBackgroundAccentTransparent &&
        other.tokensBlueBackgroundTransparent ==
            tokensBlueBackgroundTransparent &&
        other.tokensOrangeLightBackground == tokensOrangeLightBackground &&
        other.tokensOrangeForeground == tokensOrangeForeground;
  }

  @override
  String toString() {
    return 'DemoTokensData(tokensRedLightBackground: $tokensRedLightBackground, tokensRedOverlayForeground: $tokensRedOverlayForeground, tokensRedBackground: $tokensRedBackground, tokensRedAccent: $tokensRedAccent, tokensBlueForeground: $tokensBlueForeground, tokensBlueLightBackground: $tokensBlueLightBackground, tokensBlueLightBackgroundPressed: $tokensBlueLightBackgroundPressed, tokensBlueOverlayBackground: $tokensBlueOverlayBackground, tokensBlueOverlayForeground: $tokensBlueOverlayForeground, tokensBlueBackground: $tokensBlueBackground, tokensBlueAccent: $tokensBlueAccent, tokensBlueBackgroundAccent: $tokensBlueBackgroundAccent, tokensBlueBackgroundAccentTransparent: $tokensBlueBackgroundAccentTransparent, tokensBlueBackgroundTransparent: $tokensBlueBackgroundTransparent, tokensOrangeLightBackground: $tokensOrangeLightBackground, tokensOrangeForeground: $tokensOrangeForeground    )';
  }

  DemoTokensData copyWith({
    required fl.Color? tokensRedLightBackground,
    required fl.Color? tokensRedOverlayForeground,
    required fl.Color? tokensRedBackground,
    required fl.Color? tokensRedAccent,
    required fl.Color? tokensBlueForeground,
    required fl.Color? tokensBlueLightBackground,
    required fl.Color? tokensBlueLightBackgroundPressed,
    required fl.Color? tokensBlueOverlayBackground,
    required fl.Color? tokensBlueOverlayForeground,
    required fl.Color? tokensBlueBackground,
    required fl.Color? tokensBlueAccent,
    required fl.Color? tokensBlueBackgroundAccent,
    required fl.Color? tokensBlueBackgroundAccentTransparent,
    required fl.Color? tokensBlueBackgroundTransparent,
    required fl.Color? tokensOrangeLightBackground,
    required fl.Color? tokensOrangeForeground,
  }) {
    return DemoTokensData(
      tokensRedLightBackground:
          tokensRedLightBackground ?? this.tokensRedLightBackground,
      tokensRedOverlayForeground:
          tokensRedOverlayForeground ?? this.tokensRedOverlayForeground,
      tokensRedBackground: tokensRedBackground ?? this.tokensRedBackground,
      tokensRedAccent: tokensRedAccent ?? this.tokensRedAccent,
      tokensBlueForeground: tokensBlueForeground ?? this.tokensBlueForeground,
      tokensBlueLightBackground:
          tokensBlueLightBackground ?? this.tokensBlueLightBackground,
      tokensBlueLightBackgroundPressed:
          tokensBlueLightBackgroundPressed ??
          this.tokensBlueLightBackgroundPressed,
      tokensBlueOverlayBackground:
          tokensBlueOverlayBackground ?? this.tokensBlueOverlayBackground,
      tokensBlueOverlayForeground:
          tokensBlueOverlayForeground ?? this.tokensBlueOverlayForeground,
      tokensBlueBackground: tokensBlueBackground ?? this.tokensBlueBackground,
      tokensBlueAccent: tokensBlueAccent ?? this.tokensBlueAccent,
      tokensBlueBackgroundAccent:
          tokensBlueBackgroundAccent ?? this.tokensBlueBackgroundAccent,
      tokensBlueBackgroundAccentTransparent:
          tokensBlueBackgroundAccentTransparent ??
          this.tokensBlueBackgroundAccentTransparent,
      tokensBlueBackgroundTransparent:
          tokensBlueBackgroundTransparent ??
          this.tokensBlueBackgroundTransparent,
      tokensOrangeLightBackground:
          tokensOrangeLightBackground ?? this.tokensOrangeLightBackground,
      tokensOrangeForeground:
          tokensOrangeForeground ?? this.tokensOrangeForeground,
    );
  }
}

class DemoTokensProvider extends fl.InheritedWidget {
  const DemoTokensProvider({
    super.key,
    required super.child,
    required this.data,
  });
  final DemoTokensData data;
  bool updateShouldNotify({required covariant DemoTokensProvider oldWidget}) {
    return this.data != oldWidget.data;
  }

  static DemoTokensData? maybeOf(fl.BuildContext context) {
    final instance = context
        .dependOnInheritedWidgetOfExactType<DemoTokensProvider>();
    return instance?.data;
  }

  static DemoTokensData of(fl.BuildContext context) {
    final data = maybeOf(context);
    assert(data != null, 'No DemoTokensProvider found in context');
    return data!;
  }
}
