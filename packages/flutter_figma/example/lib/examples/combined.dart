part of '../main.dart';

class CombinedExample extends StatelessWidget implements Example {
  const CombinedExample({super.key});

  @override
  String get name => 'Combined';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FigmaLayout(
        layout: const FigmaLayoutProperties.auto(
          axis: Axis.vertical,
          referenceWidth: 400,
          referenceHeight: 900,
          itemSpacing: 0,
          padding: EdgeInsets.all(24),
        ),
        children: [
          // Dashboard Card with gradient header
          FigmaDecorated(
            shape: FigmaRectangleShape.all(20),
            decoration: const FigmaDecoration(
              fills: [SolidPaint(color: Color.fromRGBO(255, 255, 255, 1.0))],
            ),
            child: FigmaLayout(
              layout: const FigmaLayoutProperties.auto(
                axis: Axis.vertical,
                referenceWidth: 360,
                referenceHeight: 640,
                itemSpacing: 20,
                padding: EdgeInsets.only(bottom: 24),
              ),
              children: [
                // Gradient header
                FigmaPositioned.auto(
                  primaryAxisSizing: ChildSizingMode.hug,
                  child: ExampleHeader(),
                ),

                // Stats row
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FigmaLayout(
                    layout: const FigmaLayoutProperties.auto(
                      axis: Axis.horizontal,
                      referenceWidth: 10,
                      referenceHeight: 100,
                      itemSpacing: 12,
                    ),
                    children: [
                      ExampleStatCard(
                        label: 'Users',
                        value: '1.2K',
                        color: const Color.fromRGBO(16, 185, 129, 1.0),
                      ),
                      ExampleStatCard(
                        label: 'Revenue',
                        value: '\$5.6K',
                        color: const Color.fromRGBO(245, 158, 11, 1.0),
                      ),
                      ExampleStatCard(
                        label: 'Orders',
                        value: '892',
                        color: const Color.fromRGBO(239, 68, 68, 1.0),
                      ),
                    ],
                  ),
                ),

                // Activity section with transforms
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: FigmaDecorated(
                    shape: FigmaRectangleShape.all(16),
                    decoration: const FigmaDecoration(
                      fills: [
                        SolidPaint(color: Color.fromRGBO(249, 250, 251, 1.0)),
                      ],
                    ),
                    child: FigmaLayout(
                      layout: const FigmaLayoutProperties.auto(
                        axis: Axis.vertical,
                        referenceWidth: 312,
                        referenceHeight: 220,
                        itemSpacing: 16,
                        padding: EdgeInsets.symmetric(
                          vertical: 24,
                          horizontal: 20,
                        ),
                      ),
                      children: [
                        FigmaText(
                          'Recent Activity',
                          fills: [
                            SolidPaint(color: Color.fromRGBO(17, 24, 39, 1.0)),
                          ],
                          style: FigmaTextStyle.system(
                            weight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        ExampleActivityRow(
                          text: 'New order received',
                          time: '2 min ago',
                        ),
                        ExampleActivityRow(
                          text: 'Payment processed',
                          time: '15 min ago',
                        ),
                        ExampleActivityRow(
                          text: 'User registered',
                          time: '1 hour ago',
                        ),
                      ],
                    ),
                  ),
                ),

                // Nested transformed elements
                ExampleRotatedBoxes(),

                // Action buttons
                FigmaLayout(
                  layout: const FigmaLayoutProperties.auto(
                    axis: Axis.horizontal,
                    referenceWidth: 312,
                    referenceHeight: 48,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    itemSpacing: 12,
                    primaryAxisAlignItems: LayoutAlign.spaceBetween,
                  ),
                  children: [
                    ExampleButton(label: 'Cancel', isPrimary: false),
                    ExampleButton(label: 'Continue', isPrimary: true),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ExampleStatCard extends StatelessWidget {
  const ExampleStatCard({
    super.key,
    required this.label,
    required this.value,
    required this.color,
  });
  final String label;
  final String value;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return FigmaDecorated(
      shape: FigmaRectangleShape.all(12),
      decoration: FigmaDecoration(
        fills: [SolidPaint(color: color.withValues(alpha: 0.1))],
      ),
      child: FigmaLayout(
        layout: FigmaLayoutProperties.auto(
          axis: Axis.vertical,
          referenceWidth: 10,
          referenceHeight: 10,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        ),
        children: [
          Text(
            value,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            label,
            style: TextStyle(fontSize: 12, color: color.withValues(alpha: 0.8)),
          ),
        ],
      ),
    );
  }
}

class ExampleRotatedBoxes extends StatelessWidget {
  const ExampleRotatedBoxes({super.key});

  @override
  Widget build(BuildContext context) {
    return FigmaLayout(
      layout: const FigmaLayoutProperties.auto(
        axis: Axis.horizontal,
        referenceWidth: 312,
        referenceHeight: 80,
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemSpacing: 12,
        primaryAxisAlignItems: LayoutAlign.center,
        counterAxisAlignItems: LayoutAlign.center,
      ),
      children: [
        FigmaTransformed(
          transform: const FigmaTransform(0.866, 0.5, 0, -0.5, 0.866, 0),
          child: FigmaDecorated(
            shape: FigmaRectangleShape.all(12),
            decoration: const FigmaDecoration(
              fills: [SolidPaint(color: Color.fromRGBO(239, 68, 68, 1.0))],
            ),
            child: SizedBox(width: 60, height: 60),
          ),
        ),
        FigmaDecorated(
          shape: FigmaRectangleShape.all(12),
          decoration: const FigmaDecoration(
            fills: [
              RadialGradientPaint(
                gradientStops: [
                  ColorStop(
                    position: 0.0,
                    color: Color.fromRGBO(99, 102, 241, 1.0),
                  ),
                  ColorStop(
                    position: 1.0,
                    color: Color.fromRGBO(139, 92, 246, 1.0),
                  ),
                ],
              ),
            ],
          ),
          child: SizedBox(width: 60, height: 60),
        ),
        FigmaTransformed(
          transform: const FigmaTransform(1, 0, 0, 0, -1, 0),
          child: FigmaDecorated(
            shape: FigmaRectangleShape.all(12),
            decoration: const FigmaDecoration(
              fills: [
                AngularGradientPaint(
                  gradientStops: [
                    ColorStop(
                      position: 0.0,
                      color: Color.fromRGBO(245, 158, 11, 1.0),
                    ),
                    ColorStop(
                      position: 0.5,
                      color: Color.fromRGBO(239, 68, 68, 1.0),
                    ),
                    ColorStop(
                      position: 1.0,
                      color: Color.fromRGBO(245, 158, 11, 1.0),
                    ),
                  ],
                ),
              ],
            ),
            child: SizedBox(width: 60, height: 60),
          ),
        ),
      ],
    );
  }
}

class ExampleHeader extends StatelessWidget {
  const ExampleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return FigmaDecorated(
      shape: FigmaRectangleShape.corners(
        topLeftRadius: 20,
        topRightRadius: 20,
        bottomLeftRadius: 0,
        bottomRightRadius: 0,
      ),
      decoration: const FigmaDecoration(
        fills: [
          LinearGradientPaint(
            gradientStops: [
              ColorStop(
                position: 0.0,
                color: Color.fromRGBO(99, 102, 241, 1.0),
              ),
              ColorStop(
                position: 1.0,
                color: Color.fromRGBO(139, 92, 246, 1.0),
              ),
            ],
          ),
        ],
      ),
      child: FigmaLayout(
        layout: const FigmaLayoutProperties.auto(
          axis: Axis.vertical,
          referenceWidth: 360,
          referenceHeight: 120,
          counterAxisAlignItems: LayoutAlign.min,
          primaryAxisAlignItems: LayoutAlign.center,
          itemSpacing: 8,
          padding: EdgeInsets.all(24),
        ),
        children: const [
          Text(
            'Dashboard',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            'Welcome back! Here\'s your overview',
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class ExampleActivityRow extends StatelessWidget {
  const ExampleActivityRow({super.key, required this.text, required this.time});

  final String text;
  final String time;

  @override
  Widget build(BuildContext context) {
    return FigmaLayout(
      layout: FigmaLayoutProperties.auto(
        axis: Axis.horizontal,
        counterAxisAlignItems: LayoutAlign.center,
        itemSpacing: 12,
        referenceWidth: 100,
        referenceHeight: 100,
      ),
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 14,
            color: Color.fromRGBO(55, 65, 81, 1.0),
          ),
        ),
        Text(
          time,
          style: const TextStyle(
            fontSize: 12,
            color: Color.fromRGBO(156, 163, 175, 1.0),
          ),
        ),
      ],
    );
  }
}

class ExampleButton extends StatelessWidget {
  const ExampleButton({
    super.key,
    required this.label,
    required this.isPrimary,
  });

  final String label;
  final bool isPrimary;

  @override
  Widget build(BuildContext context) {
    return FigmaDecorated(
      shape: FigmaRectangleShape.all(8),
      stroke: isPrimary
          ? const FigmaStroke.uniform(weight: 0)
          : const FigmaStroke.uniform(weight: 2),
      decoration: FigmaDecoration(
        fills: isPrimary
            ? const [SolidPaint(color: Color.fromRGBO(99, 102, 241, 1.0))]
            : [],
        strokes: isPrimary
            ? []
            : const [SolidPaint(color: Color.fromRGBO(107, 114, 128, 1.0))],
      ),
      child: FigmaLayout(
        layout: FigmaLayoutProperties.auto(
          axis: Axis.horizontal,
          referenceWidth: 10,
          referenceHeight: 48,
          counterAxisAlignItems: LayoutAlign.center,
          padding: EdgeInsets.symmetric(horizontal: 24),
        ),
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: isPrimary
                  ? Colors.white
                  : const Color.fromRGBO(107, 114, 128, 1.0),
            ),
          ),
        ],
      ),
    );
  }
}
