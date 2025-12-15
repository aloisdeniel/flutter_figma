import 'package:flutter/widgets.dart' as fl;

enum DemoThemeMode { white, red, orange, blue, whitePressed }

class DemoThemeData {
  const DemoThemeData({
    required this.background,
    required this.foreground,
    required this.buttonBackground,
    required this.buttonForeground,
    required this.tagBackground,
    required this.tagForeground,
    required this.backgroundTransparent,
  });
  final fl.Color background;
  final fl.Color foreground;
  final fl.Color buttonBackground;
  final fl.Color buttonForeground;
  final fl.Color tagBackground;
  final fl.Color tagForeground;
  final fl.Color backgroundTransparent;
  @override
  int get hashCode {
    return Object.hashAll([
      background,
      foreground,
      buttonBackground,
      buttonForeground,
      tagBackground,
      tagForeground,
      backgroundTransparent,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is DemoThemeData &&
        other.background == background &&
        other.foreground == foreground &&
        other.buttonBackground == buttonBackground &&
        other.buttonForeground == buttonForeground &&
        other.tagBackground == tagBackground &&
        other.tagForeground == tagForeground &&
        other.backgroundTransparent == backgroundTransparent;
  }

  @override
  String toString() {
    return 'DemoThemeData(background: $background, foreground: $foreground, buttonBackground: $buttonBackground, buttonForeground: $buttonForeground, tagBackground: $tagBackground, tagForeground: $tagForeground, backgroundTransparent: $backgroundTransparent    )';
  }

  DemoThemeData copyWith({
    required fl.Color? background,
    required fl.Color? foreground,
    required fl.Color? buttonBackground,
    required fl.Color? buttonForeground,
    required fl.Color? tagBackground,
    required fl.Color? tagForeground,
    required fl.Color? backgroundTransparent,
  }) {
    return DemoThemeData(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      buttonBackground: buttonBackground ?? this.buttonBackground,
      buttonForeground: buttonForeground ?? this.buttonForeground,
      tagBackground: tagBackground ?? this.tagBackground,
      tagForeground: tagForeground ?? this.tagForeground,
      backgroundTransparent:
          backgroundTransparent ?? this.backgroundTransparent,
    );
  }
}

class DemoThemeProvider extends fl.InheritedWidget {
  const DemoThemeProvider({
    super.key,
    required super.child,
    required this.data,
  });
  final DemoThemeData data;
  bool updateShouldNotify({required covariant DemoThemeProvider oldWidget}) {
    return this.data != oldWidget.data;
  }

  static DemoThemeData? maybeOf(fl.BuildContext context) {
    final instance = context
        .dependOnInheritedWidgetOfExactType<DemoThemeProvider>();
    return instance?.data;
  }

  static DemoThemeData of(fl.BuildContext context) {
    final data = maybeOf(context);
    assert(data != null, 'No DemoThemeProvider found in context');
    return data!;
  }
}
