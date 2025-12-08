// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'bindings.dart';
import 'bindings_conversions.dart';
import 'package:flutter_figma_preview/services/interpreter/bindings.eval.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [FigmaTransform]
class $FigmaTransform implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaTransform.',
      $FigmaTransform.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaTransform.identity*g',
      $FigmaTransform.$identity,
    );
  }

  /// Compile-time type specification of [$FigmaTransform]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaTransform',
  );

  /// Compile-time type declaration of [$FigmaTransform]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaTransform]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'm00',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'm01',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'm02',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'm10',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'm11',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'm12',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'm00': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'm01': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'm02': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'm10': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'm11': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'm12': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'identity': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaTransform',
            ),
            [],
          ),
        ),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaTransform.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaTransform.wrap(
      FigmaTransform(
        args[0]!.$value,
        args[1]!.$value,
        args[2]!.$value,
        args[3]!.$value,
        args[4]!.$value,
        args[5]!.$value,
      ),
    );
  }

  /// Wrapper for the [FigmaTransform.identity] getter
  static $Value? $identity(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final value = FigmaTransform.identity;
    return $FigmaTransform.wrap(value);
  }

  final $Instance _superclass;

  @override
  final FigmaTransform $value;

  @override
  FigmaTransform get $reified => $value;

  /// Wrap a [FigmaTransform] in a [$FigmaTransform]
  $FigmaTransform.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'm00':
        final _m00 = $value.m00;
        return $double(_m00);

      case 'm01':
        final _m01 = $value.m01;
        return $double(_m01);

      case 'm02':
        final _m02 = $value.m02;
        return $double(_m02);

      case 'm10':
        final _m10 = $value.m10;
        return $double(_m10);

      case 'm11':
        final _m11 = $value.m11;
        return $double(_m11);

      case 'm12':
        final _m12 = $value.m12;
        return $double(_m12);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaRectangleShape]
class $FigmaRectangleShape implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaRectangleShape.',
      $FigmaRectangleShape.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaRectangleShape.all',
      $FigmaRectangleShape.$all,
    );
  }

  /// Compile-time type specification of [$FigmaRectangleShape]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaRectangleShape',
  );

  /// Compile-time type declaration of [$FigmaRectangleShape]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaRectangleShape]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'topLeftRadius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'topRightRadius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'bottomLeftRadius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'bottomRightRadius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'smoothing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'all': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'smoothing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'topLeftRadius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'topRightRadius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'bottomLeftRadius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'bottomRightRadius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'smoothing': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaRectangleShape.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaRectangleShape.wrap(
      FigmaRectangleShape(
        topLeftRadius: args[0]?.$value ?? 0.0,
        topRightRadius: args[1]?.$value ?? 0.0,
        bottomLeftRadius: args[2]?.$value ?? 0.0,
        bottomRightRadius: args[3]?.$value ?? 0.0,
        smoothing: args[4]?.$value ?? 0.0,
      ),
    );
  }

  /// Wrapper for the [FigmaRectangleShape.all] constructor
  static $Value? $all(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaRectangleShape.wrap(
      FigmaRectangleShape.all(
        args[0]!.$value,
        smoothing: args[1]?.$value ?? 0.0,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaRectangleShape $value;

  @override
  FigmaRectangleShape get $reified => $value;

  /// Wrap a [FigmaRectangleShape] in a [$FigmaRectangleShape]
  $FigmaRectangleShape.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'topLeftRadius':
        final _topLeftRadius = $value.topLeftRadius;
        return $double(_topLeftRadius);

      case 'topRightRadius':
        final _topRightRadius = $value.topRightRadius;
        return $double(_topRightRadius);

      case 'bottomLeftRadius':
        final _bottomLeftRadius = $value.bottomLeftRadius;
        return $double(_bottomLeftRadius);

      case 'bottomRightRadius':
        final _bottomRightRadius = $value.bottomRightRadius;
        return $double(_bottomRightRadius);

      case 'smoothing':
        final _smoothing = $value.smoothing;
        return $double(_smoothing);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [FigmaStrokeAlignment]
class $FigmaStrokeAlignment implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaStrokeAlignment',
      $FigmaStrokeAlignment._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaStrokeAlignment.values*g',
      $FigmaStrokeAlignment.$values,
    );
  }

  /// Compile-time type specification of [$FigmaStrokeAlignment]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaStrokeAlignment',
  );

  /// Compile-time type declaration of [$FigmaStrokeAlignment]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaStrokeAlignment]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['inside', 'center', 'outside'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'inside': $FigmaStrokeAlignment.wrap(FigmaStrokeAlignment.inside),
    'center': $FigmaStrokeAlignment.wrap(FigmaStrokeAlignment.center),
    'outside': $FigmaStrokeAlignment.wrap(FigmaStrokeAlignment.outside),
  };

  /// Wrapper for the [FigmaStrokeAlignment.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = FigmaStrokeAlignment.values;
    return $List.view(value, (e) => $FigmaStrokeAlignment.wrap(e));
  }

  final $Instance _superclass;

  @override
  final FigmaStrokeAlignment $value;

  @override
  FigmaStrokeAlignment get $reified => $value;

  /// Wrap a [FigmaStrokeAlignment] in a [$FigmaStrokeAlignment]
  $FigmaStrokeAlignment.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [FigmaStrokeJoin]
class $FigmaStrokeJoin implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaStrokeJoin',
      $FigmaStrokeJoin._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaStrokeJoin.values*g',
      $FigmaStrokeJoin.$values,
    );
  }

  /// Compile-time type specification of [$FigmaStrokeJoin]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaStrokeJoin',
  );

  /// Compile-time type declaration of [$FigmaStrokeJoin]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaStrokeJoin]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['miter', 'bevel', 'round'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'miter': $FigmaStrokeJoin.wrap(FigmaStrokeJoin.miter),
    'bevel': $FigmaStrokeJoin.wrap(FigmaStrokeJoin.bevel),
    'round': $FigmaStrokeJoin.wrap(FigmaStrokeJoin.round),
  };

  /// Wrapper for the [FigmaStrokeJoin.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = FigmaStrokeJoin.values;
    return $List.view(value, (e) => $FigmaStrokeJoin.wrap(e));
  }

  final $Instance _superclass;

  @override
  final FigmaStrokeJoin $value;

  @override
  FigmaStrokeJoin get $reified => $value;

  /// Wrap a [FigmaStrokeJoin] in a [$FigmaStrokeJoin]
  $FigmaStrokeJoin.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaStroke]
