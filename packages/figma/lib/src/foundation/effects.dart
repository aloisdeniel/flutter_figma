import 'package:flutter/widgets.dart';

import 'enums.dart';

abstract class FigmaEffect {
  const FigmaEffect({
    required this.visible,
  });

  final bool visible;
}

class DropShadowEffect extends FigmaEffect {
  const DropShadowEffect({
    required this.color,
    required this.offset,
    required this.radius,
    this.spread,
    required super.visible,
    required this.blendMode,
    this.showShadowBehindNode = false,
  });

  final Color color;
  final Offset offset;
  final double radius;
  final double? spread;
  final BlendMode blendMode;
  final bool showShadowBehindNode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DropShadowEffect &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          offset == other.offset &&
          radius == other.radius &&
          spread == other.spread &&
          visible == other.visible &&
          blendMode == other.blendMode &&
          showShadowBehindNode == other.showShadowBehindNode;

  @override
  int get hashCode => Object.hash(
      color, offset, radius, spread, visible, blendMode, showShadowBehindNode);

  @override
  String toString() =>
      'DropShadowEffect(color: $color, offset: $offset, radius: $radius, spread: $spread, visible: $visible, blendMode: $blendMode, showShadowBehindNode: $showShadowBehindNode)';
}

class InnerShadowEffect extends FigmaEffect {
  const InnerShadowEffect({
    required this.color,
    required this.offset,
    required this.radius,
    this.spread,
    required super.visible,
    required this.blendMode,
  });

  final Color color;
  final Offset offset;
  final double radius;
  final double? spread;
  final BlendMode blendMode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InnerShadowEffect &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          offset == other.offset &&
          radius == other.radius &&
          spread == other.spread &&
          visible == other.visible &&
          blendMode == other.blendMode;

  @override
  int get hashCode =>
      Object.hash(color, offset, radius, spread, visible, blendMode);

  @override
  String toString() =>
      'InnerShadowEffect(color: $color, offset: $offset, radius: $radius, spread: $spread, visible: $visible, blendMode: $blendMode)';
}

abstract class BlurEffect extends FigmaEffect {
  const BlurEffect({
    required this.radius,
    required super.visible,
  });

  final double radius;
}

