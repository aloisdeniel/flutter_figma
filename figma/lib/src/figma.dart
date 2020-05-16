import 'package:flutter/material.dart';
import 'package:flutter_figma/src/api/api.dart';

class Figma extends InheritedWidget {
  final FigmaApi api;

  Figma({
    Key key,
    @required Widget child,
    @required String token,
  })  : assert(token != null),
        this.api = FigmaApi(token),
        super(
          key: key,
          child: child,
        );

  static Figma of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Figma>();
  }

  @override
  bool updateShouldNotify(Figma oldWidget) {
    return api.token != oldWidget.api.token;
  }
}