class $FigmaStroke implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaStroke.',
      $FigmaStroke.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaStroke.uniform',
      $FigmaStroke.$uniform,
    );
  }

  /// Compile-time type specification of [$FigmaStroke]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaStroke',
  );

  /// Compile-time type declaration of [$FigmaStroke]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaStroke]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'topWeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'bottomWeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'leftWeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'rightWeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'join',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaStrokeJoin',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'alignment',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaStrokeAlignment',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'uniform': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'weight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'join',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaStrokeJoin',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'alignment',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaStrokeAlignment',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'topWeight': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'bottomWeight': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'rightWeight': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'leftWeight': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'join': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaStrokeJoin',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'alignment': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaStrokeAlignment',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaStroke.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaStroke.wrap(
      FigmaStroke(
        topWeight: args[0]?.$value ?? 0.0,
        bottomWeight: args[1]?.$value ?? 0.0,
        leftWeight: args[2]?.$value ?? 0.0,
        rightWeight: args[3]?.$value ?? 0.0,
        join: args[4]?.$value ?? FigmaStrokeJoin.miter,
        alignment: args[5]?.$value ?? FigmaStrokeAlignment.center,
      ),
    );
  }

  /// Wrapper for the [FigmaStroke.uniform] constructor
  static $Value? $uniform(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaStroke.wrap(
      FigmaStroke.uniform(
        weight: args[0]?.$value ?? 0.0,
        join: args[1]?.$value ?? FigmaStrokeJoin.miter,
        alignment: args[2]?.$value ?? FigmaStrokeAlignment.center,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaStroke $value;

  @override
  FigmaStroke get $reified => $value;

  /// Wrap a [FigmaStroke] in a [$FigmaStroke]
  $FigmaStroke.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'topWeight':
        final _topWeight = $value.topWeight;
        return $double(_topWeight);

      case 'bottomWeight':
        final _bottomWeight = $value.bottomWeight;
        return $double(_bottomWeight);

      case 'rightWeight':
        final _rightWeight = $value.rightWeight;
        return $double(_rightWeight);

      case 'leftWeight':
        final _leftWeight = $value.leftWeight;
        return $double(_leftWeight);

      case 'join':
        final _join = $value.join;
        return $FigmaStrokeJoin.wrap(_join);

      case 'alignment':
        final _alignment = $value.alignment;
        return $FigmaStrokeAlignment.wrap(_alignment);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaPaint]
class $FigmaPaint implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaPaint.solid',
      $FigmaPaint.$solid,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaPaint.linearGradient',
      $FigmaPaint.$linearGradient,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaPaint.radialGradient',
      $FigmaPaint.$radialGradient,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaPaint.angularGradient',
      $FigmaPaint.$angularGradient,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaPaint.diamondGradient',
      $FigmaPaint.$diamondGradient,
    );
  }

  /// Compile-time type specification of [$FigmaPaint]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaPaint',
  );

  /// Compile-time type declaration of [$FigmaPaint]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaPaint]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'solid': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'color',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Color',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'opacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'linearGradient': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'gradientStops',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'ColorStop',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'gradientTransform',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTransform',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'opacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'radialGradient': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'gradientStops',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'ColorStop',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'gradientTransform',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTransform',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'opacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'angularGradient': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'gradientStops',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'ColorStop',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'gradientTransform',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTransform',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'opacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'diamondGradient': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'gradientStops',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'ColorStop',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'gradientTransform',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTransform',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'opacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'type': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaPaintType',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'solidColor': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Color',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gradientStops': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'ColorStop',
                ),
                [],
              ),
            ),
          ]),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gradientTransform': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaTransform',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'visible': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'opacity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'blendMode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'BlendMode',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaPaint.solid] constructor
  static $Value? $solid(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaPaint.wrap(
      FigmaPaint.solid(
        color: args[0]!.$value,
        visible: args[1]?.$value ?? true,
        opacity: args[2]?.$value ?? 1.0,
        blendMode: args[3]?.$value ?? BlendMode.normal,
      ),
    );
  }

  /// Wrapper for the [FigmaPaint.linearGradient] constructor
  static $Value? $linearGradient(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaPaint.wrap(
      FigmaPaint.linearGradient(
        gradientStops: (args[0]!.$reified as List).cast(),
        gradientTransform: args[1]?.$value ?? FigmaTransform.identity,
        visible: args[2]?.$value ?? true,
        opacity: args[3]?.$value ?? 1.0,
        blendMode: args[4]?.$value ?? BlendMode.normal,
      ),
    );
  }

  /// Wrapper for the [FigmaPaint.radialGradient] constructor
  static $Value? $radialGradient(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaPaint.wrap(
      FigmaPaint.radialGradient(
        gradientStops: (args[0]!.$reified as List).cast(),
        gradientTransform: args[1]?.$value ?? FigmaTransform.identity,
        visible: args[2]?.$value ?? true,
        opacity: args[3]?.$value ?? 1.0,
        blendMode: args[4]?.$value ?? BlendMode.normal,
      ),
    );
  }

  /// Wrapper for the [FigmaPaint.angularGradient] constructor
  static $Value? $angularGradient(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaPaint.wrap(
      FigmaPaint.angularGradient(
        gradientStops: (args[0]!.$reified as List).cast(),
        gradientTransform: args[1]?.$value ?? FigmaTransform.identity,
        visible: args[2]?.$value ?? true,
        opacity: args[3]?.$value ?? 1.0,
        blendMode: args[4]?.$value ?? BlendMode.normal,
      ),
    );
  }

  /// Wrapper for the [FigmaPaint.diamondGradient] constructor
  static $Value? $diamondGradient(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaPaint.wrap(
      FigmaPaint.diamondGradient(
        gradientStops: (args[0]!.$reified as List).cast(),
        gradientTransform: args[1]!.$value,
        visible: args[2]?.$value ?? true,
        opacity: args[3]?.$value ?? 1.0,
        blendMode: args[4]?.$value ?? BlendMode.normal,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaPaint $value;

  @override
  FigmaPaint get $reified => $value;

  /// Wrap a [FigmaPaint] in a [$FigmaPaint]
  $FigmaPaint.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        final _type = $value.type;
        return runtime.wrapAlways(_type);

      case 'solidColor':
        final _solidColor = $value.solidColor;
        return _solidColor == null ? const $null() : $Color.wrap(_solidColor);

      case 'gradientStops':
        final _gradientStops = $value.gradientStops;
        return _gradientStops == null
            ? const $null()
            : $List.view(_gradientStops, (e) => $ColorStop.wrap(e));

      case 'gradientTransform':
        final _gradientTransform = $value.gradientTransform;
        return _gradientTransform == null
            ? const $null()
            : $FigmaTransform.wrap(_gradientTransform);

      case 'visible':
        final _visible = $value.visible;
        return $bool(_visible);

      case 'opacity':
        final _opacity = $value.opacity;
        return $double(_opacity);

      case 'blendMode':
        final _blendMode = $value.blendMode;
        return $BlendMode.wrap(_blendMode);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [ColorStop]
class $ColorStop implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ColorStop.',
      $ColorStop.$new,
    );
  }

  /// Compile-time type specification of [$ColorStop]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'ColorStop',
  );

  /// Compile-time type declaration of [$ColorStop]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ColorStop]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'position',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'color',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Color',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'position': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'color': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Color',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [ColorStop.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $ColorStop.wrap(
      ColorStop(position: args[0]!.$value, color: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final ColorStop $value;

  @override
  ColorStop get $reified => $value;

  /// Wrap a [ColorStop] in a [$ColorStop]
  $ColorStop.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'position':
        final _position = $value.position;
        return $double(_position);

      case 'color':
        final _color = $value.color;
        return $Color.wrap(_color);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaDecoration]
class $FigmaDecoration implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaDecoration.',
      $FigmaDecoration.$new,
    );
  }

  /// Compile-time type specification of [$FigmaDecoration]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaDecoration',
  );

  /// Compile-time type declaration of [$FigmaDecoration]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaDecoration]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'fills',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaPaint',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'strokes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaPaint',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'fills': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaPaint',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'strokes': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaPaint',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaDecoration.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaDecoration.wrap(
      FigmaDecoration(
        fills: (args[0]?.$reified ?? const [] as List?)?.cast(),
        strokes: (args[1]?.$reified ?? const [] as List?)?.cast(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaDecoration $value;

  @override
  FigmaDecoration get $reified => $value;

  /// Wrap a [FigmaDecoration] in a [$FigmaDecoration]
  $FigmaDecoration.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'fills':
        final _fills = $value.fills;
        return $List.view(_fills, (e) => $FigmaPaint.wrap(e));

      case 'strokes':
        final _strokes = $value.strokes;
        return $List.view(_strokes, (e) => $FigmaPaint.wrap(e));
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [Widget]
class $Widget implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {}

  /// Compile-time type specification of [$Widget]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'Widget',
  );

  /// Compile-time type declaration of [$Widget]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Widget]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type, isAbstract: true),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  final $Instance _superclass;

  @override
  final Widget $value;

  @override
  Widget get $reified => $value;

  /// Wrap a [Widget] in a [$Widget]
  $Widget.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [Axis]
class $Axis implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'Axis',
      $Axis._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'Axis.values*g',
      $Axis.$values,
    );
  }

  /// Compile-time type specification of [$Axis]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'Axis',
  );

  /// Compile-time type declaration of [$Axis]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Axis]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['vertical', 'horizontal'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'vertical': $Axis.wrap(Axis.vertical),
    'horizontal': $Axis.wrap(Axis.horizontal),
  };

  /// Wrapper for the [Axis.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = Axis.values;
    return $List.view(value, (e) => $Axis.wrap(e));
  }

  final $Instance _superclass;

  @override
  final Axis $value;

  @override
  Axis get $reified => $value;

  /// Wrap a [Axis] in a [$Axis]
  $Axis.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [OverflowDirection]
class $OverflowDirection implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'OverflowDirection',
      $OverflowDirection._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'OverflowDirection.values*g',
      $OverflowDirection.$values,
    );
  }

  /// Compile-time type specification of [$OverflowDirection]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'OverflowDirection',
  );

  /// Compile-time type declaration of [$OverflowDirection]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$OverflowDirection]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['none', 'horizontal', 'vertical', 'both'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'none': $OverflowDirection.wrap(OverflowDirection.none),
    'horizontal': $OverflowDirection.wrap(OverflowDirection.horizontal),
    'vertical': $OverflowDirection.wrap(OverflowDirection.vertical),
    'both': $OverflowDirection.wrap(OverflowDirection.both),
  };

  /// Wrapper for the [OverflowDirection.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = OverflowDirection.values;
    return $List.view(value, (e) => $OverflowDirection.wrap(e));
  }

  final $Instance _superclass;

  @override
  final OverflowDirection $value;

  @override
  OverflowDirection get $reified => $value;

  /// Wrap a [OverflowDirection] in a [$OverflowDirection]
  $OverflowDirection.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [LayoutMode]