class LayerBlurEffect extends BlurEffect {
  const LayerBlurEffect({
    required super.radius,
    required super.visible,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LayerBlurEffect &&
          runtimeType == other.runtimeType &&
          radius == other.radius &&
          visible == other.visible;

  @override
  int get hashCode => Object.hash(radius, visible);

  @override
  String toString() => 'LayerBlurEffect(radius: $radius, visible: $visible)';
}

class BackgroundBlurEffect extends BlurEffect {
  const BackgroundBlurEffect({
    required super.radius,
    required super.visible,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BackgroundBlurEffect &&
          runtimeType == other.runtimeType &&
          radius == other.radius &&
          visible == other.visible;

  @override
  int get hashCode => Object.hash(radius, visible);

  @override
  String toString() =>
      'BackgroundBlurEffect(radius: $radius, visible: $visible)';
}

class ProgressiveBlurEffect extends FigmaEffect {
  const ProgressiveBlurEffect({
    required this.radius,
    required this.startRadius,
    required this.startOffset,
    required this.endOffset,
    required super.visible,
  });

  final double radius;
  final double startRadius;
  final Offset startOffset;
  final Offset endOffset;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProgressiveBlurEffect &&
          runtimeType == other.runtimeType &&
          radius == other.radius &&
          startRadius == other.startRadius &&
          startOffset == other.startOffset &&
          endOffset == other.endOffset &&
          visible == other.visible;

  @override
  int get hashCode =>
      Object.hash(radius, startRadius, startOffset, endOffset, visible);

  @override
  String toString() =>
      'ProgressiveBlurEffect(radius: $radius, startRadius: $startRadius, startOffset: $startOffset, endOffset: $endOffset, visible: $visible)';
}

abstract class NoiseEffect extends FigmaEffect {
  const NoiseEffect({
    required this.color,
    required super.visible,
    required this.blendMode,
    required this.noiseSize,
    required this.density,
  });

  final Color color;
  final BlendMode blendMode;
  final double noiseSize;
  final double density;
}

class MonotoneNoiseEffect extends NoiseEffect {
  const MonotoneNoiseEffect({
    required super.color,
    required super.visible,
    required super.blendMode,
    required super.noiseSize,
    required super.density,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MonotoneNoiseEffect &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          visible == other.visible &&
          blendMode == other.blendMode &&
          noiseSize == other.noiseSize &&
          density == other.density;

  @override
  int get hashCode =>
      Object.hash(color, visible, blendMode, noiseSize, density);

  @override
  String toString() =>
      'MonotoneNoiseEffect(color: $color, visible: $visible, blendMode: $blendMode, noiseSize: $noiseSize, density: $density)';
}

class DuotoneNoiseEffect extends NoiseEffect {
  const DuotoneNoiseEffect({
    required super.color,
    required this.secondaryColor,
    required super.visible,
    required super.blendMode,
    required super.noiseSize,
    required super.density,
  });

  final Color secondaryColor;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DuotoneNoiseEffect &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          secondaryColor == other.secondaryColor &&
          visible == other.visible &&
          blendMode == other.blendMode &&
          noiseSize == other.noiseSize &&
          density == other.density;

  @override
  int get hashCode => Object.hash(
      color, secondaryColor, visible, blendMode, noiseSize, density);

  @override
  String toString() =>
      'DuotoneNoiseEffect(color: $color, secondaryColor: $secondaryColor, visible: $visible, blendMode: $blendMode, noiseSize: $noiseSize, density: $density)';
}

class MultitoneNoiseEffect extends NoiseEffect {
  const MultitoneNoiseEffect({
    required super.color,
    required this.opacity,
    required super.visible,
    required super.blendMode,
    required super.noiseSize,
    required super.density,
  });

  final double opacity;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultitoneNoiseEffect &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          opacity == other.opacity &&
          visible == other.visible &&
          blendMode == other.blendMode &&
          noiseSize == other.noiseSize &&
          density == other.density;

  @override
  int get hashCode =>
      Object.hash(color, opacity, visible, blendMode, noiseSize, density);

  @override
  String toString() =>
      'MultitoneNoiseEffect(color: $color, opacity: $opacity, visible: $visible, blendMode: $blendMode, noiseSize: $noiseSize, density: $density)';
}

class TextureEffect extends FigmaEffect {
  const TextureEffect({
    required super.visible,
    required this.noiseSize,
    required this.radius,
    required this.clipToShape,
  });

  final double noiseSize;
  final double radius;
  final bool clipToShape;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextureEffect &&
          runtimeType == other.runtimeType &&
          visible == other.visible &&
          noiseSize == other.noiseSize &&
          radius == other.radius &&
          clipToShape == other.clipToShape;

  @override
  int get hashCode => Object.hash(visible, noiseSize, radius, clipToShape);

  @override
  String toString() =>
      'TextureEffect(visible: $visible, noiseSize: $noiseSize, radius: $radius, clipToShape: $clipToShape)';
}

class GlassEffect extends FigmaEffect {
  const GlassEffect({
    required super.visible,
    required this.lightIntensity,
    required this.lightAngle,
    required this.refraction,
    required this.depth,
    required this.dispersion,
    required this.radius,
  });

  final double lightIntensity;
  final double lightAngle;
  final double refraction;
  final double depth;
  final double dispersion;
  final double radius;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlassEffect &&
          runtimeType == other.runtimeType &&
          visible == other.visible &&
          lightIntensity == other.lightIntensity &&
          lightAngle == other.lightAngle &&
          refraction == other.refraction &&
          depth == other.depth &&
          dispersion == other.dispersion &&
          radius == other.radius;

  @override
  int get hashCode => Object.hash(visible, lightIntensity, lightAngle,
      refraction, depth, dispersion, radius);

  @override
  String toString() =>
      'GlassEffect(visible: $visible, lightIntensity: $lightIntensity, lightAngle: $lightAngle, refraction: $refraction, depth: $depth, dispersion: $dispersion, radius: $radius)';
}
