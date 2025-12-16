import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

extension FlutterFigmaPathExtension on FigmaShape {
  ui.Path toFlutterFill(Rect rect) {
    var path = ui.Path();

    switch (this) {
      case FigmaRectangleShape(:final cornerRadius):
        if (cornerRadius.isZero) {
          path.addRect(rect);
        } else if (cornerRadius.smoothing > 0) {
          // FIXME Smoothing isn't dynamic for performance reason
          path.addRSuperellipse(
            RSuperellipse.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(cornerRadius.topLeft),
              topRight: Radius.circular(cornerRadius.topRight),
              bottomRight: Radius.circular(cornerRadius.bottomRight),
              bottomLeft: Radius.circular(cornerRadius.bottomLeft),
            ),
          );
        } else {
          path.addRRect(
            RRect.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(cornerRadius.topLeft),
              topRight: Radius.circular(cornerRadius.topRight),
              bottomRight: Radius.circular(cornerRadius.bottomRight),
              bottomLeft: Radius.circular(cornerRadius.bottomLeft),
            ),
          );
        }
      case FigmaVectorPathsShape(:final fill):
        for (var vector in fill) {
          path = Path.combine(PathOperation.union, path, vector.path);
        }
      case FigmaTextShape():
      // TODO vectorize text
    }

    return path;
  }

  ui.Path toFlutterStroke(ui.Path? fill, Rect rect) {
    var path = ui.Path();

    switch (this) {
      case FigmaRectangleShape(:final cornerRadius):
        if (cornerRadius.isZero) {
          path.addRect(rect);
        } else if (cornerRadius.smoothing > 0) {
          // FIXME Smoothing isn't dynamic for performance reason
          path.addRSuperellipse(
            RSuperellipse.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(cornerRadius.topLeft),
              topRight: Radius.circular(cornerRadius.topRight),
              bottomRight: Radius.circular(cornerRadius.bottomRight),
              bottomLeft: Radius.circular(cornerRadius.bottomLeft),
            ),
          );
        } else {
          path.addRRect(
            RRect.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(cornerRadius.topLeft),
              topRight: Radius.circular(cornerRadius.topRight),
              bottomRight: Radius.circular(cornerRadius.bottomRight),
              bottomLeft: Radius.circular(cornerRadius.bottomLeft),
            ),
          );
        }
      case FigmaVectorPathsShape(:final fill):
        for (var vector in fill) {
          path = Path.combine(PathOperation.union, path, vector.path);
        }
      case FigmaTextShape():
      // TODO vectorize text
    }

    return path;
  }
}
