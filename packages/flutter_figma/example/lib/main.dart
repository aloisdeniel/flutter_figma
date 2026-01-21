import 'package:flutter/material.dart';
import 'package:flutter_figma/widgets.dart';

part 'examples/clip.dart';
part 'examples/combined.dart';
part 'examples/effects.dart';
part 'examples/decorated.dart';
part 'examples/interactions.dart';
part 'examples/layout_auto.dart';
part 'examples/layout_freeform.dart';
part 'examples/layout_grid.dart';
part 'examples/text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Figma Demo', home: const Home());
  }
}

abstract class Example implements Widget {
  String get name;
}

class Home extends StatefulWidget {
  const Home({super.key});

  static const examples = <Example>[
    TextExample(),
    ClipExample(),
    DecoratedExample(),
    FreeformLayoutExample(),
    AutoLayoutExample(),
    GridLayoutExample(),
    EffectsExample(),
    InteractionsExample(),
    CombinedExample(),
  ];

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final selected = Home.examples[_selected];
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 200,
            child: ListView(
              children: [
                for (var i = 0; i < Home.examples.length; i++)
                  ListTile(
                    title: Text(Home.examples[i].name),
                    onTap: () {
                      setState(() {
                        _selected = i;
                      });
                    },
                  ),
              ],
            ),
          ),
          Expanded(child: selected),
        ],
      ),
    );
  }
}

enum ButtonStateVariant { default_, hover }

enum ButtonStyleVariant { filled, border, text }

class ButtonData {
  const ButtonData({
    this.title = 'Click me',
    this.state = ButtonStateVariant.default_,
    this.style = ButtonStyleVariant.filled,
  });
  final String title;
  final ButtonStateVariant state;
  final ButtonStyleVariant style;

  @override
  int get hashCode {
    return Object.hashAll([title, state, style]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ButtonData &&
        other.title == title &&
        other.state == state &&
        other.style == style;
  }

  @override
  String toString() {
    return 'ButtonData('
        'title: $title, '
        'state: $state, '
        'style: $style'
        ')';
  }

  ButtonData copyWith({
    String? title,
    ButtonStateVariant? state,
    ButtonStyleVariant? style,
  }) {
    return ButtonData(
      title: title ?? this.title,
      state: state ?? this.state,
      style: style ?? this.style,
    );
  }
}

class ButtonProperties extends InheritedWidget {
  const ButtonProperties({super.key, required this.data, required super.child});

  final ButtonData data;

  static ButtonData? maybeOf(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<ButtonProperties>();
    return result?.data;
  }

  static ButtonData of(BuildContext context) {
    final result = maybeOf(context);
    assert(result != null, 'No ButtonProperties found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ButtonProperties oldWidget) => data != oldWidget.data;
}

class Button extends StatelessWidget {
  const Button({
    super.key,
    this.title,
    this.state,
    this.style,
    this.child,
    this.builder,
  }) : assert(
         child != null || builder != null,
         'Either child or builder must be provided.',
       );

  final String? title;
  final ButtonStateVariant? state;
  final ButtonStyleVariant? style;
  final Widget? child;
  final Widget Function(BuildContext context, ButtonData properties)? builder;

  @override
  Widget build(BuildContext context) {
    var properties = ButtonProperties.maybeOf(context) ?? const ButtonData();
    if (title != null || state != null || style != null) {
      properties = properties.copyWith(
        title: title,
        state: state,
        style: style,
      );
    }
    return ButtonProperties(
      data: properties,
      child: builder != null ? builder!(context, properties) : child!,
    );
  }
}
