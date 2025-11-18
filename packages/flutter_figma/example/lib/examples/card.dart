part of '../main.dart';

class CardExample extends StatelessWidget implements Example {
  const CardExample({super.key});

  @override
  String get name => 'Card';

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 769,
      height: 224,
      child: FigmaFrame(
        layout: FigmaAutoLayoutProperties(
          mode: AutoLayoutMode.vertical,
          primaryAxisAlignItems: LayoutAlign.stretch,
          itemSpacing: 8,
        ),
        clipContent: false,
        children: [
          FigmaSized(
            size: ChildSize(
              width: 769,
              height: 148,
              primaryAxisSizing: ChildSizingMode.hug,
            ),
            child: FigmaFrame(
              layout: FigmaAutoLayoutProperties(
                mode: AutoLayoutMode.vertical,
                primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                primaryAxisAlignItems: LayoutAlign.stretch,
                paddingLeft: 24,
                paddingRight: 24,
                paddingTop: 24,
                paddingBottom: 24,
                itemSpacing: 8,
              ),
              decoration: FigmaDecoration(
                fills: [
                  LinearGradientPaint(
                    gradientTransform: FigmaTransform.identity,
                    gradientStops: const [],
                    blendMode: BlendMode.multiply,
                  ),
                ],
              ),
              clipContent: false,
              children: [
                FigmaSized(
                  size: ChildSize(
                    width: 721,
                    height: 60,
                    primaryAxisSizing: ChildSizingMode.hug,
                  ),
                  child: FigmaFrame(
                    layout: FigmaAutoLayoutProperties(
                      mode: AutoLayoutMode.vertical,
                      primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                      primaryAxisAlignItems: LayoutAlign.stretch,
                    ),
                    clipContent: false,
                    children: [
                      FigmaSized(
                        size: ChildSize(
                          width: 721,
                          height: 44,
                          primaryAxisSizing: ChildSizingMode.fixed,
                        ),
                        child: FigmaText.rich(
                          characters: [FigmaTextSpan(text: 'Title')],
                          style: FigmaTextStyle(
                            fontName: FontName(
                              family: 'Roboto',
                              style: FigmaFontStyle.regular,
                              weight: FontWeight.w600,
                            ),
                            fontSize: 45,
                            letterSpacing: LetterSpacing(
                              value: 0,
                              unit: LetterSpacingUnit.pixels,
                            ),
                            lineHeight: LineHeightAuto(),
                          ),
                          fills: [
                            SolidPaint(
                              color: Color.from(
                                alpha: 1,
                                red: 1,
                                green: 1,
                                blue: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                      FigmaSized(
                        size: ChildSize(
                          width: 721,
                          height: 16,
                          primaryAxisSizing: ChildSizingMode.fixed,
                        ),
                        child: FigmaText.rich(
                          characters: [FigmaTextSpan(text: 'Subtitle')],
                          style: FigmaTextStyle(
                            fontName: FontName(
                              family: 'Roboto',
                              style: FigmaFontStyle.regular,
                              weight: FontWeight.w400,
                            ),
                            fontSize: 12,
                            letterSpacing: LetterSpacing(
                              value: 0,
                              unit: LetterSpacingUnit.pixels,
                            ),
                            lineHeight: LineHeightAuto(),
                          ),
                          fills: [
                            SolidPaint(
                              color: Color.from(
                                alpha: 1,
                                red: 0.20000000298023224,
                                green: 0.20392157137393951,
                                blue: 0.22745098173618317,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                if (false)
                  FigmaSized(
                    size: ChildSize(
                      width: 350,
                      height: 32,
                      primaryAxisSizing: ChildSizingMode.hug,
                      counterAxisSizing: ChildSizingMode.hug,
                    ),
                    child: FigmaFrame(
                      layout: FigmaLayoutProperties.auto(
                        mode: AutoLayoutMode.horizontal,
                        primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                        counterAxisSizingMode: CounterAxisSizingMode.auto,
                        itemSpacing: 8,
                      ),
                      clipContent: false,
                      children: [
                        FigmaSized(
                          size: ChildSize(
                            width: 171,
                            height: 32,
                            primaryAxisSizing: ChildSizingMode.hug,
                            counterAxisSizing: ChildSizingMode.hug,
                          ),
                          child: SizedBox(),
                        ),
                        FigmaSized(
                          size: ChildSize(
                            width: 171,
                            height: 32,
                            primaryAxisSizing: ChildSizingMode.hug,
                            counterAxisSizing: ChildSizingMode.hug,
                          ),
                          child: SizedBox(),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          FigmaSized(
            size: ChildSize(
              width: 768,
              height: 224,
              primaryAxisSizing: ChildSizingMode.fixed,
              counterAxisSizing: ChildSizingMode.fixed,
            ),
            child: FigmaFrame(
              clipContent: false,
              layout: FigmaLayoutProperties.absolute(width: 768, height: 224),
              decoration: FigmaDecoration(
                fills: [
                  SolidPaint(
                    color: Color.from(
                      alpha: 1,
                      red: 0.1568627506494522,
                      green: 0.16470588743686676,
                      blue: 0.18431372940540314,
                    ),
                  ),
                  ImagePaint(
                    scaleMode: ScaleMode.fit,
                    imageHash: '054dfe02e425078fdd66113858fbed2e929f9c10',
                    blendMode: BlendMode.luminosity,
                  ),
                ],
                shape: FigmaRectangleShape(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
