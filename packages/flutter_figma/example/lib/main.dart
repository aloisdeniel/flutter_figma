import 'package:flutter/material.dart';
import 'package:flutter_figma/widgets.dart';

part 'examples/card.dart';
part 'examples/layout.dart';
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
    LayoutExample(),
    CardExample(),
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
