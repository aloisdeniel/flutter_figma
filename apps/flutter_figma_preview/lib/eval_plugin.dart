import 'package:dart_eval/dart_eval_bridge.dart';
import 'services/interpreter/bindings.eval.dart';

/// [EvalPlugin] for flutter_figma_preview
class FlutterFigmaPreviewPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:flutter_figma_preview';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($FigmaTransform.$declaration);
    registry.defineBridgeClass($FigmaRectangleShape.$declaration);
    registry.defineBridgeClass($FigmaStroke.$declaration);
    registry.defineBridgeClass($FigmaPaint.$declaration);
    registry.defineBridgeClass($ColorStop.$declaration);
    registry.defineBridgeClass($FigmaDecoration.$declaration);
    registry.defineBridgeClass($Widget.$declaration);
    registry.defineBridgeClass($EdgeInsets.$declaration);
    registry.defineBridgeClass($FigmaLayoutProperties.$declaration);
    registry.defineBridgeClass($FigmaLayout.$declaration);
    registry.defineBridgeClass($Color.$declaration);
    registry.defineBridgeClass($Offset.$declaration);
    registry.defineBridgeClass($ChildSize.$declaration);
    registry.defineBridgeClass($GridTrack.$declaration);
    registry.defineBridgeClass($FigmaEffect.$declaration);
    registry.defineBridgeClass($FontName.$declaration);
    registry.defineBridgeClass($LetterSpacing.$declaration);
    registry.defineBridgeClass($LineHeight.$declaration);
    registry.defineBridgeClass($FigmaTextStyle.$declaration);
    registry.defineBridgeClass($FigmaTextSpan.$declaration);
    registry.defineBridgeClass($FigmaFrame.$declaration);
    registry.defineBridgeClass($FigmaText.$declaration);
    registry.defineBridgeClass($FigmaDecorated.$declaration);
    registry.defineBridgeClass($FigmaTransformed.$declaration);
    registry.defineBridgeClass($FigmaClip.$declaration);
    registry.defineBridgeClass($FigmaFiltered.$declaration);
    registry.defineBridgeEnum($FigmaStrokeAlignment.$declaration);
    registry.defineBridgeEnum($FigmaStrokeJoin.$declaration);
    registry.defineBridgeEnum($Axis.$declaration);
    registry.defineBridgeEnum($OverflowDirection.$declaration);
    registry.defineBridgeEnum($LayoutMode.$declaration);
    registry.defineBridgeEnum($PrimaryAxisSizingMode.$declaration);
    registry.defineBridgeEnum($CounterAxisSizingMode.$declaration);
    registry.defineBridgeEnum($LayoutWrap.$declaration);
    registry.defineBridgeEnum($LayoutAlign.$declaration);
    registry.defineBridgeEnum($ChildSizingMode.$declaration);
    registry.defineBridgeEnum($FontWeight.$declaration);
    registry.defineBridgeEnum($BlendMode.$declaration);
    registry.defineBridgeEnum($ConstraintType.$declaration);
    registry.defineBridgeEnum($ScaleMode.$declaration);
    registry.defineBridgeEnum($GridTrackSizingMode.$declaration);
    registry.defineBridgeEnum($FigmaFontStyle.$declaration);
    registry.defineBridgeEnum($LetterSpacingUnit.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $FigmaTransform.configureForRuntime(runtime);
    $FigmaRectangleShape.configureForRuntime(runtime);
    $FigmaStroke.configureForRuntime(runtime);
    $FigmaPaint.configureForRuntime(runtime);
    $ColorStop.configureForRuntime(runtime);
    $FigmaDecoration.configureForRuntime(runtime);
    $Widget.configureForRuntime(runtime);
    $EdgeInsets.configureForRuntime(runtime);
    $FigmaLayoutProperties.configureForRuntime(runtime);
    $FigmaLayout.configureForRuntime(runtime);
    $Color.configureForRuntime(runtime);
    $Offset.configureForRuntime(runtime);
    $ChildSize.configureForRuntime(runtime);
    $GridTrack.configureForRuntime(runtime);
    $FigmaEffect.configureForRuntime(runtime);
    $FontName.configureForRuntime(runtime);
    $LetterSpacing.configureForRuntime(runtime);
    $LineHeight.configureForRuntime(runtime);
    $FigmaTextStyle.configureForRuntime(runtime);
    $FigmaTextSpan.configureForRuntime(runtime);
    $FigmaFrame.configureForRuntime(runtime);
    $FigmaText.configureForRuntime(runtime);
    $FigmaDecorated.configureForRuntime(runtime);
    $FigmaTransformed.configureForRuntime(runtime);
    $FigmaClip.configureForRuntime(runtime);
    $FigmaFiltered.configureForRuntime(runtime);
    $FigmaStrokeAlignment.configureForRuntime(runtime);
    $FigmaStrokeJoin.configureForRuntime(runtime);
    $Axis.configureForRuntime(runtime);
    $OverflowDirection.configureForRuntime(runtime);
    $LayoutMode.configureForRuntime(runtime);
    $PrimaryAxisSizingMode.configureForRuntime(runtime);
    $CounterAxisSizingMode.configureForRuntime(runtime);
    $LayoutWrap.configureForRuntime(runtime);
    $LayoutAlign.configureForRuntime(runtime);
    $ChildSizingMode.configureForRuntime(runtime);
    $FontWeight.configureForRuntime(runtime);
    $BlendMode.configureForRuntime(runtime);
    $ConstraintType.configureForRuntime(runtime);
    $ScaleMode.configureForRuntime(runtime);
    $GridTrackSizingMode.configureForRuntime(runtime);
    $FigmaFontStyle.configureForRuntime(runtime);
    $LetterSpacingUnit.configureForRuntime(runtime);
  }
}
