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
          primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
          itemSpacing: 0,
        ),
        children: [
          const SizedBox(height: 20),
          // Dashboard Card with gradient header
          FigmaDecorated(
            shape: const FigmaRectangleShape.all(20),
            decoration: const FigmaDecoration(
              fills: [SolidPaint(color: Color.fromRGBO(255, 255, 255, 1.0))],
            ),
            child: FigmaSized(
              size: const ChildSize(width: 360, height: 640),
              child: FigmaLayout(
                layout: const FigmaLayoutProperties.auto(
                  axis: Axis.vertical,
                  referenceWidth: 360,
                  referenceHeight: 640,
                  primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                  itemSpacing: 20,
                  paddingTop: 0,
                  paddingBottom: 24,
                  paddingLeft: 0,
                  paddingRight: 0,
                ),
                children: [
                  // Gradient header
                  FigmaDecorated(
                    shape: const FigmaRectangleShape(
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
                    child: FigmaSized(
                      size: const ChildSize(height: 120, width: 100),
                      child: FigmaLayout(
                        layout: const FigmaLayoutProperties.auto(
                          axis: Axis.vertical,
                          referenceWidth: 360,
                          referenceHeight: 120,
                          primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
                          counterAxisAlignItems: LayoutAlign.min,
                          primaryAxisAlignItems: LayoutAlign.center,
                          itemSpacing: 8,
                          paddingLeft: 24,
                          paddingRight: 24,
                          paddingTop: 24,
                          paddingBottom: 24,
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
                    ),
                  ),

                  // Stats row
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: FigmaLayout(
                      layout: const FigmaLayoutProperties.auto(
                        axis: Axis.horizontal,
                        referenceWidth: 312,
                        referenceHeight: 100,
                        primaryAxisSizingMode: PrimaryAxisSizingMode.fixed,
                        counterAxisSizingMode: CounterAxisSizingMode.fixed,
                        itemSpacing: 12,
                      ),
                      children: [
                        _buildStatCard(
                          'Users',
                          '1.2K',
                          const Color.fromRGBO(16, 185, 129, 1.0),
                        ),
                        _buildStatCard(
                          'Revenue',
                          '\$5.6K',
                          const Color.fromRGBO(245, 158, 11, 1.0),
                        ),
                        _buildStatCard(
                          'Orders',
                          '892',
                          const Color.fromRGBO(239, 68, 68, 1.0),
                        ),
                      ],
                    ),
                  ),

                  // Activity section with transforms
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: FigmaDecorated(
                      shape: const FigmaRectangleShape.all(16),
                      decoration: const FigmaDecoration(
                        fills: [
                          SolidPaint(color: Color.fromRGBO(249, 250, 251, 1.0)),
                        ],
                      ),
                      child: FigmaSized(
                        size: const ChildSize(height: 220, width: 100),
                        child: FigmaLayout(
                          layout: const FigmaLayoutProperties.auto(
                            axis: Axis.vertical,
                            referenceWidth: 312,
                            referenceHeight: 220,
                            itemSpacing: 16,
                            paddingTop: 24,
                            paddingBottom: 24,
                            paddingLeft: 20,
                            paddingRight: 20,
                          ),
                          children: [
                            const Text(
                              'Recent Activity',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(17, 24, 39, 1.0),
                              ),
                            ),
                            _buildActivityRow(
                              'New order received',
                              '2 min ago',
                            ),
                            _buildActivityRow(
                              'Payment processed',
                              '15 min ago',
                            ),
                            _buildActivityRow('User registered', '1 hour ago'),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Nested transformed elements
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: FigmaLayout(
                      layout: const FigmaLayoutProperties.auto(
                        axis: Axis.horizontal,
                        referenceWidth: 312,
                        referenceHeight: 80,
                        primaryAxisSizingMode: PrimaryAxisSizingMode.fixed,
                        counterAxisSizingMode: CounterAxisSizingMode.fixed,
                        itemSpacing: 12,
                        primaryAxisAlignItems: LayoutAlign.center,
                        counterAxisAlignItems: LayoutAlign.center,
                      ),
                      children: [
                        FigmaTransformed(
                          transform: const FigmaTransform(
                            0.866,
                            0.5,
                            0,
                            -0.5,
                            0.866,
                            0,
                          ),
                          child: FigmaDecorated(
                            shape: const FigmaRectangleShape.all(12),
                            decoration: const FigmaDecoration(
                              fills: [
                                SolidPaint(
                                  color: Color.fromRGBO(239, 68, 68, 1.0),
                                ),
                              ],
                            ),
                            child: const FigmaSized(
                              size: ChildSize(width: 60, height: 60),
                              child: SizedBox.shrink(),
                            ),
                          ),
                        ),
                        FigmaDecorated(
                          shape: const FigmaRectangleShape.all(12),
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
                          child: const FigmaSized(
                            size: ChildSize(width: 60, height: 60),
                            child: SizedBox.shrink(),
                          ),
                        ),
                        FigmaTransformed(
                          transform: const FigmaTransform(1, 0, 0, 0, -1, 0),
                          child: FigmaDecorated(
                            shape: const FigmaRectangleShape.all(12),
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
                            child: const FigmaSized(
                              size: ChildSize(width: 60, height: 60),
                              child: SizedBox.shrink(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Action buttons
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: FigmaLayout(
                      layout: const FigmaLayoutProperties.auto(
                        axis: Axis.horizontal,
                        referenceWidth: 312,
                        referenceHeight: 48,
                        primaryAxisSizingMode: PrimaryAxisSizingMode.fixed,
                        counterAxisSizingMode: CounterAxisSizingMode.fixed,
                        itemSpacing: 12,
                        primaryAxisAlignItems: LayoutAlign.spaceBetween,
                      ),
                      children: [
                        _buildButton('Cancel', false),
                        _buildButton('Continue', true),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const FigmaSized(
            size: ChildSize(height: 40, width: 100),
            child: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String label, String value, Color color) {
    return Expanded(
      child: FigmaDecorated(
        shape: const FigmaRectangleShape.all(12),
        decoration: FigmaDecoration(
          fills: [SolidPaint(color: color.withValues(alpha: 0.1))],
        ),
        child: FigmaLayout(
          layout: FigmaLayoutProperties.auto(
            axis: Axis.vertical,
            referenceWidth: 10,
            referenceHeight: 10,
            primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
            counterAxisSizingMode: CounterAxisSizingMode.auto,
            paddingLeft: 24,
            paddingRight: 24,
            paddingTop: 16,
            paddingBottom: 16,
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
              style: TextStyle(
                fontSize: 12,
                color: color.withValues(alpha: 0.8),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActivityRow(String text, String time) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

  Widget _buildButton(String label, bool isPrimary) {
    return Expanded(
      child: FigmaDecorated(
        shape: const FigmaRectangleShape.all(8),
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
            primaryAxisSizingMode: PrimaryAxisSizingMode.auto,
            counterAxisAlignItems: LayoutAlign.center,
            paddingLeft: 24,
            paddingRight: 24,
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
      ),
    );
  }
}
