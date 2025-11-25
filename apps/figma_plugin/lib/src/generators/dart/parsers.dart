import 'package:figma_plugin/src/figma.dart';

/// Utility functions for parsing Figma values to Flutter/Dart code
class Parsers {
  Parsers._();

  static String parsePrimaryAxisSizingMode(FrameNode node) {
    // In Figma, the primary axis sizing is determined by layoutSizingHorizontal/Vertical
    final mode = node.layoutMode == 'HORIZONTAL'
        ? node.layoutSizingHorizontal
        : node.layoutSizingVertical;

    if (mode == 'HUG') {
      return 'PrimaryAxisSizingMode.auto';
    }
    return 'PrimaryAxisSizingMode.fixed';
  }

  static String parseCounterAxisSizingMode(FrameNode node) {
    // Counter axis is opposite of primary
    final mode = node.layoutMode == 'HORIZONTAL'
        ? node.layoutSizingVertical
        : node.layoutSizingHorizontal;

    if (mode == 'HUG') {
      return 'CounterAxisSizingMode.auto';
    }
    return 'CounterAxisSizingMode.fixed';
  }

  static String? parseChildSizingMode(String mode) {
    switch (mode.toUpperCase()) {
      case 'HUG':
        return 'ChildSizingMode.hug';
      case 'FIXED':
        return 'ChildSizingMode.fixed';
      case 'FILL':
        return null; // Fill is handled differently
      default:
        return null;
    }
  }

  static String parseFontWeight(String style) {
    // Parse font weight from style string
    final styleLower = style.toLowerCase();
    if (styleLower.contains('thin')) return 'FontWeight.w100';
    if (styleLower.contains('extralight') ||
        styleLower.contains('ultra light')) {
      return 'FontWeight.w200';
    }
    if (styleLower.contains('light')) return 'FontWeight.w300';
    if (styleLower.contains('medium')) return 'FontWeight.w500';
    if (styleLower.contains('semibold') || styleLower.contains('demibold')) {
      return 'FontWeight.w600';
    }
    if (styleLower.contains('bold') && !styleLower.contains('extrabold')) {
      return 'FontWeight.w700';
    }
    if (styleLower.contains('extrabold') || styleLower.contains('ultrabold')) {
      return 'FontWeight.w800';
    }
    if (styleLower.contains('black') || styleLower.contains('heavy')) {
      return 'FontWeight.w900';
    }
    return 'FontWeight.w400'; // Regular/Normal
  }

  static String parseFontStyle(String style) {
    return style.toLowerCase().contains('italic')
        ? 'FigmaFontStyle.italic'
        : 'FigmaFontStyle.regular';
  }

  static String parseBlendMode(String? blendMode) {
    if (blendMode == null) return 'BlendMode.normal';
    switch (blendMode.toUpperCase()) {
      case 'PASS_THROUGH':
        return 'BlendMode.passThrough';
      case 'NORMAL':
        return 'BlendMode.normal';
      case 'DARKEN':
        return 'BlendMode.darken';
      case 'MULTIPLY':
        return 'BlendMode.multiply';
      case 'LINEAR_BURN':
        return 'BlendMode.linearBurn';
      case 'COLOR_BURN':
        return 'BlendMode.colorBurn';
      case 'LIGHTEN':
        return 'BlendMode.lighten';
      case 'SCREEN':
        return 'BlendMode.screen';
      case 'LINEAR_DODGE':
        return 'BlendMode.linearDodge';
      case 'COLOR_DODGE':
        return 'BlendMode.colorDodge';
      case 'OVERLAY':
        return 'BlendMode.overlay';
      case 'SOFT_LIGHT':
        return 'BlendMode.softLight';
      case 'HARD_LIGHT':
        return 'BlendMode.hardLight';
      case 'DIFFERENCE':
        return 'BlendMode.difference';
      case 'EXCLUSION':
        return 'BlendMode.exclusion';
      case 'HUE':
        return 'BlendMode.hue';
      case 'SATURATION':
        return 'BlendMode.saturation';
      case 'COLOR':
        return 'BlendMode.color';
      case 'LUMINOSITY':
        return 'BlendMode.luminosity';
      default:
        return 'BlendMode.normal';
    }
  }

  static String escapeString(String str) {
    return "'${str.replaceAll('\\', '\\\\').replaceAll("'", "\\'").replaceAll('\n', '\\n')}'";
  }

  static String buildColor(double? opacity, RGB color) {
    return 'Color.from(alpha: ${opacity ?? 1.0}, red: ${color.r}, green: ${color.g}, blue: ${color.b})';
  }
}