class $LayoutMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LayoutMode',
      $LayoutMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LayoutMode.values*g',
      $LayoutMode.$values,
    );
  }

  /// Compile-time type specification of [$LayoutMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'LayoutMode',
  );

  /// Compile-time type declaration of [$LayoutMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LayoutMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['freeform', 'horizontal', 'vertical', 'grid'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'freeform': $LayoutMode.wrap(LayoutMode.freeform),
    'horizontal': $LayoutMode.wrap(LayoutMode.horizontal),
    'vertical': $LayoutMode.wrap(LayoutMode.vertical),
    'grid': $LayoutMode.wrap(LayoutMode.grid),
  };

  /// Wrapper for the [LayoutMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LayoutMode.values;
    return $List.view(value, (e) => $LayoutMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final LayoutMode $value;

  @override
  LayoutMode get $reified => $value;

  /// Wrap a [LayoutMode] in a [$LayoutMode]
  $LayoutMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [PrimaryAxisSizingMode]
class $PrimaryAxisSizingMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'PrimaryAxisSizingMode',
      $PrimaryAxisSizingMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'PrimaryAxisSizingMode.values*g',
      $PrimaryAxisSizingMode.$values,
    );
  }

  /// Compile-time type specification of [$PrimaryAxisSizingMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'PrimaryAxisSizingMode',
  );

  /// Compile-time type declaration of [$PrimaryAxisSizingMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$PrimaryAxisSizingMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['fixed', 'auto'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'fixed': $PrimaryAxisSizingMode.wrap(PrimaryAxisSizingMode.fixed),
    'auto': $PrimaryAxisSizingMode.wrap(PrimaryAxisSizingMode.auto),
  };

  /// Wrapper for the [PrimaryAxisSizingMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = PrimaryAxisSizingMode.values;
    return $List.view(value, (e) => $PrimaryAxisSizingMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final PrimaryAxisSizingMode $value;

  @override
  PrimaryAxisSizingMode get $reified => $value;

  /// Wrap a [PrimaryAxisSizingMode] in a [$PrimaryAxisSizingMode]
  $PrimaryAxisSizingMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [CounterAxisSizingMode]
class $CounterAxisSizingMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'CounterAxisSizingMode',
      $CounterAxisSizingMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'CounterAxisSizingMode.values*g',
      $CounterAxisSizingMode.$values,
    );
  }

  /// Compile-time type specification of [$CounterAxisSizingMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'CounterAxisSizingMode',
  );

  /// Compile-time type declaration of [$CounterAxisSizingMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$CounterAxisSizingMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['fixed', 'auto'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'fixed': $CounterAxisSizingMode.wrap(CounterAxisSizingMode.fixed),
    'auto': $CounterAxisSizingMode.wrap(CounterAxisSizingMode.auto),
  };

  /// Wrapper for the [CounterAxisSizingMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = CounterAxisSizingMode.values;
    return $List.view(value, (e) => $CounterAxisSizingMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final CounterAxisSizingMode $value;

  @override
  CounterAxisSizingMode get $reified => $value;

  /// Wrap a [CounterAxisSizingMode] in a [$CounterAxisSizingMode]
  $CounterAxisSizingMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [LayoutWrap]
class $LayoutWrap implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LayoutWrap',
      $LayoutWrap._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LayoutWrap.values*g',
      $LayoutWrap.$values,
    );
  }

  /// Compile-time type specification of [$LayoutWrap]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'LayoutWrap',
  );

  /// Compile-time type declaration of [$LayoutWrap]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LayoutWrap]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['noWrap', 'wrap'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'noWrap': $LayoutWrap.wrap(LayoutWrap.noWrap),
    'wrap': $LayoutWrap.wrap(LayoutWrap.wrap),
  };

  /// Wrapper for the [LayoutWrap.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LayoutWrap.values;
    return $List.view(value, (e) => $LayoutWrap.wrap(e));
  }

  final $Instance _superclass;

  @override
  final LayoutWrap $value;

  @override
  LayoutWrap get $reified => $value;

  /// Wrap a [LayoutWrap] in a [$LayoutWrap]
  $LayoutWrap.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [LayoutAlign]
class $LayoutAlign implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LayoutAlign',
      $LayoutAlign._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LayoutAlign.values*g',
      $LayoutAlign.$values,
    );
  }

  /// Compile-time type specification of [$LayoutAlign]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'LayoutAlign',
  );

  /// Compile-time type declaration of [$LayoutAlign]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LayoutAlign]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['min', 'center', 'max', 'stretch', 'spaceBetween'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'min': $LayoutAlign.wrap(LayoutAlign.min),
    'center': $LayoutAlign.wrap(LayoutAlign.center),
    'max': $LayoutAlign.wrap(LayoutAlign.max),
    'stretch': $LayoutAlign.wrap(LayoutAlign.stretch),
    'spaceBetween': $LayoutAlign.wrap(LayoutAlign.spaceBetween),
  };

  /// Wrapper for the [LayoutAlign.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LayoutAlign.values;
    return $List.view(value, (e) => $LayoutAlign.wrap(e));
  }

  final $Instance _superclass;

  @override
  final LayoutAlign $value;

  @override
  LayoutAlign get $reified => $value;

  /// Wrap a [LayoutAlign] in a [$LayoutAlign]
  $LayoutAlign.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [ChildSizingMode]
class $ChildSizingMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ChildSizingMode',
      $ChildSizingMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ChildSizingMode.values*g',
      $ChildSizingMode.$values,
    );
  }

  /// Compile-time type specification of [$ChildSizingMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'ChildSizingMode',
  );

  /// Compile-time type declaration of [$ChildSizingMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ChildSizingMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['fixed', 'hug'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'fixed': $ChildSizingMode.wrap(ChildSizingMode.fixed),
    'hug': $ChildSizingMode.wrap(ChildSizingMode.hug),
  };

  /// Wrapper for the [ChildSizingMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = ChildSizingMode.values;
    return $List.view(value, (e) => $ChildSizingMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final ChildSizingMode $value;

  @override
  ChildSizingMode get $reified => $value;

  /// Wrap a [ChildSizingMode] in a [$ChildSizingMode]
  $ChildSizingMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [EdgeInsets]
class $EdgeInsets implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'EdgeInsets.only',
      $EdgeInsets.$only,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'EdgeInsets.zero*g',
      $EdgeInsets.$zero,
    );
  }

  /// Compile-time type specification of [$EdgeInsets]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'EdgeInsets',
  );

  /// Compile-time type declaration of [$EdgeInsets]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$EdgeInsets]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'only': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'top',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'bottom',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'left',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'right',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'top': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'bottom': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'left': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'right': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'zero': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'EdgeInsets',
            ),
            [],
          ),
        ),
        isStatic: true,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [EdgeInsets.only] constructor
  static $Value? $only(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $EdgeInsets.wrap(
      EdgeInsets.only(
        top: args[0]?.$value ?? 0,
        bottom: args[1]?.$value ?? 0,
        left: args[2]?.$value ?? 0,
        right: args[3]?.$value ?? 0,
      ),
    );
  }

  /// Wrapper for the [EdgeInsets.zero] getter
  static $Value? $zero(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = EdgeInsets.zero;
    return $EdgeInsets.wrap(value);
  }

  final $Instance _superclass;

  @override
  final EdgeInsets $value;

  @override
  EdgeInsets get $reified => $value;

  /// Wrap a [EdgeInsets] in a [$EdgeInsets]
  $EdgeInsets.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'top':
        final _top = $value.top;
        return $double(_top);

      case 'bottom':
        final _bottom = $value.bottom;
        return $double(_bottom);

      case 'left':
        final _left = $value.left;
        return $double(_left);

      case 'right':
        final _right = $value.right;
        return $double(_right);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaLayoutProperties]
