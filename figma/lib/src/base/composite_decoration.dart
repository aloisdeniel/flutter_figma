import 'package:flutter/rendering.dart';
import 'package:collection/collection.dart';

BoxDecoration d;

class CompositeDecoration extends Decoration {
  final List<Decoration> children;

  const CompositeDecoration({
    this.children = const <Decoration>[],
  });

  @override
  BoxPainter createBoxPainter([onChanged]) {
    return _CompositeBoxPainter(
      children.map((c) => c.createBoxPainter(onChanged)),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other.runtimeType != runtimeType) return false;
    final equality = const ListEquality().equals;
    return other is CompositeDecoration && equality(other.children, children);
  }

  @override
  int get hashCode {
    return hashList(children);
  }
}

class _CompositeBoxPainter extends BoxPainter {
  final List<BoxPainter> painters;

  const _CompositeBoxPainter(this.painters);

  @override
  void dispose() {
    for (var painter in painters) {
      painter.dispose();
    }
    super.dispose();
  }

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    for (var painter in painters) {
      painter.paint(canvas, offset, configuration);
    }
  }
}
