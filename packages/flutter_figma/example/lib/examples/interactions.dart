part of '../main.dart';

class InteractionsExample extends StatefulWidget implements Example {
  const InteractionsExample({super.key});
  @override
  String get name => 'Interactions';

  @override
  State<InteractionsExample> createState() => _InteractionsExampleState();
}

class _InteractionsExampleState extends State<InteractionsExample> {
  int clickCount = 0;
  bool delayCompleted = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FigmaInteraction(
            key: Key('Click'),
            triggers: [FigmaOnClickTrigger()],
            onTriggered: (trigger) {
              setState(() {
                clickCount++;
              });
            },
            child: Container(
              color: Colors.black12,
              width: 80,
              height: 80,
              child: Center(child: Text('$clickCount')),
            ),
          ),
          FigmaInteraction(
            key: Key('Delay'),
            triggers: [FigmaDelayTrigger(const Duration(seconds: 3))],
            onTriggered: (trigger) {
              setState(() {
                delayCompleted = true;
              });
            },
            child: Container(
              color: delayCompleted ? Colors.green : Colors.orange,
              width: 80,
              height: 40,
            ),
          ),
        ],
      ),
    );
  }
}