class $FigmaLayoutProperties implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaLayoutProperties.auto',
      $FigmaLayoutProperties.$auto,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaLayoutProperties.freeform',
      $FigmaLayoutProperties.$freeform,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaLayoutProperties.grid',
      $FigmaLayoutProperties.$grid,
    );
  }

  /// Compile-time type specification of [$FigmaLayoutProperties]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaLayoutProperties',
  );

  /// Compile-time type declaration of [$FigmaLayoutProperties]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaLayoutProperties]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'auto': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'referenceWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'referenceHeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'axis',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Axis',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'primaryAxisSizingMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'PrimaryAxisSizingMode',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'counterAxisSizingMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'CounterAxisSizingMode',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'primaryAxisAlignItems',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'LayoutAlign',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'counterAxisAlignItems',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'LayoutAlign',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'layoutWrap',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'LayoutWrap',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'itemSpacing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'counterAxisSpacing',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'freeform': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'referenceWidth',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'referenceHeight',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'grid': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'columnCount',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'rowCount',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              true,
            ),

            BridgeParameter(
              'columns',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'GridTrack',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'rows',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'GridTrack',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'columnGap',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'rowGap',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'padding',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'EdgeInsets',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'type': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaLayoutPropertiesType',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'autoReferenceWidth': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoReferenceHeight': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoAxis': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Axis',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoPrimaryAxisSizingMode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'PrimaryAxisSizingMode',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoCounterAxisSizingMode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'CounterAxisSizingMode',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoPrimaryAxisAlignItems': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LayoutAlign',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoCounterAxisAlignItems': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LayoutAlign',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoLayoutWrap': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LayoutWrap',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoPadding': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'EdgeInsets',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoItemSpacing': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'autoCounterAxisSpacing': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'freeformReferenceWidth': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'freeformReferenceHeight': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gridColumnCount': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      'gridRowCount': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      'gridColumns': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'GridTrack',
                ),
                [],
              ),
            ),
          ]),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gridRows': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'GridTrack',
                ),
                [],
              ),
            ),
          ]),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gridColumnGap': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gridRowGap': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'gridPadding': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'EdgeInsets',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaLayoutProperties.auto] constructor
  static $Value? $auto(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaLayoutProperties.wrap(
      FigmaLayoutProperties.auto(
        referenceWidth: args[0]!.$value,
        referenceHeight: args[1]!.$value,
        axis: args[2]?.$value ?? Axis.horizontal,
        primaryAxisSizingMode: args[3]?.$value ?? PrimaryAxisSizingMode.auto,
        counterAxisSizingMode: args[4]?.$value ?? CounterAxisSizingMode.fixed,
        primaryAxisAlignItems: args[5]?.$value ?? LayoutAlign.min,
        counterAxisAlignItems: args[6]?.$value ?? LayoutAlign.min,
        layoutWrap: args[7]?.$value ?? LayoutWrap.noWrap,
        padding: args[8]?.$value ?? EdgeInsets.zero,
        itemSpacing: args[9]?.$value ?? 0,
        counterAxisSpacing: args[10]?.$value ?? 0,
      ),
    );
  }

  /// Wrapper for the [FigmaLayoutProperties.freeform] constructor
  static $Value? $freeform(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaLayoutProperties.wrap(
      FigmaLayoutProperties.freeform(
        referenceWidth: args[0]!.$value,
        referenceHeight: args[1]!.$value,
      ),
    );
  }

  /// Wrapper for the [FigmaLayoutProperties.grid] constructor
  static $Value? $grid(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaLayoutProperties.wrap(
      FigmaLayoutProperties.grid(
        columnCount: args[0]?.$value ?? 1,
        rowCount: args[1]?.$value ?? 1,
        columns: (args[2]?.$reified ?? const [] as List?)?.cast(),
        rows: (args[3]?.$reified ?? const [] as List?)?.cast(),
        columnGap: args[4]?.$value ?? 0,
        rowGap: args[5]?.$value ?? 0,
        padding: args[6]?.$value ?? EdgeInsets.zero,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaLayoutProperties $value;

  @override
  FigmaLayoutProperties get $reified => $value;

  /// Wrap a [FigmaLayoutProperties] in a [$FigmaLayoutProperties]
  $FigmaLayoutProperties.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        final _type = $value.type;
        return runtime.wrapAlways(_type);

      case 'autoReferenceWidth':
        final _autoReferenceWidth = $value.autoReferenceWidth;
        return _autoReferenceWidth == null
            ? const $null()
            : $double(_autoReferenceWidth);

      case 'autoReferenceHeight':
        final _autoReferenceHeight = $value.autoReferenceHeight;
        return _autoReferenceHeight == null
            ? const $null()
            : $double(_autoReferenceHeight);

      case 'autoAxis':
        final _autoAxis = $value.autoAxis;
        return _autoAxis == null ? const $null() : $Axis.wrap(_autoAxis);

      case 'autoPrimaryAxisSizingMode':
        final _autoPrimaryAxisSizingMode = $value.autoPrimaryAxisSizingMode;
        return _autoPrimaryAxisSizingMode == null
            ? const $null()
            : $PrimaryAxisSizingMode.wrap(_autoPrimaryAxisSizingMode);

      case 'autoCounterAxisSizingMode':
        final _autoCounterAxisSizingMode = $value.autoCounterAxisSizingMode;
        return _autoCounterAxisSizingMode == null
            ? const $null()
            : $CounterAxisSizingMode.wrap(_autoCounterAxisSizingMode);

      case 'autoPrimaryAxisAlignItems':
        final _autoPrimaryAxisAlignItems = $value.autoPrimaryAxisAlignItems;
        return _autoPrimaryAxisAlignItems == null
            ? const $null()
            : $LayoutAlign.wrap(_autoPrimaryAxisAlignItems);

      case 'autoCounterAxisAlignItems':
        final _autoCounterAxisAlignItems = $value.autoCounterAxisAlignItems;
        return _autoCounterAxisAlignItems == null
            ? const $null()
            : $LayoutAlign.wrap(_autoCounterAxisAlignItems);

      case 'autoLayoutWrap':
        final _autoLayoutWrap = $value.autoLayoutWrap;
        return _autoLayoutWrap == null
            ? const $null()
            : $LayoutWrap.wrap(_autoLayoutWrap);

      case 'autoPadding':
        final _autoPadding = $value.autoPadding;
        return _autoPadding == null
            ? const $null()
            : $EdgeInsets.wrap(_autoPadding);

      case 'autoItemSpacing':
        final _autoItemSpacing = $value.autoItemSpacing;
        return _autoItemSpacing == null
            ? const $null()
            : $double(_autoItemSpacing);

      case 'autoCounterAxisSpacing':
        final _autoCounterAxisSpacing = $value.autoCounterAxisSpacing;
        return _autoCounterAxisSpacing == null
            ? const $null()
            : $double(_autoCounterAxisSpacing);

      case 'freeformReferenceWidth':
        final _freeformReferenceWidth = $value.freeformReferenceWidth;
        return _freeformReferenceWidth == null
            ? const $null()
            : $double(_freeformReferenceWidth);

      case 'freeformReferenceHeight':
        final _freeformReferenceHeight = $value.freeformReferenceHeight;
        return _freeformReferenceHeight == null
            ? const $null()
            : $double(_freeformReferenceHeight);

      case 'gridColumnCount':
        final _gridColumnCount = $value.gridColumnCount;
        return _gridColumnCount == null
            ? const $null()
            : $int(_gridColumnCount);

      case 'gridRowCount':
        final _gridRowCount = $value.gridRowCount;
        return _gridRowCount == null ? const $null() : $int(_gridRowCount);

      case 'gridColumns':
        final _gridColumns = $value.gridColumns;
        return _gridColumns == null
            ? const $null()
            : $List.view(_gridColumns, (e) => $GridTrack.wrap(e));

      case 'gridRows':
        final _gridRows = $value.gridRows;
        return _gridRows == null
            ? const $null()
            : $List.view(_gridRows, (e) => $GridTrack.wrap(e));

      case 'gridColumnGap':
        final _gridColumnGap = $value.gridColumnGap;
        return _gridColumnGap == null ? const $null() : $double(_gridColumnGap);

      case 'gridRowGap':
        final _gridRowGap = $value.gridRowGap;
        return _gridRowGap == null ? const $null() : $double(_gridRowGap);

      case 'gridPadding':
        final _gridPadding = $value.gridPadding;
        return _gridPadding == null
            ? const $null()
            : $EdgeInsets.wrap(_gridPadding);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaLayout]
class $FigmaLayout implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaLayout.',
      $FigmaLayout.$new,
    );
  }

  /// Compile-time type specification of [$FigmaLayout]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaLayout',
  );

  /// Compile-time type declaration of [$FigmaLayout]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaLayout]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'layout',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaLayoutProperties',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'children',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'Widget',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'layout': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaLayoutProperties',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'children': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'Widget',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaLayout.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaLayout.wrap(
      FigmaLayout(
        layout: args[0]!.$value,
        children: (args[1]!.$reified as List).cast(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaLayout $value;

  @override
  FigmaLayout get $reified => $value;

  /// Wrap a [FigmaLayout] in a [$FigmaLayout]
  $FigmaLayout.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'layout':
        final _layout = $value.layout;
        return $FigmaLayoutProperties.wrap(_layout);

      case 'children':
        final _children = $value.children;
        return $List.view(_children, (e) => $Widget.wrap(e));
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [Color]
class $Color implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'Color.from',
      $Color.$from,
    );
  }

  /// Compile-time type specification of [$Color]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'Color',
  );

  /// Compile-time type declaration of [$Color]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Color]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'from': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'alpha',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'red',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'green',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'blue',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'alpha': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'red': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'green': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'blue': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Color.from] constructor
  static $Value? $from(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Color.wrap(
      Color.from(
        alpha: args[0]!.$value,
        red: args[1]!.$value,
        green: args[2]!.$value,
        blue: args[3]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final Color $value;

  @override
  Color get $reified => $value;

  /// Wrap a [Color] in a [$Color]
  $Color.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'alpha':
        final _alpha = $value.alpha;
        return $double(_alpha);

      case 'red':
        final _red = $value.red;
        return $double(_red);

      case 'green':
        final _green = $value.green;
        return $double(_green);

      case 'blue':
        final _blue = $value.blue;
        return $double(_blue);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [Offset]
class $Offset implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'Offset.',
      $Offset.$new,
    );
  }

  /// Compile-time type specification of [$Offset]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'Offset',
  );

  /// Compile-time type declaration of [$Offset]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Offset]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'dx',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'dy',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'dx': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'dy': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Offset.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Offset.wrap(Offset(args[0]!.$value, args[1]!.$value));
  }

  final $Instance _superclass;

  @override
  final Offset $value;

  @override
  Offset get $reified => $value;

  /// Wrap a [Offset] in a [$Offset]
  $Offset.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'dx':
        final _dx = $value.dx;
        return $double(_dx);

      case 'dy':
        final _dy = $value.dy;
        return $double(_dy);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [FontWeight]
