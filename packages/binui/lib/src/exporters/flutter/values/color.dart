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
      ColorSpace.displayP3 => 'colorSpace: ui.ColorSpace.displayP3',
      ColorSpace.srgb => 'colorSpace: ui.ColorSpace.srgb',
      ColorSpace.extendedSrgb => 'colorSpace: ui.ColorSpace.extendedSrgb',
      _ => throw Exception(),
    };
    return 'const fl.Color.from($components$colorSpace)';
  }
}
