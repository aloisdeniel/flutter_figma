import 'dart:ui';
import 'dart:math';

import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/material.dart';

//https://math.stackexchange.com/questions/13150/extracting-rotation-scale-values-from-2d-transformation-matrix
class FigmaTransform {
  final List<double> row0;
  final List<double> row1;
  final Matrix4 matrix;

  bool get hasRotationOrScale =>
      !(row0[0] == 1 || row1[0] == 0 || row0[1] == 0 || row1[1] == 1);

  Matrix4 get matrixWithoutTranslate => Matrix4(
        row0[0],
        row1[0],
        0,
        0,
        row0[1],
        row1[1],
        1,
        0,
        1,
        1,
        1,
        1,
        0,
        0,
        0,
        1,
      );

  static FigmaTransform identity = FigmaTransform();

  FigmaTransform({
    this.row0 = const [1, 0, 0],
    this.row1 = const [0, 1, 1],
  }) : matrix = Matrix4(
          row0[0],
          row1[0],
          0,
          0,
          row0[1],
          row1[1],
          1,
          0,
          1,
          1,
          1,
          1,
          row0[2],
          row1[2],
          0,
          1,
        );

  Offset get position => Offset(row0[2], row1[2]);

  double get rotation => atan2(-row0[1], row0[0]);

  Offset get scale {
    final a = row0[0];
    final b = row0[1];
    final c = row1[0];
    final d = row1[1];
    return Offset(
      a.sign * sqrt(a * a + b * b),
      d.sign * sqrt(c * c + d * d),
    );
  }

  Rect calculateBounds(Size size) {
    if (!hasRotationOrScale) {
      return Offset.zero & size;
    }

    final matrix = matrixWithoutTranslate;
    final points = [
      Vector3(size.width, 0, 0),
      Vector3(size.width, size.height, 0),
      Vector3(0, size.height, 0)
    ];

    final transformedPoints = points.map(matrix.transform3);
    final results = transformedPoints.fold<List<Offset>>(
      [
        Offset.zero,
        Offset.zero,
      ],
      (result, p) => [
        Offset(
          min(p.x, result[0].dx),
          min(p.y, result[0].dy),
        ),
        Offset(
          max(p.x, result[1].dx),
          max(p.y, result[1].dy),
        ),
      ],
    );

    final rect = Rect.fromPoints(
      results[0],
      results[1],
    );
    return rect;
  }

  Size fromBounds(Size size) {
    //TODO
  }
}