class $FontWeight implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FontWeight',
      $FontWeight._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FontWeight.values*g',
      $FontWeight.$values,
    );
  }

  /// Compile-time type specification of [$FontWeight]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FontWeight',
  );

  /// Compile-time type declaration of [$FontWeight]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FontWeight]
  static const $declaration = BridgeEnumDef(
    $type,

    values: [
      'w100',
      'w200',
      'w300',
      'w400',
      'w500',
      'w600',
      'w700',
      'w800',
      'w900',
    ],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'w100': $FontWeight.wrap(FontWeight.w100),
    'w200': $FontWeight.wrap(FontWeight.w200),
    'w300': $FontWeight.wrap(FontWeight.w300),
    'w400': $FontWeight.wrap(FontWeight.w400),
    'w500': $FontWeight.wrap(FontWeight.w500),
    'w600': $FontWeight.wrap(FontWeight.w600),
    'w700': $FontWeight.wrap(FontWeight.w700),
    'w800': $FontWeight.wrap(FontWeight.w800),
    'w900': $FontWeight.wrap(FontWeight.w900),
  };

  /// Wrapper for the [FontWeight.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = FontWeight.values;
    return $List.view(value, (e) => $FontWeight.wrap(e));
  }

  final $Instance _superclass;

  @override
  final FontWeight $value;

  @override
  FontWeight get $reified => $value;

  /// Wrap a [FontWeight] in a [$FontWeight]
  $FontWeight.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [BlendMode]
class $BlendMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'BlendMode',
      $BlendMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'BlendMode.values*g',
      $BlendMode.$values,
    );
  }

  /// Compile-time type specification of [$BlendMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'BlendMode',
  );

  /// Compile-time type declaration of [$BlendMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$BlendMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: [
      'passThrough',
      'normal',
      'darken',
      'multiply',
      'linearBurn',
      'colorBurn',
      'lighten',
      'screen',
      'linearDodge',
      'colorDodge',
      'overlay',
      'softLight',
      'hardLight',
      'difference',
      'exclusion',
      'hue',
      'saturation',
      'color',
      'luminosity',
    ],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'passThrough': $BlendMode.wrap(BlendMode.passThrough),
    'normal': $BlendMode.wrap(BlendMode.normal),
    'darken': $BlendMode.wrap(BlendMode.darken),
    'multiply': $BlendMode.wrap(BlendMode.multiply),
    'linearBurn': $BlendMode.wrap(BlendMode.linearBurn),
    'colorBurn': $BlendMode.wrap(BlendMode.colorBurn),
    'lighten': $BlendMode.wrap(BlendMode.lighten),
    'screen': $BlendMode.wrap(BlendMode.screen),
    'linearDodge': $BlendMode.wrap(BlendMode.linearDodge),
    'colorDodge': $BlendMode.wrap(BlendMode.colorDodge),
    'overlay': $BlendMode.wrap(BlendMode.overlay),
    'softLight': $BlendMode.wrap(BlendMode.softLight),
    'hardLight': $BlendMode.wrap(BlendMode.hardLight),
    'difference': $BlendMode.wrap(BlendMode.difference),
    'exclusion': $BlendMode.wrap(BlendMode.exclusion),
    'hue': $BlendMode.wrap(BlendMode.hue),
    'saturation': $BlendMode.wrap(BlendMode.saturation),
    'color': $BlendMode.wrap(BlendMode.color),
    'luminosity': $BlendMode.wrap(BlendMode.luminosity),
  };

  /// Wrapper for the [BlendMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = BlendMode.values;
    return $List.view(value, (e) => $BlendMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final BlendMode $value;

  @override
  BlendMode get $reified => $value;

  /// Wrap a [BlendMode] in a [$BlendMode]
  $BlendMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [ConstraintType]
class $ConstraintType implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ConstraintType',
      $ConstraintType._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ConstraintType.values*g',
      $ConstraintType.$values,
    );
  }

  /// Compile-time type specification of [$ConstraintType]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'ConstraintType',
  );

  /// Compile-time type declaration of [$ConstraintType]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ConstraintType]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['min', 'center', 'max', 'stretch', 'scale'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'min': $ConstraintType.wrap(ConstraintType.min),
    'center': $ConstraintType.wrap(ConstraintType.center),
    'max': $ConstraintType.wrap(ConstraintType.max),
    'stretch': $ConstraintType.wrap(ConstraintType.stretch),
    'scale': $ConstraintType.wrap(ConstraintType.scale),
  };

  /// Wrapper for the [ConstraintType.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = ConstraintType.values;
    return $List.view(value, (e) => $ConstraintType.wrap(e));
  }

  final $Instance _superclass;

  @override
  final ConstraintType $value;

  @override
  ConstraintType get $reified => $value;

  /// Wrap a [ConstraintType] in a [$ConstraintType]
  $ConstraintType.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [ScaleMode]
class $ScaleMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ScaleMode',
      $ScaleMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ScaleMode.values*g',
      $ScaleMode.$values,
    );
  }

  /// Compile-time type specification of [$ScaleMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'ScaleMode',
  );

  /// Compile-time type declaration of [$ScaleMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ScaleMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['fill', 'fit', 'crop', 'tile'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'fill': $ScaleMode.wrap(ScaleMode.fill),
    'fit': $ScaleMode.wrap(ScaleMode.fit),
    'crop': $ScaleMode.wrap(ScaleMode.crop),
    'tile': $ScaleMode.wrap(ScaleMode.tile),
  };

  /// Wrapper for the [ScaleMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = ScaleMode.values;
    return $List.view(value, (e) => $ScaleMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final ScaleMode $value;

  @override
  ScaleMode get $reified => $value;

  /// Wrap a [ScaleMode] in a [$ScaleMode]
  $ScaleMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [GridTrackSizingMode]
class $GridTrackSizingMode implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'GridTrackSizingMode',
      $GridTrackSizingMode._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'GridTrackSizingMode.values*g',
      $GridTrackSizingMode.$values,
    );
  }

  /// Compile-time type specification of [$GridTrackSizingMode]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'GridTrackSizingMode',
  );

  /// Compile-time type declaration of [$GridTrackSizingMode]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$GridTrackSizingMode]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['auto', 'fixed'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'auto': $GridTrackSizingMode.wrap(GridTrackSizingMode.auto),
    'fixed': $GridTrackSizingMode.wrap(GridTrackSizingMode.fixed),
  };

  /// Wrapper for the [GridTrackSizingMode.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = GridTrackSizingMode.values;
    return $List.view(value, (e) => $GridTrackSizingMode.wrap(e));
  }

  final $Instance _superclass;

  @override
  final GridTrackSizingMode $value;

  @override
  GridTrackSizingMode get $reified => $value;

  /// Wrap a [GridTrackSizingMode] in a [$GridTrackSizingMode]
  $GridTrackSizingMode.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [ChildSize]
