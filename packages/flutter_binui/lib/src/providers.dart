import 'package:flutter/widgets.dart';
import 'package:flutter_binui/src/config.dart';

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
    return config.library.id != oldWidget.config.library.id;
  }
}
