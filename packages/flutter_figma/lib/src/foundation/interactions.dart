import 'package:flutter/widgets.dart';

class FigmaInteractionEvent {
  const FigmaInteractionEvent({
    required this.source,
    required this.trigger,
    required this.action,
  });

  final FigmaId source;
  final FigmaTrigger trigger;
  final FigmaAction action;
}

class FigmaId {
  const FigmaId({
    required this.id,
    required this.name,
  });
  final String name;
  final String id;
}

sealed class FigmaTrigger {
  const FigmaTrigger();
}

class FigmaOnClickTrigger extends FigmaTrigger {
  const FigmaOnClickTrigger();
}

class FigmaOnDragTrigger extends FigmaTrigger {
  const FigmaOnDragTrigger();
}

class FigmaWhileHoveringTrigger extends FigmaTrigger {
  const FigmaWhileHoveringTrigger();
}

class FigmaWhilePressingTrigger extends FigmaTrigger {
  const FigmaWhilePressingTrigger();
}

class FigmaKeyGamepadTrigger extends FigmaTrigger {
  const FigmaKeyGamepadTrigger(this.key);
  final KeySet key;
}

class FigmaMouseEnterTrigger extends FigmaTrigger {
  const FigmaMouseEnterTrigger({this.delay});
  final Duration? delay;
}

class FigmaMouseLeaveTrigger extends FigmaTrigger {
  const FigmaMouseLeaveTrigger({this.delay});
  final Duration? delay;
}

class FigmaMouseDownTrigger extends FigmaTrigger {
  const FigmaMouseDownTrigger({this.delay});
  final Duration? delay;
}

class FigmaMouseUpTrigger extends FigmaTrigger {
  const FigmaMouseUpTrigger({this.delay});
  final Duration? delay;
}

class FigmaDelayTrigger extends FigmaTrigger {
  const FigmaDelayTrigger(this.delay);
  final Duration delay;
}

sealed class FigmaAction {
  const FigmaAction();
}
