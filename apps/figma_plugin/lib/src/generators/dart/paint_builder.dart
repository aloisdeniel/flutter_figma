import 'package:figma_plugin/src/figma.dart';

import 'code_buffer.dart';
import 'parsers.dart';

/// Handles building paint (fills and strokes) code
class PaintBuilder {
  final CodeBuffer buffer;

  PaintBuilder(this.buffer);

  void buildPaint(Paint paint) {
    // Skip invisible paints
    if (paint.visible == false) {
      buffer.write('// Invisible paint');
      return;
    }

    switch (paint.type) {
      case 'SOLID':
        _buildSolidPaint(paint);
      case 'GRADIENT_LINEAR':
        _buildLinearGradientPaint(paint);
      case 'GRADIENT_RADIAL':
        _buildRadialGradientPaint(paint);
      case 'GRADIENT_ANGULAR':
        _buildAngularGradientPaint(paint);
      case 'GRADIENT_DIAMOND':
        _buildDiamondGradientPaint(paint);
      case 'IMAGE':
        _buildImagePaint(paint);
      default:
        buffer.write('// Unsupported paint type: ${paint.type}');
    }
  }

  void _buildSolidPaint(Paint paint) {
    buffer.writeLine('SolidPaint(');
    buffer.indent();
    final color = paint.color;
    if (color != null) {
      buffer.writeLine(
          'color: ${Parsers.buildColor(paint.opacity?.toDouble(), color)},');
    }
    if (paint.opacity != null && paint.opacity != 1.0) {
      buffer.writeLine('opacity: ${paint.opacity},');
    }
    if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
      buffer.writeLine('blendMode: ${Parsers.parseBlendMode(paint.blendMode)},');
    }
    buffer.unindent();
    buffer.write(')');
  }

  void _buildLinearGradientPaint(Paint paint) {
    buffer.writeLine('LinearGradientPaint(');
    buffer.indent();
    buffer.writeLine('gradientTransform: FigmaTransform.identity,');
    buffer.writeLine('gradientStops: const [],');
    if (paint.opacity != null && paint.opacity != 1.0) {
      buffer.writeLine('opacity: ${paint.opacity},');
    }
    if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
      buffer.writeLine('blendMode: ${Parsers.parseBlendMode(paint.blendMode)},');
    }
    buffer.unindent();
    buffer.write(')');
  }

  void _buildRadialGradientPaint(Paint paint) {
    buffer.writeLine('RadialGradientPaint(');
    buffer.indent();
    buffer.writeLine('gradientTransform: FigmaTransform.identity,');
    buffer.writeLine('gradientStops: const [],');
    if (paint.opacity != null && paint.opacity != 1.0) {
      buffer.writeLine('opacity: ${paint.opacity},');
    }
    if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
      buffer.writeLine('blendMode: ${Parsers.parseBlendMode(paint.blendMode)},');
    }
    buffer.unindent();
    buffer.write(')');
  }

  void _buildAngularGradientPaint(Paint paint) {
    buffer.writeLine('AngularGradientPaint(');
    buffer.indent();
    buffer.writeLine('gradientTransform: FigmaTransform.identity,');
    buffer.writeLine('gradientStops: const [],');
    if (paint.opacity != null && paint.opacity != 1.0) {
      buffer.writeLine('opacity: ${paint.opacity},');
    }
    if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
      buffer.writeLine('blendMode: ${Parsers.parseBlendMode(paint.blendMode)},');
    }
    buffer.unindent();
    buffer.write(')');
  }

  void _buildDiamondGradientPaint(Paint paint) {
    buffer.writeLine('DiamondGradientPaint(');
    buffer.indent();
    buffer.writeLine('gradientTransform: FigmaTransform.identity,');
    buffer.writeLine('gradientStops: const [],');
    if (paint.opacity != null && paint.opacity != 1.0) {
      buffer.writeLine('opacity: ${paint.opacity},');
    }
    if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
      buffer.writeLine('blendMode: ${Parsers.parseBlendMode(paint.blendMode)},');
    }
    buffer.unindent();
    buffer.write(')');
  }

  void _buildImagePaint(Paint paint) {
    buffer.writeLine('ImagePaint(');
    buffer.indent();
    buffer.writeLine(
        'scaleMode: ScaleMode.${(paint.scaleMode ?? 'FILL').toLowerCase()},');
    buffer.writeLine(
        'imageHash: ${paint.imageHash != null ? Parsers.escapeString(paint.imageHash!) : 'null'},');
    if (paint.opacity != null && paint.opacity != 1.0) {
      buffer.writeLine('opacity: ${paint.opacity},');
    }
    if (paint.blendMode != null && paint.blendMode != 'NORMAL') {
      buffer.writeLine('blendMode: ${Parsers.parseBlendMode(paint.blendMode)},');
    }
    buffer.unindent();
    buffer.write(')');
  }
}
