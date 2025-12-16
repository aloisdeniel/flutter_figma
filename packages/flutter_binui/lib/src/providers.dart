import 'package:binui/binui.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/value.dart';

enum BinuiRenderMode { normal, flutterFigma }

class BinuiConfig {
  const BinuiConfig(this.library, {this.renderMode = BinuiRenderMode.normal});

  final BinuiRenderMode renderMode;
  final Library library;

  T resolve<T>(Alias alias) {
    final value = library.resolveAlias(alias);
    if (value == null) throw Exception('Unable to resolve alias: $alias');
    return value.toFlutter<T>();
  }
}

class BinuiProvider extends InheritedWidget {
  const BinuiProvider({super.key, required this.config, required super.child});

  final BinuiConfig config;

  static BinuiConfig of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<BinuiProvider>();
    assert(result != null, 'No Binui found in context');
    return result!.config;
  }

  @override
  bool updateShouldNotify(BinuiProvider oldWidget) {
    return config.library.id != oldWidget.config.library.id ||
        config.renderMode != oldWidget.config.renderMode;
  }
}
