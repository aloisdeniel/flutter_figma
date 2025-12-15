import 'package:flutter/widgets.dart' as fl;

import 'package:example/src/variables/demo_tokens.dart';
import 'package:example/src/variables/demo_theme.dart';
import 'package:example/src/variables/styles.dart';

typedef VariableMode = ({DemoTokensMode demoTokens, DemoThemeMode demoTheme});

class VariableCollections {
  const VariableCollections._({required this.demoTokens, required this.demoTheme, required this.styles});

  factory VariableCollections.fromModes(VariableMode mode) {
    final demoTokens = DemoTokensData.fromMode(mode.demoTokens);
    final demoTheme = DemoThemeData.fromMode(mode.demoTheme);
    final styles = StylesData();

    // Resolving aliases
    demoTheme.alias = (demoTokens: demoTokens);

    return VariableCollections._(demoTokens: demoTokens, demoTheme: demoTheme, styles: styles);
  }

  final DemoTokensData demoTokens;
  final DemoThemeData demoTheme;
  final StylesData styles;
}

class Variables extends fl.InheritedWidget {
  Variables({super.key, required super.child, required this.mode})
    : data = VariableCollections.fromModes(mode);

  final VariableMode mode;
  final VariableCollections data;

  @override
  bool updateShouldNotify(covariant Variables oldWidget) {
    return mode != oldWidget.mode;
  }

  static VariableCollections? maybeOf(fl.BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<Variables>();
    return instance?.data;
  }

  static VariableCollections of(fl.BuildContext context) {
    final data = maybeOf(context);
    assert(data != null, 'No Variables found in context');
    return data!;
  }

  static VariableMode? modeOf(fl.BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<Variables>();
    return instance?.mode;
  }
}
