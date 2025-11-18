import 'package:flutter/widgets.dart';
import 'package:flutter_figma/widgets.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return FigmaPositioned(
      x: 24,
      y: 0,
      width: 769,
      height: 224,
      counterAxisSizing: ChildSizingMode.fixed,
      child: FigmaFrame(
        layout: FigmaAutoLayoutProperties(
          mode: AutoLayoutMode.vertical,
          primaryAxisAlignItems: LayoutAlign.stretch,
          itemSpacing: 8,
        ),
        clipContent: true,
        children: [
          FigmaPositioned(
            x: 0,
            y: 76,
            width: 769,
            height: 148,
            counterAxisSizing: ChildSizingMode.hug,
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
                shape: FigmaRectangleShape(),
              ),
              clipContent: true,
              children: [
                FigmaPositioned(
                  x: 24,
                  y: 24,
                  width: 721,
                  height: 60,
                  counterAxisSizing: ChildSizingMode.hug,
                  child: FigmaFrame(
                    layout: FigmaAutoLayoutProperties(
                      mode: AutoLayoutMode.vertical,
                      primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                      primaryAxisAlignItems: LayoutAlign.stretch,
                    ),
                    children: [
                      FigmaText(
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
                      FigmaPositioned(
                        x: 0,
                        y: 44,
                        width: 721,
                        height: 16,
                        counterAxisSizing: ChildSizingMode.fixed,
                        child: FigmaText(
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
                FigmaPositioned(
                  x: 24,
                  y: 92,
                  width: 350,
                  height: 32,
                  primaryAxisSizing: ChildSizingMode.hug,
                  counterAxisSizing: ChildSizingMode.hug,
                  child: FigmaFrame(
                    layout: FigmaAutoLayoutProperties(
                      mode: AutoLayoutMode.horizontal,
                      primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                      counterAxisSizingMode: CounterAxisSizingMode.auto,
                      itemSpacing: 8,
                    ),
                    children: [],
                  ),
                ),
              ],
            ),
          ),
          FigmaPositioned(
            x: 1,
            y: 0,
            width: 768,
            height: 224,
            primaryAxisSizing: ChildSizingMode.fixed,
            counterAxisSizing: ChildSizingMode.fixed,
            child: FigmaFrame(
              layout: FigmaAbsoluteLayoutProperties(width: 768, height: 224),
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
    ;
  }
}
