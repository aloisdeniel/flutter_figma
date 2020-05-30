import 'dart:ui';

import 'package:flutter_figma/src/base/base.dart';
import 'package:path_drawing/path_drawing.dart';

double number(dynamic json) {
  if (json == null) return null;
  if (json is double) return json;
  if (json is int) return json.toDouble();
  throw Exception('Failed to parse number "$json"');
}

bool boolean(dynamic json) {
  if (json == null) return null;
  if (json == true) return true;
  return false;
}

List<double> numberList(dynamic json) {
  return json?.map<double>(number)?.toList();
}

FigmaCornerRadii cornerRadii(dynamic json) {
  final cornerRadius = number(json['cornerRadius']);

  if (cornerRadius != null) {
    return FigmaCornerRadii.all(cornerRadius);
  }

  final rectangleCornerRadiiNumber =
      numberList(json['rectangleCornerRadiiNumber']);

  if (rectangleCornerRadiiNumber != null) {
    return FigmaCornerRadii.fromList(rectangleCornerRadiiNumber);
  }

  return FigmaCornerRadii.zero;
}

Size sizeFromVector(dynamic json) {
  return Size(
    number(json['x']),
    number(json['y']),
  );
}

Offset vector(dynamic json) {
  return Offset(
    number(json['x']),
    number(json['y']),
  );
}

List<Offset> vectorList(dynamic json) {
  return json?.map<Offset>(vector)?.toList();
}

Path path(dynamic json) {
  if (json == null) return null;
  final result = Path();
  for (var item in json) {
    final data = parseSvgPathData(item['path']);
    //final windingRule = item['windingRule'];
    result.addPath(data, Offset.zero);
  }
  return result;
}

Size sizeFromSize(dynamic json) {
  return Size(
    number(json['width']),
    number(json['height']),
  );
}

List<FigmaPaint> paintList(dynamic json) {
  return json?.map<FigmaPaint>(paint)?.toList();
}

FigmaPaint paint(dynamic json) {
  switch (json['type']) {
    case 'SOLID':
      return colorPaint(json);
    case 'GRADIENT_LINEAR':
      return linearGradientPaint(json);
    case 'GRADIENT_RADIAL':
      return radialGradientPaint(json);
    case 'IMAGE':
      return imagePaint(json);
    default:
      return null;
  }
}

List<FigmaEffect> effectList(dynamic json) {
  return json?.map<FigmaEffect>(effect)?.toList();
}

FigmaEffect effect(dynamic json) {
  switch (json['type']) {
    case 'DROP_SHADOW':
      return dropShadowEffect(json);
    default:
      return null;
  }
}

FigmaDropShadowEffect dropShadowEffect(dynamic json) {
  return FigmaDropShadowEffect(
    radius: number(json['radius']),
    offset: vector(json['offset']),
    color: color(json['color']),
  );
}

FigmaColorPaint colorPaint(dynamic json) {
  return FigmaColorPaint(
    opacity: number(json['opacity']),
    color: color(json['color']),
  );
}

FigmaImagePaint imagePaint(dynamic json) {
  return FigmaImagePaint(
    opacity: number(json['opacity']),
    imageRef: json['imageRef'],
    scaleMode: scaleMode(json['scaleMode']),
    scalingFactor: number(json['scalingFactor']) ?? 1.0,
    imageTransform: transform(
      json['imageTransform'],
    ),
  );
}

FigmaGradientLinearPaint linearGradientPaint(dynamic json) {
  return FigmaGradientLinearPaint(
      opacity: number(json['opacity']),
      gradientStops: _gradientStopList(json['gradientStops']),
      gradientHandlePositions: vectorList(json['gradientHandlePositions']));
}

FigmaGradientRadialPaint radialGradientPaint(dynamic json) {
  return FigmaGradientRadialPaint(
      opacity: number(json['opacity']),
      gradientStops: _gradientStopList(json['gradientStops']),
      gradientHandlePositions: vectorList(json['gradientHandlePositions']));
}

