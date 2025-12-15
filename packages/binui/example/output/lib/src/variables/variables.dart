import 'package:flutter/widgets.dart' as fl;

import 'package:example/src/variables/demo_tokens.dart';
import 'package:example/src/variables/demo_theme.dart';

typedef VariableMode = ({DemoTokensMode demoTokens, DemoThemeMode demoTheme});

class VariablesData {
  const VariablesData._({required this.demoTokens, required this.demoTheme});

  factory VariablesData.fromModes(VariableMode mode) {
    final demoTokens = DemoTokensData.fromMode(mode.demoTokens);
    final demoTheme = DemoThemeData.fromMode(mode.demoTheme);

    // Resolving aliases
    demoTheme.alias = (demoTokens: demoTokens);

    return VariablesData._(demoTokens: demoTokens, demoTheme: demoTheme);
  }

  final DemoTokensData demoTokens;
  final DemoThemeData demoTheme;
}

class Variables extends fl.InheritedWidget {
  Variables({super.key, required super.child, required this.mode})
    : data = VariablesData.fromModes(mode);

  final VariableMode mode;
  final VariablesData data;

  @override
  bool updateShouldNotify(covariant Variables oldWidget) {
    return mode != oldWidget.mode;
  }

  static VariablesData? maybeOf(fl.BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<Variables>();
    return instance?.data;
  }

  static VariablesData of(fl.BuildContext context) {
    final data = maybeOf(context);
    assert(data != null, 'No VariablesProvider found in context');
    return data!;
  }

  static VariableMode? modeOf(fl.BuildContext context) {
    final instance = context.dependOnInheritedWidgetOfExactType<Variables>();
    return instance?.mode;
  }
}
