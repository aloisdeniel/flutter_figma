import 'package:flutter/widgets.dart';

abstract class FigmaNode extends Widget {
  String get id;
  String get name;
}

class FigmaRootNode extends InheritedWidget {
  final bool isRoot;

  const FigmaRootNode.root({
    Key key,
    @required Widget child,
  })  : isRoot = true,
        super(
          key: key,
          child: child,
        );

  const FigmaRootNode.child({
    Key key,
    @required Widget child,
  })  : isRoot = false,
        super(
          key: key,
          child: child,
        );

  static bool of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<FigmaRootNode>().isRoot;

  @override
  bool updateShouldNotify(FigmaRootNode oldWidget) =>
      isRoot != oldWidget.isRoot;
}