class $ChildSize implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'ChildSize.',
      $ChildSize.$new,
    );
  }

  /// Compile-time type specification of [$ChildSize]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'ChildSize',
  );

  /// Compile-time type declaration of [$ChildSize]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$ChildSize]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'width',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'height',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'primaryAxisSizing',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'ChildSizingMode',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'counterAxisSizing',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'ChildSizingMode',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'width': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'height': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'primaryAxisSizing': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'ChildSizingMode',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'counterAxisSizing': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'ChildSizingMode',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [ChildSize.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $ChildSize.wrap(
      ChildSize(
        width: args[0]!.$value,
        height: args[1]!.$value,
        primaryAxisSizing: args[2]?.$value,
        counterAxisSizing: args[3]?.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final ChildSize $value;

  @override
  ChildSize get $reified => $value;

  /// Wrap a [ChildSize] in a [$ChildSize]
  $ChildSize.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'width':
        final _width = $value.width;
        return $double(_width);

      case 'height':
        final _height = $value.height;
        return $double(_height);

      case 'primaryAxisSizing':
        final _primaryAxisSizing = $value.primaryAxisSizing;
        return _primaryAxisSizing == null
            ? const $null()
            : $ChildSizingMode.wrap(_primaryAxisSizing);

      case 'counterAxisSizing':
        final _counterAxisSizing = $value.counterAxisSizing;
        return _counterAxisSizing == null
            ? const $null()
            : $ChildSizingMode.wrap(_counterAxisSizing);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [GridTrack]
class $GridTrack implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'GridTrack.',
      $GridTrack.$new,
    );
  }

  /// Compile-time type specification of [$GridTrack]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'GridTrack',
  );

  /// Compile-time type declaration of [$GridTrack]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$GridTrack]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'size',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'sizingMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'GridTrackSizingMode',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'size': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'sizingMode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'GridTrackSizingMode',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [GridTrack.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $GridTrack.wrap(
      GridTrack(
        size: args[0]?.$value,
        sizingMode: args[1]?.$value ?? GridTrackSizingMode.auto,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final GridTrack $value;

  @override
  GridTrack get $reified => $value;

  /// Wrap a [GridTrack] in a [$GridTrack]
  $GridTrack.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'size':
        final _size = $value.size;
        return _size == null ? const $null() : $double(_size);

      case 'sizingMode':
        final _sizingMode = $value.sizingMode;
        return $GridTrackSizingMode.wrap(_sizingMode);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaEffect]
class $FigmaEffect implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaEffect.dropShadow',
      $FigmaEffect.$dropShadow,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaEffect.layerBlur',
      $FigmaEffect.$layerBlur,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaEffect.backgroundBlur',
      $FigmaEffect.$backgroundBlur,
    );
  }

  /// Compile-time type specification of [$FigmaEffect]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaEffect',
  );

  /// Compile-time type declaration of [$FigmaEffect]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaEffect]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'dropShadow': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'color',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Color',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'offset',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Offset',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'spread',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'showShadowBehindNode',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'layerBlur': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'backgroundBlur': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'radius',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'type': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaEffectType',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'color': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Color',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'offset': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Offset',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'radius': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'spread': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'visible': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'blendMode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'BlendMode',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'showShadowBehindNode': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, []), nullable: true),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaEffect.dropShadow] constructor
  static $Value? $dropShadow(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaEffect.wrap(
      FigmaEffect.dropShadow(
        color: args[0]!.$value,
        offset: args[1]!.$value,
        radius: args[2]!.$value,
        spread: args[3]?.$value ?? 0,
        visible: args[4]?.$value ?? true,
        blendMode: args[5]?.$value ?? BlendMode.normal,
        showShadowBehindNode: args[6]?.$value ?? false,
      ),
    );
  }

  /// Wrapper for the [FigmaEffect.layerBlur] constructor
  static $Value? $layerBlur(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaEffect.wrap(
      FigmaEffect.layerBlur(
        radius: args[0]!.$value,
        visible: args[1]?.$value ?? true,
      ),
    );
  }

  /// Wrapper for the [FigmaEffect.backgroundBlur] constructor
  static $Value? $backgroundBlur(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $FigmaEffect.wrap(
      FigmaEffect.backgroundBlur(
        radius: args[0]!.$value,
        visible: args[1]?.$value ?? true,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaEffect $value;

  @override
  FigmaEffect get $reified => $value;

  /// Wrap a [FigmaEffect] in a [$FigmaEffect]
  $FigmaEffect.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        final _type = $value.type;
        return runtime.wrapAlways(_type);

      case 'color':
        final _color = $value.color;
        return _color == null ? const $null() : $Color.wrap(_color);

      case 'offset':
        final _offset = $value.offset;
        return _offset == null ? const $null() : $Offset.wrap(_offset);

      case 'radius':
        final _radius = $value.radius;
        return $double(_radius);

      case 'spread':
        final _spread = $value.spread;
        return _spread == null ? const $null() : $double(_spread);

      case 'visible':
        final _visible = $value.visible;
        return $bool(_visible);

      case 'blendMode':
        final _blendMode = $value.blendMode;
        return _blendMode == null ? const $null() : $BlendMode.wrap(_blendMode);

      case 'showShadowBehindNode':
        final _showShadowBehindNode = $value.showShadowBehindNode;
        return _showShadowBehindNode == null
            ? const $null()
            : $bool(_showShadowBehindNode);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [FigmaFontStyle]
class $FigmaFontStyle implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaFontStyle',
      $FigmaFontStyle._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaFontStyle.values*g',
      $FigmaFontStyle.$values,
    );
  }

  /// Compile-time type specification of [$FigmaFontStyle]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaFontStyle',
  );

  /// Compile-time type declaration of [$FigmaFontStyle]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaFontStyle]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['regular', 'italic'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'regular': $FigmaFontStyle.wrap(FigmaFontStyle.regular),
    'italic': $FigmaFontStyle.wrap(FigmaFontStyle.italic),
  };

  /// Wrapper for the [FigmaFontStyle.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = FigmaFontStyle.values;
    return $List.view(value, (e) => $FigmaFontStyle.wrap(e));
  }

  final $Instance _superclass;

  @override
  final FigmaFontStyle $value;

  @override
  FigmaFontStyle get $reified => $value;

  /// Wrap a [FigmaFontStyle] in a [$FigmaFontStyle]
  $FigmaFontStyle.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval enum wrapper binding for [LetterSpacingUnit]
class $LetterSpacingUnit implements $Instance {
  /// Configure this enum for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeEnumValues(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LetterSpacingUnit',
      $LetterSpacingUnit._$values,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LetterSpacingUnit.values*g',
      $LetterSpacingUnit.$values,
    );
  }

  /// Compile-time type specification of [$LetterSpacingUnit]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'LetterSpacingUnit',
  );

  /// Compile-time type declaration of [$LetterSpacingUnit]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LetterSpacingUnit]
  static const $declaration = BridgeEnumDef(
    $type,

    values: ['pixels', 'percent'],

    methods: {},
    getters: {},
    setters: {},
    fields: {},
  );

  static final _$values = {
    'pixels': $LetterSpacingUnit.wrap(LetterSpacingUnit.pixels),
    'percent': $LetterSpacingUnit.wrap(LetterSpacingUnit.percent),
  };

  /// Wrapper for the [LetterSpacingUnit.values] getter
  static $Value? $values(Runtime runtime, $Value? target, List<$Value?> args) {
    final value = LetterSpacingUnit.values;
    return $List.view(value, (e) => $LetterSpacingUnit.wrap(e));
  }

  final $Instance _superclass;

  @override
  final LetterSpacingUnit $value;

  @override
  LetterSpacingUnit get $reified => $value;

  /// Wrap a [LetterSpacingUnit] in a [$LetterSpacingUnit]
  $LetterSpacingUnit.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FontName]
