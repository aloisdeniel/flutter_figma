import 'package:flutter/widgets.dart';
import 'package:flutter_figma/src/foundation/layout.dart';

import 'enums.dart';
import 'geometry.dart';

abstract class FigmaPaint {
  const FigmaPaint({
    this.visible = true,
    this.opacity = 1.0,
    this.blendMode = BlendMode.normal,
  });

  final bool visible;
  final double opacity;
  final BlendMode blendMode;
}

class SolidPaint extends FigmaPaint {
  const SolidPaint({
    required this.color,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  final Color color;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SolidPaint &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(color, visible, opacity, blendMode);

  @override
  String toString() =>
      'SolidPaint(color: $color, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class ColorStop {
  const ColorStop({
    required this.position,
    required this.color,
  });

  final double position;
  final Color color;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ColorStop &&
          runtimeType == other.runtimeType &&
          position == other.position &&
          color == other.color;

  @override
  int get hashCode => Object.hash(position, color);

  @override
  String toString() => 'ColorStop(position: $position, color: $color)';
}

abstract class GradientPaint extends FigmaPaint {
  const GradientPaint({
    required this.gradientTransform,
    required this.gradientStops,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  final FigmaTransform gradientTransform;
  final List<ColorStop> gradientStops;
}

class LinearGradientPaint extends GradientPaint {
  const LinearGradientPaint({
    required super.gradientTransform,
    required super.gradientStops,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LinearGradientPaint &&
          runtimeType == other.runtimeType &&
          gradientTransform == other.gradientTransform &&
          _listEquals(gradientStops, other.gradientStops) &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(gradientTransform,
      Object.hashAll(gradientStops), visible, opacity, blendMode);

  @override
  String toString() =>
      'LinearGradientPaint(gradientTransform: $gradientTransform, gradientStops: $gradientStops, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class RadialGradientPaint extends GradientPaint {
  const RadialGradientPaint({
    required super.gradientTransform,
    required super.gradientStops,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RadialGradientPaint &&
          runtimeType == other.runtimeType &&
          gradientTransform == other.gradientTransform &&
          _listEquals(gradientStops, other.gradientStops) &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(gradientTransform,
      Object.hashAll(gradientStops), visible, opacity, blendMode);

  @override
  String toString() =>
      'RadialGradientPaint(gradientTransform: $gradientTransform, gradientStops: $gradientStops, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class AngularGradientPaint extends GradientPaint {
  const AngularGradientPaint({
    required super.gradientTransform,
    required super.gradientStops,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AngularGradientPaint &&
          runtimeType == other.runtimeType &&
          gradientTransform == other.gradientTransform &&
          _listEquals(gradientStops, other.gradientStops) &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(gradientTransform,
      Object.hashAll(gradientStops), visible, opacity, blendMode);

  @override
  String toString() =>
      'AngularGradientPaint(gradientTransform: $gradientTransform, gradientStops: $gradientStops, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class DiamondGradientPaint extends GradientPaint {
  const DiamondGradientPaint({
    required super.gradientTransform,
    required super.gradientStops,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DiamondGradientPaint &&
          runtimeType == other.runtimeType &&
          gradientTransform == other.gradientTransform &&
          _listEquals(gradientStops, other.gradientStops) &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(gradientTransform,
      Object.hashAll(gradientStops), visible, opacity, blendMode);

  @override
  String toString() =>
      'DiamondGradientPaint(gradientTransform: $gradientTransform, gradientStops: $gradientStops, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class ImageFilters {
  const ImageFilters({
    this.exposure = 0.0,
    this.contrast = 0.0,
    this.saturation = 0.0,
    this.temperature = 0.0,
    this.tint = 0.0,
    this.highlights = 0.0,
    this.shadows = 0.0,
  });

  final double exposure;
  final double contrast;
  final double saturation;
  final double temperature;
  final double tint;
  final double highlights;
  final double shadows;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImageFilters &&
          runtimeType == other.runtimeType &&
          exposure == other.exposure &&
          contrast == other.contrast &&
          saturation == other.saturation &&
          temperature == other.temperature &&
          tint == other.tint &&
          highlights == other.highlights &&
          shadows == other.shadows;

  @override
  int get hashCode => Object.hash(
      exposure, contrast, saturation, temperature, tint, highlights, shadows);

  @override
  String toString() =>
      'ImageFilters(exposure: $exposure, contrast: $contrast, saturation: $saturation, temperature: $temperature, tint: $tint, highlights: $highlights, shadows: $shadows)';
}

class ImagePaint extends FigmaPaint {
  const ImagePaint({
    required this.scaleMode,
    required this.imageHash,
    this.imageTransform,
    this.scalingFactor,
    this.rotation,
    this.filters,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  final ScaleMode scaleMode;
  final String? imageHash;
  final FigmaTransform? imageTransform;
  final double? scalingFactor;
  final double? rotation;
  final ImageFilters? filters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ImagePaint &&
          runtimeType == other.runtimeType &&
          scaleMode == other.scaleMode &&
          imageHash == other.imageHash &&
          imageTransform == other.imageTransform &&
          scalingFactor == other.scalingFactor &&
          rotation == other.rotation &&
          filters == other.filters &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(scaleMode, imageHash, imageTransform,
      scalingFactor, rotation, filters, visible, opacity, blendMode);

  @override
  String toString() =>
      'ImagePaint(scaleMode: $scaleMode, imageHash: $imageHash, imageTransform: $imageTransform, scalingFactor: $scalingFactor, rotation: $rotation, filters: $filters, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class VideoPaint extends FigmaPaint {
  const VideoPaint({
    required this.scaleMode,
    required this.videoHash,
    this.videoTransform,
    this.scalingFactor,
    this.rotation,
    this.filters,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  final ScaleMode scaleMode;
  final String? videoHash;
  final FigmaTransform? videoTransform;
  final double? scalingFactor;
  final double? rotation;
  final ImageFilters? filters;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VideoPaint &&
          runtimeType == other.runtimeType &&
          scaleMode == other.scaleMode &&
          videoHash == other.videoHash &&
          videoTransform == other.videoTransform &&
          scalingFactor == other.scalingFactor &&
          rotation == other.rotation &&
          filters == other.filters &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(scaleMode, videoHash, videoTransform,
      scalingFactor, rotation, filters, visible, opacity, blendMode);

  @override
  String toString() =>
      'VideoPaint(scaleMode: $scaleMode, videoHash: $videoHash, videoTransform: $videoTransform, scalingFactor: $scalingFactor, rotation: $rotation, filters: $filters, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

class PatternPaint extends FigmaPaint {
  const PatternPaint({
    required this.sourceNodeId,
    required this.tileType,
    required this.scalingFactor,
    required this.spacing,
    required this.horizontalAlignment,
    super.visible,
    super.opacity,
    super.blendMode,
  });

  final String sourceNodeId;
  final PatternTileType tileType;
  final double scalingFactor;
  final Offset spacing;
  final PatternHorizontalAlignment horizontalAlignment;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatternPaint &&
          runtimeType == other.runtimeType &&
          sourceNodeId == other.sourceNodeId &&
          tileType == other.tileType &&
          scalingFactor == other.scalingFactor &&
          spacing == other.spacing &&
          horizontalAlignment == other.horizontalAlignment &&
          visible == other.visible &&
          opacity == other.opacity &&
          blendMode == other.blendMode;

  @override
  int get hashCode => Object.hash(sourceNodeId, tileType, scalingFactor,
      spacing, horizontalAlignment, visible, opacity, blendMode);

  @override
  String toString() =>
      'PatternPaint(sourceNodeId: $sourceNodeId, tileType: $tileType, scalingFactor: $scalingFactor, spacing: $spacing, horizontalAlignment: $horizontalAlignment, visible: $visible, opacity: $opacity, blendMode: $blendMode)';
}

enum PatternTileType {
  rectangular,
  horizontalHexagonal,
  verticalHexagonal,
}

enum PatternHorizontalAlignment {
  start,
  center,
  end,
}

bool _listEquals<T>(List<T> a, List<T> b) {
  if (a.length != b.length) return false;
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) return false;
  }
  return true;
}
