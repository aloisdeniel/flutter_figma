import 'dart:ui' show Color;

class FigmaRGB {
  const FigmaRGB({required this.r, required this.g, required this.b});

  final double r;
  final double g;
  final double b;

  Color toColor({double opacity = 1.0}) {
    return Color.fromRGBO(
      (r * 255).round().clamp(0, 255),
      (g * 255).round().clamp(0, 255),
      (b * 255).round().clamp(0, 255),
      opacity,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaRGB &&
          runtimeType == other.runtimeType &&
          r == other.r &&
          g == other.g &&
          b == other.b;

  @override
  int get hashCode => Object.hash(r, g, b);

  @override
  String toString() => 'FigmaRGB(r: $r, g: $g, b: $b)';
}

class FigmaRGBA {
  const FigmaRGBA({
    required this.r,
    required this.g,
    required this.b,
    required this.a,
  });

  final double r;
  final double g;
  final double b;
  final double a;

  Color toColor() {
    return Color.fromRGBO(
      (r * 255).round().clamp(0, 255),
      (g * 255).round().clamp(0, 255),
      (b * 255).round().clamp(0, 255),
      a,
    );
  }

  FigmaRGB toRGB() => FigmaRGB(r: r, g: g, b: b);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FigmaRGBA &&
          runtimeType == other.runtimeType &&
          r == other.r &&
          g == other.g &&
          b == other.b &&
          a == other.a;

  @override
  int get hashCode => Object.hash(r, g, b, a);

  @override
  String toString() => 'FigmaRGBA(r: $r, g: $g, b: $b, a: $a)';
}
