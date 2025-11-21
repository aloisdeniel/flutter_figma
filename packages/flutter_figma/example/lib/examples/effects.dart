part of '../main.dart';

class EffectsExample extends StatelessWidget implements Example {
  const EffectsExample({super.key});

  @override
  String get name => 'Effects';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        spacing: 20,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              children: [
                Text('SHAAAAAAAAADDDDDDDOOOOOOOWWW'),
                Positioned.fill(
                  child: Center(
                    child: FigmaFiltered(
                      effects: [
                        FigmaEffect.dropShadow(
                          color: Color(0x44000000),
                          offset: Offset(0, 10),
                          radius: 5,
                        ),
                      ],
                      shape: FigmaRectangleShape(),
                      child: const SizedBox(width: 40, height: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              children: [
                Text('BACKKKGGGGGGROUNDDDBLUUUURRR'),
                Positioned.fill(
                  child: Center(
                    child: FigmaFiltered(
                      effects: [FigmaEffect.backgroundBlur(radius: 20)],
                      shape: FigmaRectangleShape(),
                      child: const SizedBox(width: 40, height: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              children: [
                Text('LAAAAYYYYYYEEERBLUUUUUUUURRRRRRRR'),
                Positioned.fill(
                  child: Center(
                    child: FigmaFiltered(
                      effects: [FigmaEffect.layerBlur(radius: 20)],
                      shape: FigmaRectangleShape(),
                      child: const SizedBox(width: 40, height: 40),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
