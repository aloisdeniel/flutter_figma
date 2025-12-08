import 'bindings.dart';

import 'package:flutter/widgets.dart' as flu;
import 'package:flutter_figma/widgets.dart' as fig;

extension FigmaTransformBuild on FigmaTransform {
  fig.FigmaTransform build() =>
      fig.FigmaTransform(m00, m01, m02, m10, m11, m12);
}

extension FigmaRectangleShapeBuild on FigmaRectangleShape {
  fig.FigmaRectangleShape build() => fig.FigmaRectangleShape(
    topLeftRadius: topLeftRadius,
    topRightRadius: topRightRadius,
    bottomLeftRadius: bottomLeftRadius,
    bottomRightRadius: bottomRightRadius,
    smoothing: smoothing,
  );
}

extension FigmaStrokeAlignmentBuild on FigmaStrokeAlignment {
  fig.FigmaStrokeAlignment build() => switch (this) {
    FigmaStrokeAlignment.inside => fig.FigmaStrokeAlignment.inside,
    FigmaStrokeAlignment.center => fig.FigmaStrokeAlignment.center,
    FigmaStrokeAlignment.outside => fig.FigmaStrokeAlignment.outside,
  };
}

extension FigmaTextStyleBuild on FigmaTextStyle {
  fig.FigmaTextStyle build() => fig.FigmaTextStyle(
    fontName: fontName.build(),
    fontSize: fontSize,
    letterSpacing: letterSpacing.build(),
    lineHeight: lineHeight.build(),
  );
}

extension LineHeightBuild on LineHeight {
  fig.LineHeight build() => switch (type) {
    LineHeightType.pixels => fig.LineHeight.pixels(value!),
    LineHeightType.percent => fig.LineHeight.percent(value!),
    LineHeightType.auto => fig.LineHeight.auto(),
  };
}

extension FigmaTextSpanBuild on FigmaTextSpan {
  fig.FigmaTextSpan build() =>
      fig.FigmaTextSpan(text: text, style: style?.build());
}

extension WidgetBuild on Widget {
  flu.Widget build() {
    return switch (this) {
      FigmaText(:final text?, :final style) => fig.FigmaText(
        text,
        style: style?.build(),
      ),
      FigmaText(:final characters?, :final style) => fig.FigmaText.rich(
        characters: characters.map((x) => x.build()).toList(),
        style: style?.build(),
      ),
      _ => throw Exception('Unsupported type $this'),
    };
  }
}
