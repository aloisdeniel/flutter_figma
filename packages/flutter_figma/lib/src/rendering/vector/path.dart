import 'dart:ui' as ui;

import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/foundation.dart';

extension FlutterFigmaPathExtension on FigmaShape {
  ui.Path toFlutterFill(Rect rect) {
    var path = ui.Path();

    switch (this) {
      case FigmaRectangleShape(
          :final topLeftRadius,
          :final topRightRadius,
          :final bottomLeftRadius,
          :final bottomRightRadius,
          :final smoothing
        ):
        if (topLeftRadius == 0 &&
            topRightRadius == 0 &&
            bottomLeftRadius == 0 &&
            bottomRightRadius == 0) {
          path.addRect(rect);
        } else if (smoothing > 0) {
          // FIXME Smoothing isn't dynamic for performance reason
          path.addRSuperellipse(
            RSuperellipse.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(topLeftRadius),
              topRight: Radius.circular(topRightRadius),
              bottomRight: Radius.circular(bottomRightRadius),
              bottomLeft: Radius.circular(bottomLeftRadius),
            ),
          );
        } else {
          path.addRRect(
            RRect.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(topLeftRadius),
              topRight: Radius.circular(topRightRadius),
              bottomRight: Radius.circular(bottomRightRadius),
              bottomLeft: Radius.circular(bottomLeftRadius),
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
      case FigmaRectangleShape(
          :final topLeftRadius,
          :final topRightRadius,
          :final bottomLeftRadius,
          :final bottomRightRadius,
          :final smoothing
        ):
        if (topLeftRadius == 0 &&
            topRightRadius == 0 &&
            bottomLeftRadius == 0 &&
            bottomRightRadius == 0) {
          path.addRect(rect);
        } else if (smoothing > 0) {
          // FIXME Smoothing isn't dynamic for performance reason
          path.addRSuperellipse(
            RSuperellipse.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(topLeftRadius),
              topRight: Radius.circular(topRightRadius),
              bottomRight: Radius.circular(bottomRightRadius),
              bottomLeft: Radius.circular(bottomLeftRadius),
            ),
          );
        } else {
          path.addRRect(
            RRect.fromRectAndCorners(
              rect,
              topLeft: Radius.circular(topLeftRadius),
              topRight: Radius.circular(topRightRadius),
              bottomRight: Radius.circular(bottomRightRadius),
              bottomLeft: Radius.circular(bottomLeftRadius),
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