class $FontName implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FontName.',
      $FontName.$new,
    );
  }

  /// Compile-time type specification of [$FontName]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FontName',
  );

  /// Compile-time type declaration of [$FontName]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FontName]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'family',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'style',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaFontStyle',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'weight',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FontWeight',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'family': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'style': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaFontStyle',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'weight': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FontWeight',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FontName.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FontName.wrap(
      FontName(
        family: args[0]!.$value,
        style: args[1]?.$value ?? FigmaFontStyle.regular,
        weight: args[2]?.$value ?? FontWeight.w400,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FontName $value;

  @override
  FontName get $reified => $value;

  /// Wrap a [FontName] in a [$FontName]
  $FontName.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'family':
        final _family = $value.family;
        return $String(_family);

      case 'style':
        final _style = $value.style;
        return $FigmaFontStyle.wrap(_style);

      case 'weight':
        final _weight = $value.weight;
        return $FontWeight.wrap(_weight);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [LetterSpacing]
class $LetterSpacing implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LetterSpacing.',
      $LetterSpacing.$new,
    );
  }

  /// Compile-time type specification of [$LetterSpacing]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'LetterSpacing',
  );

  /// Compile-time type declaration of [$LetterSpacing]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LetterSpacing]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'unit',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'LetterSpacingUnit',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'value': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'unit': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LetterSpacingUnit',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LetterSpacing.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LetterSpacing.wrap(
      LetterSpacing(value: args[0]!.$value, unit: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final LetterSpacing $value;

  @override
  LetterSpacing get $reified => $value;

  /// Wrap a [LetterSpacing] in a [$LetterSpacing]
  $LetterSpacing.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'value':
        final _value = $value.value;
        return $double(_value);

      case 'unit':
        final _unit = $value.unit;
        return $LetterSpacingUnit.wrap(_unit);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [LineHeight]
class $LineHeight implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LineHeight.pixels',
      $LineHeight.$pixels,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LineHeight.percent',
      $LineHeight.$percent,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'LineHeight.auto',
      $LineHeight.$auto,
    );
  }

  /// Compile-time type specification of [$LineHeight]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'LineHeight',
  );

  /// Compile-time type declaration of [$LineHeight]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$LineHeight]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      'pixels': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'percent': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'value',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.double, []),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'auto': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'type': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LineHeightType',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'value': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.double, []),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [LineHeight.pixels] constructor
  static $Value? $pixels(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LineHeight.wrap(LineHeight.pixels(args[0]!.$value));
  }

  /// Wrapper for the [LineHeight.percent] constructor
  static $Value? $percent(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $LineHeight.wrap(LineHeight.percent(args[0]!.$value));
  }

  /// Wrapper for the [LineHeight.auto] constructor
  static $Value? $auto(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $LineHeight.wrap(LineHeight.auto());
  }

  final $Instance _superclass;

  @override
  final LineHeight $value;

  @override
  LineHeight get $reified => $value;

  /// Wrap a [LineHeight] in a [$LineHeight]
  $LineHeight.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'type':
        final _type = $value.type;
        return runtime.wrapAlways(_type);

      case 'value':
        final _value = $value.value;
        return _value == null ? const $null() : $double(_value);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaTextStyle]
class $FigmaTextStyle implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaTextStyle.',
      $FigmaTextStyle.$new,
    );
  }

  /// Compile-time type specification of [$FigmaTextStyle]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaTextStyle',
  );

  /// Compile-time type declaration of [$FigmaTextStyle]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaTextStyle]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'fontName',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FontName',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'fontSize',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              false,
            ),

            BridgeParameter(
              'letterSpacing',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'LetterSpacing',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'lineHeight',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'LineHeight',
                  ),
                  [],
                ),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'fontName': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FontName',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'fontSize': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'letterSpacing': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LetterSpacing',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'lineHeight': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'LineHeight',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaTextStyle.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaTextStyle.wrap(
      FigmaTextStyle(
        fontName: args[0]!.$value,
        fontSize: args[1]!.$value,
        letterSpacing:
            args[2]?.$value ??
            const LetterSpacing(value: 1, unit: LetterSpacingUnit.percent),
        lineHeight: args[3]?.$value ?? const LineHeight.auto(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaTextStyle $value;

  @override
  FigmaTextStyle get $reified => $value;

  /// Wrap a [FigmaTextStyle] in a [$FigmaTextStyle]
  $FigmaTextStyle.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'fontName':
        final _fontName = $value.fontName;
        return $FontName.wrap(_fontName);

      case 'fontSize':
        final _fontSize = $value.fontSize;
        return $double(_fontSize);

      case 'letterSpacing':
        final _letterSpacing = $value.letterSpacing;
        return $LetterSpacing.wrap(_letterSpacing);

      case 'lineHeight':
        final _lineHeight = $value.lineHeight;
        return $LineHeight.wrap(_lineHeight);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaTextSpan]
class $FigmaTextSpan implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaTextSpan.',
      $FigmaTextSpan.$new,
    );
  }

  /// Compile-time type specification of [$FigmaTextSpan]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaTextSpan',
  );

  /// Compile-time type declaration of [$FigmaTextSpan]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaTextSpan]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'text',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'style',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTextStyle',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'text': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'style': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaTextStyle',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaTextSpan.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaTextSpan.wrap(
      FigmaTextSpan(text: args[0]!.$value, style: args[1]?.$value),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaTextSpan $value;

  @override
  FigmaTextSpan get $reified => $value;

  /// Wrap a [FigmaTextSpan] in a [$FigmaTextSpan]
  $FigmaTextSpan.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'text':
        final _text = $value.text;
        return $String(_text);

      case 'style':
        final _style = $value.style;
        return _style == null ? const $null() : $FigmaTextStyle.wrap(_style);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaFrame]