Color color(dynamic json) {
  if (json == null) return const Color(0x00000000);
  return Color.fromARGB(
    _colorComponent(json['a'], 255),
    _colorComponent(json['r'], 0),
    _colorComponent(json['g'], 0),
    _colorComponent(json['b'], 0),
  );
}

FigmaTypeStyle typeStyle(dynamic json) {
  if (json == null) return null;
  return FigmaTypeStyle(
    fills: paintList(json['fills']),
    fontFamily: json['fontFamily'],
    fontPostScriptName: json['fontPostScriptName'],
    fontSize: number(json['fontSize']),
    fontWeight: number(json['fontWeight'])?.toInt(),
    italic: boolean(json['italic']),
    letterSpacing: number(json['letterSpacing']),
    lineHeightPercent: number(json['lineHeightPercent']),
    lineHeightPx: number(json['lineHeightPx']),
    lineHeightPercentFontSize: number(json['lineHeightPercentFontSize']),
    paragraphIndent: number(json['paragraphIndent']),
    paragraphSpacing: number(json['paragraphSpacing']),
    textAlignHorizontal: textAlignHorizontal(json['textAlignHorizontal']),
    textAlignVertical: textAlignVertical(json['textAlignVertical']),
    textCase: textCase(json['textCase']),
    lineHeightUnit: lineHeightUnit(json['lineHeightUnit']),
    textAutoResize: textAutoResize(json['textAutoResize']),
    textDecoration: textDecoration(json['textDecoration']),
  );
}

List<FigmaGradientStop> _gradientStopList(dynamic json) {
  return json?.map<FigmaGradientStop>(_gradientStop)?.toList();
}

FigmaGradientStop _gradientStop(dynamic json) {
  if (json == null) return null;
  return FigmaGradientStop(
    position: number(json['position']),
    color: color(json['color']),
  );
}

int _colorComponent(dynamic json, int defaultValue) {
  if (json == null) return defaultValue;
  return ((number(json) ?? 0.0) * 255).floor().clamp(0, 255);
}

FigmaLayoutConstraints layoutConstraints(dynamic json) {
  final constraints = json['constraints'];

  return FigmaLayoutConstraints(
    horizontal: horizontalLayoutConstraints(
      constraints == null ? null : constraints['horizontal'],
    ),
    vertical: verticalLayoutConstraints(
      constraints == null ? null : constraints['vertical'],
    ),
  );
}

FigmaVerticalLayoutConstraint verticalLayoutConstraints(String json) {
  switch (json) {
    case 'CENTER':
      return FigmaVerticalLayoutConstraint.center;
    case 'BOTTOM':
      return FigmaVerticalLayoutConstraint.bottom;
    case 'TOP_BOTTOM':
      return FigmaVerticalLayoutConstraint.top_bottom;
    default:
      return FigmaVerticalLayoutConstraint.top;
  }
}

FigmaHorizontalLayoutConstraint horizontalLayoutConstraints(String json) {
  switch (json) {
    case 'CENTER':
      return FigmaHorizontalLayoutConstraint.center;
    case 'RIGHT':
      return FigmaHorizontalLayoutConstraint.right;
    case 'LEFT_RIGHT':
      return FigmaHorizontalLayoutConstraint.left_right;
    default:
      return FigmaHorizontalLayoutConstraint.left;
  }
}

FigmaTransform relativeTransform(dynamic json) {
  final value = json['relativeTransform'];
  return transform(value);
}

FigmaTransform transform(dynamic json) {
  if (json == null) return FigmaTransform.identity;
  return FigmaTransform(
    row0: numberList(json[0]),
    row1: numberList(json[1]),
  );
}

FigmaCounterAxisSizingMode counterAxisSizingMode(dynamic json) {
  switch (json) {
    case 'FIXED':
      return FigmaCounterAxisSizingMode.fixed;
    default:
      return FigmaCounterAxisSizingMode.auto;
  }
}

FigmaLayoutMode layoutMode(dynamic json) {
  switch (json) {
    case 'HORIZONTAL':
      return FigmaLayoutMode.horizontal;
    case 'VERTICAL':
      return FigmaLayoutMode.vertical;
    default:
      return FigmaLayoutMode.none;
  }
}

