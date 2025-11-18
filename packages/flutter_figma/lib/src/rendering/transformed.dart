import 'dart:math' as math;

import 'package:flutter/rendering.dart';
import 'package:flutter_figma/src/foundation/geometry.dart';

class RenderFigmaTransformed extends RenderProxyBox {
  RenderFigmaTransformed({
    required FigmaTransform transform,
  }) : _transform = transform;

  FigmaTransform _transform;
  FigmaTransform get transform => _transform;
  set transform(FigmaTransform value) {
    if (_transform == value) return;
    _transform = value;
    markNeedsLayout();
  }

  Size? _childSize;

  @override
  void performLayout() {
    if (child != null) {
      final matrix = _transformToMatrix4(_transform);

      final transformedConstraints = _transformConstraints(constraints, matrix);

      child!.layout(
        transformedConstraints,
        parentUsesSize: true,
      );

      _childSize = child!.size;

      if (_hasRotation(matrix)) {
        size = constraints.constrain(_childSize!);
      } else {
        final transformedSize = _getTransformedSize(_childSize!, matrix);
        size = constraints.constrain(transformedSize);
      }
    } else {
      _childSize = null;
      size = constraints.smallest;
    }
  }

  BoxConstraints _transformConstraints(
      BoxConstraints constraints, Matrix4 matrix) {
    final scaleX = math.sqrt(matrix[0] * matrix[0] + matrix[1] * matrix[1]);
    final scaleY = math.sqrt(matrix[4] * matrix[4] + matrix[5] * matrix[5]);

    if (scaleX == 0 || scaleY == 0) {
      return BoxConstraints.tight(Size.zero);
    }

    return BoxConstraints(
      minWidth: constraints.minWidth / scaleX,
      maxWidth: constraints.maxWidth.isFinite
          ? constraints.maxWidth / scaleX
          : double.infinity,
      minHeight: constraints.minHeight / scaleY,
      maxHeight: constraints.maxHeight.isFinite
          ? constraints.maxHeight / scaleY
          : double.infinity,
    );
  }

  Matrix4 _transformToMatrix4(FigmaTransform transform) {
    return Matrix4(
      transform.m00,
      transform.m10,
      0,
      0,
      transform.m01,
      transform.m11,
      0,
      0,
      0,
      0,
      1,
      0,
      transform.m02,
      transform.m12,
      0,
      1,
    );
  }

  bool _hasRotation(Matrix4 matrix) {
    final scaleX = math.sqrt(matrix[0] * matrix[0] + matrix[1] * matrix[1]);
    final scaleY = math.sqrt(matrix[4] * matrix[4] + matrix[5] * matrix[5]);

    if (scaleX == 0 || scaleY == 0) return false;

    final cosAngle = matrix[0] / scaleX;
    final sinAngle = matrix[1] / scaleX;

    final angle = math.atan2(sinAngle, cosAngle).abs();

    return angle > 0.0001;
  }

  Size _getTransformedSize(Size size, Matrix4 matrix) {
    final corners = [
      Offset.zero,
      Offset(size.width, 0),
      Offset(size.width, size.height),
      Offset(0, size.height),
    ];

    final transformedCorners = corners.map((corner) {
      final x = matrix[0] * corner.dx + matrix[4] * corner.dy + matrix[12];
      final y = matrix[1] * corner.dx + matrix[5] * corner.dy + matrix[13];
      return Offset(x, y);
    }).toList();

    final minX = transformedCorners.map((c) => c.dx).reduce(math.min);
    final maxX = transformedCorners.map((c) => c.dx).reduce(math.max);
    final minY = transformedCorners.map((c) => c.dy).reduce(math.min);
    final maxY = transformedCorners.map((c) => c.dy).reduce(math.max);

    return Size(maxX - minX, maxY - minY);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    if (child == null || _childSize == null) return;

    final matrix = _transformToMatrix4(_transform);

    final hasRotation = _hasRotation(matrix);

    if (hasRotation) {
      final childCenterX = _childSize!.width / 2;
      final childCenterY = _childSize!.height / 2;
      final boxCenterX = size.width / 2;
      final boxCenterY = size.height / 2;

      final translatedMatrix = Matrix4.identity()
        ..translate(offset.dx + boxCenterX, offset.dy + boxCenterY)
        ..multiply(matrix)
        ..translate(-childCenterX, -childCenterY);

      context.pushTransform(
        needsCompositing,
        Offset.zero,
        translatedMatrix,
        (context, offset) => super.paint(context, offset),
      );
    } else {
      final corners = [
        Offset.zero,
        Offset(_childSize!.width, 0),
        Offset(_childSize!.width, _childSize!.height),
        Offset(0, _childSize!.height),
      ];

      final transformedCorners = corners.map((corner) {
        final x = matrix[0] * corner.dx + matrix[4] * corner.dy + matrix[12];
        final y = matrix[1] * corner.dx + matrix[5] * corner.dy + matrix[13];
        return Offset(x, y);
      }).toList();

      final minX = transformedCorners.map((c) => c.dx).reduce(math.min);
      final minY = transformedCorners.map((c) => c.dy).reduce(math.min);

      final translatedMatrix = Matrix4.identity()
        ..translate(offset.dx - minX, offset.dy - minY)
        ..multiply(matrix);

      context.pushTransform(
        needsCompositing,
        Offset.zero,
        translatedMatrix,
        (context, offset) => super.paint(context, offset),
      );
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    if (child == null || _childSize == null) return false;

    final matrix = _transformToMatrix4(_transform);
    final hasRotation = _hasRotation(matrix);

    Matrix4 effectiveTransform;

    if (hasRotation) {
      final childCenterX = _childSize!.width / 2;
      final childCenterY = _childSize!.height / 2;
      final boxCenterX = size.width / 2;
      final boxCenterY = size.height / 2;

      effectiveTransform = Matrix4.identity()
        ..translate(boxCenterX, boxCenterY)
        ..multiply(matrix)
        ..translate(-childCenterX, -childCenterY);
    } else {
      final corners = [
        Offset.zero,
        Offset(_childSize!.width, 0),
        Offset(_childSize!.width, _childSize!.height),
        Offset(0, _childSize!.height),
      ];

      final transformedCorners = corners.map((corner) {
        final x = matrix[0] * corner.dx + matrix[4] * corner.dy + matrix[12];
        final y = matrix[1] * corner.dx + matrix[5] * corner.dy + matrix[13];
        return Offset(x, y);
      }).toList();

      final minX = transformedCorners.map((c) => c.dx).reduce(math.min);
      final minY = transformedCorners.map((c) => c.dy).reduce(math.min);

      effectiveTransform = Matrix4.identity()
        ..translate(-minX, -minY)
        ..multiply(matrix);
    }

    return result.addWithPaintTransform(
      transform: effectiveTransform,
      position: position,
      hitTest: (BoxHitTestResult result, Offset position) {
        return super.hitTestChildren(result, position: position);
      },
    );
  }
}
