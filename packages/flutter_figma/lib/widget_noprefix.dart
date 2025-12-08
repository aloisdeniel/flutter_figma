library widgets;

import 'package:flutter_figma/src/widgets/appearance.dart';
import 'package:flutter_figma/src/widgets/vector.dart';

import 'src/widgets/widgets.dart';
import 'src/foundation/foundation.dart';

export 'package:flutter/widgets.dart'
    show
        StatelessWidget,
        StatefulWidget,
        InheritedWidget,
        BuildContext,
        Key,
        ValueKey,
        GlobalKey;

// Foundation

// Widgets
typedef Appearance = FigmaAppearance;
typedef Layout = FigmaLayout;
typedef LayoutProperties = FigmaLayoutProperties;
typedef Decorated = FigmaDecorated;
typedef Text = FigmaText;
typedef Frame = FigmaFrame;
typedef Filtered = FigmaFiltered;
typedef Clip = FigmaClip;
typedef Transformed = FigmaTransformed;
typedef Vector = FigmaVector;
