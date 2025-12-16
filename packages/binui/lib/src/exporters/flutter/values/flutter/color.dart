import 'package:binui/src/definitions.dart';

class ColorDartExporter {
  const ColorDartExporter();

  String serialize(Color color) {
    final components =
        'red: ${color.red},'
        ' green: ${color.green},'
        ' blue: ${color.blue},'
        ' alpha: ${color.alpha},';
    final colorSpace = switch (color.colorSpace) {
      ColorSpace.COLOR_SPACE_DISPLAY_P3 =>
        'colorSpace: ui.ColorSpace.displayP3',
      ColorSpace.COLOR_SPACE_SRGB => 'colorSpace: ui.ColorSpace.sRGB',
      ColorSpace.COLOR_SPACE_EXTENDED_SRGB =>
        'colorSpace: ui.ColorSpace.extendedSRGB',
      _ => throw Exception(),
    };
    return 'const fl.Color.from($components$colorSpace)';
  }
}
