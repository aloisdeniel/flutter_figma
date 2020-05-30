import 'package:flutter/material.dart';

class FigmaImage extends ResizeImage {
  FigmaImage({
    @required String src,
    @required String token,
    double cacheWidth,
    double cacheHeight,
    double scale = 1.0,
  }) : super(
          NetworkImage(
            src,
            scale: scale,
            headers: {
              'X-FIGMA-TOKEN': token,
            },
          ),
        );
}
