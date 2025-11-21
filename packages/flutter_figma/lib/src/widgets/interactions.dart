import 'package:flutter/material.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

class FigmaInteraction extends StatefulWidget {
  const FigmaInteraction({
    super.key,
    required this.child,
    required this.triggers,
    required this.onTriggered,
  });

  final Widget child;
  final List<FigmaTrigger> triggers;
  final ValueChanged<FigmaTrigger> onTriggered;

  @override
  State<FigmaInteraction> createState() => _FigmaInteractionState();
}

class _FigmaInteractionState extends State<FigmaInteraction> {
  @override
  void initState() {
    super.initState();
    final delays = widget.triggers.whereType<FigmaDelayTrigger>();
    for (var delay in delays) {
      Future.delayed(delay.delay).then((x) {
        if (mounted) widget.onTriggered(delay);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var result = widget.child;
    final onClick =
        widget.triggers.whereType<FigmaOnClickTrigger>().firstOrNull;
    final onMouseUp =
        widget.triggers.whereType<FigmaMouseUpTrigger>().firstOrNull;
    final onMouseDown =
        widget.triggers.whereType<FigmaMouseDownTrigger>().firstOrNull;
    final onDrag = widget.triggers.whereType<FigmaOnDragTrigger>().firstOrNull;
    if ([onClick, onMouseUp, onMouseDown, onDrag].nonNulls.isNotEmpty) {
      result = GestureDetector(
        onTap: onClick != null
            ? () {
                widget.onTriggered(onClick);
              }
            : null,
        onPanUpdate: onDrag != null
            ? (details) {
                widget.onTriggered(onDrag);
              }
            : null,
        onTapUp: onMouseUp != null
            ? (details) {
                widget.onTriggered(onMouseUp);
              }
            : null,
        onTapDown: onMouseDown != null
            ? (details) {
                widget.onTriggered(onMouseDown);
              }
            : null,
        child: result,
      );
    }
    return result;
  }
}