class $FigmaFrame implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaFrame.',
      $FigmaFrame.$new,
    );
  }

  /// Compile-time type specification of [$FigmaFrame]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaFrame',
  );

  /// Compile-time type declaration of [$FigmaFrame]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaFrame]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'layout',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaLayoutProperties',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'size',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'ChildSize',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'decoration',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaDecoration',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'effects',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaEffect',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'opacity',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
              true,
            ),

            BridgeParameter(
              'visible',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'blendMode',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'BlendMode',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'shape',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaRectangleShape',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'stroke',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaStroke',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'clipContent',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              true,
            ),

            BridgeParameter(
              'children',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'Widget',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'size': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'ChildSize',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'layout': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaLayoutProperties',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'shape': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaRectangleShape',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'stroke': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaStroke',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'decoration': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaDecoration',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'effects': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaEffect',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'opacity': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.double, [])),
        isStatic: false,
      ),

      'visible': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'blendMode': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'BlendMode',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'clipContent': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'children': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'Widget',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaFrame.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaFrame.wrap(
      FigmaFrame(
        layout: args[0]!.$value,
        size: args[1]?.$value,
        decoration: args[2]?.$value,
        effects: (args[3]?.$reified ?? const [] as List?)?.cast(),
        opacity: args[4]?.$value ?? 1.0,
        visible: args[5]?.$value ?? true,
        blendMode: args[6]?.$value ?? BlendMode.passThrough,
        shape: args[7]?.$value ?? const FigmaRectangleShape(),
        stroke: args[8]?.$value ?? const FigmaStroke.uniform(weight: 1),
        clipContent: args[9]?.$value ?? true,
        children: (args[10]?.$reified ?? const [] as List?)?.cast(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaFrame $value;

  @override
  FigmaFrame get $reified => $value;

  /// Wrap a [FigmaFrame] in a [$FigmaFrame]
  $FigmaFrame.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'size':
        final _size = $value.size;
        return _size == null ? const $null() : $ChildSize.wrap(_size);

      case 'layout':
        final _layout = $value.layout;
        return $FigmaLayoutProperties.wrap(_layout);

      case 'shape':
        final _shape = $value.shape;
        return $FigmaRectangleShape.wrap(_shape);

      case 'stroke':
        final _stroke = $value.stroke;
        return $FigmaStroke.wrap(_stroke);

      case 'decoration':
        final _decoration = $value.decoration;
        return _decoration == null
            ? const $null()
            : $FigmaDecoration.wrap(_decoration);

      case 'effects':
        final _effects = $value.effects;
        return $List.view(_effects, (e) => $FigmaEffect.wrap(e));

      case 'opacity':
        final _opacity = $value.opacity;
        return $double(_opacity);

      case 'visible':
        final _visible = $value.visible;
        return $bool(_visible);

      case 'blendMode':
        final _blendMode = $value.blendMode;
        return $BlendMode.wrap(_blendMode);

      case 'clipContent':
        final _clipContent = $value.clipContent;
        return $bool(_clipContent);

      case 'children':
        final _children = $value.children;
        return $List.view(_children, (e) => $Widget.wrap(e));
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaText]
class $FigmaText implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaText.',
      $FigmaText.$new,
    );

    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaText.rich',
      $FigmaText.$rich,
    );
  }

  /// Compile-time type specification of [$FigmaText]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaText',
  );

  /// Compile-time type declaration of [$FigmaText]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaText]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'style',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTextStyle',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'fills',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaPaint',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'strokes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaPaint',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),
          ],
          params: [
            BridgeParameter(
              'text',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              false,
            ),
          ],
        ),
        isFactory: false,
      ),

      'rich': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'characters',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaTextSpan',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'style',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTextStyle',
                  ),
                  [],
                ),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'fills',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaPaint',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),

            BridgeParameter(
              'strokes',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaPaint',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'style': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaTextStyle',
            ),
            [],
          ),
          nullable: true,
        ),
        isStatic: false,
      ),

      'fills': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaPaint',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'strokes': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaPaint',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'text': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'characters': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaTextSpan',
                ),
                [],
              ),
            ),
          ]),
          nullable: true,
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaText.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaText.wrap(
      FigmaText(
        args[0]!.$value,
        style: args[1]?.$value,
        fills: (args[2]?.$reified ?? const [] as List?)?.cast(),
        strokes: (args[3]?.$reified ?? const [] as List?)?.cast(),
      ),
    );
  }

  /// Wrapper for the [FigmaText.rich] constructor
  static $Value? $rich(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaText.wrap(
      FigmaText.rich(
        characters: (args[0]!.$reified as List).cast(),
        style: args[1]?.$value,
        fills: (args[2]?.$reified ?? const [] as List?)?.cast(),
        strokes: (args[3]?.$reified ?? const [] as List?)?.cast(),
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaText $value;

  @override
  FigmaText get $reified => $value;

  /// Wrap a [FigmaText] in a [$FigmaText]
  $FigmaText.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'style':
        final _style = $value.style;
        return _style == null ? const $null() : $FigmaTextStyle.wrap(_style);

      case 'fills':
        final _fills = $value.fills;
        return $List.view(_fills, (e) => $FigmaPaint.wrap(e));

      case 'strokes':
        final _strokes = $value.strokes;
        return $List.view(_strokes, (e) => $FigmaPaint.wrap(e));

      case 'text':
        final _text = $value.text;
        return _text == null ? const $null() : $String(_text);

      case 'characters':
        final _characters = $value.characters;
        return _characters == null
            ? const $null()
            : $List.view(_characters, (e) => $FigmaTextSpan.wrap(e));
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaDecorated]
class $FigmaDecorated implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaDecorated.',
      $FigmaDecorated.$new,
    );
  }

  /// Compile-time type specification of [$FigmaDecorated]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaDecorated',
  );

  /// Compile-time type declaration of [$FigmaDecorated]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaDecorated]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'decoration',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaDecoration',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'shape',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaRectangleShape',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'stroke',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaStroke',
                  ),
                  [],
                ),
              ),
              true,
            ),

            BridgeParameter(
              'child',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Widget',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'stroke': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaStroke',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'shape': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaRectangleShape',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'decoration': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaDecoration',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'child': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Widget',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaDecorated.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaDecorated.wrap(
      FigmaDecorated(
        decoration: args[0]!.$value,
        shape: args[1]?.$value ?? const FigmaRectangleShape(),
        stroke: args[2]?.$value ?? const FigmaStroke.uniform(weight: 1),
        child: args[3]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaDecorated $value;

  @override
  FigmaDecorated get $reified => $value;

  /// Wrap a [FigmaDecorated] in a [$FigmaDecorated]
  $FigmaDecorated.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'stroke':
        final _stroke = $value.stroke;
        return $FigmaStroke.wrap(_stroke);

      case 'shape':
        final _shape = $value.shape;
        return $FigmaRectangleShape.wrap(_shape);

      case 'decoration':
        final _decoration = $value.decoration;
        return $FigmaDecoration.wrap(_decoration);

      case 'child':
        final _child = $value.child;
        return $Widget.wrap(_child);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaTransformed]
class $FigmaTransformed implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaTransformed.',
      $FigmaTransformed.$new,
    );
  }

  /// Compile-time type specification of [$FigmaTransformed]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaTransformed',
  );

  /// Compile-time type declaration of [$FigmaTransformed]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaTransformed]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'transform',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaTransform',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'child',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Widget',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'transform': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaTransform',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'child': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Widget',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaTransformed.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaTransformed.wrap(
      FigmaTransformed(transform: args[0]!.$value, child: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaTransformed $value;

  @override
  FigmaTransformed get $reified => $value;

  /// Wrap a [FigmaTransformed] in a [$FigmaTransformed]
  $FigmaTransformed.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'transform':
        final _transform = $value.transform;
        return $FigmaTransform.wrap(_transform);

      case 'child':
        final _child = $value.child;
        return $Widget.wrap(_child);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaClip]
class $FigmaClip implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaClip.',
      $FigmaClip.$new,
    );
  }

  /// Compile-time type specification of [$FigmaClip]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaClip',
  );

  /// Compile-time type declaration of [$FigmaClip]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaClip]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'shape',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaRectangleShape',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'child',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Widget',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'shape': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaRectangleShape',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'child': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Widget',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaClip.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaClip.wrap(
      FigmaClip(shape: args[0]!.$value, child: args[1]!.$value),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaClip $value;

  @override
  FigmaClip get $reified => $value;

  /// Wrap a [FigmaClip] in a [$FigmaClip]
  $FigmaClip.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'shape':
        final _shape = $value.shape;
        return $FigmaRectangleShape.wrap(_shape);

      case 'child':
        final _child = $value.child;
        return $Widget.wrap(_child);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}

/// dart_eval wrapper binding for [FigmaFiltered]
class $FigmaFiltered implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:flutter_figma_preview/services/interpreter/bindings.dart',
      'FigmaFiltered.',
      $FigmaFiltered.$new,
    );
  }

  /// Compile-time type specification of [$FigmaFiltered]
  static const $spec = BridgeTypeSpec(
    'package:flutter_figma_preview/services/interpreter/bindings.dart',
    'FigmaFiltered',
  );

  /// Compile-time type declaration of [$FigmaFiltered]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$FigmaFiltered]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $extends: BridgeTypeRef(
        BridgeTypeSpec(
          'package:flutter_figma_preview/services/interpreter/bindings.dart',
          'Widget',
        ),
        [],
      ),
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'effects',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(
                    BridgeTypeRef(
                      BridgeTypeSpec(
                        'package:flutter_figma_preview/services/interpreter/bindings.dart',
                        'FigmaEffect',
                      ),
                      [],
                    ),
                  ),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'shape',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'FigmaRectangleShape',
                  ),
                  [],
                ),
              ),
              false,
            ),

            BridgeParameter(
              'child',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:flutter_figma_preview/services/interpreter/bindings.dart',
                    'Widget',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'effects': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(
              BridgeTypeRef(
                BridgeTypeSpec(
                  'package:flutter_figma_preview/services/interpreter/bindings.dart',
                  'FigmaEffect',
                ),
                [],
              ),
            ),
          ]),
        ),
        isStatic: false,
      ),

      'shape': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'FigmaRectangleShape',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),

      'child': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(
            BridgeTypeSpec(
              'package:flutter_figma_preview/services/interpreter/bindings.dart',
              'Widget',
            ),
            [],
          ),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [FigmaFiltered.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $FigmaFiltered.wrap(
      FigmaFiltered(
        effects: (args[0]!.$reified as List).cast(),
        shape: args[1]!.$value,
        child: args[2]!.$value,
      ),
    );
  }

  final $Instance _superclass;

  @override
  final FigmaFiltered $value;

  @override
  FigmaFiltered get $reified => $value;

  /// Wrap a [FigmaFiltered] in a [$FigmaFiltered]
  $FigmaFiltered.wrap(this.$value) : _superclass = $Widget.wrap($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'effects':
        final _effects = $value.effects;
        return $List.view(_effects, (e) => $FigmaEffect.wrap(e));

      case 'shape':
        final _shape = $value.shape;
        return $FigmaRectangleShape.wrap(_shape);

      case 'child':
        final _child = $value.child;
        return $Widget.wrap(_child);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