FigmaLayoutAlign layoutAlign(dynamic json) {
  switch (json) {
    case 'STRETCH':
      return FigmaLayoutAlign.stretch;
    case 'MAX':
      return FigmaLayoutAlign.max;
    case 'CENTER':
      return FigmaLayoutAlign.center;
    default:
      return FigmaLayoutAlign.min;
  }
}

FigmaStrokeAlign strokeAlign(dynamic json) {
  switch (json) {
    case 'INSIDE':
      return FigmaStrokeAlign.inside;
    case 'OUTSIDE':
      return FigmaStrokeAlign.outside;
    default:
      return FigmaStrokeAlign.center;
  }
}

FigmaStrokeJoin strokeJoin(dynamic json) {
  switch (json) {
    case 'BEVEL':
      return FigmaStrokeJoin.bevel;
    case 'ROUND':
      return FigmaStrokeJoin.round;
    default:
      return FigmaStrokeJoin.miter;
  }
}

FigmaStrokeCap strokeCap(dynamic json) {
  switch (json) {
    case 'TRIANGLE_ARROW':
      return FigmaStrokeCap.triangleArrow;
    case 'LINE_ARROW':
      return FigmaStrokeCap.lineArrow;
    case 'SQUARE':
      return FigmaStrokeCap.square;
    case 'ROUND':
      return FigmaStrokeCap.round;
    default:
      return FigmaStrokeCap.none;
  }
}

FigmaScaleMode scaleMode(dynamic json) {
  switch (json) {
    case 'TILE':
      return FigmaScaleMode.tile;
    case 'STRETCH':
      return FigmaScaleMode.stretch;
    case 'FIT':
      return FigmaScaleMode.fit;
    default:
      return FigmaScaleMode.fill;
  }
}

FigmaTextCase textCase(dynamic json) {
  switch (json) {
    case 'LOWER':
      return FigmaTextCase.lower;
    case 'UPPER':
      return FigmaTextCase.upper;
    case 'SMALL_CAPS':
      return FigmaTextCase.smallCaps;
    case 'SMALL_CAPS_FORCED':
      return FigmaTextCase.smallCapsForced;
    case 'TITLE':
      return FigmaTextCase.title;
    default:
      return FigmaTextCase.original;
  }
}

FigmaTextAlignHorizontal textAlignHorizontal(dynamic json) {
  switch (json) {
    case 'RIGHT':
      return FigmaTextAlignHorizontal.right;
    case 'JUSTIFIED':
      return FigmaTextAlignHorizontal.justified;
    case 'CENTER':
      return FigmaTextAlignHorizontal.center;
    default:
      return FigmaTextAlignHorizontal.left;
  }
}

FigmaTextAlignVertical textAlignVertical(dynamic json) {
  switch (json) {
    case 'BOTTOM':
      return FigmaTextAlignVertical.bottom;
    case 'CENTER':
      return FigmaTextAlignVertical.center;
    default:
      return FigmaTextAlignVertical.top;
  }
}

FigmaLineHeightUnit lineHeightUnit(dynamic json) {
  switch (json) {
    case 'INTRINSIC_%':
      return FigmaLineHeightUnit.intrinsicPercent;
    case 'FONT_SIZE_%':
      return FigmaLineHeightUnit.fontSizePercent;
    default:
      return FigmaLineHeightUnit.pixels;
  }
}

FigmaTextAutoResize textAutoResize(dynamic json) {
  switch (json) {
    case 'WIDTH_AND_HEIGHT':
      return FigmaTextAutoResize.widthAndHeight;
    case 'HEIGHT':
      return FigmaTextAutoResize.height;
    default:
      return FigmaTextAutoResize.none;
  }
}

FigmaTextDecoration textDecoration(dynamic json) {
  switch (json) {
    case 'UNDERLINE':
      return FigmaTextDecoration.underline;
    case 'STRIKETHROUGH':
      return FigmaTextDecoration.strikethrough;
    default:
      return FigmaTextDecoration.none;
  }
}
