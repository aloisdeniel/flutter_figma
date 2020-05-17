import 'dart:ui';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_figma/widgets.dart';

mixin RenderNodeMixin on RenderBox {
  void initRenderNodeMixin({
    @required Size designSize,
    @required FigmaTransform designTransform,
  }) {
    _designSize = designSize;
    _designTransform = designTransform;
  }

  Size get designSize => _designSize;
  Size _designSize;
  set designSize(Size value) {
    assert(value != null);
    if (_designSize != value) {
      _designSize = value;
      markNeedsLayout();
    }
  }

  FigmaTransform get designTransform => _designTransform;
  FigmaTransform _designTransform;
  set designTransform(FigmaTransform value) {
    assert(value != null);
    if (_designTransform != value) {
      _designTransform = value;
      markNeedsLayout();
    }
  }
}
