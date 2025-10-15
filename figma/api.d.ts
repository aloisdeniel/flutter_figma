type Transform = [[number, number, number], [number, number, number]]
interface Vector {
  readonly x: number
  readonly y: number
}
interface Rect {
  readonly x: number
  readonly y: number
  readonly width: number
  readonly height: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/RGB
 */
interface RGB {
  readonly r: number
  readonly g: number
  readonly b: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/RGB
 */
interface RGBA {
  readonly r: number
  readonly g: number
  readonly b: number
  readonly a: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/FontName
 */
interface FontName {
  readonly family: string
  readonly style: string
}
type TextCase = 'ORIGINAL' | 'UPPER' | 'LOWER' | 'TITLE' | 'SMALL_CAPS' | 'SMALL_CAPS_FORCED'
type TextDecoration = 'NONE' | 'UNDERLINE' | 'STRIKETHROUGH'
type TextDecorationStyle = 'SOLID' | 'WAVY' | 'DOTTED'
type FontStyle = 'REGULAR' | 'ITALIC'
type TextDecorationOffset =
  | {
      readonly value: number
      readonly unit: 'PIXELS' | 'PERCENT'
    }
  | {
      readonly unit: 'AUTO'
    }
type TextDecorationThickness =
  | {
      readonly value: number
      readonly unit: 'PIXELS' | 'PERCENT'
    }
  | {
      readonly unit: 'AUTO'
    }
type TextDecorationColor =
  | {
      readonly value: SolidPaint
    }
  | {
      readonly value: 'AUTO'
    }
type OpenTypeFeature =
  | 'PCAP'
  | 'C2PC'
  | 'CASE'
  | 'CPSP'
  | 'TITL'
  | 'UNIC'
  | 'ZERO'
  | 'SINF'
  | 'ORDN'
  | 'AFRC'
  | 'DNOM'
  | 'NUMR'
  | 'LIGA'
  | 'CLIG'
  | 'DLIG'
  | 'HLIG'
  | 'RLIG'
  | 'AALT'
  | 'CALT'
  | 'RCLT'
  | 'SALT'
  | 'RVRN'
  | 'VERT'
  | 'SWSH'
  | 'CSWH'
  | 'NALT'
  | 'CCMP'
  | 'STCH'
  | 'HIST'
  | 'SIZE'
  | 'ORNM'
  | 'ITAL'
  | 'RAND'
  | 'DTLS'
  | 'FLAC'
  | 'MGRK'
  | 'SSTY'
  | 'KERN'
  | 'FWID'
  | 'HWID'
  | 'HALT'
  | 'TWID'
  | 'QWID'
  | 'PWID'
  | 'JUST'
  | 'LFBD'
  | 'OPBD'
  | 'RTBD'
  | 'PALT'
  | 'PKNA'
  | 'LTRA'
  | 'LTRM'
  | 'RTLA'
  | 'RTLM'
  | 'ABRV'
  | 'ABVM'
  | 'ABVS'
  | 'VALT'
  | 'VHAL'
  | 'BLWF'
  | 'BLWM'
  | 'BLWS'
  | 'AKHN'
  | 'CJCT'
  | 'CFAR'
  | 'CPCT'
  | 'CURS'
  | 'DIST'
  | 'EXPT'
  | 'FALT'
  | 'FINA'
  | 'FIN2'
  | 'FIN3'
  | 'HALF'
  | 'HALN'
  | 'HKNA'
  | 'HNGL'
  | 'HOJO'
  | 'INIT'
  | 'ISOL'
  | 'JP78'
  | 'JP83'
  | 'JP90'
  | 'JP04'
  | 'LJMO'
  | 'LOCL'
  | 'MARK'
  | 'MEDI'
  | 'MED2'
  | 'MKMK'
  | 'NLCK'
  | 'NUKT'
  | 'PREF'
  | 'PRES'
  | 'VPAL'
  | 'PSTF'
  | 'PSTS'
  | 'RKRF'
  | 'RPHF'
  | 'RUBY'
  | 'SMPL'
  | 'TJMO'
  | 'TNAM'
  | 'TRAD'
  | 'VATU'
  | 'VJMO'
  | 'VKNA'
  | 'VKRN'
  | 'VRTR'
  | 'VRT2'
  | 'SS01'
  | 'SS02'
  | 'SS03'
  | 'SS04'
  | 'SS05'
  | 'SS06'
  | 'SS07'
  | 'SS08'
  | 'SS09'
  | 'SS10'
  | 'SS11'
  | 'SS12'
  | 'SS13'
  | 'SS14'
  | 'SS15'
  | 'SS16'
  | 'SS17'
  | 'SS18'
  | 'SS19'
  | 'SS20'
  | 'CV01'
  | 'CV02'
  | 'CV03'
  | 'CV04'
  | 'CV05'
  | 'CV06'
  | 'CV07'
  | 'CV08'
  | 'CV09'
  | 'CV10'
  | 'CV11'
  | 'CV12'
  | 'CV13'
  | 'CV14'
  | 'CV15'
  | 'CV16'
  | 'CV17'
  | 'CV18'
  | 'CV19'
  | 'CV20'
  | 'CV21'
  | 'CV22'
  | 'CV23'
  | 'CV24'
  | 'CV25'
  | 'CV26'
  | 'CV27'
  | 'CV28'
  | 'CV29'
  | 'CV30'
  | 'CV31'
  | 'CV32'
  | 'CV33'
  | 'CV34'
  | 'CV35'
  | 'CV36'
  | 'CV37'
  | 'CV38'
  | 'CV39'
  | 'CV40'
  | 'CV41'
  | 'CV42'
  | 'CV43'
  | 'CV44'
  | 'CV45'
  | 'CV46'
  | 'CV47'
  | 'CV48'
  | 'CV49'
  | 'CV50'
  | 'CV51'
  | 'CV52'
  | 'CV53'
  | 'CV54'
  | 'CV55'
  | 'CV56'
  | 'CV57'
  | 'CV58'
  | 'CV59'
  | 'CV60'
  | 'CV61'
  | 'CV62'
  | 'CV63'
  | 'CV64'
  | 'CV65'
  | 'CV66'
  | 'CV67'
  | 'CV68'
  | 'CV69'
  | 'CV70'
  | 'CV71'
  | 'CV72'
  | 'CV73'
  | 'CV74'
  | 'CV75'
  | 'CV76'
  | 'CV77'
  | 'CV78'
  | 'CV79'
  | 'CV80'
  | 'CV81'
  | 'CV82'
  | 'CV83'
  | 'CV84'
  | 'CV85'
  | 'CV86'
  | 'CV87'
  | 'CV88'
  | 'CV89'
  | 'CV90'
  | 'CV91'
  | 'CV92'
  | 'CV93'
  | 'CV94'
  | 'CV95'
  | 'CV96'
  | 'CV97'
  | 'CV98'
  | 'CV99'
interface ArcData {
  readonly startingAngle: number
  readonly endingAngle: number
  readonly innerRadius: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface DropShadowEffect {
  /**
   * The string literal representing the type of effect this is. Always check the `type` before reading other properties.
   */
  readonly type: 'DROP_SHADOW'
  /**
   * The color of the shadow, including its opacity.
   */
  readonly color: RGBA
  /**
   * The offset of the shadow relative to its object. Use this property to simulate the direction of the light.
   */
  readonly offset: Vector
  /**
   * The blur radius of the shadow. Must be >= 0. A lower radius creates a sharper shadow.
   */
  readonly radius: number
  /**
   * The distance by which to expand (or contract) the shadow. For drop shadows, a positive spread value creates a shadow larger than the node, whereas a negative value creates a shadow smaller than the node. For inner shadows, a positive `spread` value contracts the shadow. `spread` values are only accepted on rectangles and ellipses, or on frames, components, and instances with visible fill paints and `clipsContent` enabled. When left unspecified, the default value is 0.
   */
  readonly spread?: number
  /**
   * Whether this shadow is visible.
   */
  readonly visible: boolean
  /**
   * Determines how the color of this shadow blends with the colors underneath it. The typical default value is "NORMAL".
   */
  readonly blendMode: BlendMode
  /**
   * Whether the drop shadow should show behind translucent or transparent pixels within the node's geometry. Defaults to `false`.
   */
  readonly showShadowBehindNode?: boolean
  /**
   * The variables bound to a particular field on this shadow effect
   */
  readonly boundVariables?: {
    [field in VariableBindableEffectField]?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface InnerShadowEffect {
  /**
   * The string literal representing the type of effect this is. Always check the `type` before reading other properties.
   */
  readonly type: 'INNER_SHADOW'
  /**
   * The color of the shadow, including its opacity.
   */
  readonly color: RGBA
  /**
   * The offset of the shadow relative to its object. Use this property to simulate the direction of the light.
   */
  readonly offset: Vector
  /**
   * The blur radius of the shadow. Must be >= 0. A lower radius creates a sharper shadow.
   */
  readonly radius: number
  /**
   * The distance by which to expand (or contract) the shadow. For drop shadows, a positive spread value creates a shadow larger than the node, whereas a negative value creates a shadow smaller than the node. For inner shadows, a positive `spread` value contracts the shadow. `spread` values are only accepted on rectangles and ellipses, or on frames, components, and instances with visible fill paints and `clipsContent` enabled. When left unspecified, the default value is 0.
   */
  readonly spread?: number
  /**
   * Whether this shadow is visible.
   */
  readonly visible: boolean
  /**
   * Determines how the color of this shadow blends with the colors underneath it. The typical default value is "NORMAL".
   */
  readonly blendMode: BlendMode
  /**
   * The variables bound to a particular field on this shadow effect
   */
  readonly boundVariables?: {
    [field in VariableBindableEffectField]?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface BlurEffectBase {
  /**
   * The string literal representing the type of effect this is. Always check the `type` before reading other properties.
   */
  readonly type: 'LAYER_BLUR' | 'BACKGROUND_BLUR'
  /**
   * The radius of the blur. Must be >= 0. A lower radius creates a sharper blur. For progressive blurs, this is the end radius of the blur.
   */
  readonly radius: number
  /**
   * Whether this blur is visible.
   */
  readonly visible: boolean
  /**
   * The variable bound to the radius field on this blur effect
   * */
  readonly boundVariables?: {
    ['radius']?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface BlurEffectNormal extends BlurEffectBase {
  /**
   * The string literal representing the blur type. Always check the `blurType` before reading other properties.
   */
  readonly blurType: 'NORMAL'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface BlurEffectProgressive extends BlurEffectBase {
  /**
   * The string literal representing the blur type. Always check the `blurType` before reading other properties.
   */
  readonly blurType: 'PROGRESSIVE'
  /**
   * Radius of the starting point of the progressive blur.
   */
  readonly startRadius: number
  /**
   * Position of the starting point of the progressive blur. The position is in normalized object space (top left corner of the bounding box of the object is (0, 0) and the bottom right is (1,1)).
   */
  readonly startOffset: Vector
  /**
   * Position of the ending point of the progressive blur. The position is in normalized object space (top left corner of the bounding box of the object is (0, 0) and the bottom right is (1,1)).
   */
  readonly endOffset: Vector
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
type BlurEffect = BlurEffectNormal | BlurEffectProgressive
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface NoiseEffectBase {
  /**
   * The string literal representing the type of effect this is. Always check the `type` before reading other properties.
   */
  readonly type: 'NOISE'
  /**
   * The color of the noise effect.
   */
  readonly color: RGBA
  /**
   * Whether the noise effect is visible.
   */
  readonly visible: boolean
  /**
   * The blend mode of the noise.
   */
  readonly blendMode: BlendMode
  /**
   * The size of the noise effect.
   */
  readonly noiseSize: number
  /**
   * The density of the noise effect.
   */
  readonly density: number
  /**
   * Noise effects currently do not support binding variables.
   */
  readonly boundVariables?: {}
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface NoiseEffectMonotone extends NoiseEffectBase {
  /**
   * The string literal representing the type of noise this is. Always check the `noiseType` before reading
   * other properties.
   */
  readonly noiseType: 'MONOTONE'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface NoiseEffectDuotone extends NoiseEffectBase {
  /**
   * The string literal representing the type of noise this is. Always check the `noiseType` before reading
   * other properties.
   */
  readonly noiseType: 'DUOTONE'
  /**
   * The secondary color of the noise effect.
   */
  readonly secondaryColor: RGBA
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface NoiseEffectMultitone extends NoiseEffectBase {
  /**
   * The string literal representing the type of noise this is. Always check the `noiseType` before reading
   * other properties.
   */
  readonly noiseType: 'MULTITONE'
  /**
   * The opacity of the noise effect.
   */
  readonly opacity: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
type NoiseEffect = NoiseEffectMonotone | NoiseEffectDuotone | NoiseEffectMultitone
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface TextureEffect {
  /**
   * The string literal representing the type of effect this is. Always check the `type` before reading other properties.
   */
  readonly type: 'TEXTURE'
  /**
   * Whether the texture effect is visible.
   */
  readonly visible: boolean
  /**
   * The size of the texture effect.
   */
  readonly noiseSize: number
  /**
   * The radius of the texture effect.
   */
  readonly radius: number
  /**
   * Whether the texture is clipped to the shape.
   */
  readonly clipToShape: boolean
  /**
   * Texture effects currently do not support binding variables.
   */
  readonly boundVariables?: {}
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
interface GlassEffect {
  /**
   * The string literal representing the type of effect this is. Always check the `type` before reading other properties.
   */
  readonly type: 'GLASS'
  /**
   * Whether this glass effect is visible.
   */
  readonly visible: boolean
  /**
   * The intensity of specular highlights. Must be between 0 and 1. Higher values create brighter highlights.
   */
  readonly lightIntensity: number
  /**
   * The angle of the specular light in degrees. Controls the direction of highlights on the glass surface.
   */
  readonly lightAngle: number
  /**
   * The intensity of the refraction distortion. Must be between 0 and 1. Higher values create more distortion.
   */
  readonly refraction: number
  /**
   * The depth of the refraction effect. Must be >= 1. Higher values create deeper glass appearance.
   */
  readonly depth: number
  /**
   * The amount of chromatic aberration (color separation). Must be between 0 and 1. Higher values create more rainbow-like distortion at edges.
   */
  readonly dispersion: number
  /**
   * The radius of frost on the glass effect.
   */
  readonly radius: number
  /**
   * Glass effects currently do not support binding variables.
   */
  readonly boundVariables?: {}
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Effect
 */
type Effect =
  | DropShadowEffect
  | InnerShadowEffect
  | BlurEffect
  | NoiseEffect
  | TextureEffect
  | GlassEffect
/**
 * @see https://developers.figma.com/docs/plugins/api/Constraints
 */
type ConstraintType = 'MIN' | 'CENTER' | 'MAX' | 'STRETCH' | 'SCALE'
/**
 * @see https://developers.figma.com/docs/plugins/api/Constraints
 */
interface Constraints {
  readonly horizontal: ConstraintType
  readonly vertical: ConstraintType
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface ColorStop {
  /**
   * The position of the stop along the gradient between 0 and 1
   */
  readonly position: number
  /**
   * The color value of the gradient stop
   */
  readonly color: RGBA
  /**
   * The variable bound to a gradient stop
   */
  readonly boundVariables?: {
    [field in VariableBindableColorStopField]?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface ImageFilters {
  readonly exposure?: number
  readonly contrast?: number
  readonly saturation?: number
  readonly temperature?: number
  readonly tint?: number
  readonly highlights?: number
  readonly shadows?: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface SolidPaint {
  /**
   * The string literal "SOLID" representing the type of paint this is. Always check the `type` before reading other properties.
   */
  readonly type: 'SOLID'
  /**
   * The color of the paint. This does not have a alpha property, use `opacity` instead.
   *
   * You can use the {@link UtilAPI.solidPaint} utility function to set both `color` and `opacity` using CSS color strings:
   *
   * ```
   * // Create a new SolidPaint
   * const paint = figma.util.solidPaint('#FF00FF88')
   *
   * // Modify an existing SolidPaint
   * if (node.fills[0].type === 'SOLID') {
   *   const updated = figma.util.solidPaint('#FF00FF88', node.fills[0])
   * }
   * ```
   */
  readonly color: RGB
  /**
   * Whether the paint is visible. Defaults to true.
   */
  readonly visible?: boolean
  /**
   * The opacity of the paint. Must be a value between 0 and 1. Defaults to 1.
   *
   * You can use the {@link UtilAPI.solidPaint} utility function to set both `color` and `opacity` using CSS color strings:
   *
   * ```
   * // Create a new SolidPaint
   * const paint = figma.util.solidPaint('#FF00FF88')
   *
   * // Modify an existing SolidPaint
   * if (node.fills[0].type === 'SOLID') {
   *   const updated = figma.util.solidPaint('#FF00FF88', node.fills[0])
   * }
   * ```
   */
  readonly opacity?: number
  /**
   * Determines how the color of this paint blends with the colors underneath it. Defaults to "NORMAL".
   */
  readonly blendMode?: BlendMode
  /**
   * The variables bound to a particular field on this paint
   */
  readonly boundVariables?: {
    [field in VariableBindablePaintField]?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface GradientPaint {
  /**
   * The string literal representing the type of paint this is. Always check the `type` before reading other properties.
   */
  readonly type: 'GRADIENT_LINEAR' | 'GRADIENT_RADIAL' | 'GRADIENT_ANGULAR' | 'GRADIENT_DIAMOND'
  /**
   * The positioning of the gradient within the layer.
   */
  readonly gradientTransform: Transform
  /**
   * Array of colors and their position within the gradient.
   */
  readonly gradientStops: ReadonlyArray<ColorStop>
  readonly visible?: boolean
  readonly opacity?: number
  readonly blendMode?: BlendMode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface ImagePaint {
  /**
   * The string literal "IMAGE" representing the type of paint this is. Always check the `type` before reading other properties.
   */
  readonly type: 'IMAGE'
  /**
   * How the image is positioned and scaled within the layer. Same as in the properties panel.
   */
  readonly scaleMode: 'FILL' | 'FIT' | 'CROP' | 'TILE'
  /**
   * The hash (id) of the image used for this paint, if any. Use {@link PluginAPI.getImageByHash} to get the corresponding image object.
   */
  readonly imageHash: string | null
  /**
   * Applicable only for `scaleMode == "CROP"`. Determines how the image is positioned (thus, cropped) within the layer.
   */
  readonly imageTransform?: Transform
  /**
   * Applicable only for `scaleMode == "TILE"` (automatic for other modes). Determines the scaling (thus, repetition) of the image within the layer.
   */
  readonly scalingFactor?: number
  /**
   * Applicable only for `scaleMode == "TILE" | "FILL" | "FIT"` (automatic for `scaleMode == "CROP"`). Determines the rotation of the image within the layer. Must be in increments of +90.
   */
  readonly rotation?: number
  /**
   * The values for the image filter slides, equivalent to those in the paint picker. All values default to 0.0 and have range -1.0 to +1.0.
   */
  readonly filters?: ImageFilters
  readonly visible?: boolean
  readonly opacity?: number
  readonly blendMode?: BlendMode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface VideoPaint {
  /**
   * The string literal "VIDEO" representing the type of paint this is. Always check the `type` before reading other properties.
   */
  readonly type: 'VIDEO'
  /**
   * How the image is positioned and scaled within the layer. Same as in the properties panel.
   */
  readonly scaleMode: 'FILL' | 'FIT' | 'CROP' | 'TILE'
  /**
   * The hash (id) of the video used for this paint, if any.
   */
  readonly videoHash: string | null
  /**
   * Applicable only for `scaleMode == "CROP"`. Determines how the video is positioned (thus, cropped) within the layer.
   */
  readonly videoTransform?: Transform
  /**
   * Applicable only for `scaleMode == "TILE"` (automatic for other modes). Determines the scaling (thus, repetition) of the video within the layer.
   */
  readonly scalingFactor?: number
  /**
   * Applicable only for `scaleMode == "TILE" | "FILL" | "FIT"` (automatic for `scaleMode == "CROP"`). Determines the rotation of the video within the layer. Must be in increments of +90.
   */
  readonly rotation?: number
  /**
   * The values for the video filter slides, equivalent to those in the paint picker. All values default to 0.0 and have range -1.0 to +1.0.
   */
  readonly filters?: ImageFilters
  readonly visible?: boolean
  readonly opacity?: number
  readonly blendMode?: BlendMode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
interface PatternPaint {
  /**
   * The string literal representing the type of paint this is. Always check the `type` before reading other properties.
   */
  readonly type: 'PATTERN'
  /**
   * The node id of the source node for the pattern
   */
  readonly sourceNodeId: string
  /**
   * The way the pattern is tiled
   */
  readonly tileType: 'RECTANGULAR' | 'HORIZONTAL_HEXAGONAL' | 'VERTICAL_HEXAGONAL'
  /**
   * The scaling factor of the pattern
   */
  readonly scalingFactor: number
  /**
   * The spacing of the pattern
   */
  readonly spacing: Vector
  /**
   * The horizontal alignment of the pattern
   */
  readonly horizontalAlignment: 'START' | 'CENTER' | 'END'
  readonly visible?: boolean
  readonly opacity?: number
  readonly blendMode?: BlendMode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Paint
 */
type Paint = SolidPaint | GradientPaint | ImagePaint | VideoPaint | PatternPaint
interface Guide {
  readonly axis: 'X' | 'Y'
  readonly offset: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/LayoutGrid
 */
interface RowsColsLayoutGrid {
  /**
   * The string literal representing the layout grid this is. Always check the `pattern` before reading other properties.
   */
  readonly pattern: 'ROWS' | 'COLUMNS'
  /**
   * How the layout grid is aligned. "MIN" corresponds to "Left" or "Top" in the UI depending on the orientation of the layout grid. "MAX" corresponds to "Right" or "Bottom".
   */
  readonly alignment: 'MIN' | 'MAX' | 'STRETCH' | 'CENTER'
  /**
   * The distance between the sections of the grid.
   */
  readonly gutterSize: number
  /**
   * The number of sections. This can be set to the value `Infinity`, which corresponds to "Auto" in the UI.
   */
  readonly count: number
  /**
   * The size of a section. This is ignored when `alignment == "STRETCH"` since the size is set automatically.
   */
  readonly sectionSize?: number
  /**
   * The distance between the layout grid sections and the edges of the frame. This is ignored when `alignment == "CENTER"` since the size is set automatically.
   */
  readonly offset?: number
  /**
   * Whether the layout grid is visible. Defaults to true.
   */
  readonly visible?: boolean
  /**
   * The color of the layout grid.
   */
  readonly color?: RGBA
  /**
   * The variables bound to a particular field on this shadow effect
   */
  readonly boundVariables?: {
    [field in VariableBindableLayoutGridField]?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/LayoutGrid
 */
interface GridLayoutGrid {
  /**
   * The string literal "GRID" representing the layout grid this is. Always check the `pattern` before reading other properties.
   */
  readonly pattern: 'GRID'
  /**
   * The size of individual grid cells.
   */
  readonly sectionSize: number
  readonly visible?: boolean
  readonly color?: RGBA
  readonly boundVariables?: {
    ['sectionSize']?: VariableAlias
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/LayoutGrid
 */
type LayoutGrid = RowsColsLayoutGrid | GridLayoutGrid
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
interface ExportSettingsConstraints {
  readonly type: 'SCALE' | 'WIDTH' | 'HEIGHT'
  readonly value: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
interface ExportSettingsImage {
  /**
   * The string literal representing the export format.
   * When reading {@link ExportMixin.exportSettings }, always check the `format` before reading other properties.
   */
  readonly format: 'JPG' | 'PNG'
  /**
   * Whether only the contents of the node are exported, or any overlapping layer in the same area. Defaults to `true`.
   */
  readonly contentsOnly?: boolean
  /**
   * Use the full dimensions of the node regardless of whether or not it is cropped or the space around it is empty. Use this to export text nodes without cropping. Defaults to `false`.
   */
  readonly useAbsoluteBounds?: boolean
  /**
   * Suffix appended to the file name when exporting. Defaults to empty string.
   */
  readonly suffix?: string
  /**
   * Constraint on the image size when exporting.
   *
   * ```ts
   * interface ExportSettingsConstraints {
   *   type: "SCALE" | "WIDTH" | "HEIGHT"
   *   value: number
   * }
   * ```
   *
   * Defaults to 100% of image size `{ type: "SCALE", value: 1 }`.
   *
   *
   * - `"SCALE"`: The size of the exported image is proportional to the size of the exported layer in Figma. A `value` of 1 means the export is 100% of the layer size.
   * - `"WIDTH"`: The exported image is scaled to have a fixed width of `value`.
   * - `"HEIGHT"`: The exported image is scaled to have a fixed height of `value`.
   */
  readonly constraint?: ExportSettingsConstraints
  /**
   * Color profile of the export.
   *
   * Defaults to `'DOCUMENT'`
   *
   *
   * - `"DOCUMENT"`: Use the color profile of {@link DocumentNode.documentColorProfile}.
   * - `"SRGB"`: Use sRGB colors. This was the previous behavior of Figma before [color management](https://help.figma.com/hc/en-us/articles/360039825114).
   * - `"DISPLAY_P3_V4"`: Use Display P3 colors.
   */
  readonly colorProfile?: 'DOCUMENT' | 'SRGB' | 'DISPLAY_P3_V4'
}
interface ExportSettingsSVGBase {
  readonly contentsOnly?: boolean
  readonly useAbsoluteBounds?: boolean
  readonly suffix?: string
  /**
   * Whether text elements are rendered as outlines (vector paths) or as `<text>` elements in SVGs. Defaults to `true`.
   *
   * Rendering text elements as outlines guarantees that the text looks exactly the same in the SVG as it does in the browser/inside Figma.
   *
   * Exporting as `<text>` allows text to be selectable inside SVGs and generally makes the SVG easier to read. However, this relies on the browser’s rendering engine which can vary between browsers and/or operating systems. As such, visual accuracy is not guaranteed as the result could look different than in Figma.
   */
  readonly svgOutlineText?: boolean
  /**
   * Whether to include layer names as ID attributes in the SVG. This can be useful as a way to reference particular elements, but increases the size of the SVG. SVG features that require IDs to function, such as masks and gradients, will always have IDs. Defaults to `false`.
   */
  readonly svgIdAttribute?: boolean
  /**
   * Whether to export inside and outside strokes as an approximation of the original to simplify the output. Otherwise, it uses a more precise but more bloated masking technique. This is needed because SVGs only support center strokes. Defaults to `true`.
   */
  readonly svgSimplifyStroke?: boolean
  readonly colorProfile?: 'DOCUMENT' | 'SRGB' | 'DISPLAY_P3_V4'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
interface ExportSettingsSVG extends ExportSettingsSVGBase {
  /**
   * The string literal "SVG" representing the export format.
   * When reading {@link ExportMixin.exportSettings }, always check the `format` before reading other properties.
   */
  readonly format: 'SVG'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
interface ExportSettingsSVGString extends ExportSettingsSVGBase {
  /**
   * The string literal "SVG_STRING" representing the export format.
   */
  readonly format: 'SVG_STRING'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
interface ExportSettingsPDF {
  /**
   * The string literal "PDF" representing the export format.
   *  When reading {@link ExportMixin.exportSettings }, always check the `format` before reading other properties.
   */
  readonly format: 'PDF'
  readonly contentsOnly?: boolean
  readonly useAbsoluteBounds?: boolean
  readonly suffix?: string
  readonly colorProfile?: 'DOCUMENT' | 'SRGB' | 'DISPLAY_P3_V4'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
interface ExportSettingsREST {
  /**
   * Returns the equivalent REST API response of hitting the endpoint `https://api.figma.com/v1/files/:file_key/nodes?ids=:id`.
   *
   * This is useful if you have existing code that uses the REST API that you would like to have work inside a plugin as well. It can also be significantly more perfomant if you need to serialize large groups of nodes and their children.
   * Here is an example that logs the name of every child in a node using the REST API response:
   *
   * ```ts title="Using the JSON_REST_V1 format"
   * function visitChildren(child: Object) {
   *   console.log(child.name);
   *   if (child.children) {
   *     child.children.forEach(visitChildren);
   *   }
   * }
   *
   * const response = await figma.currentPage.selection[0].exportAsync({
   *   format: "JSON_REST_V1",
   * });
   *
   * visitChildren(response.document);
   * ```
   *
   * For more information on the shape of the output of the 'JSON_REST_V1' format, see the [files](https://developers.figma.com/docs/rest-api/files) documentation.
   */
  readonly format: 'JSON_REST_V1'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ExportSettings
 */
type ExportSettings = ExportSettingsImage | ExportSettingsSVG | ExportSettingsPDF
/**
 * @see https://developers.figma.com/docs/plugins/api/properties/VectorPath-windingrule
 */
type WindingRule = 'NONZERO' | 'EVENODD'
/**
 * @see https://developers.figma.com/docs/plugins/api/VectorNetwork
 */
interface VectorVertex {
  /**
   * x position of the vertex relative to the position of the node.
   */
  readonly x: number
  /**
   * y position of the vertex relative to the position of the node.
   */
  readonly y: number
  /**
   * Appearance of the end of a stroke. Defaults to the node's property if left unspecified.
   */
  readonly strokeCap?: StrokeCap
  /**
   * Appearance of the join between two segments. Defaults to the node's property if left unspecified.
   */
  readonly strokeJoin?: StrokeJoin
  /**
   * Corner radius at this vertex. Defaults to the node's property if left unspecified.
   */
  readonly cornerRadius?: number
  /**
   * How two curve handles behave relative to one another. Defaults to the node's property if left unspecified.
   */
  readonly handleMirroring?: HandleMirroring
}
/**
 * @see https://developers.figma.com/docs/plugins/api/VectorNetwork
 */
interface VectorSegment {
  /**
   * The index of the vertex that starts this segment.
   */
  readonly start: number
  /**
   * The index of the vertex that ends this segment.
   */
  readonly end: number
  /**
   * The tangent on the start side of this segment. Defaults to `{ x: 0, y: 0 }`
   */
  readonly tangentStart?: Vector
  /**
   * The tangent on the end side of this segment. Defaults to `{ x: 0, y: 0 }`
   */
  readonly tangentEnd?: Vector
}
/**
 * @see https://developers.figma.com/docs/plugins/api/VectorNetwork
 */
interface VectorRegion {
  /**
   * Winding rule for this region.
   */
  readonly windingRule: WindingRule
  /**
   * List of loops, each of which is a list of indices of `VectorSegment`(s)
   */
  readonly loops: ReadonlyArray<ReadonlyArray<number>>
  /**
   * Array of fill paints used on this region.
   */
  readonly fills?: ReadonlyArray<Paint>
  /**
   * Style key of fill style applied to this region, if any.
   */
  readonly fillStyleId?: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/VectorNetwork
 */
interface VectorNetwork {
  /**
   * Vertices are points in the graph.
   */
  readonly vertices: ReadonlyArray<VectorVertex>
  /**
   * Segments connect vertices.
   */
  readonly segments: ReadonlyArray<VectorSegment>
  /**
   * Regions are defined by segments and specify that an area is to be filled. Defaults to [].
   */
  readonly regions?: ReadonlyArray<VectorRegion>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/VectorPath
 */
interface VectorPath {
  /**
   * The winding rule for the path (same as in SVGs). This determines whether a given point in space is inside or outside the path.
   *
   * @remarks
   *
   * ```ts
   * type WindingRule = "NONZERO" | "EVENODD"
   * ```
   *
   * Winding rules work off a concept called the winding number, which tells you for a given point how many times the path winds around that point. This is described in much more detail [here](https://oreillymedia.github.io/Using_SVG/extras/ch06-fill-rule.html). This field can have three possible values:
   * - `"NONZERO"`: The point is considered inside the path if the winding number is NONZERO.
   * - `"EVENODD"`: The point is considered inside the path if the winding number is odd.
   * - `"NONE"`: An open path won’t have a fill.
   */
  readonly windingRule: WindingRule | 'NONE'
  /**
   * A series of path commands that encodes how to draw the path.
   *
   * @remarks
   *
   * Figma supports a subset of the SVG path format. Path commands must be joined into a single string in order separated by a single space. Here are the path commands we support:
   * - `M x y`: The absolute "move to" command.
   * - `L x y`: The absolute "line to" command.
   * - `Q x0 y0 x y`: The absolute "quadratic spline to" command. _Note_ that while Figma supports this as input, we will never generate this ourselves. All quadratic splines are converted to cubic splines internally.
   * - `C x0 y0 x1 y1 x y`: The absolute "cubic spline to" command.
   * - `Z`: The "close path" command.
   */
  readonly data: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/VectorPath
 */
type VectorPaths = ReadonlyArray<VectorPath>
interface LetterSpacing {
  readonly value: number
  readonly unit: 'PIXELS' | 'PERCENT'
}
type LineHeight =
  | {
      readonly value: number
      readonly unit: 'PIXELS' | 'PERCENT'
    }
  | {
      readonly unit: 'AUTO'
    }
type LeadingTrim = 'CAP_HEIGHT' | 'NONE'
type HyperlinkTarget = {
  type: 'URL' | 'NODE'
  value: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TextListOptions
 */
type TextListOptions = {
  type: 'ORDERED' | 'UNORDERED' | 'NONE'
}
type BlendMode =
  | 'PASS_THROUGH'
  | 'NORMAL'
  | 'DARKEN'
  | 'MULTIPLY'
  | 'LINEAR_BURN'
  | 'COLOR_BURN'
  | 'LIGHTEN'
  | 'SCREEN'
  | 'LINEAR_DODGE'
  | 'COLOR_DODGE'
  | 'OVERLAY'
  | 'SOFT_LIGHT'
  | 'HARD_LIGHT'
  | 'DIFFERENCE'
  | 'EXCLUSION'
  | 'HUE'
  | 'SATURATION'
  | 'COLOR'
  | 'LUMINOSITY'
type MaskType = 'ALPHA' | 'VECTOR' | 'LUMINANCE'
/**
 * @see https://developers.figma.com/docs/plugins/api/FontName
 */
interface Font {
  fontName: FontName
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TextStyleOverrides
 */
type TextStyleOverrideType = {
  type: 'SEMANTIC_ITALIC' | 'SEMANTIC_WEIGHT' | 'HYPERLINK' | 'TEXT_DECORATION'
}
interface StyledTextSegment {
  /**
   * The characters in the range of text with the same styles.
   */
  characters: string
  /**
   * Start index (inclusive) of the range of characters.
   */
  start: number
  /**
   * End index (exclusive) of the range of characters.
   */
  end: number
  /**
   * The size of the font. Has minimum value of 1.
   */
  fontSize: number
  /**
   * The font family (e.g. "Inter"), and font style (e.g. "Regular").
   */
  fontName: FontName
  /**
   * The weight of the font (e.g. 400 for "Regular", 700 for "Bold").
   */
  fontWeight: number
  /**
   * The style of the font (i.e. "REGULAR", "ITALIC").
   */
  fontStyle: FontStyle
  /**
   * Whether the text is underlined or has a strikethrough.
   */
  textDecoration: TextDecoration
  /**
   * The text decoration style (e.g. "SOLID"). If the text is not underlined, this value will be null.
   */
  textDecorationStyle: TextDecorationStyle | null
  /**
   * The text decoration offset. If the text is not underlined, this value will be null.
   */
  textDecorationOffset: TextDecorationOffset | null
  /**
   * The text decoration thickness. If the text is not underlined, this value will be null.
   */
  textDecorationThickness: TextDecorationThickness | null
  /**
   * The text decoration color. If the text is not underlined, this value will be null.
   */
  textDecorationColor: TextDecorationColor | null
  /**
   * Whether the text decoration skips descenders. If the text is not underlined, this value will be null.
   */
  textDecorationSkipInk: boolean | null
  /**
   * Overrides the case of the raw characters in the text node.
   */
  textCase: TextCase
  /**
   * The spacing between the lines in a paragraph of text.
   */
  lineHeight: LineHeight
  /**
   * The spacing between the individual characters.
   */
  letterSpacing: LetterSpacing
  /**
   * The paints used to fill the area of the shape.
   */
  fills: Paint[]
  /**
   * The id of the TextStyle object that the text properties of this node are linked to
   */
  textStyleId: string
  /**
   * The id of the PaintStyle object that the fills property of this node is linked to.
   */
  fillStyleId: string
  /**
   * The list settings.
   */
  listOptions: TextListOptions
  /**
   * The spacing between list items.
   */
  listSpacing: number
  /**
   * The indentation.
   */
  indentation: number
  /**
   * The paragraph indent.
   */
  paragraphIndent: number
  /**
   * The paragraph spacing.
   */
  paragraphSpacing: number
  /**
   * A HyperlinkTarget if the text node has exactly one hyperlink, or null if the node has none.
   */
  hyperlink: HyperlinkTarget | null
  /**
   * OpenType features that have been explicitly enabled or disabled.
   */
  openTypeFeatures: {
    readonly [feature in OpenTypeFeature]: boolean
  }
  /**
   * The variables bound to a particular field.
   */
  boundVariables?: {
    [field in VariableBindableTextField]?: VariableAlias
  }
  /**
   * Overrides applied over a text style.
   */
  textStyleOverrides: TextStyleOverrideType[]
}
type Reaction = {
  /**
   * @deprecated Use the `actions` field instead of the `action` field.
   */
  action?: Action
  actions?: Action[]
  trigger: Trigger | null
}
type VariableDataType = 'BOOLEAN' | 'FLOAT' | 'STRING' | 'VARIABLE_ALIAS' | 'COLOR' | 'EXPRESSION'
type ExpressionFunction =
  | 'ADDITION'
  | 'SUBTRACTION'
  | 'MULTIPLICATION'
  | 'DIVISION'
  | 'EQUALS'
  | 'NOT_EQUAL'
  | 'LESS_THAN'
  | 'LESS_THAN_OR_EQUAL'
  | 'GREATER_THAN'
  | 'GREATER_THAN_OR_EQUAL'
  | 'AND'
  | 'OR'
  | 'VAR_MODE_LOOKUP'
  | 'NEGATE'
  | 'NOT'
interface Expression {
  expressionFunction: ExpressionFunction
  expressionArguments: VariableData[]
}
type VariableValueWithExpression = VariableValue | Expression
interface VariableData {
  type?: VariableDataType
  resolvedType?: VariableResolvedDataType
  value?: VariableValueWithExpression
}
type ConditionalBlock = {
  condition?: VariableData
  actions: Action[]
}
/**
 * @see https://developers.figma.com/docs/plugins/api/DevStatus
 */
type DevStatus = {
  type: 'READY_FOR_DEV' | 'COMPLETED'
  description?: string
} | null
/**
 * @see https://developers.figma.com/docs/plugins/api/Action
 */
type Action =
  | {
      readonly type: 'BACK' | 'CLOSE'
    }
  | {
      readonly type: 'URL'
      url: string
      openInNewTab?: boolean
    }
  | {
      readonly type: 'UPDATE_MEDIA_RUNTIME'
      readonly destinationId: string | null
      readonly mediaAction:
        | 'PLAY'
        | 'PAUSE'
        | 'TOGGLE_PLAY_PAUSE'
        | 'MUTE'
        | 'UNMUTE'
        | 'TOGGLE_MUTE_UNMUTE'
    }
  | {
      readonly type: 'UPDATE_MEDIA_RUNTIME'
      readonly destinationId?: string | null
      readonly mediaAction: 'SKIP_FORWARD' | 'SKIP_BACKWARD'
      readonly amountToSkip: number
    }
  | {
      readonly type: 'UPDATE_MEDIA_RUNTIME'
      readonly destinationId?: string | null
      readonly mediaAction: 'SKIP_TO'
      readonly newTimestamp: number
    }
  | {
      readonly type: 'SET_VARIABLE'
      readonly variableId: string | null
      readonly variableValue?: VariableData
    }
  | {
      readonly type: 'SET_VARIABLE_MODE'
      readonly variableCollectionId: string | null
      readonly variableModeId: string | null
    }
  | {
      readonly type: 'CONDITIONAL'
      readonly conditionalBlocks: ConditionalBlock[]
    }
  | {
      readonly type: 'NODE'
      readonly destinationId: string | null
      readonly navigation: Navigation
      readonly transition: Transition | null
      /**
       * @deprecated Use `resetScrollPosition` instead.
       */
      readonly preserveScrollPosition?: boolean
      readonly overlayRelativePosition?: Vector
      readonly resetVideoPosition?: boolean
      readonly resetScrollPosition?: boolean
      readonly resetInteractiveComponents?: boolean
    }
/**
 * @see https://developers.figma.com/docs/plugins/api/Transition
 */
interface SimpleTransition {
  readonly type: 'DISSOLVE' | 'SMART_ANIMATE' | 'SCROLL_ANIMATE'
  readonly easing: Easing
  readonly duration: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Transition
 */
interface DirectionalTransition {
  readonly type: 'MOVE_IN' | 'MOVE_OUT' | 'PUSH' | 'SLIDE_IN' | 'SLIDE_OUT'
  readonly direction: 'LEFT' | 'RIGHT' | 'TOP' | 'BOTTOM'
  readonly matchLayers: boolean
  readonly easing: Easing
  readonly duration: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Transition
 */
type Transition = SimpleTransition | DirectionalTransition
type Trigger =
  | {
      readonly type: 'ON_CLICK' | 'ON_HOVER' | 'ON_PRESS' | 'ON_DRAG'
    }
  | {
      readonly type: 'AFTER_TIMEOUT'
      readonly timeout: number
    }
  | {
      readonly type: 'MOUSE_UP' | 'MOUSE_DOWN'
      readonly delay: number
    }
  | {
      readonly type: 'MOUSE_ENTER' | 'MOUSE_LEAVE'
      readonly delay: number
      readonly deprecatedVersion: boolean
    }
  | {
      readonly type: 'ON_KEY_DOWN'
      readonly device: 'KEYBOARD' | 'XBOX_ONE' | 'PS4' | 'SWITCH_PRO' | 'UNKNOWN_CONTROLLER'
      readonly keyCodes: ReadonlyArray<number>
    }
  | {
      readonly type: 'ON_MEDIA_HIT'
      readonly mediaHitTime: number
    }
  | {
      readonly type: 'ON_MEDIA_END'
    }
/**
 * @see https://developers.figma.com/docs/plugins/api/Action
 */
type Navigation = 'NAVIGATE' | 'SWAP' | 'OVERLAY' | 'SCROLL_TO' | 'CHANGE_TO'
/**
 * @see https://developers.figma.com/docs/plugins/api/Transition
 */
interface Easing {
  readonly type:
    | 'EASE_IN'
    | 'EASE_OUT'
    | 'EASE_IN_AND_OUT'
    | 'LINEAR'
    | 'EASE_IN_BACK'
    | 'EASE_OUT_BACK'
    | 'EASE_IN_AND_OUT_BACK'
    | 'CUSTOM_CUBIC_BEZIER'
    | 'GENTLE'
    | 'QUICK'
    | 'BOUNCY'
    | 'SLOW'
    | 'CUSTOM_SPRING'
  readonly easingFunctionCubicBezier?: EasingFunctionBezier
  readonly easingFunctionSpring?: EasingFunctionSpring
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Transition
 */
interface EasingFunctionBezier {
  x1: number
  y1: number
  x2: number
  y2: number
}
interface EasingFunctionSpring {
  mass: number
  stiffness: number
  damping: number
  initialVelocity: number
}
type OverflowDirection = 'NONE' | 'HORIZONTAL' | 'VERTICAL' | 'BOTH'
/**
 * @see https://developers.figma.com/docs/plugins/api/Overlay
 */
type OverlayPositionType =
  | 'CENTER'
  | 'TOP_LEFT'
  | 'TOP_CENTER'
  | 'TOP_RIGHT'
  | 'BOTTOM_LEFT'
  | 'BOTTOM_CENTER'
  | 'BOTTOM_RIGHT'
  | 'MANUAL'
/**
 * @see https://developers.figma.com/docs/plugins/api/Overlay
 */
type OverlayBackground =
  | {
      readonly type: 'NONE'
    }
  | {
      readonly type: 'SOLID_COLOR'
      readonly color: RGBA
    }
/**
 * @see https://developers.figma.com/docs/plugins/api/Overlay
 */
type OverlayBackgroundInteraction = 'NONE' | 'CLOSE_ON_CLICK_OUTSIDE'
/**
 * @see https://developers.figma.com/docs/plugins/api/PublishStatus
 */
type PublishStatus = 'UNPUBLISHED' | 'CURRENT' | 'CHANGED'
interface ConnectorEndpointPosition {
  position: {
    x: number
    y: number
  }
}
interface ConnectorEndpointPositionAndEndpointNodeId {
  position: {
    x: number
    y: number
  }
  endpointNodeId: string
}
interface ConnectorEndpointEndpointNodeIdAndMagnet {
  endpointNodeId: string
  magnet: 'NONE' | 'AUTO' | 'TOP' | 'LEFT' | 'BOTTOM' | 'RIGHT' | 'CENTER'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ConnectorEndpoint
 */
type ConnectorEndpoint =
  | ConnectorEndpointPosition
  | ConnectorEndpointEndpointNodeIdAndMagnet
  | ConnectorEndpointPositionAndEndpointNodeId
/**
 * @see https://developers.figma.com/docs/plugins/api/ConnectorStrokeCap
 */
type ConnectorStrokeCap =
  | 'NONE'
  | 'ARROW_EQUILATERAL'
  | 'ARROW_LINES'
  | 'TRIANGLE_FILLED'
  | 'DIAMOND_FILLED'
  | 'CIRCLE_FILLED'
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface BaseNodeMixin extends PluginDataMixin, DevResourcesMixin {
  /**
   * The unique identifier of a node. For example, `1:3`. The node id can be used with methods such as {@link PluginAPI.getNodeByIdAsync}, but plugins typically don't need to use this since you can usually just access a node directly.
   *
   * @remarks
   *
   * One possible use case for using the `id` is to have a serializable representation of a Figma node. To "deserialize" an id back into a node, pass it to {@link PluginAPI.getNodeByIdAsync}. This will return null if the node is no longer present in the document.
   *
   * In the URLs for Figma files, node ids are hyphenated. However, for use with the API, node ids must use colons. For example, if a Figma file URL has the node id `1-3`, you must convert it to `1:3`.
   */
  readonly id: string
  /**
   * Returns the parent of this node, if any. This property is not meant to be directly edited. To reparent, see {@link ChildrenMixin.appendChild}.
   *
   * @remarks
   *
   * The root node (i.e. `figma.root`) doesn't have a parent.
   *
   * Components accessed via {@link InstanceNode.getMainComponentAsync | instance.getMainComponentAsync()} or {@link InstanceNode.mainComponent | instance.mainComponent} do not always have a parent. They could be remote components or soft-deleted components.
   */
  readonly parent: (BaseNode & ChildrenMixin) | null
  /**
   * The name of the layer that appears in the layers panel. Calling `figma.root.name` will return the name, read-only, of the current file.
   *
   * @remarks
   *
   * If the node is a {@link TextNode}, the name will update automatically by default based on the `characters` property (`autoRename` is true). If you manually override the text node's name, it will set `autoRename` to false. This matches the behavior in the editor.
   *
   * If the node is a {@link PageNode} with no children and the name is a page divider name, it will set `isPageDivider` to true. A page divider name consists of all asterisks, all en dashes, all em dashes, or all spaces.
   */
  name: string
  /**
   * Returns true if this node has been removed since it was first accessed. If your plugin stays open for a while and stores references to nodes, you should write your code defensively and check that the nodes haven't been removed by the user.
   *
   * @remarks
   *
   * A node can be removed for any number of reasons. Some examples:
   * - Your plugin called node.remove() on it
   * - Someone else deleted the node using multiplayer
   * - The user triggered an undo action and the node was removed
   * - The user simply deleted the node
   * - You removed all children out of a group, and the group auto-deleted itself
   */
  readonly removed: boolean
  /**
   * Returns a string representation of the node. For debugging purposes only, do not rely on the exact output of this string in production code.
   *
   * @remarks
   *
   * This currently returns a string of the form `[Node ID]` where `ID` is the id of the node. This is just for debugging convenience so the node displays something useful when converted to a string. We recommend not relying on this in production.
   *
   * Example:
   * ```ts
   * // e.g. [Node 0:5]
   * console.log(`Current selected node ${figma.currentPage.selection[0]}`)
   * ```
   */
  toString(): string
  /**
   * Removes this node and **all of its children** from the document.
   *
   * @remarks
   *
   * If you want to only remove this node but not its children, you will have to first move them to another node before calling `remove()`.
   */
  remove(): void
  /**
   * Sets state on the node to show a button and description when the node is selected. Clears the button and description when `relaunchData` is `{}`.
   *
   * Note: In Figma and Dev Mode, this shows up in the properties panel. In FigJam, this shows up in the property menu. See [here](https://developers.figma.com/docs/plugins/api/properties/nodes-setrelaunchdata#example-figma-design-ui) for examples.
   *
   * @param data -
   *
   * ```ts
   * {
   *   [command: string]: string // description
   * }
   * ```
   * e.g. `data = { myCommand: 'Short description' }`
   * @param command - The string that will be passed as `figma.command` when the plugin is run after the button is clicked. This command must be present in the [manifest](https://developers.figma.com/docs/plugins/manifest#relaunchbuttons) under one of the `relaunchButtons`, which is used to look up the name to display for the button.
   * @param description - Up to three lines of text that will be displayed under the button to provide plugin specific information about the node or any clarification about the action the button will perform. This method will throw if description exceeds 1000 characters, but the UI will display even less (only 3 lines).
   *
   * @remarks
   *
   * Each call to this method sets entirely new relaunch data, removing any relaunch data and associated buttons/descriptions from before. To maintain buttons from a previous call one can store the button information using [setPluginData](https://developers.figma.com/docs/plugins/api/properties/nodes-setplugindata) and later fetch it with [getPluginData](https://developers.figma.com/docs/plugins/api/PageNode#getplugindata) before passing it on to `setRelaunchData`.
   *
   * To use this API, the plugin manifest must include a `relaunchButtons` section: see the [manifest guide](https://developers.figma.com/docs/plugins/manifest#relaunchbuttons) for more information.
   *
   * Note: Note that if the `command` passed to this method does not match a command in the manifest, nothing will be displayed. Similarly if the name of a command in the manifest changes or is removed, then all buttons with that command will disappear. This behavior can be used to remove buttons when a particular action is no longer supported by the plugin.
   *
   * In Figma design, the relaunch data can also be placed on the {@link PageNode} or {@link DocumentNode}, to show a button and description when nothing is selected. Relaunch buttons added to the {@link PageNode} will be displayed on that page, combined with buttons from the {@link DocumentNode} that show on every page. This is not supported in FigJam.
   *
   * ## Examples
   *
   * ```ts title="manifest.json"
   * // With the following in the manifest:
   * "relaunchButtons": [
   *   {"command": "edit", "name": "Edit shape"},
   *   {"command": "open", "name": "Open Shaper", "multipleSelection": true}
   * ]
   * ```
   *
   * ```ts title="code.ts"
   * // Add two buttons (ordered by the above array from the manifest):
   * // * an "Edit shape" button with a description of "Edit this trapezoid
   * //   with Shaper" that runs the plugin with `figma.command === 'edit'`.
   * // * an "Open Shaper" button with no description that runs the plugin with
   * //   `figma.command === 'open'`.
   * node.setRelaunchData({ edit: 'Edit this trapezoid with Shaper', open: '' })
   *
   * // With the following in the manifest:
   * "relaunchButtons": [
   *   {"command": "relaunch", "name": "Run again", "multipleSelection": true}
   * ]
   *
   * // Pass an empty description to show only a button
   * node.setRelaunchData({ relaunch: '' })
   *
   * // Remove the button and description
   * node.setRelaunchData({})
   * ```
   *
   * ### Example Figma Design UI
   * ![Relaunch UI in Figma Design](https://developers.figma.com/img/plugins/relaunch_ui_design.png)
   *
   * ### Example FigJam UI
   * ![Relaunch UI in FigJam](https://developers.figma.com/img/plugins/relaunch_ui_figjam.png)
   */
  setRelaunchData(data: { [command: string]: string }): void
  /**
   * Retreives the reluanch data stored on this node using {@link BaseNodeMixin.setRelaunchData}
   */
  getRelaunchData(): {
    [command: string]: string
  }
  /**
   * Returns true if Figma detects that a node is an asset, otherwise returns false. An asset is is either an icon or a raster image.
   *
   * This property is useful if you're building a [plugin for code generation](https://developers.figma.com/docs/plugins/codegen-plugins).
   *
   * Note: This property uses a set of heuristics to determine if a node is an asset. At a high level an icon is a small vector graphic and an image is a node with an image fill.
   */
  readonly isAsset: boolean
  /**
   * Resolves to a JSON object of CSS properties of the node. This is the same CSS that Figma shows in the inspect panel and is helpful if you are building a [plugin for code generation](https://developers.figma.com/docs/plugins/codegen-plugins).
   */
  getCSSAsync(): Promise<{
    [key: string]: string
  }>
  /**
   * Returns the top-most frame that contains this node. If the node is not inside a frame, this will return undefined.
   *
   * Note: This function will only work in Figma Design and will throw an error if called in FigJam or Slides.
   */
  getTopLevelFrame(): FrameNode | undefined
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface PluginDataMixin {
  /**
   * Retrieves custom information that was stored on this node or style using {@link PluginDataMixin.setPluginData}. If there is no data stored for the provided key, an empty string is returned.
   */
  getPluginData(key: string): string
  /**
   * Lets you store custom information on any node or style, **private** to your plugin. The total size of your entry (`pluginId`, `key`, `value`) cannot exceed 100 kB.
   *
   * @param key - The key under which to store the data. This is similar to writing to a plain object via `obj[key] = value`.
   * @param value - The data you want to store. If you want to store a value type other than a string, encode it as a JSON string first via `JSON.stringify` and `JSON.parse`. If you set the value to the empty string (""), the key/value pair is removed.
   *
   * @remarks
   *
   * The data is specific to your plugin ID. Plugins with other IDs won't be able to read this data. You can retrieve it later by calling `getPluginData` with the same key. To find all data stored on a node or style by your plugin use `getPluginDataKeys`.
   *
   * Caution: ⚠ The data is stored privately for **stability**, not **security**. It prevents other plugins from accessing with your data. It does not, however, prevent users from seeing the data given sufficient effort. For example, they could export the document as a .fig file and try to decode it.
   *
   * Caution: ⚠ Data will become inaccessible if your plugin ID changes.
   *
   *
   * Caution: ⚠ Total entry size cannot exceed 100 kB.
   */
  setPluginData(key: string, value: string): void
  /**
   * Retrieves a list of all keys stored on this node or style using using {@link PluginDataMixin.setPluginData}. This enables iterating through all data stored privately on a node or style by your plugin.
   */
  getPluginDataKeys(): string[]
  /**
   * Retrieves custom information that was stored on this node or style using {@link PluginDataMixin.setSharedPluginData}. If there is no data stored for the provided namespace and key, an empty string is returned.
   */
  getSharedPluginData(namespace: string, key: string): string
  /**
   * Lets you store custom information on any node or style, **public** to all plugins. The total size of your entry (`namespace`, `key`, `value`) cannot exceed 100 kB.
   *
   * @param namespace - A unique string to identify your plugin and avoid key collisions with other plugins. The namespace must be at least 3 alphanumeric characters.
   * @param key - The key under which to store the data. This is similar to writing to a plain object via `obj[key] = value`.
   * @param value - The data you want to store. If you want to store a value type other than a string, encode it as a JSON string first via `JSON.stringify` and `JSON.parse`. If you set the value to the empty string (""), the key/value pair is removed.
   *
   * @remarks
   *
   * This lets you store custom information on any node or style. You can retrieve it later by calling {@link PluginDataMixin.getSharedPluginData} with the same namespace and key. To find all data stored on a node or style in a particular namespace, use {@link PluginDataMixin.getSharedPluginDataKeys}.
   *
   * Any data you write using this API will be readable by any plugin. The intent is to allow plugins to interoperate with each other. Use {@link PluginDataMixin.setPluginData} instead if you don't want other plugins to be able to read your data.
   *
   * You must also provide a `namespace` argument to avoid key collisions with other plugins. This argument is mandatory to prevent multiple plugins from using generic key names like `data` and overwriting one another. We recommend passing a value that identifies your plugin. This namespace can be given to authors of other plugins so that they can read data from your plugin.
   *
   * Caution: ⚠ Total entry size cannot exceed 100 kB.
   */
  setSharedPluginData(namespace: string, key: string, value: string): void
  /**
   * Retrieves a list of all keys stored on this node or style using {@link PluginDataMixin.setSharedPluginData}. This enables iterating through all data stored in a given namespace.
   */
  getSharedPluginDataKeys(namespace: string): string[]
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface DevResourcesMixin {
  /**
   *
   * Gets all of the dev resources on a node. This includes any inherited dev resources from components and component sets.
   *
   * @param options - An optional parameter to include getting all of the dev resources on the children of the node. Defaults to false.
   */
  getDevResourcesAsync(options?: { includeChildren?: boolean }): Promise<DevResourceWithNodeId[]>
  /**
   *
   * Adds a dev resource to a node. This will fail if the node already has a dev resource with the same url.
   *
   * @param url - The url of the dev resource.
   * @param name - The name of the dev resource. If not provided, Figma will get the name from the url.
   *
   */
  addDevResourceAsync(url: string, name?: string): Promise<void>
  /**
   *
   * Edits a dev resource on a node. This will fail if the node does not have a dev resource with the same url.
   *
   * @param currentUrl - The current url of the dev resource.
   * @param newValue - The new name and/or url of the dev resource.
   *
   */
  editDevResourceAsync(
    currentUrl: string,
    newValue: {
      name?: string
      url?: string
    },
  ): Promise<void>
  /**
   *
   * Deletes a dev resource on a node. This will fail if the node does not have a dev resource with the same url.
   *
   * @param url - The url of the dev resource.
   */
  deleteDevResourceAsync(url: string): Promise<void>
  /**
   *
   * Caution: This is a private API only available to [Figma partners](https://www.figma.com/partners/)
   */
  setDevResourcePreviewAsync(url: string, preview: PlainTextElement): Promise<void>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface DevStatusMixin {
  /**
   * Whether the node is marked [ready for development](https://help.figma.com/hc/en-us/articles/15023124644247-Guide-to-Dev-Mode#01H8CR3K6V9S02RK503QCX0367) or [completed](https://help.figma.com/hc/en-us/articles/15023124644247-Guide-to-Dev-Mode#01H8CR3K6V9S02RK503QCX0367).
   *
   * There are some restrictions on how `devStatus` can be set:
   * - Can only be set on a node directly under a page or section
   * - Cannot be set on a node that is inside another node that already has a `devStatus`
   */
  devStatus: DevStatus
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface SceneNodeMixin extends ExplicitVariableModesMixin {
  /**
   * Whether the node is visible or not. Does not affect a plugin's ability to access the node.
   *
   * @remarks
   *
   * The value that this property returns is independent from the node's parent. i.e.
   * - The node isn't necessarily visible if this is `.visible === true`.
   * - The node isn't necessarily invisible if this is `.visible === false`.
   * - An object is visible if `.visible == true` for itself and **all** its parents.
   */
  visible: boolean
  /**
   * Whether the node is locked or not, preventing certain user interactions on the canvas such as selecting and dragging. Does not affect a plugin's ability to write to those properties.
   *
   * @remarks
   *
   * The value that this property returns is independent from the node's parent. i.e.
   * - The node isn't necessarily locked if this is `.locked === true`.
   * - The node isn't necessarily unlocked if this is `.locked === false`.
   * - An object is locked if `.locked == true` for itself or **any** of its parents.
   */
  locked: boolean
  /**
   * An array of nodes that are "stuck" to this node. In FigJam, stamps, highlights, and some widgets can "stick"
   * to other nodes if they are dragged on top of another node.
   *
   * @remarks
   *
   * This property is only available in FigJam.
   *
   *
   * In FigJam a stickable host that means that stickables, like `'STAMP'` nodes, are allowed to attach themselves to the node. If the stickable host moves all nodes that are in `stuckNodes` move along with it.
   */
  readonly stuckNodes: SceneNode[]
  /**
   * An array of `ConnectorNode`s that are attached to a node.
   */
  readonly attachedConnectors: ConnectorNode[]
  /**
   * All component properties that are attached on this node. A node can only have `componentPropertyReferences` if it is a component sublayer or an instance sublayer. It will be `null` otherwise. The value in the key-value pair refers to the component property name as returned by `componentPropertyDefinitions` on the containing component, component set or main component (for instances).
   */
  componentPropertyReferences:
    | {
        [nodeProperty in 'visible' | 'characters' | 'mainComponent']?: string
      }
    | null
  /**
   * The variables bound to a particular field on this node. Please see the [Working with Variables](https://developers.figma.com/docs/plugins/working-with-variables) guide for how to get and set variable bindings.
   */
  readonly boundVariables?: {
    readonly [field in VariableBindableNodeField]?: VariableAlias
  } & {
    readonly [field in VariableBindableTextField]?: VariableAlias[]
  } & {
    readonly fills?: VariableAlias[]
    readonly strokes?: VariableAlias[]
    readonly effects?: VariableAlias[]
    readonly layoutGrids?: VariableAlias[]
    readonly componentProperties?: {
      readonly [propertyName: string]: VariableAlias
    }
    readonly textRangeFills?: VariableAlias[]
  }
  /**
   * Binds the provided `field` on this node to the given variable. Please see the [Working with Variables](https://developers.figma.com/docs/plugins/working-with-variables) guide for how to get and set variable bindings.
   *
   * @deprecated Use `setBoundVariable(VariableBindableNodeField, Variable)` instead. This function will throw an exception if the plugin manifest contains `"documentAccess": "dynamic-page"`.
   */
  setBoundVariable(
    field: VariableBindableNodeField | VariableBindableTextField,
    variableId: string | null,
  ): void
  /**
   * Binds the provided `field` on this node to the given variable. Please see the [Working with Variables](https://developers.figma.com/docs/plugins/working-with-variables) guide for how to get and set variable bindings.
   *
   * If `null` is provided as the variable, the given `field` will be unbound from any variables.
   *
   * @param field - The field to bind the variable to.
   * @param variable - The variable to bind to the field. If `null` is provided, the field will be unbound from any variables. Make sure to pass a Variable object or null; passing a variable ID is deprecated.
   */
  setBoundVariable(
    field: VariableBindableNodeField | VariableBindableTextField,
    variable: Variable | null,
  ): void
  /**
   * An object, keyed by field, returning any variables that match the raw value of that field for the mode of the node (or the default variable value if no mode is set)
   *
   * @remarks
   *
   * Inferred variables are only returned for a field when it is not using a [bound variable](https://developers.figma.com/docs/plugins/api/node-properties#boundvariables).
   *
   * Variables can be inferred from:
   * - The collections of variables used in the file
   * - Variables from subscribed libraries, provided the variable is used in the file
   *
   * Variables can only be inferred when there is a single variable that matches the raw value used for the scope of the variable.
   * - i.e. For a property set to width: 100px, where there are two variables set to a value of 100 with the default scope, a value cannot be inferred as there are two matches.
   * - i.e. For a property set to width: 100px, where there is a variable set to 100 with a scope of "Width and height" and a variable set to 100 with a scope of "Corner radius", a value can be inferred as there is a single match for the given scope.
   *
   * Inferred variables for fills and strokes return a list of results where the index matches that of node.fills and node.strokes.
   * - i.e. node.inferredVariables.fills[0] holds the inferred variables for node.fills[0]
   */
  readonly inferredVariables?: {
    readonly [field in VariableBindableNodeField]?: VariableAlias[]
  } & {
    readonly fills?: VariableAlias[][]
    readonly strokes?: VariableAlias[][]
  }
  /**
   * The resolved mode for this node for each variable collection in this file.
   *
   * @remarks
   *
   * The set of resolved modes on a node includes the explicitly set modes on the node, as well as the explicitly set modes on ancestors of the node. By default, nodes [automatically inherit](https://help.figma.com/hc/en-us/articles/15343816063383-Modes-for-variables#Auto_mode) the modes of their parents.
   *
   * ```ts title="explicitVariableModes vs resolvedVariableModes"
   * // Create two collections with two modes each
   * const collection1 = figma.variables.createVariableCollection("Collection 1")
   * const collection1Mode1Id = collection1.modes[0].modeId
   * const collection1Mode2Id = collection1.addMode('Mode 2')
   * const collection2 = figma.variables.createVariableCollection("Collection 2")
   * const collection2Mode1Id = collection2.modes[0].modeId
   * const collection2Mode2Id = collection2.addMode('Mode 2')
   *
   * const parentFrame = figma.createFrame()
   * const childFrame = figma.createFrame()
   * parentFrame.appendChild(childFrame)
   *
   * parentFrame.setExplicitVariableModeForCollection(
   *   collection1,
   *   collection1Mode2Id
   * )
   * childFrame.setExplicitVariableModeForCollection(
   *   collection2,
   *   collection2Mode1Id
   * )
   *
   * // Example output (only collection2 is present):
   * // { 'VariableCollectionId:1:3': '1:2' }
   * console.log(childFrame.explicitVariableModes);
   *
   * // Example output (both collections are present):
   * // { 'VariableCollectionId:1:2': '1:1', 'VariableCollectionId:1:3': '1:2' }
   * console.log(childFrame.resolvedVariableModes);
   * ```
   */
  resolvedVariableModes: {
    [collectionId: string]: string
  }
}
type VariableBindableNodeField =
  | 'height'
  | 'width'
  | 'characters'
  | 'itemSpacing'
  | 'paddingLeft'
  | 'paddingRight'
  | 'paddingTop'
  | 'paddingBottom'
  | 'visible'
  | 'topLeftRadius'
  | 'topRightRadius'
  | 'bottomLeftRadius'
  | 'bottomRightRadius'
  | 'minWidth'
  | 'maxWidth'
  | 'minHeight'
  | 'maxHeight'
  | 'counterAxisSpacing'
  | 'strokeWeight'
  | 'strokeTopWeight'
  | 'strokeRightWeight'
  | 'strokeBottomWeight'
  | 'strokeLeftWeight'
  | 'opacity'
  | 'gridRowGap'
  | 'gridColumnGap'
type VariableBindableTextField =
  | 'fontFamily'
  | 'fontSize'
  | 'fontStyle'
  | 'fontWeight'
  | 'letterSpacing'
  | 'lineHeight'
  | 'paragraphSpacing'
  | 'paragraphIndent'
type VariableBindablePaintField = 'color'
type VariableBindablePaintStyleField = 'paints'
type VariableBindableColorStopField = 'color'
type VariableBindableEffectField = 'color' | 'radius' | 'spread' | 'offsetX' | 'offsetY'
type VariableBindableEffectStyleField = 'effects'
type VariableBindableLayoutGridField = 'sectionSize' | 'count' | 'offset' | 'gutterSize'
type VariableBindableGridStyleField = 'layoutGrids'
type VariableBindableComponentPropertyField = 'value'
type VariableBindableComponentPropertyDefinitionField = 'defaultValue'
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface StickableMixin {
  /**
   * If this node is stuck to another node this property returns that node or null.
   *
   * @remarks
   *
   * This property is only available in FigJam.
   */
  stuckTo: SceneNode | null
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface ChildrenMixin {
  /**
   * The list of children, sorted back-to-front. That is, the first child in the array is the bottommost layer on the screen, and the last child in the array is the topmost layer.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this property.
   *
   * @remarks
   *
   * This array can be read like and iterated like a regular array. However, calling this property always returns a new array, and both the property and the new array are read-only.
   *
   * As such, this property cannot be assigned to, and the array cannot be modified directly (it wouldn't do anything). Instead, use {@link ChildrenMixin.appendChild}, {@link ChildrenMixin.insertChild} or {@link BaseNodeMixin.remove}.
   *
   * Note: If you are curious, the reason why inserting children has to be done via API calls is because our internal representation for the layer tree uses [fractional indexing](https://www.figma.com/blog/multiplayer-editing-in-figma/) and {@link ChildrenMixin.insertChild} performs that conversion.
   */
  readonly children: ReadonlyArray<SceneNode>
  /**
   * Adds a new child to the end of the {@link ChildrenMixin.children} array. That is, visually on top of all other children.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @remarks
   *
   * Reparenting nodes is subject to many restrictions. For example, some nodes cannot be moved, others would break the document if moved. Below are possible exceptions that can be thrown if the operation is invalid.
   *
   * If this is called on an auto-layout frame, calling this function can cause this layer to be resized and children to be moved.
   */
  appendChild(child: SceneNode): void
  /**
   * Adds a new child at the specified index in the {@link ChildrenMixin.children} array.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param index - Determines where the new layer gets inserted. For example, suppose a group has layers A, B, C, where C is the top-most layer.
   * - `insertChild(0, D)` gives a group with layers **D**, A, B, C
   * - `insertChild(1, D)` gives a group with layers A, **D**, B, C
   * - `insertChild(2, D)` gives a group with layers A, B, **D**, C
   * - `insertChild(3, D)` gives a group with layers A, B, C, **D**
   * - `insertChild(4, D)` throws an error since the group originally only has 3 children
   *
   * @param child - The node to be inserted.
   *
   * @remarks
   *
   * Reparenting nodes is subject to many restrictions. For example, some nodes cannot be moved, others would break the document if moved. Below are possible exceptions that can be thrown if the operation is invalid.
   *
   * If this is called on an auto-layout frame, calling this function can cause this layer to be resized and children to be moved.
   */
  insertChild(index: number, child: SceneNode): void
  /**
   * Searches the immediate children of this node (i.e. not including the children's children). Returns all nodes for which `callback` returns true.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param callback - A function that evaluates whether to return the provided `node`. If this argument is omitted, `findChildren` returns `node.children`.
   *
   * @remarks
   *
   * Example: find all frames that are immediate child of the current page.
   * ```ts
   * const childFrames = figma.currentPage.findChildren(n => n.type === "FRAME")
   * ```
   */
  findChildren(callback?: (node: SceneNode) => boolean): SceneNode[]
  /**
   * Searches the immediate children of this node (i.e. not including the children's children). Returns the first node for which `callback` returns true.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param callback - A function that evaluates whether to return the provided `node`.
   *
   * @remarks
   *
   * This function returns `null` if no matching node is found.
   *
   * Example: find the first frame that is an immediate child of the current page.
   * ```ts
   * const firstChildFrame = figma.currentPage.findChild(n => n.type === "FRAME")
   * ```
   */
  findChild(callback: (node: SceneNode) => boolean): SceneNode | null
  /**
   * Searches this entire subtree (this node's children, its children's children, etc). Returns all nodes for which `callback` returns true.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param callback - A function that evaluates whether to return the provided `node`. If this argument is omitted, `findAll` returns all nodes in the subtree.
   *
   * @remarks
   *
   * Nodes are included in **back-to-front** order. Parents always appear before their children, and children appear in same relative order before their children, and children appear in same relative order as in the {@link ChildrenMixin.children} array.
   *
   * This traversal method is known as ["pre-order traversal"](https://en.wikipedia.org/wiki/Tree_traversal#Pre-order_(NLR)).
   *
   * Note that the node this method is called on is **not included**.
   *
   * Example: find all nodes whose name is "Color":
   * ```ts
   * const colors = figma.currentPage.findAll(n => n.name === "Color")
   * ```
   *
   * Caution: ⚠ Large documents in Figma can have tens of thousands of nodes. Be careful using this function as it could be very slow.
   * If you only need to search immediate children, it is much faster to call `node.children.filter(callback)` or `node.findChildren(callback)`.
   * Please refer to our [recommendations](https://developers.figma.com/docs/plugins/accessing-document#optimizing-traversals) for how to optimize document traversals.
   */
  findAll(callback?: (node: SceneNode) => boolean): SceneNode[]
  /**
   * Searches this entire subtree (this node's children, its children's children, etc). Returns the first node for which `callback` returns true.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param callback - A function that evaluates whether to return the provided `node`.
   *
   * @remarks
   * This function returns `null` if no matching node is found. The traversal order is the same as in {@link ChildrenMixin.findAll}.
   *
   * Note that the node this method is called on is **not included**.
   *
   * Example: find one node whose name is "Template":
   * ```ts
   * const template = figma.currentPage.findOne(n => n.name === "Template")
   * ```
   *
   * Caution: ⚠ Large documents in Figma can have tens of thousands of nodes. Be careful using this function as it could be very slow.
   * If you only need to search immediate children, it is much faster to call `node.children.find(callback)` or `node.findChild(callback)`.
   * Please refer to our [recommendations](https://developers.figma.com/docs/plugins/accessing-document#optimizing-traversals) for how to optimize document traversals.
   */
  findOne(callback: (node: SceneNode) => boolean): SceneNode | null
  /**
   * Searches this entire subtree (this node's children, its children's children, etc). Returns all nodes that satisfy all of specified criteria.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param criteria - An object of type {@link FindAllCriteria} that specifies the search criteria. The following criterias are currently supported:
   * - Nodes with specific {@link NodeType | types}
   * - Nodes with {@link PluginDataMixin.getSharedPluginData | SharedPluginData } by their namespace and keys.
   * - Nodes with {@link PluginDataMixin.getPluginData | PluginData } by their keys.
   * - A combination of any of the above.
   *
   * @remarks
   *
   * This is a faster but more limited search compared to {@link ChildrenMixin.findAll}, which lets you search nodes based on any logic you can include in a callback.
   *
   * When paired with [`figma.skipInvisibleInstanceChildren = true`](https://developers.figma.com/docs/plugins/api/properties/figma-skipinvisibleinstancechildren), this method can be hundreds of times faster in large documents with tens of thousands of nodes.
   *
   * The return value is narrowly typed to match the provided `types`, which makes it much easier to use node-type-specific properties. For example, `node.findAllWithCriteria({ types: ['TEXT'] })` will return `TextNode[]` instead of the more generic `SceneNode[]` from {@link ChildrenMixin.findAll}.
   *
   * Nodes are included in **back-to-front** order, which is the same order as in {@link ChildrenMixin.findAll}. Parents always appear before their children, and children appear in same relative order before their children, and children appear in same relative order as in the {@link ChildrenMixin.children} array.
   *
   * This traversal method is known as ["pre-order traversal"](https://en.wikipedia.org/wiki/Tree_traversal#Pre-order_(NLR)).
   *
   * Note: The node this method is called on is **not included**.
   *
   * ## Example Usages
   *
   * ### Find by node type
   * ```ts
   * // Find all component and component set nodes in the current
   * // page
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   types: ['COMPONENT', 'COMPONENT_SET']
   * })
   *
   * // Find all text nodes in the current page
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   types: ['TEXT']
   * })
   * ```
   *
   * ### Find by plugin data
   * ```ts
   * // Find all nodes in the current page with plugin data
   * // for the current plugin.
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   pluginData: {}
   * })
   *
   * // Find all nodes in the current page with plugin data
   * // for the current plugin with keys "a" or "b"
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   pluginData: {
   *     keys: ["a", "b"]
   *   }
   * })
   * ```
   *
   * ### Find by shared plugin data
   * ```ts
   * // Find all nodes in the current page with shared plugin data
   * // stored on the "bar" namespace
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   sharedPluginData: {
   *     namespace: "bar"
   *   }
   * })
   *
   * // Find all nodes in the current page with shared plugin data
   * // stored on the "bar" namespace and keys "a" or "b"
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   sharedPluginData: {
   *     namespace: "bar",
   *     keys: ["a", "b"]
   *   }
   * })
   * ```
   *
   * ### Combining criterias
   *
   * You can combine multiple criterias for further narrow your search.
   *
   * ```ts
   * // Find all text nodes in the current page with plugin data
   * // for the current plugin
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   types: ["TEXT"],
   *   pluginData: {}
   * })
   *
   * // Find all text nodes in the current page with shared plugin data
   * // stored on the "bar" namespace
   * const nodes = figma.currentPage.findAllWithCriteria({
   *   types: ["TEXT"],
   *   sharedPluginData: {
   *     namespace: "bar"
   *   }
   * })
   * ```
   */
  findAllWithCriteria<T extends NodeType[]>(
    criteria: FindAllCriteria<T>,
  ): Array<
    {
      type: T[number]
    } & SceneNode
  >
  /**
   * Searches this entire subtree (this node's children, its children's children, etc). Returns all widget nodes that match the provided `widgetId`.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param widgetId - The widget ID to search for, which represents unique identifier for the widget.
   *
   * @remarks
   *
   * `node.widgetId` is not to be confused with `node.id`, which is the unique identifier for the node on the canvas. In other words, if you clone a widget, the cloned widget will have a matching `widgetId` but a different `id`.
   */
  findWidgetNodesByWidgetId(widgetId: string): Array<WidgetNode>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface ConstraintMixin {
  /**
   * Constraints of this node relative to its containing {@link FrameNode}, if any.
   *
   * @remarks
   *
   * Not all node types have a constraint property. In particular, Group and BooleanOperation nodes do not have a constraint property themselves. Instead, resizing a frame applies the constraints on the children of those nodes.
   */
  constraints: Constraints
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface DimensionAndPositionMixin {
  /**
   * The position of the node. Identical to `relativeTransform[0][2]`.
   *
   * @remarks
   *
   * This value is automatically computed in children of auto-layout frames. Setting this property for these auto-layout children will no-op.
   */
  x: number
  /**
   * The position of the node. Identical to `relativeTransform[1][2]`.
   *
   * @remarks
   *
   * This value is automatically computed in children of auto-layout frames. Setting this property for these auto-layout children will no-op.
   */
  y: number
  /**
   * The width of the node. Use a resizing method to change this value.
   */
  readonly width: number
  /**
   * The height of the node. Use a resizing method to change this value.
   */
  readonly height: number
  /**
   * Applicable only to auto-layout frames and their direct children. Value must be positive. Set to `null` to remove `minWidth`.
   */
  minWidth: number | null
  /**
   * Applicable only to auto-layout frames and their direct children. Value must be positive. Set to `null` to remove `maxWidth`.
   */
  maxWidth: number | null
  /**
   * Applicable only to auto-layout frames and their direct children. Value must be positive. Set to null to remove `minHeight`.
   */
  minHeight: number | null
  /**
   * Applicable only to auto-layout frames and their direct children. Value must be positive. Set to `null` to remove `maxHeight`.
   */
  maxHeight: number | null
  /**
   * The position of a node relative to its **containing parent** as a {@link Transform} matrix. Not used for scaling, see `width` and `height` instead. Read the details page to understand the nuances of this property.
   *
   * @remarks
   *
   * ### Scale
   *
   * The `relativeTransform` is **not** used for scaling a node. The transform always has unit axes. That is, `sqrt(m00^2 + m10^2) == sqrt(m01^2 + m11^2) == 1`. In order to set the size of a node, use {@link LayoutMixin.resize} or {@link LayoutMixin.resizeWithoutConstraints}.
   *
   * Note: If you have a background in computer graphics, you may find it odd that we use the transform matrix in such a manner. This is because in 2D UI design, it's rare that you would want to scale the children when resizing a frame. And even if you did, it would be through more nuanced constraint settings that aren't captured by a transformation matrix.
   *
   * Also, if nodes had both a `width` and a separate `m00` scale property, it would be confusing to the users which one they're changing, especially during interactions like dragging.
   *
   * ### Container parent
   *
   * The relative transform of a node is shown relative to its container parent, which includes canvas nodes, frame nodes, component nodes, and instance nodes. Just like in the properties panel, it is **not** relative to its direct parent if the parent is a group or a boolean operation.
   *
   * Example 1: In the following hierarchy, the relative transform of `rectangle` is relative to `page` (which is just its position on the canvas).
   * ```text
   * page
   *   group
   *     rectangle
   * ```
   *
   * Example 2: In the following hierarchy, the relative transform of `rectangle` is relative to `frame`.
   * ```text
   * page
   *   frame
   *     boolean operation
   *       rectangle
   * ```
   *
   * One implication is that to calculate the absolute position of a node, you have to either use the {@link DimensionAndPositionMixin.absoluteTransform} property or multiply relative transform matrices while traversing up the node hierarchy while ignoring groups and boolean operations.
   *
   * Note: Why this complication? We do it this way because groups and boolean operations automatically resize to fit their children. While you _can_ set the relative transform of a group to move it, it's a property derived from the position and size of its children.
   * If the relative transform was always relative to it’s immediate parent, you could get into confusing situations where moving a layer inside a group by setting the relative transform changes the position of the parent, which then requires changing the relative transform of the child in order to preserve its on-screen position!
   *
   * ### Skew
   *
   * While it is possible to skew a layer by setting `m00`, `m01`, `m10`, `m11` to the right values, be aware that the skew will not be surfaced in the properties panel and may be confusing to the user dealing with a skewed node.
   *
   * ### Auto-layout frames
   *
   * The translation components `m02` and `m12` of the transform matrix is automatically computed in children of auto-layout frames. Setting `relativeTransform` on those layers will ignore the translation components, but do keep the rotation components.
   */
  relativeTransform: Transform
  /**
   * The position of a node relative to its **containing page** as a {@link Transform} matrix.
   */
  readonly absoluteTransform: Transform
  /**
   * The bounds of the node that does not include rendered properties like drop shadows or strokes. The `x` and `y` inside this property represent the absolute position of the node on the page.
   */
  readonly absoluteBoundingBox: Rect | null
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface LayoutMixin
  extends DimensionAndPositionMixin,
    AutoLayoutChildrenMixin,
    GridChildrenMixin {
  /**
   * The actual bounds of a node accounting for drop shadows, thick strokes, and anything else that may fall outside the node's regular bounding box defined in `x`, `y`, `width`, and `height`. The `x` and `y` inside this property represent the absolute position of the node on the page. This value will be `null` if the node is invisible.
   */
  readonly absoluteRenderBounds: Rect | null
  /**
   * When toggled, causes the layer to keep its proportions when the user resizes it via the properties panel.
   *
   * @deprecated Use `targetAspectRatio`, `lockAspectRatio`, and `unlockAspectRatio` instead.
   */
  constrainProportions: boolean
  /**
   * The rotation of the node in degrees. Returns values from -180 to 180. Identical to `Math.atan2(-m10, m00)` in the {@link DimensionAndPositionMixin.relativeTransform} matrix. When setting `rotation`, it will also set `m00`, `m01`, `m10`, `m11`.
   *
   * @remarks
   *
   * The rotation is with respect to the top-left of the object. Therefore, it is independent from the position of the object. If you want to rotate with respect to the center (or any arbitrary point), you can do so via matrix transformations and {@link DimensionAndPositionMixin.relativeTransform}.
   */
  rotation: number
  /**
   * Applicable only on auto-layout frames, their children, and text nodes. This is a shorthand for setting {@link AutoLayoutChildrenMixin.layoutGrow}, {@link AutoLayoutChildrenMixin.layoutAlign}, {@link AutoLayoutMixin.primaryAxisSizingMode}, and {@link AutoLayoutMixin.counterAxisSizingMode}. This field maps directly to the "Horizontal sizing" dropdown in the Figma UI.
   *
   * @remarks
   *
   * `"HUG"` is only valid on auto-layout frames and text nodes. `"FILL"` is only valid on auto-layout children. Setting these values when they don't apply will throw an error.
   *
   * ```ts title="Setting layoutSizingHorizontal on an auto-layout frame"
   * const parentFrame = figma.createFrame()
   * const child2 = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(child2)
   * parentFrame.layoutMode = 'VERTICAL'
   * // Make the second child twice as wide as the first
   * child2.resize(200, 100)
   *
   * // Parent frame (child 2 is clipped)
   * // +-------------+
   * // |+-----------+|
   * // ||           ||
   * // ||  Child 1  ||
   * // ||           ||
   * // |+-----------+|
   * // |+------------|
   * // ||            |
   * // ||  Child 2   |
   * // ||            |
   * // |+------------|
   * // +-------------+
   *
   * parentFrame.layoutSizingHorizontal = 'FIXED'
   *
   * // Parent frame (child 2 is not clipped)
   * // +------------------------+
   * // |+-----------+           |
   * // ||           |           |
   * // ||  Child 1  |           |
   * // ||           |           |
   * // |+-----------+           |
   * // |+----------------------+|
   * // ||                      ||
   * // ||       Child 2        ||
   * // ||                      ||
   * // |+----------------------+|
   * // +------------------------+
   * parentFrame.layoutSizingHorizontal = 'HUG'
   * ```
   *
   * ```ts title="Setting layoutSizingHorizontal on an auto-layout child"
   * const parentFrame = figma.createFrame()
   * const child2 = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(child2)
   * parentFrame.layoutMode = 'HORIZONTAL'
   * parentFrame.resize(300, 100)
   *
   * // Parent frame
   * // +-------------------------------------+
   * // |+-----------++-----------+           |
   * // ||           ||           |           |
   * // ||  Child 1  ||  Child 2  |           |
   * // ||           ||           |           |
   * // |+-----------++-----------+           |
   * // +-------------------------------------+
   * child2.layoutSizingHorizontal = 'FIXED'
   *
   * // Parent frame
   * // +-------------------------------------+
   * // |+-----------++----------------------+|
   * // ||           ||                      ||
   * // ||  Child 1  ||       Child 2        ||
   * // ||           ||                      ||
   * // |+-----------++----------------------+|
   * // +-------------------------------------+
   * child2.layoutSizingHorizontal = 'FILL'
   * ```
   */
  layoutSizingHorizontal: 'FIXED' | 'HUG' | 'FILL'
  /**
   * Applicable only on auto-layout frames, their children, and text nodes. This is a shorthand for setting {@link AutoLayoutChildrenMixin.layoutGrow}, {@link AutoLayoutChildrenMixin.layoutAlign}, {@link AutoLayoutMixin.primaryAxisSizingMode}, and {@link AutoLayoutMixin.counterAxisSizingMode}. This field maps directly to the "Vertical sizing" dropdown in the Figma UI.
   *
   * @remarks
   *
   * `"HUG"` is only valid on auto-layout frames and text nodes. `"FILL"` is only valid on auto-layout children. Setting these values when they don't apply will throw an error.
   */
  layoutSizingVertical: 'FIXED' | 'HUG' | 'FILL'
  /**
   * Resizes the node. If the node contains children with constraints, it applies those constraints during resizing. If the parent has auto-layout, causes the parent to be resized.
   *
   * @param width - New width of the node. Must be >= 0.01
   * @param height - New height of the node. Must be >= 0.01, except for {@link LineNode} which must always be given a height of exactly 0.
   *
   * @remarks
   *
   * Since this function applies constraints recursively (when there are multiple levels of nested frames with constraints), calls to this function could be expensive. Use {@link LayoutMixin.resizeWithoutConstraints} if you don't need to apply constraints.
   *
   * Caution: ⚠️ If this node is a text node with a missing font or contains a text node with a missing font, the text node will be resized but the text will not re-layout until the next time the text node is opened on a machine that _has_ the font. This can cause the text node to re-layout immediately and be surprising to your user. Consider checking if the document {@link PluginAPI.hasMissingFont} before using this function.
   *
   * Ignores `targetAspectRatio`. If `targetAspectRatio` has been set, it will be updated to correspond to the post-resize value.
   */
  resize(width: number, height: number): void
  /**
   * Resizes the node. Children of the node are never resized, even if those children have constraints. If the parent has auto-layout, causes the parent to be resized (this constraint cannot be ignored).
   *
   * @param width - New width of the node. Must be >= 0.01
   * @param height - New height of the node. Must be >= 0.01, except for {@link LineNode} which must always be given a height of exactly 0.
   *
   * @remarks
   *
   * This function will not cause its children to resize. Use {@link LayoutMixin.resize} if you need to apply constraints.
   *
   * Caution: ⚠️ If this node is a text node with a missing font, the text node will be resized but the text will not re-layout until the next time the text node is opened on a machine that _has_ the font. This can cause the text node to re-layout immediately and be surprising to your user. Consider checking the text node property [`hasMissingFont`](https://developers.figma.com/docs/plugins/api/TextNode#hasmissingfont) before using this function.
   *
   * Ignores `targetAspectRatio`. If `targetAspectRatio` has been set, it will be updated to correspond to the post-resize value.
   */
  resizeWithoutConstraints(width: number, height: number): void
  /**
   * Rescales the node. This API function is the equivalent of using the Scale Tool from the toolbar.
   *
   * @param scale - The scale by which to resize the node from the top-left corner.
   *
   * @remarks
   *
   * The scale factor must be >= 0.01
   */
  rescale(scale: number): void
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface AspectRatioLockMixin {
  /**
   * When toggled, causes the layer to keep its proportions when the user resizes it via auto layout, constraints, the properties panel, or on-canvas.
   * If not set, the node does NOT resize toward a specific targetAspectRatio.
   *
   * @remarks
   *
   * Use `lockAspectRatio` and `unlockAspectRatio` to set targetAspectRatio.
   *
   * ```ts
   * const parentFrame = figma.createFrame()
   * const image = await figma.createNodeFromJSXAsync(
   *   <figma.widget.Image
   *     src="https://picsum.photos/200/300"
   *     width={200}
   *     height={300}
   *   />
   * )
   * parentFrame.appendChild(image)
   *
   * image.lockAspectRatio() // set to 2:3 ratio, implicit from the size
   *
   * // Add autolayout to parent, which defaults to Hug x Hug
   * parentFrame.layoutMode = 'HORIZONTAL'
   *
   * // Set child to fill-width
   * image.layoutGrow = 1
   *
   * // Resize parent to be much larger
   * parentFrame.resize(500, 1000)
   *
   * // Since the child is fill-width, it will expand to the available space
   * image.width == 500
   * image.height == 750
   * // Image maintains the 2:3 ratio even as it grew with auto layout!
   * ```
   *
   * Caution: ⚠️ `targetAspectRatio` cannot be used with auto-resizing text (TextNodes where textAutoResize !== NONE).
   */
  readonly targetAspectRatio: Vector | null
  /**
   * Locks the node's `targetAspectRatio` to the current ratio of its width and height.
   */
  lockAspectRatio(): void
  /**
   * Unlocks the node's `targetAspectRatio`.
   */
  unlockAspectRatio(): void
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface BlendMixin extends MinimalBlendMixin {
  /**
   * Whether this node is a mask. A mask node masks its subsequent siblings.
   *
   * @remarks
   *
   * Since a mask node masks all of its subsequent siblings, enabling `isMask` on a node that is not in a group-like container designed to stop mask propagation can have unintented consequences — that is, it may "mask" (often in practice, hide) more siblings than you intend. When enabling `isMask`, ensure you have contained its propagation propertly. ("Subsequent siblings" are siblings listed _after_ this node in a `children` array in the plugin API; this corresponds to layers shown _above_ this node in the layers panel.)
   *
   * Example:
   * ```ts
   * const rect = figma.createRectangle()
   * const circleToMask = figma.createEllipse()
   * const otherCircle1 = figma.createEllipse()
   * const otherCircle2 = figma.createEllipse()
   *
   * // In the layers panel, this would look something like:
   * // - otherCircle2
   * // - otherCircle1
   * // - circleToMask
   * // - rect
   * //
   * // So if I enable `rect.isMask`, the rect will mask ALL other nodes,
   * // because they are all siblings.
   * //
   * // If I only want `rect` to mask `circleToMask`, I should group
   * // them first.
   * figma.group([rect, circleToMask], figma.currentPage,
   *             figma.currentPage.children.indexOf(circleToMask))
   * rect.isMask = true
   *
   * // Now `rect` only masks its siblings above it in its group
   * // (`circleToMask`) but not the circles outside of the group.
   * // In the layers panel this would look like:
   * // - otherCircle2
   * // - otherCircle1
   * // - Group
   * //   - circleToMask [this is the only node masked by rect]
   * //   - rect (isMask)
   *
   * ```
   */
  isMask: boolean
  /**
   * Type of masking to use if this node is a mask. Defaults to `"ALPHA"`. You must check `isMask` to verify that this is a mask; changing `maskType` does not automatically turn on `isMask`, and a node that is not a mask can still have a `maskType`.
   */
  maskType: MaskType
  /**
   * Array of effects. See {@link Effect} type. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   */
  effects: ReadonlyArray<Effect>
  /**
   * The id of the {@link EffectStyle} object that the properties of this node are linked to.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use `setEffectStyleIdAsync` to update the style.
   */
  effectStyleId: string
  /**
   * Set the {@link EffectStyle} that the properties of this node are linked to.
   */
  setEffectStyleIdAsync(styleId: string): Promise<void>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface ContainerMixin {
  /**
   * Whether this container is shown as expanded in the layers panel.
   */
  expanded: boolean
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface DeprecatedBackgroundMixin {
  /**
   * @deprecated Use `fills` instead.
   */
  backgrounds: ReadonlyArray<Paint>
  /**
   * @deprecated Use `fillStyleId` instead. This property is read-only if the manifest contains `"documentAccess": "dynamic-page"`.
   */
  backgroundStyleId: string
}
declare type StrokeCap =
  | 'NONE'
  | 'ROUND'
  | 'SQUARE'
  | 'ARROW_LINES'
  | 'ARROW_EQUILATERAL'
  | 'DIAMOND_FILLED'
  | 'TRIANGLE_FILLED'
  | 'CIRCLE_FILLED'
declare type StrokeJoin = 'MITER' | 'BEVEL' | 'ROUND'
declare type HandleMirroring = 'NONE' | 'ANGLE' | 'ANGLE_AND_LENGTH'
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface AutoLayoutMixin {
  /**
   * Determines whether this layer uses auto-layout to position its children. Defaults to "NONE".
   *
   * @remarks
   *
   * Changing this property will cause the position of the children of this layer to change as a side-effect. It also causes the size of this layer to change, since at least one dimension of auto-layout frames is automatically calculated.
   *
   * As a consequence, note that if a frame has `layoutMode === "NONE"`, calling `layoutMode = "VERTICAL"; layoutMode = "NONE"` does not leave the document unchanged. Removing auto-layout from a frame does not restore the children to their original positions.
   *
   * This property must be set to `"HORIZONTAL"` or `"VERTICAL"` in order for the {@link AutoLayoutMixin.primaryAxisSizingMode}, {@link AutoLayoutMixin.counterAxisSizingMode}, {@link AutoLayoutMixin.layoutWrap}, {@link AutoLayoutMixin.primaryAxisAlignItems}, {@link AutoLayoutMixin.counterAxisAlignItems}, {@link AutoLayoutMixin.counterAxisAlignContent}, {@link AutoLayoutMixin.paddingTop}, {@link AutoLayoutMixin.paddingBottom}, {@link AutoLayoutMixin.paddingLeft}, {@link AutoLayoutMixin.paddingRight}, {@link AutoLayoutMixin.itemSpacing}, {@link AutoLayoutMixin.counterAxisSpacing}, {@link AutoLayoutMixin.itemReverseZIndex}, and {@link AutoLayoutMixin.strokesIncludedInLayout} properties to be applicable.
   *
   * ```ts title="Auto-layout frame with horizontal layout"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   *
   * // Parent frame
   * // +--------------------------+
   * // |+-----------++-----------+|
   * // ||           ||           ||
   * // ||  Child 1  ||  Child 2  ||
   * // ||           ||           ||
   * // |+-----------++-----------+|
   * // +--------------------------+
   * parentFrame.layoutMode = 'HORIZONTAL'
   * ```
   *
   * ```ts title="Auto-layout frame with vertical layout"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   *
   * // Parent frame
   * // +-------------+
   * // |+-----------+|
   * // ||           ||
   * // ||  Child 1  ||
   * // ||           ||
   * // |+-----------+|
   * // |+-----------+|
   * // ||           ||
   * // ||  Child 2  ||
   * // ||           ||
   * // |+-----------+|
   * // +-------------+
   * parentFrame.layoutMode = 'VERTICAL'
   */
  layoutMode: 'NONE' | 'HORIZONTAL' | 'VERTICAL' | 'GRID'
  /**
   * Applicable only on auto-layout frames. Determines the left padding between the border of the frame and its children.
   */
  paddingLeft: number
  /**
   * Applicable only on auto-layout frames. Determines the right padding between the border of the frame and its children.
   */
  paddingRight: number
  /**
   * Applicable only on auto-layout frames. Determines the top padding between the border of the frame and its children.
   */
  paddingTop: number
  /**
   * Applicable only on auto-layout frames. Determines the bottom padding between the border of the frame and its children.
   */
  paddingBottom: number
  /**
   * @deprecated Use `paddingLeft` and `paddingRight` instead.
   */
  horizontalPadding: number
  /**
   * @deprecated Use `paddingTop` and `paddingBottom` instead.
   */
  verticalPadding: number
  /**
   * Applicable only on auto-layout frames. Determines whether the primary axis has a fixed length (determined by the user) or an automatic length (determined by the layout engine).
   *
   * @remarks
   *
   * Auto-layout frames have a **primary axis**, which is the axis that resizes when you add new items into the frame. For example, frames with "VERTICAL" {@link AutoLayoutMixin.layoutMode} resize in the y-axis.
   *
   * - `"FIXED"`: The primary axis length is determined by the user or plugins, unless the {@link AutoLayoutChildrenMixin.layoutAlign} is set to “STRETCH” or {@link AutoLayoutChildrenMixin.layoutGrow} is 1.
   * - `"AUTO"`: The primary axis length is determined by the size of the children. If set, the auto-layout frame will automatically resize along the counter axis to fit its children.
   *
   * Note: `“AUTO”` should not be used in any axes where {@link AutoLayoutChildrenMixin.layoutAlign} = “STRETCH” or {@link AutoLayoutChildrenMixin.layoutGrow} = 1. Either use `“FIXED”` or disable {@link AutoLayoutChildrenMixin.layoutAlign}/{@link AutoLayoutChildrenMixin.layoutGrow}.
   */
  primaryAxisSizingMode: 'FIXED' | 'AUTO'
  /**
   * Applicable only on auto-layout frames. Determines whether the counter axis has a fixed length (determined by the user) or an automatic length (determined by the layout engine).
   *
   * @remarks
   *
   * Auto-layout frames have a **primary axis**, which is the axis that resizes when you add new items into the frame. For example, frames with "VERTICAL" {@link AutoLayoutMixin.layoutMode} resize in the y-axis.
   *
   * The other axis is called the **counter axis**.
   * - `"FIXED"`: The counter axis length is determined by the user or plugins, unless the {@link AutoLayoutChildrenMixin.layoutAlign} is set to “STRETCH” or {@link AutoLayoutChildrenMixin.layoutGrow} is 1.
   * - `"AUTO"`: The counter axis length is determined by the size of the children. If set, the auto-layout frame will automatically resize along the counter axis to fit its children.
   *
   * Note: `“AUTO”` cannot be used in any axes where {@link AutoLayoutChildrenMixin.layoutAlign} = “STRETCH” or {@link AutoLayoutChildrenMixin.layoutGrow} = 1. Either use `“FIXED”` or disable {@link AutoLayoutChildrenMixin.layoutAlign}/{@link AutoLayoutChildrenMixin.layoutGrow}.
   *
   * ```ts title="Horizontal auto-layout frame with different counterAxisSizingMode values"
   * const parentFrame = figma.createFrame()
   * const child2 = figma.createFrame()
   * // Make the second child 200px high instead of the default 100px
   * child2.resize(100, 200)
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(child2)
   * parentFrame.layoutMode = 'HORIZONTAL'
   *
   * // Parent frame
   * // +--------------------------+
   * // |+-----------++-----------+|
   * // ||           ||           ||
   * // ||  Child 1  ||  Child 2  ||
   * // ||           ||           ||
   * // |+-----------+|           ||
   * // +--------------------------+
   * parentFrame.counterAxisSizingMode = 'FIXED' // Child 2 is clipped
   *
   * // Parent frame
   * // +--------------------------+
   * // |+-----------++-----------+|
   * // ||           ||           ||
   * // ||  Child 1  ||  Child 2  ||
   * // ||           ||           ||
   * // |+-----------+|           ||
   * // |             |           ||
   * // |             |           ||
   * // |             +-----------+|
   * // +--------------------------+
   * parentFrame.counterAxisSizingMode = 'AUTO'
   * ```
   */
  counterAxisSizingMode: 'FIXED' | 'AUTO'
  /**
   * Applicable only on auto-layout frames. Determines whether strokes are included in [layout calculations](https://help.figma.com/hc/en-us/articles/31289464393751-Use-the-horizontal-and-vertical-flows-in-auto-layout#01JT9NA4HVT02ZPE7BA86SFCD6). When true, auto-layout frames behave like css `box-sizing: border-box`.
   *
   * @remarks
   *
   * ```ts title="Auto-layout frame with strokes included in layout"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.layoutMode = 'HORIZONTAL'
   * // Let the height of the parent frame resize to fit the children
   * parentFrame.counterAxisSizingMode = 'AUTO'
   *
   * // Thick stroke around parent frame to illustrate layout differences
   * parentFrame.strokes = [{ type: 'SOLID', color: { r: 0, g: 0, b: 0 }}]
   * parentFrame.strokeWeight = 10
   *
   * // Parent frame (strokes overlap with children)
   * // +--------------------------+
   * // |+-----------++-----------+|
   * // ||           ||           ||
   * // ||  Child 1  ||  Child 2  ||
   * // ||           ||           ||
   * // |+-----------++-----------+|
   * // +--------------------------+
   * parentFrame.strokesIncludedInLayout = false
   *
   * // Parent frame (strokes do not overlap with children)
   * // +--------------------------------+
   * // |                                |
   * // |   +-----------++-----------+   |
   * // |   |           ||           |   |
   * // |   |  Child 1  ||  Child 2  |   |
   * // |   |           ||           |   |
   * // |   +-----------++-----------+   |
   * // |                                |
   * // +--------------------------------+
   * parentFrame.strokesIncludedInLayout = true
   * ```
   */
  strokesIncludedInLayout: boolean
  /**
   * Determines whether this layer should use wrapping auto-layout. Defaults to `"NO_WRAP"`.
   *
   * @remarks
   *
   * This property can only be set on layers with `layoutMode === "HORIZONTAL"`. Setting it on layers without this property will throw an Error.
   *
   * This property must be set to `"WRAP"` in order for the {@link AutoLayoutMixin.counterAxisSpacing} and {@link AutoLayoutMixin.counterAxisAlignContent} properties to be applicable.
   */
  layoutWrap: 'NO_WRAP' | 'WRAP'
  /**
   * Applicable only on "HORIZONTAL" or "VERTICAL" auto-layout frames. Determines how the auto-layout frame’s children should be aligned in the primary axis direction.
   *
   * @remarks
   *
   * Changing this property will cause all the children to update their `x` and `y` values.
   *
   * - In horizontal auto-layout frames, `“MIN”` and `“MAX”` correspond to left and right respectively.
   * - In vertical auto-layout frames, `“MIN”` and `“MAX”` correspond to top and bottom respectively.
   * - `“SPACE_BETWEEN”` will cause the children to space themselves evenly along the primary axis, only putting the extra space between the children.
   *
   * The corresponding property for the counter axis direction is {@link AutoLayoutMixin.counterAxisAlignItems}.
   *
   * ```ts title="Horizontal auto-layout frame with different primaryAxisAlignItems values"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.layoutMode = 'HORIZONTAL'
   *
   * // Make the parent frame wider so we can see the effects of
   * // the different primaryAxisAlignItems values
   * parentFrame.resize(300, 100)
   *
   * // Parent frame
   * // +------------------------------------+
   * // | +-----------++-----------+         |
   * // | |           ||           |         |
   * // | |  Child 1  ||  Child 2  |         |
   * // | |           ||           |         |
   * // | +-----------++-----------+         |
   * // +------------------------------------+
   * parentFrame.primaryAxisAlignItems = 'MIN'
   *
   * // Parent frame
   * // +------------------------------------+
   * // |          +-----------++-----------+|
   * // |          |           ||           ||
   * // |          |  Child 1  ||  Child 2  ||
   * // |          |           ||           ||
   * // |          +-----------++-----------+|
   * // +------------------------------------+
   * parentFrame.primaryAxisAlignItems = 'MAX'
   *
   * // Parent frame
   * // +------------------------------------+
   * // |     +-----------++-----------+     |
   * // |     |           ||           |     |
   * // |     |  Child 1  ||  Child 2  |     |
   * // |     |           ||           |     |
   * // |     +-----------++-----------+     |
   * // +------------------------------------+
   * parentFrame.primaryAxisAlignItems = 'CENTER'
   *
   * // Parent frame
   * // +------------------------------------+
   * // |+-----------+          +-----------+|
   * // ||           |          |           ||
   * // ||  Child 1  |          |  Child 2  ||
   * // ||           |          |           ||
   * // |+-----------+          +-----------+|
   * // +------------------------------------+
   * parentFrame.primaryAxisAlignItems = 'SPACE_BETWEEN'
   * ```
   */
  primaryAxisAlignItems: 'MIN' | 'MAX' | 'CENTER' | 'SPACE_BETWEEN'
  /**
   * Applicable only on "HORIZONTAL" or "VERTICAL" auto-layout frames. Determines how the auto-layout frame’s children should be aligned in the counter axis direction.
   *
   * @remarks
   *
   * Changing this property will cause all the children to update their `x` and `y` values.
   *
   * - In horizontal auto-layout frames, `“MIN”` and `“MAX”` correspond to top and bottom respectively.
   * - In vertical auto-layout frames, `“MIN”` and `“MAX”` correspond to left and right respectively.
   * - `"BASELINE"` can only be set on horizontal auto-layout frames, and aligns all children along the [text baseline](https://help.figma.com/hc/en-us/articles/360040451373-Explore-auto-layout-properties#Text_baseline_alignment).
   *
   * The corresponding property for the primary axis direction is {@link AutoLayoutMixin.primaryAxisAlignItems}.
   *
   * ```ts title="Horizontal auto-layout frame with different counterAxisAlignItems values"
   * (async () => {
   *   const parentFrame = figma.createFrame()
   *   const text = figma.createText()
   *   await figma.loadFontAsync(text.fontName)
   *   text.characters = 'asdf'
   *   // Make the text taller so we can see how text baseline alignment works
   *   text.lineHeight = {unit: 'PERCENT', value: 300}
   *
   *   // Auto-layout frame will have 2 children: a frame and a text node
   *   parentFrame.appendChild(figma.createFrame())
   *   parentFrame.appendChild(text)
   *   parentFrame.layoutMode = 'HORIZONTAL'
   *
   *   // Make the parent frame taller so we can see the effects of
   *   // the different counterAxisAlignItems values
   *   parentFrame.resize(200, 150)
   *
   *   // Parent frame
   *   // +--------------------------+
   *   // |+-----------++----+       |
   *   // ||           ||    |       |
   *   // ||  Child 1  ||asdf|       |
   *   // ||           ||    |       |
   *   // |+-----------++----+       |
   *   // |                          |
   *   // |                          |
   *   // +--------------------------+
   *   parentFrame.counterAxisAlignItems = 'MIN'
   *
   *   // Parent frame
   *   // +--------------------------+
   *   // |                          |
   *   // |                          |
   *   // |+-----------++----+       |
   *   // ||           ||    |       |
   *   // ||  Child 1  ||asdf|       |
   *   // ||           ||    |       |
   *   // |+-----------++----+       |
   *   // +--------------------------+
   *   parentFrame.counterAxisAlignItems = 'MAX'
   *
   *   // Parent frame
   *   // +--------------------------+
   *   // |                          |
   *   // |+-----------++----+       |
   *   // ||           ||    |       |
   *   // ||  Child 1  ||asdf|       |
   *   // ||           ||    |       |
   *   // |+-----------++----+       |
   *   // |                          |
   *   // +--------------------------+
   *   parentFrame.counterAxisAlignItems = 'CENTER'
   *
   *   // Parent frame
   *   // +--------------------------+
   *   // |+-----------+             |
   *   // ||           |+----+       |
   *   // ||  Child 1  ||    |       |
   *   // ||           ||asdf|       |
   *   // |+-----------+|    |       |
   *   // |             +----+       |
   *   // |                          |
   *   // +--------------------------+
   *   parentFrame.counterAxisAlignItems = 'BASELINE'
   * })()
   * ```
   */
  counterAxisAlignItems: 'MIN' | 'MAX' | 'CENTER' | 'BASELINE'
  /**
   * Applicable only on auto-layout frames with {@link AutoLayoutMixin.layoutWrap} set to `"WRAP"`. Determines how the wrapped tracks are spaced out inside of the auto-layout frame.
   *
   * @remarks
   *
   * Changing this property on a non-wrapping auto-layout frame will throw an error.
   *
   * - `"AUTO"`: If all children of this auto-layout frame have {@link AutoLayoutChildrenMixin.layoutAlign} set to `"STRETCH"`, the tracks will stretch to fill the auto-layout frame. This is like flexbox `align-content: stretch`. Otherwise, each track will be as tall as the tallest child of the track, and will align based on the value of {@link AutoLayoutMixin.counterAxisAlignItems}. This is like flexbox `align-content: start | center | end`. {@link AutoLayoutMixin.counterAxisSpacing} is respected when `counterAxisAlignContent` is set to `"AUTO"`.
   * - `"SPACE_BETWEEN"`: Tracks are all sized based on the tallest child in the track. The free space within the auto-layout frame is divided up evenly between each track. If the total height of all tracks is taller than the height of the auto-layout frame, the spacing will be 0.
   */
  counterAxisAlignContent: 'AUTO' | 'SPACE_BETWEEN'
  /**
   * Applicable only on "HORIZONTAL" or "VERTICAL" auto-layout frames. Determines distance between children of the frame.
   *
   * @remarks
   *
   * For auto-layout frames with {@link AutoLayoutMixin.layoutMode} set to `"HORIZONTAL"`, this is the horizontal gap between children. For auto-layout frames with {@link AutoLayoutMixin.layoutMode} set to `"VERTICAL"`, this is the vertical gap between children.
   *
   * ```ts title="Auto-layout frame with a horizontal gap between children"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.layoutMode = 'HORIZONTAL'
   *
   * // Parent frame
   * // +------------------------------------+
   * // |+-----------+          +-----------+|
   * // ||           |          |           ||
   * // ||  Child 1  | -- 20 -- |  Child 2  ||
   * // ||           |          |           ||
   * // |+-----------+          +-----------+|
   * // +------------------------------------+
   * parentFrame.itemSpacing = 20
   * ```
   *
   * ```ts title="Auto-layout frame with a vertical gap between children"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.layoutMode = 'VERTICAL'
   *
   * // Parent frame
   * // +-------------+
   * // |+-----------+|
   * // ||           ||
   * // ||  Child 1  ||
   * // ||           ||
   * // |+-----------+|
   * // |      |      |
   * // |      |      |
   * // |      20     |
   * // |      |      |
   * // |      |      |
   * // |+-----------+|
   * // ||           ||
   * // ||  Child 2  ||
   * // ||           ||
   * // |+-----------+|
   * // +-------------+
   * parentFrame.itemSpacing = 20
   * ```
   */
  itemSpacing: number
  /**
   * Applicable only on "HORIZONTAL" or "VERTICAL" auto-layout frames with {@link AutoLayoutMixin.layoutWrap} set to `"WRAP"`. Determines the distance between wrapped tracks. The value must be positive.
   *
   * @remarks
   *
   * Set this propety to `null` to have it sync with {@link AutoLayoutMixin.itemSpacing}. This will never return `null`. Once set to `null`, it will start returning the value of {@link AutoLayoutMixin.itemSpacing}.
   *
   * ```ts title="Auto-layout frame with children wrapping to the next line"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   * parentFrame.appendChild(figma.createFrame())
   *
   * // Make children flow horizontally and wrap
   * parentFrame.layoutMode = 'HORIZONTAL'
   * parentFrame.layoutWrap = 'WRAP'
   *
   * // Set a fixed width so when we set itemSpacing below, the children will wrap
   * parentFrame.primaryAxisSizingMode = 'FIXED'
   *
   * // Let the height of the parent frame resize to fit the children
   * parentFrame.counterAxisSizingMode = 'AUTO'
   *
   * // Horizontal gap between children
   * parentFrame.itemSpacing = 10
   *
   * // Parent frame
   * // +------------------------------------------+
   * // |+-----------+          +-----------+      |
   * // ||           |          |           |      |
   * // ||  Child 1  | -- 10 -- |  Child 2  |      |
   * // ||           |          |           |      |
   * // |+-----------+          +-----------+      |
   * // |      |                                   |
   * // |      |                                   |
   * // |      20                                  |
   * // |      |                                   |
   * // |      |                                   |
   * // |+-----------+                             |
   * // ||           |                             |
   * // ||  Child 3  |                             |
   * // ||           |                             |
   * // |+-----------+                             |
   * // +------------------------------------------+
   * parentFrame.counterAxisSpacing = 20
   * ```
   */
  counterAxisSpacing: number | null
  /**
   * Applicable only on "HORIZONTAL" or "VERTICAL" auto-layout frames. Determines the [canvas stacking order](https://help.figma.com/hc/en-us/articles/360040451373-Explore-auto-layout-properties#Canvas_stacking_order) of layers in this frame. When true, the first layer will be draw on top.
   *
   * @remarks
   *
   * ```ts title="Auto-layout frame with different canvas stacking"
   * const parentFrame = figma.createFrame()
   * // Create red and green children so we can see the overlap
   * const child1 = figma.createFrame()
   * child1.fills = [{ type: 'SOLID', color: { r: 1, g: 0, b: 0 }}]
   * const child2 = figma.createFrame()
   * child2.fills = [{ type: 'SOLID', color: { r: 0, g: 1, b: 0 }}]
   * parentFrame.appendChild(child1)
   * parentFrame.appendChild(child2)
   * parentFrame.layoutMode = 'HORIZONTAL'
   * // Negative horizontal gap between children so they overlap
   * parentFrame.itemSpacing = -20
   *
   * // Parent frame (last child on top)
   * // +---------------------+
   * // |+-------+-----------+|
   * // ||       |           ||
   * // ||Child 1|  Child 2  ||
   * // ||       |           ||
   * // |+-------+-----------+|
   * // +---------------------+
   * parentFrame.itemReverseZIndex = false
   *
   * // Parent frame (first child on top)
   * // +---------------------+
   * // |+-----------+-------+|
   * // ||           |       ||
   * // ||  Child 1  |Child 2||
   * // ||           |       ||
   * // |+-----------+-------+|
   * // +---------------------+
   * parentFrame.itemReverseZIndex = true
   * ```
   */
  itemReverseZIndex: boolean
}
/**
 * @see https://developers.figma.com/docs/plugins/api/GridTrackSize
 */
interface GridTrackSize {
  /**
   * Applicable only on FIXED grid tracks. The size of the track in pixels.
   * Optional for `FLEX` tracks.
   * If the setter for this value is called on a `FLEX` track, the track will be converted to a `FIXED` track.
   */
  value?: number
  /**
   * The type of the grid track. `FLEX` indicates that the track will grow to fill the available space in the container (evenly divided among all flex tracks in the grid), while `FIXED` indicates that the track will have a fixed size.
   **/
  type: 'FLEX' | 'FIXED'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface GridLayoutMixin {
  /**
   * Applicable only on auto-layout frames with `layoutMode` set to `"GRID"`. Determines the number of rows in the grid.
   *
   * @remarks
   *
   * If the setter for this value is called on a grid with a value less than 1, it will throw an error.
   * Users cannot remove rows from a grid if they are occupied by children, so if you try to reduce the count of rows in a grid and some of those rows have children, it will throw an error.
   * By default, when the row count is increased, the new rows will be added as {@link GridTrackSize} objects with type `"FLEX"`. If you want to change the type of the new rows, you can use the setters on GridTrackSize objects returned by {@link GridLayoutMixin.gridRowSizes} or {@link GridLayoutMixin.gridColumnSizes}.
   *
   * ```ts title="Grid layout with 2 rows and 3 columns"
   * const parentFrame = figma.createFrame()
   * parentFrame.layoutMode = 'GRID'
   * parentFrame.gridRowCount = 2
   * parentFrame.gridColumnCount = 3
   *
   * // Grid frame with 2 rows and 3 columns
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   * ```
   */
  gridRowCount: number
  /**
   * Applicable only on auto-layout frames with `layoutMode` set to `"GRID"`. Determines the number of columns in the grid.
   * @remarks
   * If the setter for this value is called on a grid with a value less than 1, it will throw an error.
   * Users cannot remove columns from a grid if they are occupied by children, so if you try to reduce the count of columns in a grid and some of those columns have children, it will throw an error.
   * By default, when the column count is increased, the new columns will be added as {@link GridTrackSize} objects with type `"FLEX"`. If you want to change the type of the new columns, you can use the setters on GridTrackSize objects returned by {@link GridLayoutMixin.gridRowSizes} or {@link GridLayoutMixin.gridColumnSizes}.
   */
  gridColumnCount: number
  /**
   * Applicable only on auto-layout frames with `layoutMode` set to `"GRID"`. Determines the gap between rows in the grid.
   * @remarks
   * If the setter for this value is called on a grid with a value less than 0, it will throw an error.
   */
  gridRowGap: number
  /**
   * Applicable only on auto-layout frames with `layoutMode` set to `"GRID"`. Determines the gap between columns in the grid.
   * @remarks
   * If the setter for this value is called on a grid with a value less than 0, it will throw an error.
   */
  gridColumnGap: number
  /**
   * Only applicable on auto-layout frames with `layoutMode` set to `"GRID"`.
   * Returns an array of {@link GridTrackSize} objects representing the rows in the grid in order.
   *
   * @remarks
   * The order of the rows is from top to bottom.
   * The {@link GridTrackSize} can be used to change the type of the row (either `"FLEX"` or `"FIXED"`) and the size of the track (if it is a `"FIXED"` track).
   *
   * ```ts title="Grid layout with mixed track sizes and types"
   * const parentFrame = figma.createFrame()
   * parentFrame.layoutMode = 'GRID'
   * parentFrame.gridRowCount = 2
   * parentFrame.gridColumnCount = 3
   *
   * // Change the first row to be a fixed size of 100px
   * parentFrame.gridRowSizes[0].type // 'FLEX'
   * parentFrame.gridRowSizes[0].value = 100
   * parentFrame.gridRowSizes[0].type // 'FIXED'
   * // Grid with one fixed row and one flexible rows
   * // + --- + --- + --- +
   * // |     |     |     | 100px height
   * // + --- + --- + --- +
   * // |     |     |     |
   * // |     |     |     | 'flex' height
   * // |     |     |     |  occupies remaining height in the container, because there is only one flex row.
   * // |     |     |     |
   * // + --- + --- + --- +
   * ```
   */
  gridRowSizes: Array<GridTrackSize>
  /**
   * Only applicable on auto-layout frames with `layoutMode` set to `"GRID"`.
   * Returns an array of {@link GridTrackSize} objects representing the columns in the grid in order.
   * @remarks
   * The order of the columns is from left to right.
   * The {@link GridTrackSize} can be used to change the type of the column (either `"FLEX"` or `"FIXED"`) and the size of the track (if it is a `"FIXED"` track).
   */
  gridColumnSizes: Array<GridTrackSize>
  /**
   * Applicable only on auto-layout frames with `layoutMode` set to `"GRID"`.
   * Appends a node to the grid at the specified row and column index.
   * @remarks
   * If the specified row or column index is out of bounds, it will throw an error.
   * If the specified row or column index is occupied by another node, it will throw an error.
   * If the node is already a child of the grid, it will be removed from its current position and appended to the new position.
   * ```ts title="Appending a node to a grid at a specific row and column index"
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   * const grid = figma.createFrame()
   * grid.layoutMode = 'GRID'
   * grid.gridRowCount = 3
   * grid.gridColumnCount = 3
   *
   * const child1 = figma.createFrame()
   * const child2 = figma.createFrame()
   * const child2 = figma.createFrame()
   *
   * // + --- + --- + --- +
   * // |  1  |     |     |
   * // + --- + --- + --- +
   * // |  2  |     |     |
   * // + --- + --- + --- +
   * // |  3  |     |     |
   * // + --- + --- + --- +
   * grid.appendChildAt(child1, 0, 0)
   * grid.appendChildAt(child2, 1, 0)
   * grid.appendChildAt(child3, 2, 0)
   * ```
   */
  appendChildAt(node: SceneNode, rowIndex: number, columnIndex: number): void
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface AutoLayoutChildrenMixin {
  /**
   * Applicable only on direct children of auto-layout frames. Determines if the layer should stretch along the parent’s counter axis. Defaults to `“INHERIT”`.
   *
   * @remarks
   *
   * Changing this property will cause the `x`, `y`, `size`, and `relativeTransform` properties on this node to change, if applicable (inside an auto-layout frame).
   *
   * - Setting `"STRETCH"` will make the node "stretch" to fill the width of the parent vertical auto-layout frame, or the height of the parent horizontal auto-layout frame excluding the frame's padding.
   * - If the current node is an auto layout frame (e.g. an auto layout frame inside a parent auto layout frame) if you set layoutAlign to `“STRETCH”` you should set the corresponding axis – either {@link AutoLayoutMixin.primaryAxisSizingMode} or {@link AutoLayoutMixin.counterAxisSizingMode} – to be`“FIXED”`. This is because an auto-layout frame cannot simultaneously stretch to fill its parent and shrink to hug its children.
   * - Setting `"INHERIT"` does not "stretch" the node.
   *
   * Caution: ⚠️ Previously, layoutAlign also determined counter axis alignment of auto-layout frame children. Counter axis alignment is now set on the auto-layout frame itself through {@link AutoLayoutMixin.counterAxisAlignItems}. Note that this means all layers in an auto-layout frame must now have the same counter axis alignment. This means `"MIN"`, `"CENTER"`,  and `"MAX"` are now deprecated values of `layoutAlign`.
   */
  layoutAlign: 'MIN' | 'CENTER' | 'MAX' | 'STRETCH' | 'INHERIT'
  /**
   * This property is applicable only for direct children of auto-layout frames. Determines whether a layer should stretch along the parent’s primary axis. 0 corresponds to a fixed size and 1 corresponds to stretch.
   *
   * @remarks
   *
   * 0 and 1 are currently the only supported values.
   *
   * Note: If the current node is an auto-layout frame (e.g. an auto-layout frame inside a parent auto-layout frame) if you set `layoutGrow` to 1 you should set the corresponding axis – either {@link AutoLayoutMixin.primaryAxisSizingMode} or {@link AutoLayoutMixin.counterAxisSizingMode} – to be `“FIXED”`. This is because an auto-layout frame cannot simultaneously stretch to fill its parent and shrink to hug its children.
   */
  layoutGrow: number
  /**
   * This property is applicable only for direct children of auto-layout frames. Determines whether a layer's size and position should be dermined by auto-layout settings or manually adjustable.
   *
   * @remarks
   *
   * Changing this property may cause the parent layer's size to change, since it will recalculate as if this child did not exist. It will also change this node's `x`, `y`, and `relativeTransform` properties.
   *
   * - The default value of `"AUTO"` will layout this child according to auto-layout rules.
   * - Setting `"ABSOLUTE"` will take this child out of auto-layout flow, while still nesting inside the auto-layout frame. This allows explicitly setting `x`, `y`, `width`, and `height`. `"ABSOLUTE"` positioned nodes respect constraint settings.
   *
   * ```ts title="Auto-layout frame absolutely positioned red circle at the top-right corner"
   * const parentFrame = figma.createFrame()
   * parentFrame.appendChild(figma.createFrame())
   *
   * // Create a small red circle
   * const ellipse = figma.createEllipse()
   * ellipse.resize(20, 20)
   * ellipse.fills = [{ type: 'SOLID', color: { r: 1, g: 0, b: 0 }}]
   * parentFrame.appendChild(ellipse)
   * parentFrame.clipsContent = false
   * parentFrame.layoutMode = 'HORIZONTAL'
   *
   * // Enable absolute positioning so we can move the circle
   * ellipse.layoutPositioning = 'ABSOLUTE'
   *
   * // Center the circle on the top-right corner of the frame
   * ellipse.x = 90
   * ellipse.y = -10
   *
   * // Make the circle stick to the top-right corner of the frame
   * ellipse.constraints = { horizontal: 'MAX', vertical: 'MIN' }
   * ```
   */
  layoutPositioning: 'AUTO' | 'ABSOLUTE'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface GridChildrenMixin {
  /**
   * Applicable only on direct children of 'GRID' auto-layout frames. Sets the position of the node
   *
   * @remarks
   * This method sets the position of the node within the grid based on the specified row and column indices.
   * The row and column indices are 0-based, where 0 is the top row in the grid, and 0 is the left-most column in the grid.
   * If the specified row or column index is out of bounds, it will throw an error.
   * If the specified row or column index is occupied by another node, it will throw an error.
   * ```ts title="Setting the position of a node in a grid"
   * const grid = figma.createFrame()
   * grid.layoutMode = 'GRID'
   * grid.gridRowCount = 3
   * grid.gridColumnCount = 3
   * const child1 = figma.createFrame()
   * const child2 = figma.createFrame()
   * const child2 = figma.createFrame()
   * // + --- + --- + --- +
   * // |  1  |  2  |  3  |
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   * // |     |     |     |
   * // + --- + --- + --- +
   *
   * // If calling `appendChild` instead of {@link GridLayoutMixin.appendChildAt}, nodes will be added to the first available position in the grid.
   * grid.appendChild(child1)
   * grid.appendChild(child2)
   * grid.appendChild(child3)
   * // Move the children to specific grid positions
   * child2.setGridPosition(1, 0)
   * child3.setGridPosition(2, 1)
   * // + --- + --- + --- +
   * // |  1  |     |     |
   * // + --- + --- + --- +
   * // |  2  |     |     |
   * // + --- + --- + --- +
   * // |     |  3  |     |
   * // + --- + --- + --- +
   */
  setGridChildPosition(rowIndex: number, columnIndex: number): void
  /**
   * Applicable only on direct children of grid auto-layout frames. Determines the starting row index for this node within the parent grid.
   *
   * @remarks
   * The row index is 0-based, where 0 is the first row in the grid. This property works in conjunction with gridRowSpan to determine the node's row position and size in the grid.
   * If the index provided is greater than the number of rows in the grid, the setter will throw an error.
   * If the index provided results in the node overlapping with another node in the grid, the setter will throw an error.
   */
  readonly gridRowAnchorIndex: number
  /**
   * Applicable only on direct children of grid auto-layout frames. Determines the starting column index for this node within the parent grid.
   *
   * @remarks
   * The column index is 0-based, where 0 is the first column in the grid. This property works in conjunction with gridColumnSpan to determine the node's column position and size in the grid.
   * If the index provided is greater than the number of columns in the grid, the setter will throw an error.
   * If the index provided results in the node overlapping with another node in the grid, the setter will throw an error.
   */
  readonly gridColumnAnchorIndex: number
  /**
   * Applicable only on direct children of grid auto-layout frames. Determines the number of rows this node will span within the parent grid.
   *
   * @remarks
   * Must be a positive integer. This property defines how many rows the node will occupy starting from gridRowAnchorIndex.
   * If the span provided results in the node overlapping with another node in the grid, the setter will throw an error.
   * If the span provided results in the node extending beyond the grid's defined rows, the setter will throw an error.
   */
  gridRowSpan: number
  /**
   * Applicable only on direct children of grid auto-layout frames. Determines the number of columns this node will span within the parent grid.
   *
   * @remarks
   * Must be a positive integer. This property defines how many columns the node will occupy starting from gridColumnAnchorIndex.
   * If the span provided results in the node overlapping with another node in the grid, the setter will throw an error.
   * If the span provided results in the node extending beyond the grid's defined columns, the setter will throw an error.
   */
  gridColumnSpan: number
  /**
   * Applicable only on direct children of grid auto-layout frames. Controls the horizontal alignment of the node within its grid cell.
   *
   * @remarks
   * Possible values are:
   * - `"MIN"`: Aligns to the left of the grid cell
   * - `"CENTER"`: Centers horizontally within the grid cell
   * - `"MAX"`: Aligns to the right of the grid cell
   * - `"AUTO"`: Uses the default alignment
   */
  gridChildHorizontalAlign: 'MIN' | 'CENTER' | 'MAX' | 'AUTO'
  /**
   * Applicable only on direct children of grid auto-layout frames. Controls the vertical alignment of the node within its grid cell.
   *
   * @remarks
   * Possible values are:
   * - `"MIN"`: Aligns to the top of the grid cell
   * - `"CENTER"`: Centers vertically within the grid cell
   * - `"MAX"`: Aligns to the bottom of the grid cell
   * - `"AUTO"`: Uses the default alignment
   */
  gridChildVerticalAlign: 'MIN' | 'CENTER' | 'MAX' | 'AUTO'
}
/**
 * @see https://developers.figma.com/docs/plugins/api/InferredAutoLayoutResult
 */
interface InferredAutoLayoutResult extends AutoLayoutChildrenMixin, AutoLayoutMixin {}
/**
 * @see https://developers.figma.com/docs/plugins/api/DetachedInfo
 */
type DetachedInfo =
  | {
      type: 'local'
      componentId: string
    }
  | {
      type: 'library'
      componentKey: string
    }
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface MinimalStrokesMixin {
  /**
   * The paints used to fill the area of the shape's strokes. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   */
  strokes: ReadonlyArray<Paint>
  /**
   * The id of the {@link PaintStyle} object that the {@link MinimalStrokesMixin.strokes} property of this node is linked to.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use `setStrokeStyleIdAsync` to update the style.
   */
  strokeStyleId: string
  /**
   * Set the {@link PaintStyle} that the {@link MinimalStrokesMixin.strokes} property of this node is linked to.
   */
  setStrokeStyleIdAsync(styleId: string): Promise<void>
  /**
   * The thickness of the stroke, in pixels. This value must be non-negative and can be fractional.
   *
   * Caution: For rectangle nodes or frame-like nodes using different individual stroke weights, this property will return {@link PluginAPI.mixed}.
   *
   * Note: For rectangle nodes or frame-like nodes, individual stroke weights can be set for each side using the following properties:
   *
   * - {@link IndividualStrokesMixin.strokeTopWeight}
   * - {@link IndividualStrokesMixin.strokeBottomWeight}
   * - {@link IndividualStrokesMixin.strokeLeftWeight}
   * - {@link IndividualStrokesMixin.strokeRightWeight}
   */
  strokeWeight: number | PluginAPI['mixed']
  /**
   * The decoration applied to vertices which have two or more connected segments.
   *
   * @remarks
   *
   * On a vector network, the value is set on the whole vector network. Use the vector network API to set it on individual vertices.
   *
   * This property can return {@link PluginAPI.mixed} if different vertices have different values.properties.
   */
  strokeJoin: StrokeJoin | PluginAPI['mixed']
  /**
   * The alignment of the stroke with respect to the boundaries of the shape.
   *
   * @remarks
   *
   * Center-aligned stroke means the center of the stroke falls exactly on the geometry. Inside-aligned stroke shifts the stroke so it lies completely inside the shape, and outside-aligned stroke is vice versa.
   *
   * Note: Inside and outside stroke are actually implemented by doubling the stroke weight and masking the stroke by the fill. This means inside-aligned stroke will never draw strokes outside the fill and outside-aligned stroke will never draw strokes inside the fill.
   */
  strokeAlign: 'CENTER' | 'INSIDE' | 'OUTSIDE'
  /**
   * A list of numbers specifying alternating dash and gap lengths, in pixels.
   */
  dashPattern: ReadonlyArray<number>
  /**
   * An array of paths representing the object strokes relative to the node.
   * StrokeGeometry is always from the center regardless of the nodes `strokeAlign`.
   */
  readonly strokeGeometry: VectorPaths
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface IndividualStrokesMixin {
  /** Determines the top stroke weight on a rectangle node or frame-like node. Must be non-negative and can be fractional. */
  strokeTopWeight: number
  /** Determines the bottom stroke weight on a rectangle node or frame-like node. Must be non-negative and can be fractional. */
  strokeBottomWeight: number
  /** Determines the left stroke weight on a rectangle node or frame-like node. Must be non-negative and can be fractional. */
  strokeLeftWeight: number
  /** Determines the right stroke weight on a rectangle node or frame-like node. Must be non-negative and can be fractional. */
  strokeRightWeight: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface MinimalFillsMixin {
  /**
   * The paints used to fill the area of the shape. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   *
   * @remarks
   *
   * This property can return {@link PluginAPI.mixed} if the node has multiple sets of fills. Text nodes can have multiple sets of fills if some characters are colored differently than others.
   *
   * Use {@link UtilAPI.solidPaint} to create solid paint fills with CSS color strings.
   *
   * Page nodes have a [`backgrounds`](https://developers.figma.com/docs/plugins/api/PageNode#backgrounds) property instead of a `fills` property.
   */
  fills: ReadonlyArray<Paint> | PluginAPI['mixed']
  /**
   * The id of the {@link PaintStyle} object that the {@link MinimalFillsMixin.fills} property of this node is linked to.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use `setFillStyleIdAsync` to update the style.
   *
   * @remarks
   *
   * This property can return {@link PluginAPI.mixed} if the node has multiple fills.properties. Text nodes can have multiple fills if some characters are colored differently than others.
   */
  fillStyleId: string | PluginAPI['mixed']
  /**
   * Sets the {@link PaintStyle} that the {@link MinimalFillsMixin.fills} property of this node is linked to.
   */
  setFillStyleIdAsync(styleId: string): Promise<void>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface GeometryMixin extends MinimalStrokesMixin, MinimalFillsMixin {
  /**
   * The decoration applied to vertices which have only one connected segment.
   *
   * @remarks
   *
   * On a vector network, the value is set on the whole vector network. Use the vector network API to set it on individual vertices.
   *
   * This property can return {@link PluginAPI.mixed} if different vertices have different values.properties.
   */
  strokeCap: StrokeCap | PluginAPI['mixed']
  /**
   * The miter limit on the stroke. This is the same as the [SVG miter limit](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute/stroke-miterlimit).
   */
  strokeMiterLimit: number
  /**
   * This method performs an action similar to using the "Outline Stroke" function in the editor from the right-click menu. However, this method creates and returns a new node while leaving the original intact. Returns `null` if the node has no strokes.
   */
  outlineStroke(): VectorNode | null
  /**
   * An array of paths representing the object fills relative to the node.
   */
  readonly fillGeometry: VectorPaths
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface CornerMixin {
  /**
   * The number of pixels to round the corners of the object by.
   *
   * @remarks
   *
   * This value must be non-negative and can be fractional. If an edge length is less than twice the corner radius, the corner radius for each vertex of the edge will be clamped to half the edge length.
   *
   * This property can return {@link PluginAPI.mixed} if different vertices have different values.properties. Vector nodes can have individual corner radii on each vertex. Rectangle nodes can also have different corner radii on each of the four corners.
   */
  cornerRadius: number | PluginAPI['mixed']
  /**
   * A value that lets you control how "smooth" the corners are. Ranges from 0 to 1.
   *
   * @remarks
   *
   * A value of 0 is the default and means that the corner is perfectly circular. A value of 0.6 means the corner matches the iOS 7 "squircle" icon shape. Other values produce various other curves. See [this post](https://www.figma.com/blog/desperately-seeking-squircles/) for the gory details!
   */
  cornerSmoothing: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface RectangleCornerMixin {
  /**
   */
  topLeftRadius: number
  /**
   */
  topRightRadius: number
  /**
   */
  bottomLeftRadius: number
  /**
   */
  bottomRightRadius: number
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface ExportMixin {
  /**
   * List of export settings stored on the node. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   */
  exportSettings: ReadonlyArray<ExportSettings>
  /**
   * Exports the node as an encoded image.
   *
   * If the manifest contains `"documentAccess": "dynamic-page"`, **and** the node is a {@link PageNode}, you must first call {@link PageNode.loadAsync} to access this function.
   *
   * @param settings - When this parameter is absent, this function defaults to exporting as a PNG at 1x resolution.
   *
   * Note that the result is a Uint8Array, representing the bytes of the image file (encoded in the specified format).
   *
   * ```ts title="Create a hexagon, export as PNG, and place on canvas"
   * (async () => {
   *   const polygon = figma.createPolygon()
   *   polygon.pointCount = 6
   *   polygon.fills = [{ type: 'SOLID', color: { r: 1, g: 0, b: 0 } }]
   *
   *   // highlight-start
   *   // Export a 2x resolution PNG of the node
   *   const bytes = await polygon.exportAsync({
   *     format: 'PNG',
   *     constraint: { type: 'SCALE', value: 2 },
   *   })
   *   // highlight-end
   *
   *   // Add the image onto the canvas as an image fill in a frame
   *   const image = figma.createImage(bytes)
   *   const frame = figma.createFrame()
   *   frame.x = 200
   *   frame.resize(200, 230)
   *   frame.fills = [{
   *     imageHash: image.hash,
   *     scaleMode: "FILL",
   *     scalingFactor: 1,
   *     type: "IMAGE",
   *   }]
   * })()
   * ```
   *
   * ```ts title="Export a VectorNode as an SVG string"
   *  (async () => {
   *    // Create a triangle using the VectorPath API
   *    const vector = figma.createVector()
   *    vector.vectorPaths = [{
   *      windingRule: "EVENODD",
   *      data: "M 0 100 L 100 100 L 50 0 Z",
   *    }]
   *
   *    // highlight-start
   *    // Export the vector to SVG
   *    const svg = await vector.exportAsync({ format: 'SVG_STRING' })
   *    // highlight-end
   *    console.log(svg);
   *  })()
   * ```
   *
   * ```ts title="Export a node as a JSON object"
   * (async () => {
   *   const json = await figma.currentPage.selection[0].exportAsync({format: 'JSON_REST_V1'})
   *   // Return a JSON object in the same format as the Figma REST API response
   *   console.log(json.document)
   * })()
   * ```
   */
  exportAsync(settings?: ExportSettings): Promise<Uint8Array>
  exportAsync(settings: ExportSettingsSVGString): Promise<string>
  exportAsync(settings: ExportSettingsREST): Promise<Object>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface FramePrototypingMixin {
  /**
   * Determines whether a frame will scroll in presentation mode when the frame contains content that exceed the frame's bounds. Reflects the value shown in "Overflow Behavior" in the Prototype tab.
   *
   * @remarks
   *
   * Frames directly parented under the canvas don't need this property to be set or for content to exceed the frame's bounds in order to scroll in presentation mode. They just need the frame to be bigger than the device or screen and will scroll automatically.
   */
  overflowDirection: OverflowDirection
  /**
   * Determines which children of the frame are fixed children in a scrolling frame.
   *
   * @remarks
   *
   * In Figma, fixed children are always on top of scrolling (non-fixed) children. Despite the "Fix position when scrolling" checkbox in the UI, fixed layers are not represented as a boolean property on individual layers. Instead, what we really have are two sections of children inside each frame. These section headers are visible in the layers panel when a frame has at least one fixed child.
   */
  numberOfFixedChildren: number
  /**
   * How this frame is positioned when opened as an overlay.
   */
  readonly overlayPositionType: OverlayPositionType
  /**
   * How this frame obscures the content under it when opened as an overlay.
   */
  readonly overlayBackground: OverlayBackground
  /**
   * How the user can interact with the content under this frame when opened as an overlay.
   */
  readonly overlayBackgroundInteraction: OverlayBackgroundInteraction
}
interface VectorLikeMixin {
  /**
   * Exposes a complete, but more complex representation of vectors as a network of edges between vectices. See {@link VectorNetwork}.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use `setVectorNetworkAsync` to update the value.
   */
  vectorNetwork: VectorNetwork
  /**
   * Updates the vector network.
   */
  setVectorNetworkAsync(vectorNetwork: VectorNetwork): Promise<void>
  /**
   * Exposes a simple, but incomplete representation of vectors as path. See {@link VectorPaths}
   */
  vectorPaths: VectorPaths
  /**
   * Whether the vector handles are mirrored or independent.
   */
  handleMirroring: HandleMirroring | PluginAPI['mixed']
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface ReactionMixin {
  /**
   * List of [Reactions](https://developers.figma.com/docs/plugins/api/Reaction) on this node, which includes both the method of interaction with this node in a prototype, and the behavior of that interaction. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use `setReactionsAsync` to update the value.
   *
   * @remarks
   *
   * [Prototyping](https://help.figma.com/hc/en-us/articles/360040314193-Guide-to-prototyping-in-Figma) in Figma lets users create connections between nodes that consist of a trigger (click, hover, etc...) and a corresponding list of actions, such as navigating to another frame or setting a variable. The `reactions` property lets you read and modify prototyping reactions on the node.
   *
   * ```ts title="Changing the transition duration in a prototyping action"
   * const node = figma.currentPage.selection[0]
   * console.log(node.reactions)
   *
   * /*
   * Output:
   *
   * [{
   *   action: {
   *     type: 'NODE',
   *     destinationId: '4:1539',
   *     navigation: 'NAVIGATE',
   *     transition: {
   *       type:'SMART_ANIMATE',
   *       easing: { type: 'EASE_OUT' },
   *       duration: 0.20000000298023224
   *     },
   *     preserveScrollPosition: false
   *   },
   *   actions: [{
   *     type: 'NODE',
   *     destinationId: '4:1539',
   *     navigation: 'NAVIGATE',
   *     transition: {
   *       type:'SMART_ANIMATE',
   *       easing: { type: 'EASE_OUT' },
   *       duration: 0.20000000298023224
   *     },
   *     preserveScrollPosition: false
   *   }],
   *   trigger: { type: 'ON_CLICK' }
   * }]
   * *\/
   *
   * // See clone() implementation from the Editing Properties page
   * const newReactions = clone(node.reactions)
   * // highlight-start
   * newReactions[0].actions[0].transition.duration = 0.5
   * // highlight-end
   * await node.setReactionsAsync(newReactions)
   * ```
   *
   * It is also possible to add Advanced Prototyping action types through the Plugin API: [Set Variable](https://help.figma.com/hc/en-us/articles/14506587589399-Use-variables-in-prototypes) and [Conditional](https://help.figma.com/hc/en-us/articles/15253220891799-Multiple-actions-and-conditionals).
   * Moreover, Reactions now include the ability to execute multiple actions by updating the `actions` field on a `Reaction`.
   *
   * ```ts title="Create a button with a Reaction object that updates the visibility of another Frame."
   * (async () => {
   *   // Create collection with "show" variable inside
   *   const collection = figma.variables.createVariableCollection('prototyping')
   *   const modeId = collection.modes[0].modeId
   *   const showVariable = figma.variables.createVariable(
   *     'show',
   *     collection,
   *     'BOOLEAN'
   *   )
   *
   *   // Initialize "show" variable to true
   *   showVariable.setValueForMode(modeId, true)
   *
   *   const parentFrame = figma.createFrame()
   *   parentFrame.resize(350, 200)
   *
   *   // Green "Click me" button
   *   const toggleButton = figma.createFrame()
   *   parentFrame.appendChild(toggleButton)
   *   toggleButton.x = 50
   *   toggleButton.y = 50
   *   toggleButton.layoutMode = 'HORIZONTAL'
   *   toggleButton.layoutSizingHorizontal = 'HUG'
   *   toggleButton.layoutSizingVertical = 'HUG'
   *   toggleButton.fills = [{ type: 'SOLID', color: { r: 0, g: 1, b: 0 } }]
   *   const text = figma.createText()
   *   await figma.loadFontAsync(text.fontName)
   *   text.characters = 'Click me'
   *   toggleButton.appendChild(text)
   *
   *   // Red square
   *   const frame = figma.createFrame()
   *   parentFrame.appendChild(frame)
   *   frame.x = 200
   *   frame.y = 50
   *   frame.fills = [{ type: 'SOLID', color: { r: 1, g: 0, b: 0 } }]
   *
   *   // The "show" variable will now control the visibility of the frame
   *   frame.setBoundVariable('visible', showVariable)
   *
   *   await toggleButton.setReactionsAsync([
   *   {
   *     trigger: { type: 'ON_CLICK' },
   *     actions: [
   *     {
   *       type: 'CONDITIONAL',
   *       conditionalBlocks: [
   *       {
   *         condition: { // Conditional: if "show" variable == true
   *           type: 'EXPRESSION',
   *           resolvedType: 'BOOLEAN',
   *           value: {
   *             expressionArguments: [
   *               {
   *                 type: 'VARIABLE_ALIAS',
   *                 resolvedType: 'BOOLEAN',
   *                 value: {
   *                   type: 'VARIABLE_ALIAS',
   *                   id: showVariable.id
   *                 }
   *               },
   *               {
   *                 type: 'BOOLEAN',
   *                 resolvedType: 'BOOLEAN',
   *                 value: true
   *               }
   *             ],
   *             expressionFunction: 'EQUALS'
   *           }
   *         },
   *         actions: [ // then set "show" variable to false
   *           {
   *             type: 'SET_VARIABLE',
   *             variableId: showVariable.id,
   *             variableValue: {
   *               resolvedType: 'BOOLEAN',
   *                type: 'BOOLEAN',
   *                value: false
   *             }
   *           }
   *         ]
   *       },
   *       {
   *         actions: [ // else set "show" variable to true
   *           {
   *             type: 'SET_VARIABLE',
   *             variableId: showVariable.id,
   *             variableValue: {
   *               resolvedType: 'BOOLEAN',
   *               type: 'BOOLEAN',
   *               value: true
   *             }
   *           }
   *         ]
   *       }]
   *     }]
   *   }])
   * })()
   * ```
   */
  reactions: ReadonlyArray<Reaction>
  /**
   * Updates the reactions on this node. See {@link ReactionMixin.reactions} for a usage example.
   */
  setReactionsAsync(reactions: Array<Reaction>): Promise<void>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/DocumentationLink
 */
interface DocumentationLink {
  readonly uri: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface PublishableMixin {
  /**
   * The plain-text annotation entered by the user for this style/component.
   *
   * @remarks
   *
   * To set a rich-text description using markdown, see {@link PublishableMixin.descriptionMarkdown}
   *
   * Caution: ⚠️ There is a currently a bug in Figma where the description field will appear to be missing or not up to date. Until this is fixed, the workaround is to re-publish nodes for which the description is missing.
   */
  description: string
  /**
   * The rich-text annotation entered by the user for this style/component.
   *
   * @remarks
   *
   *
   * Caution: ⚠️ There is a currently a bug in Figma where the description field will appear to be missing or not up to date. Until this is fixed, the workaround is to re-publish nodes for which the description is missing.
   */
  descriptionMarkdown: string
  /**
   * The documentation links for this style/component.
   *
   * @remarks
   *
   * This API currently only supports setting a single documentation link.  To clear the documentation links, set to the empty list [].
   *
   * Example:
   *
   * ```ts
   * node.documentationLinks = [{uri: "https://www.figma.com"}]
   *
   * // clear documentation links
   * node.documentationLinks = []
   * ```
   */
  documentationLinks: ReadonlyArray<DocumentationLink>
  /**
   * Whether this style/component is a remote style/component that doesn't live in the file (i.e. is from the team library). Remote components are read-only: attempts to change their properties will throw.
   */
  readonly remote: boolean
  /**
   * The key to use with {@link PluginAPI.importComponentByKeyAsync}, {@link PluginAPI.importComponentSetByKeyAsync} and {@link PluginAPI.importStyleByKeyAsync}. Note that while this key is present on local and published components, you can only import components that are already published.
   */
  readonly key: string
  /**
   * Gets the status of this style/component in the team library.
   */
  getPublishStatusAsync(): Promise<PublishStatus>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface DefaultShapeMixin
  extends BaseNodeMixin,
    SceneNodeMixin,
    ReactionMixin,
    BlendMixin,
    GeometryMixin,
    LayoutMixin,
    ExportMixin {}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface BaseFrameMixin
  extends BaseNodeMixin,
    SceneNodeMixin,
    ChildrenMixin,
    ContainerMixin,
    DeprecatedBackgroundMixin,
    GeometryMixin,
    CornerMixin,
    RectangleCornerMixin,
    BlendMixin,
    ConstraintMixin,
    LayoutMixin,
    ExportMixin,
    IndividualStrokesMixin,
    AutoLayoutMixin,
    GridLayoutMixin,
    AspectRatioLockMixin,
    AnnotationsMixin,
    DevStatusMixin {
  /**
   * Includes the id (for local components) or key (for library components) of the component the given node was detached from, if any. If the node isn't a detached instance, it will be null. If the node is a component or instance, it will be null.
   */
  readonly detachedInfo: DetachedInfo | null
  /**
   * Array of {@link LayoutGrid} objects used as layout grids on this node. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   */
  layoutGrids: ReadonlyArray<LayoutGrid>
  /**
   * The id of the {@link GridStyle} object that the {@link BaseFrameMixin.layoutGrids} property of this node is linked to.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use `setGridStyleIdAsync` to update the style.
   */
  gridStyleId: string
  /**
   * Set the {@link GridStyle} that the {@link BaseFrameMixin.layoutGrids} property of this node is linked to.
   */
  setGridStyleIdAsync(styleId: string): Promise<void>
  /**
   * Whether the frame clips its contents. That is, whether layers inside the frame are visible outside the bounds of the frame.
   */
  clipsContent: boolean
  /**
   * Array of {@link Guide} used inside the frame. Note that each frame has its own guides, separate from the canvas-wide guides. For help on how to change this value, see [Editing Properties](https://developers.figma.com/docs/plugins/editing-properties).
   */
  guides: ReadonlyArray<Guide>
  /**
   * Returns inferred auto layout properties of a {@link FrameNode} if applicable. Otherwise, returns `null`.
   *
   * This is what Figma uses to power Dev Mode’s [code snippets](https://help.figma.com/hc/en-us/articles/15023124644247#Build_faster_with_customizable_code_snippets) feature, as it makes sure the generated code is more useful.
   *
   * Note: This method uses a heuristic to infer the auto layout properties.
   */
  inferredAutoLayout: InferredAutoLayoutResult | null
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface DefaultFrameMixin extends BaseFrameMixin, FramePrototypingMixin, ReactionMixin {}

interface OpaqueNodeMixin
  extends BaseNodeMixin,
    SceneNodeMixin,
    ExportMixin,
    DimensionAndPositionMixin {}

interface MinimalBlendMixin {
  /**
   * Opacity of the node, as shown in the Layer panel. Must be between 0 and 1.
   */
  opacity: number
  /**
   * Blend mode of this node, as shown in the Layer panel. In addition to the blend modes that paints & effects support, the layer blend mode can also have the value PASS_THROUGH.
   */
  blendMode: BlendMode
}
interface Annotation {
  readonly label?: string
  readonly labelMarkdown?: string
  readonly properties?: ReadonlyArray<AnnotationProperty>
  readonly categoryId?: string
}
interface AnnotationProperty {
  readonly type: AnnotationPropertyType
}
type AnnotationPropertyType =
  | 'width'
  | 'height'
  | 'maxWidth'
  | 'minWidth'
  | 'maxHeight'
  | 'minHeight'
  | 'fills'
  | 'strokes'
  | 'effects'
  | 'strokeWeight'
  | 'cornerRadius'
  | 'textStyleId'
  | 'textAlignHorizontal'
  | 'fontFamily'
  | 'fontStyle'
  | 'fontSize'
  | 'fontWeight'
  | 'lineHeight'
  | 'letterSpacing'
  | 'itemSpacing'
  | 'padding'
  | 'layoutMode'
  | 'alignItems'
  | 'opacity'
  | 'mainComponent'
  | 'gridRowGap'
  | 'gridColumnGap'
  | 'gridRowCount'
  | 'gridColumnCount'
  | 'gridRowAnchorIndex'
  | 'gridColumnAnchorIndex'
  | 'gridRowSpan'
  | 'gridColumnSpan'
interface AnnotationsMixin {
  /**
   * Annotations on the node.
   *
   * Learn more about annotations in the [Help Center](https://help.figma.com/hc/en-us/articles/20774752502935) or see the [Annotation type](https://developers.figma.com/docs/plugins/api/Annotation) for usage examples.
   *
   */
  annotations: ReadonlyArray<Annotation>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/Measurement
 */
interface Measurement {
  id: string
  start: {
    node: SceneNode
    side: MeasurementSide
  }
  end: {
    node: SceneNode
    side: MeasurementSide
  }
  offset: MeasurementOffset
  freeText: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/MeasurementSide
 */
type MeasurementSide = 'TOP' | 'RIGHT' | 'BOTTOM' | 'LEFT'
/**
 * @see https://developers.figma.com/docs/plugins/api/MeasurementOffset
 */
type MeasurementOffset =
  | {
      type: 'INNER'
      relative: number
    }
  | {
      type: 'OUTER'
      fixed: number
    }
interface MeasurementsMixin {
  /**
   * Get all measurements in the current page.
   *
   * Learn more about measurements in the [Help Center](https://help.figma.com/hc/en-us/articles/20774752502935).
   */
  getMeasurements(): Measurement[]
  /**
   * Get all measurements pointing to a node in the current page. This includes all measurements whose start _or_ end node is the node passed in.
   */
  getMeasurementsForNode(node: SceneNode): Measurement[]
  /**
   * Adds a measurement between two nodes in the current page.
   *
   * Measurements are always between a start and end node. The side indicates which edge of the node to draw the measurement from.
   *
   * Measurements can only go on the same axis, i.e. from side `"LEFT"` -> `"LEFT"`, `"LEFT"` -> `"RIGHT"`, `"TOP"` -> `"BOTTOM"` etc. But not `"LEFT"` -> `"TOP"`.
   *
   * See the [Measurement type](https://developers.figma.com/docs/plugins/api/Measurement) for usage examples.
   *
   * Note: This method is only available in Dev Mode. You can check the editor type of your plugin to know if the user is in Dev Mode or not:
   *
   * ```ts
   * if (figma.editorType === 'dev') {
   *   // In Figma's Dev Mode
   * }
   * ```
   */
  addMeasurement(
    start: {
      node: SceneNode
      side: MeasurementSide
    },
    end: {
      node: SceneNode
      side: MeasurementSide
    },
    options?: {
      /**
       * @default { type: 'INNER'; relative: 0 }
       */
      offset?: MeasurementOffset
      freeText?: string
    },
  ): Measurement
  /**
   * Edit a measurement’s offset.
   *
   * See the [Measurement type](https://developers.figma.com/docs/plugins/api/Measurement) for usage examples.
   *
   * Note: This method is only available in Dev Mode. You can check the editor type of your plugin to know if the user is in Dev Mode or not:
   *
   * ```ts
   * if (figma.editorType === 'dev') {
   *   // In Figma's Dev Mode
   * }
   * ```
   */
  editMeasurement(
    id: string,
    newValue: {
      offset?: MeasurementOffset
      freeText?: string
    },
  ): Measurement
  /**
   * Delete a measurement.
   *
   * See the [Measurement type](https://developers.figma.com/docs/plugins/api/Measurement) for usage examples.
   *
   * Note: This method is only available in Dev Mode. You can check the editor type of your plugin to know if the user is in Dev Mode or not:
   *
   * ```ts
   * if (figma.editorType === 'dev') {
   *   // In Figma's Dev Mode
   * }
   * ```
   */
  deleteMeasurement(id: string): void
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-properties
 */
interface VariantMixin {
  /**
   * Variant properties and values for this node. Is `null` for nodes that are not variants.
   *
   * @remarks
   *
   * [Variant properties](https://help.figma.com/hc/en-us/articles/5579474826519#h_01G2Q5GF4407ZTN7K8FHM2JREZ) define attributes of variants in a component set. For example, a component set for a button might have variant properties such as `size` and `state`, with different possible values for each property (e.g. `default`, `hover`, `pressed`, and `disabled` for the `state` property).
   *
   * ```ts title="Variant-related properties and methods for component sets, components, and instances"
   * componentSet.variantGroupProperties
   *
   * // Output
   * {
   *   Size: {
   *     values: ['Small', 'Medium', 'Large']
   *   },
   *   State: {
   *     values: ['Default', 'Hover', 'Pressed', 'Disabled']
   *   }
   * }
   *
   * // One of the variants / component nodes in the component set
   * componentSet.children[1].variantProperties
   *
   * // Output
   * { Size: 'Small', State: 'Hover' }
   *
   * // variantProperties also works on an instances of variants
   * instance.variantProperties
   *
   * // Output
   * { Size: 'Medium', State: 'Default' }
   *
   * // Use setProperties on an instance of a variant to configure it
   * instance.setProperties({ Size: 'Large' })
   * instance.variantProperties
   *
   * // Output
   * { Size: 'Large', State: 'Default' }
   * ```
   *
   * @deprecated Use {@link InstanceNode.componentProperties} instead.
   */
  readonly variantProperties: {
    [property: string]: string
  } | null
}
interface ComponentPropertiesMixin {
  /**
   * All component properties and their default values that exist on this component set. `'VARIANT'` properties will also have a list of all variant options. `'BOOLEAN'`, `'TEXT'`, and `'INSTANCE_SWAP'` properties will have their names suffixed by a unique identifier starting with `'#'`, which is helpful for quickly distinguishing multiple component properties that have the same name in the Figma UI. The entire property name should be used for all Component property-related API methods and properties.
   *
   * @remarks
   *
   * [Component properties-related properties](https://help.figma.com/hc/en-us/articles/5579474826519-Create-and-use-component-properties) define parts of the component people can change by tying them to specific design properties. You can create component properties for any main component or component set, and apply them to nested layers of the component or variant.
   *
   * ```ts title="Component properties-related properties and methods for component sets, components, and instances"
   * componentSet.componentPropertyDefinitions
   *
   * // Output
   * {
   *   Size: {
   *     type: 'VARIANT',
   *     defaultValue: 'Small',
   *     variantOptions: ['Small', 'Medium', 'Large'],
   *   },
   *   IconVisible#0:0: {
   *     type: 'BOOLEAN',
   *     defaultValue: false,
   *   },
   *   ButtonText#0:1: {
   *     type: 'TEXT',
   *     defaultValue: 'submit',
   *   },
   *   IconInstance#0:2: {
   *     type: 'INSTANCE_SWAP',
   *     defaultValue: '1:1',
   *     preferredValues: [
   *       {type: 'COMPONENT', key: 'ckey1'},
   *       {type: 'COMPONENT_SET', key: 'sgkey1'}
   *     ],
   *   },
   * }
   *
   * // componentProperties on an instance
   * instance.componentProperties
   *
   * // Output
   * {
   *   Size: {
   *     type: 'VARIANT',
   *     value: 'Medium',
   *   },
   *   IconVisible#0:0: {
   *     type: 'BOOLEAN',
   *     value: false,
   *   },
   *   ButtonText#0:1: {
   *     type: 'TEXT',
   *     value: 'cancel',
   *   },
   *   IconInstance#0:2: {
   *     type: 'INSTANCE_SWAP',
   *     defaultValue: '1:1',
   *     preferredValues: [
   *       {type: 'COMPONENT', key: 'ckey1'},
   *       {type: 'COMPONENT_SET', key: 'sgkey1'}
   *     ],
   *   },
   * }
   *
   * // component property definitions can be created, edited, and deleted
   * component.addComponentProperty("ButtonIcon", "INSTANCE_SWAP", "2:22")
   * // returns "ButtonIcon#4:3"
   *
   * component.editComponentProperty(
   *   "ButtonIcon#4:3",
   *   {name: "PrimaryButtonIcon", defaultValue: "1:100"}
   * )
   * // returns "PrimaryButtonIcon#5:5"
   *
   * component.deleteComponentProperty("PrimaryButtonIcon#5:5")
   *
   * // componentPropertyDefinitions and componentProperties work similarly for
   * // main components and their instances but will never have 'VARIANT'
   * // properties.
   * component.componentPropertyDefinitions
   *
   * // Output
   * {
   *   ImageVisible#0:0: {
   *     type: 'BOOLEAN',
   *     defaultValue: true,
   *   },
   *   Icon#0:1: {
   *     type: 'INSTANCE_SWAP',
   *     defaultValue: '7:23',
   *   },
   * }
   *
   * instance.componentProperties
   *
   * // Output
   * {
   *   ImageVisible#0:0: {
   *     type: 'BOOLEAN',
   *     value: true,
   *   },
   *   Icon#0:1: {
   *     type: 'INSTANCE_SWAP',
   *     value: '1:24',
   *   },
   * }
   *
   * // component properties can be applied to node properties of nested layers
   * component.children[0].children[0].componentPropertyReferences = {
   *   'visible': 'IconVisible#0:0'
   * }
   * component.children[0].children[0].visible
   *
   * // Output
   * false // gets value from component property definition
   *
   * // Use setProperties on an instance to configure it
   * instance.setProperties({ Size: 'Large', 'ButtonText#0:1': 'login' })
   * instance.componentProperties
   *
   * // Output
   * {
   *   Size: {
   *     type: 'VARIANT',
   *     value: 'Large',
   *   },
   *   IconVisible#0:0: {
   *     type: 'BOOLEAN',
   *     value: false,
   *   },
   *   ButtonText#0:1: {
   *     type: 'TEXT',
   *     value: 'login',
   *   },
   * }
   *
   * instance.setProperties({ 'IconVisible#0:0': true })
   * instance.componentProperties
   *
   * // Output
   * {
   *   Size: {
   *     type: 'VARIANT',
   *     value: 'Large',
   *   },
   *   IconVisible#0:0: {
   *     type: 'BOOLEAN',
   *     value: true,
   *   },
   *   ButtonText#0:1: {
   *     type: 'TEXT',
   *     value: 'login',
   *   },
   * }
   * ```
   */
  readonly componentPropertyDefinitions: ComponentPropertyDefinitions
  /**
   * Adds a new component property to this node and returns the property name with its unique identifier suffixed. This function supports properties with type `'BOOLEAN'`, `'TEXT'`, `'INSTANCE_SWAP'` or `'VARIANT'`.
   */
  addComponentProperty(
    propertyName: string,
    type: ComponentPropertyType,
    defaultValue: string | boolean | VariableAlias,
    options?: ComponentPropertyOptions,
  ): string
  /**
   * Modifies the name, default value, or preferred values of an existing component property on this node and returns the property name with its unique identifier suffixed.
   *
   * This function supports properties with type `'BOOLEAN'`, `'TEXT'`, `'INSTANCE_SWAP'`, or `'VARIANT'` with the following restrictions:
   *
   * - `name` is supported for all properties
   * - `defaultValue` is supported for `'BOOLEAN'`, `'TEXT'`, and `'INSTANCE_SWAP'` properties, but not for `'VARIANT'` properties
   * - `preferredValues` is only supported for `'INSTANCE_SWAP'` properties
   */
  editComponentProperty(
    propertyName: string,
    newValue: {
      name?: string
      defaultValue?: string | boolean | VariableAlias
      preferredValues?: InstanceSwapPreferredValue[]
    },
  ): string
  /**
   * Deletes an existing component property on this node. This function only supports properties with type `'BOOLEAN'`, `'TEXT'`, or `'INSTANCE_SWAP'`.
   */
  deleteComponentProperty(propertyName: string): void
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TextNode
 */
interface BaseNonResizableTextMixin {
  /**
   * Returns whether the text uses a font currently not available to the document.
   */
  readonly hasMissingFont: boolean
  /**
   * The size of the font. Has minimum value of 1.
   */
  fontSize: number | PluginAPI['mixed']
  /**
   * The font family (e.g. "Inter"), and font style (e.g. "Regular"). Setting this property to a different value requires the new font to be loaded.
   */
  fontName: FontName | PluginAPI['mixed']
  /**
   * The weight of the font (e.g. 400 for "Regular", 700 for "Bold").
   */
  readonly fontWeight: number | PluginAPI['mixed']
  /**
   * Overrides the case of the raw characters in the text node. Requires the font to be loaded.
   */
  textCase: TextCase | PluginAPI['mixed']
  /**
   * [OpenType features](https://help.figma.com/hc/en-us/articles/4913951097367) that have been explicitly enabled or disabled.
   *
   * @remarks
   *
   * The **Details** tab in the [Type settings panel](https://help.figma.com/hc/en-us/articles/360039956634-Explore-text-properties#type-settings) shows all the OpenType features that are available for the current font.
   *
   * This property gives you a map of four-character OpenType features to booleans indicating whether the features are explicitly enabled or disabled. For example, if the map contains `{ CALT: false }`, then the "Contextual alternates" feature is disabled.
   *
   * Note: This map only contains features that diverge from their default values. Some OpenType features are enabled by default and some are disabled by default. For example `CLIG` and `LIGA` are on by default, whereas `LNUM` and `TNUM` are disabled by default.
   *
   * Here are some useful resources for learning about OpenType features:
   *
   * - [An ode to OpenType [Figma blog]](https://www.figma.com/blog/opentype-font-features/)
   * - [OpenType feature tags [Microsoft]](https://learn.microsoft.com/en-us/typography/opentype/spec/featuretags)
   * - [OpenType font features guide [MDN]](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Fonts/OpenType_fonts_guide)
   * - [OpenType Features in CSS [Sparanoid]](https://sparanoid.com/lab/opentype-features/)
   *
   * ```ts title="Getting OpenType features from the currently-selected text node"
   * // For a node that uses the Inter font with
   * // "Contextual alternates" disabled (shows -> instead of ➔):
   * // { CALT: false }
   * console.log(figma.currentPage.selection[0].openTypeFeatures)
   * ```
   */
  readonly openTypeFeatures:
    | {
        readonly [feature in OpenTypeFeature]: boolean
      }
    | PluginAPI['mixed']
  /**
   * The spacing between the individual characters. Requires the font to be loaded.
   */
  letterSpacing: LetterSpacing | PluginAPI['mixed']
  /**
   * A {@link HyperlinkTarget} if the text node has exactly one hyperlink, or `null` if the node has none.
   */
  hyperlink: HyperlinkTarget | null | PluginAPI['mixed']
  /**
   * The raw characters in the text node. Setting this property requires the font the be loaded.
   *
   * @remarks
   *
   * Setting this property will reset styles applied to character ranges.
   *
   * Setting the `characters` property can change the {@link BaseNodeMixin.name} of the node if `autoRename === true`.
   */
  characters: string
  /**
   * Insert `characters` at index `start` in the text.
   *
   * @remarks
   *
   * This API allows you to insert characters in a text node while preserving the styles of the existing characters. However, you still need to call {@link PluginAPI.loadFontAsync} before using this API.
   *
   * The style of the inserted characters will be copied from the preceding character if `useStyle` is "BEFORE" or not provided. Otherwise, the style of inserted characters will be copied from the following character. If there is no preceding or following character (i.e. `start` is at the boundary of the string), then the style will be copied from the closest existing character.
   *
   * Caution: ⚠ Did you know: not all glyphs that you might think as a "character" are actually stored as a single character in JavaScript string? JavaScript strings are UTF-16 encoded. Some characters like "👍" are stored using two characters! Try it in the JavaScript console: "👍".length is 2! The two characters are called "surrogate pairs". Even more mindblowing: some characters are made of multiple _emojis_. For example, "👨‍👧", which you should see in your browser as a single character, has length 5. "👨‍👧".substring(0, 2) is "👨" and "👨‍👧".substring(3, 5) is "👧".
   */
  insertCharacters(start: number, characters: string, useStyle?: 'BEFORE' | 'AFTER'): void
  /**
   * Remove characters in the text from `start` (inclusive) to `end` (exclusive).
   *
   * @remarks
   *
   * This API allows you to remove characters in a text node while preserving the styles of the existing characters. However, you still need to call {@link PluginAPI.loadFontAsync} before using this API.
   *
   * Caution: ⚠ Did you know: not all glyphs that you might think as a "character" are actually stored as a single character in JavaScript string? JavaScript strings are UTF-16 encoded. Some characters like "👍" are stored using two characters! Try it in the JavaScript console: "👍".length is 2! The two characters are called "surrogate pairs". Even more mindblowing: some characters are made of multiple _emojis_. For example, "👨‍👧", which you should see in your browser as a single character, has length 5. "👨‍👧".substring(0, 2) is "👨" and "👨‍👧".substring(3, 5) is "👧".
   */
  deleteCharacters(start: number, end: number): void
  /**
   * Get the `fontSize` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeFontSize(start: number, end: number): number | PluginAPI['mixed']
  /**
   * Set the `fontSize` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeFontSize(start: number, end: number, value: number): void
  /**
   * Get the `fontName` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeFontName(start: number, end: number): FontName | PluginAPI['mixed']
  /**
   * Set the `fontName` from characters in range `start` (inclusive) to `end` (exclusive). Requires the new font to be loaded.
   */
  setRangeFontName(start: number, end: number, value: FontName): void
  /**
   * Get the `fontWeight` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeFontWeight(start: number, end: number): number | PluginAPI['mixed']
  /**
   * Get the `fontName`s from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeAllFontNames(start: number, end: number): FontName[]
  /**
   * Get the `textCase` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextCase(start: number, end: number): TextCase | PluginAPI['mixed']
  /**
   * Set the `textCase` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextCase(start: number, end: number, value: TextCase): void
  /**
   * Get the {@link BaseNonResizableTextMixin.openTypeFeatures} from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeOpenTypeFeatures(
    start: number,
    end: number,
  ):
    | {
        readonly [feature in OpenTypeFeature]: boolean
      }
    | PluginAPI['mixed']
  /**
   * Get the `letterSpacing` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeLetterSpacing(start: number, end: number): LetterSpacing | PluginAPI['mixed']
  /**
   * Set the `letterSpacing` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeLetterSpacing(start: number, end: number, value: LetterSpacing): void
  /**
   * Get the `hyperlink` from characters in range `start` (inclusive) to `end` (exclusive). Returns a {@link HyperlinkTarget} if the range contains exactly one hyperlink, or `null` if the range contains none.
   */
  getRangeHyperlink(start: number, end: number): HyperlinkTarget | null | PluginAPI['mixed']
  /**
   * Set the `hyperlink` from characters in range `start` (inclusive) to `end` (exclusive). Removes the hyperlink in range if `value` is `null`.
   */
  setRangeHyperlink(start: number, end: number, value: HyperlinkTarget | null): void
  /**
   * Get the `fills` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeFills(start: number, end: number): Paint[] | PluginAPI['mixed']
  /**
   * Set the `fills` from characters in range `start` (inclusive) to `end` (exclusive). Requires font to be loaded.
   *
   * Can be bound to color variables by using {@link VariablesAPI.setBoundVariableForPaint} on one or more of the provided `Paint`s
   */
  setRangeFills(start: number, end: number, value: Paint[]): void
  /**
   * Get the `textStyleId` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextStyleId(start: number, end: number): string | PluginAPI['mixed']
  /**
   * Set the provided {@link TextStyle} to characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextStyleIdAsync(start: number, end: number, styleId: string): Promise<void>
  /**
   * Set the `textStyleId` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   *
   * @deprecated Use `setRangeTextStyleIdAsync` instead. This function will throw an exception if the plugin manifest contains `"documentAccess": "dynamic-page"`.
   */
  setRangeTextStyleId(start: number, end: number, value: string): void
  /**
   * Get the `fillStyleId` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeFillStyleId(start: number, end: number): string | PluginAPI['mixed']
  /**
   * Set the provided {@link PaintStyle} as a fill to characters in range `start` (inclusive) to `end` (exclusive).
   */
  setRangeFillStyleIdAsync(start: number, end: number, styleId: string): Promise<void>
  /**
   * Set the `fillStyleId` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   *
   * @deprecated Use `setRangeFillStyleIdAsync` instead. This function will throw an exception if the plugin manifest contains `"documentAccess": "dynamic-page"`.
   */
  setRangeFillStyleId(start: number, end: number, value: string): void
  /**
   * Get the `boundVariable` for a given field from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeBoundVariable(
    start: number,
    end: number,
    field: VariableBindableTextField,
  ): VariableAlias | null | PluginAPI['mixed']
  /**
   * Set the `boundVariable` for a given field from characters in range `start` (inclusive) to `end` (exclusive). Requires any new fonts to be loaded.
   */
  setRangeBoundVariable(
    start: number,
    end: number,
    field: VariableBindableTextField,
    variable: Variable | null,
  ): void
  /**
   * Get text segments along with the desired text properties (font size, text case, etc...)
   *
   * @param fields - An array of text properties. Any text property that can apply to specific character ranges is supported:
   * - fontSize
   * - fontName
   * - fontWeight
   * - fontStyle
   * - textDecoration
   * - textDecorationStyle
   * - textDecorationOffset
   * - textDecorationThickness
   * - textDecorationColor
   * - textDecorationSkipInk
   * - textCase
   * - lineHeight
   * - letterSpacing
   * - fills
   * - textStyleId
   * - fillStyleId
   * - listOptions
   * - listSpacing
   * - indentation
   * - paragraphIndent
   * - paragraphSpacing
   * - hyperlink
   * - boundVariables
   * - textStyleOverrides
   * - openTypeFeatures
   *
   * @param start - An optional start index for the characters to retrieve
   * @param end - An optional end index (required if `start` is provided)
   *
   * @remarks
   *
   * This function provides an easy and performant way to get multiple text properties which may have [mixed values](https://developers.figma.com/docs/plugins/working-with-text#mixed-styles), along with which characters these values apply to.
   * It will return an array of {@link StyledTextSegment}s containing the desired fields, along with the characters and their start and end index.
   *
   * To illustrate the behavior of this function, here are a few examples:
   *
   * Node containing "**hello** world":
   * ```js
   * textNode.getStyledTextSegments(['fontName'])
   *
   * // Output: contains 2 segments because the text is no longer bolded after "hello"
   * [
   *   {
   *     characters: "hello",
   *     start: 0,
   *     end: 5,
   *     fontName: { family: 'Inter', style: 'Bold' },
   *   },
   *   {
   *     characters: " world",
   *     start: 5,
   *     end: 11,
   *     fontName: { family: 'Inter', style: 'Regular' },
   *   }
   * ]
   * ```
   *
   * Node containing:
   * - Item 1
   *   - **Item** 1.1
   * ```js
   * textNode.getStyledTextSegments(['fontName', 'indentation'])
   *
   * // Output: contains 3 segments because the font / indentation changes
   * // before and after the second "Item"
   * [
   *   {
   *     characters: 'Item 1\n',
   *     start: 0,
   *     end: 7,
   *     fontName: { family: 'Inter', style: 'Regular' },
   *     indentation: 1
   *   },
   *   {
   *     characters: 'Item',
   *     start: 7,
   *     end: 11,
   *     fontName: { family: 'Inter', style: 'Bold' },
   *     indentation: 2
   *   },
   *   {
   *     characters: ' 1.1',
   *     start: 11,
   *     end: 15,
   *     fontName: { family: 'Inter', style: 'Regular' },
   *     indentation: 2
   *   }
   * ]
   * ```
   *
   * Node containing "😁 😭 😅😂😳😎":
   * ```js
   * textNode.getStyledTextSegments(['letterSpacing'])
   *
   * // Output: many emoji have length 2 in Javascript
   * [
   *   {
   *     characters: '😁😭',
   *     start: 0,
   *     end: 4,
   *     letterSpacing: { unit: 'PERCENT', value: 50 }
   *   },
   *   {
   *     characters: '😅😂😳😎',
   *     start: 4,
   *     end: 12,
   *     letterSpacing: { unit: 'PERCENT', value: 0 }
   *   }
   * ]
   *
   * textNode.getStyledTextSegments(['letterSpacing'], 1, 3)
   *
   * // Output: if the requested range starts or ends in the middle
   * // of surrogate pairs, those pairs will be trimmed and you will
   * // see raw Unicode code points
   * [
   *   {
   *     characters: '\uDE01\uD83D',
   *     start: 1,
   *     end: 3,
   *     letterSpacing: { unit: 'PERCENT', value: 50 }
   *   }
   * ]
   *
   * textNode.getStyledTextSegments(['letterSpacing'], 3, 5)
   *
   * // Output: similar to above, but Unicode code points span
   * // a change in letter spacing
   * [
   *   {
   *     characters: '\uDE2D',
   *     start: 3,
   *     end: 4,
   *     letterSpacing: { unit: 'PERCENT', value: 50 }
   *   },
   *   {
   *     characters: '\uD83D',
   *     start: 4,
   *     end: 5,
   *     letterSpacing: { unit: 'PERCENT', value: 0 }
   *   }
   * ]
   * ```
   *
   * See {@link BaseNonResizableTextMixin.insertCharacters} for more information on surrogate pairs.
   */
  getStyledTextSegments<
    StyledTextSegmentFields extends (keyof Omit<
      StyledTextSegment,
      'characters' | 'start' | 'end'
    >)[],
  >(
    fields: StyledTextSegmentFields,
    start?: number,
    end?: number,
  ): Array<
    Pick<StyledTextSegment, StyledTextSegmentFields[number] | 'characters' | 'start' | 'end'>
  >
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TextNode
 */
interface NonResizableTextMixin extends BaseNonResizableTextMixin {
  /**
   * The indentation of paragraphs (offset of the first line from the left). Setting this property requires the font the be loaded.
   */
  paragraphIndent: number
  /**
   * The vertical distance between paragraphs. Setting this property requires the font to be loaded.
   */
  paragraphSpacing: number
  /**
   * The vertical distance between lines of a list.
   */
  listSpacing: number
  /**
   * Whether punctuation, like quotation marks, hangs outside the text box.
   */
  hangingPunctuation: boolean
  /**
   * Whether numbered list counters or unordered list bullets hang outside the text box.
   */
  hangingList: boolean
  /**
   * Whether the text is underlined or has a strikethrough. Requires the font to be loaded.
   */
  textDecoration: TextDecoration | PluginAPI['mixed']
  /**
   * The text decoration style (e.g. "SOLID"). If the text is not underlined, this value will be null. Requires the font to be loaded.
   */
  textDecorationStyle: TextDecorationStyle | PluginAPI['mixed'] | null
  /**
   * The text decoration offset. If the text is not underlined, this value will be null. Requires the font to be loaded.
   */
  textDecorationOffset: TextDecorationOffset | PluginAPI['mixed'] | null
  /**
   * The text decoration thickness. If the text is not underlined, this value will be null. Requires the font to be loaded.
   */
  textDecorationThickness: TextDecorationThickness | PluginAPI['mixed'] | null
  /**
   * The text decoration color. If the text is not underlined, this value will be null. Requires the font to be loaded.
   */
  textDecorationColor: TextDecorationColor | PluginAPI['mixed'] | null
  /**
   * Whether the text decoration skips descenders. If the text is not underlined, this value will be null. Requires the font to be loaded.
   */
  textDecorationSkipInk: boolean | PluginAPI['mixed'] | null
  /**
   * The spacing between the lines in a paragraph of text. Requires the font to be loaded.
   */
  lineHeight: LineHeight | PluginAPI['mixed']
  /**
   * The removal of the vertical space above and below text glyphs. Requires the font to be loaded.
   */
  leadingTrim: LeadingTrim | PluginAPI['mixed']
  /**
   * Get the `textDecoration` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextDecoration(start: number, end: number): TextDecoration | PluginAPI['mixed']
  /**
   * Set the `textDecoration` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextDecoration(start: number, end: number, value: TextDecoration): void
  /**
   * Get the `textDecorationStyle` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextDecorationStyle(
    start: number,
    end: number,
  ): TextDecorationStyle | PluginAPI['mixed'] | null
  /**
   * Set the `textDecorationStyle` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextDecorationStyle(start: number, end: number, value: TextDecorationStyle): void
  /**
   * Get the `textDecorationOffset` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextDecorationOffset(
    start: number,
    end: number,
  ): TextDecorationOffset | PluginAPI['mixed'] | null
  /**
   * Set the `textDecorationOffset` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextDecorationOffset(start: number, end: number, value: TextDecorationOffset): void
  /**
   * Get the `textDecorationThickness` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextDecorationThickness(
    start: number,
    end: number,
  ): TextDecorationThickness | PluginAPI['mixed'] | null
  /**
   * Set the `textDecorationThickness` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextDecorationThickness(start: number, end: number, value: TextDecorationThickness): void
  /**
   * Get the `textDecorationColor` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextDecorationColor(
    start: number,
    end: number,
  ): TextDecorationColor | PluginAPI['mixed'] | null
  /**
   * Set the `textDecorationColor` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextDecorationColor(start: number, end: number, value: TextDecorationColor): void
  /**
   * Get the `textDecorationSkipInk` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeTextDecorationSkipInk(start: number, end: number): boolean | PluginAPI['mixed'] | null
  /**
   * Set the `textDecorationSkipInk` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeTextDecorationSkipInk(start: number, end: number, value: boolean): void
  /**
   * Get the `lineHeight` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeLineHeight(start: number, end: number): LineHeight | PluginAPI['mixed']
  /**
   * Set the `lineHeight` from characters in range `start` (inclusive) to `end` (exclusive). Requires the font to be loaded.
   */
  setRangeLineHeight(start: number, end: number, value: LineHeight): void
  /**
   * Get the `textListOptions` from characters in range `start` (inclusive) to `end` (exclusive). Returns a {@link TextListOptions}
   */
  getRangeListOptions(start: number, end: number): TextListOptions | PluginAPI['mixed']
  /**
   * Set the `textListOptions` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  setRangeListOptions(start: number, end: number, value: TextListOptions): void
  /**
   * Get the `listSpacing` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeListSpacing(start: number, end: number): number | PluginAPI['mixed']
  /**
   * Set the `listSpacing` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  setRangeListSpacing(start: number, end: number, value: number): void
  /**
   * Get the `indentation` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeIndentation(start: number, end: number): number | PluginAPI['mixed']
  /**
   * Set the `indentation` from characters in range `start` (inclusive) to `end` (exclusive).
   */
  setRangeIndentation(start: number, end: number, value: number): void
  /**
   * Get the `paragraphIndent` for a paragraph containing characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeParagraphIndent(start: number, end: number): number | PluginAPI['mixed']
  /**
   * Set the `paragraphIndent` for a paragraph containing characters in range `start` (inclusive) to `end` (exclusive).
   */
  setRangeParagraphIndent(start: number, end: number, value: number): void
  /**
   * Get the `paragraphSpacing` for a paragraph containing characters in range `start` (inclusive) to `end` (exclusive).
   */
  getRangeParagraphSpacing(start: number, end: number): number | PluginAPI['mixed']
  /**
   * Set the `paragraphSpacing` for a paragraph containing characters in range `start` (inclusive) to `end` (exclusive).
   */
  setRangeParagraphSpacing(start: number, end: number, value: number): void
}

interface FrameNode extends DefaultFrameMixin {
  /**
   * The type of this node, represented by the string literal "FRAME".
   */
  readonly type: 'FRAME'
  /**
   * Duplicates the frame node. By default, the duplicate will be parented under `figma.currentPage`. Nested components will be cloned as instances who master is the original component.
   */
  clone(): FrameNode
}
interface GroupNode
  extends BaseNodeMixin,
    SceneNodeMixin,
    ReactionMixin,
    ChildrenMixin,
    ContainerMixin,
    DeprecatedBackgroundMixin,
    BlendMixin,
    LayoutMixin,
    ExportMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "GROUP".
   */
  readonly type: 'GROUP'
  /**
   * Duplicates the group node. By default, the duplicate will be parented under `figma.currentPage`. Nested components will be cloned as instances who master is the original component.
   */
  clone(): GroupNode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TransformGroupNode
 */
interface TransformGroupNode
  extends BaseNodeMixin,
    SceneNodeMixin,
    ReactionMixin,
    ChildrenMixin,
    ContainerMixin,
    DeprecatedBackgroundMixin,
    BlendMixin,
    LayoutMixin,
    ExportMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "TRANSFORM_GROUP".
   */
  readonly type: 'TRANSFORM_GROUP'
  /**
   * Duplicates the transform group node. By default, the duplicate will be parented under `figma.currentPage`. Nested components will be cloned as instances who master is the original component.
   */
  clone(): TransformGroupNode
}
interface SliceNode extends BaseNodeMixin, SceneNodeMixin, LayoutMixin, ExportMixin {
  /**
   * The type of this node, represented by the string literal "SLICE"
   */
  readonly type: 'SLICE'
  /**
   * Duplicates the slice node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): SliceNode
}
interface RectangleNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    CornerMixin,
    RectangleCornerMixin,
    IndividualStrokesMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "RECTANGLE"
   */
  readonly type: 'RECTANGLE'
  /**
   * Duplicates the rectangle node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): RectangleNode
}
interface LineNode extends DefaultShapeMixin, ConstraintMixin, AnnotationsMixin {
  /**
   * The type of this node, represented by the string literal "LINE"
   */
  readonly type: 'LINE'
  /**
   * Duplicates the line node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): LineNode
}
interface EllipseNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    CornerMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "ELLIPSE"
   */
  readonly type: 'ELLIPSE'
  /**
   * Duplicates the ellipse node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): EllipseNode
  /**
   * Exposes the values of the sweep and ratio handles used in our UI to create arcs and donuts. See the {@link ArcData} property.
   */
  arcData: ArcData
}
interface PolygonNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    CornerMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "POLYGON"
   */
  readonly type: 'POLYGON'
  /**
   * Duplicates the polygon node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): PolygonNode
  /**
   * Number of sides of the polygon. Must be an integer >= 3.
   */
  pointCount: number
}
interface StarNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    CornerMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "STAR"
   */
  readonly type: 'STAR'
  /**
   * Duplicates the star node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): StarNode
  /**
   * Number of "spikes", or outer points of the star. Must be an integer >= 3.
   */
  pointCount: number
  /**
   * The percentage value that defines the acuteness of the star's angles. This value must be between 0.0 and 1.0 inclusive.
   *
   * Contrary to cornerRadius, which controls the outer corners of the star, innerRadius controls the inner rounded corners of the star. A value closer to 0 makes the angles on each point more acute, resulting in a more "spiky" look. A value closer to 1 makes the star closer to a Polygon node. A value equals 1 means that the node is a regular polygon with 2 * pointCount edges.
   */
  innerRadius: number
}
interface VectorNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    CornerMixin,
    VectorLikeMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "VECTOR"
   */
  readonly type: 'VECTOR'
  /**
   * Duplicates the vector node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): VectorNode
}
interface TextNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    NonResizableTextMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "TEXT"
   */
  readonly type: 'TEXT'
  /**
   * Duplicates the text node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): TextNode
  /**
   * The horizontal alignment of the text with respect to the textbox. Setting this property requires the font the be loaded.
   */
  textAlignHorizontal: 'LEFT' | 'CENTER' | 'RIGHT' | 'JUSTIFIED'
  /**
   * The vertical alignment of the text with respect to the textbox. Setting this property requires the font the be loaded.
   */
  textAlignVertical: 'TOP' | 'CENTER' | 'BOTTOM'
  /**
   * The behavior of how the size of the text box adjusts to fit the characters. Setting this property requires the font the be loaded.
   *
   * @remarks
   * - "NONE": The size of the textbox is fixed and is independent of its content.
   * - "HEIGHT": The width of the textbox is fixed. Characters wrap to fit in the textbox. The height of the textbox automatically adjusts to fit its content.
   * - "WIDTH_AND_HEIGHT": Both the width and height of the textbox automatically adjusts to fit its content. Characters do not wrap.
   * - [DEPRECATED] "TRUNCATE": Like "NONE", but text that overflows the bounds of the text node will be truncated with an ellipsis. This value will be removed in the future - prefer reading from {@link TextNode.textTruncation} instead.
   */
  textAutoResize: 'NONE' | 'WIDTH_AND_HEIGHT' | 'HEIGHT' | 'TRUNCATE'
  /**
   * Whether this text node will truncate with an ellipsis when the text node size is smaller than the text inside.
   *
   * @remarks
   *
   * When {@link TextNode.textAutoResize} is set to `"NONE"`, the text will truncate when the fixed size is smaller than the text inside. When it is `"HEIGHT"` or `"WIDTH_AND_HEIGHT"`, truncation will only occur if used in conjunction with {@link DimensionAndPositionMixin.maxHeight} or {@link TextNode.maxLines}.
   */
  textTruncation: 'DISABLED' | 'ENDING'
  /**
   * The maximum number of lines a text node can reach before it truncates. Only applicable when {@link TextNode.textTruncation} is set to `"ENDING"`.
   *
   * @remarks
   *
   * The value must be >= 1. To disable truncation at a maximum number of lines, set to `null`.
   */
  maxLines: number | null
  /**
   * Whether updating the characters in the text node should update the name of the node. If this is set to true, `name` will be auto-derived from `characters`.
   *
   * @remarks
   *
   * This is automatically reset to false if `name` is modified in order to allow the node to keep the new name.
   */
  autoRename: boolean
  /**
   * The id of the {@link TextStyle} object that the text properties of this node are linked to. Requires the font to be loaded.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use {@link TextNode.setTextStyleIdAsync} to update the style.
   */
  textStyleId: string | PluginAPI['mixed']
  /**
   * Set the {@link TextStyle} that the text properties of this node are linked to. Requires the font to be loaded.
   */
  setTextStyleIdAsync(styleId: string): Promise<void>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TextPathNode
 */
interface TextPathNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    NonResizableTextPathMixin,
    AnnotationsMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "TEXT_PATH"
   */
  readonly type: 'TEXT_PATH'
  /**
   * Duplicates the text path node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): TextPathNode
  /**
   * The horizontal alignment of the text with respect to the textbox. Setting this property requires the font the be loaded.
   */
  textAlignHorizontal: 'LEFT' | 'CENTER' | 'RIGHT' | 'JUSTIFIED'
  /**
   * The vertical alignment of the text with respect to the textbox. Setting this property requires the font the be loaded.
   */
  textAlignVertical: 'TOP' | 'CENTER' | 'BOTTOM'
  /**
   * Whether updating the characters in the text node should update the name of the node. If this is set to true, `name` will be auto-derived from `characters`.
   *
   * @remarks
   *
   * This is automatically reset to false if `name` is modified in order to allow the node to keep the new name.
   */
  autoRename: boolean
  /**
   * The id of the {@link TextStyle} object that the text properties of this node are linked to. Requires the font to be loaded.
   *
   * If the manifest contains`"documentAccess": "dynamic-page"`, this property is read-only. Use {@link TextPathNode.setTextStyleIdAsync} to update the style.
   */
  textStyleId: string | PluginAPI['mixed']
  /**
   * Set the {@link TextStyle} that the text properties of this node are linked to. Requires the font to be loaded.
   */
  setTextStyleIdAsync(styleId: string): Promise<void>
  /**
   * The vector paths of the text path node.
   */
  readonly vectorPaths: VectorPaths
  /**
   * The vector network of the text path node.
   */
  readonly vectorNetwork: VectorNetwork
  /**
   * Whether the vector handles are mirrored or independent.
   */
  readonly handleMirroring: HandleMirroring | PluginAPI['mixed']
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ComponentPropertyType
 */
type ComponentPropertyType = 'BOOLEAN' | 'TEXT' | 'INSTANCE_SWAP' | 'VARIANT'
/**
 * @see https://developers.figma.com/docs/plugins/api/InstanceSwapPreferredValue
 */
type InstanceSwapPreferredValue = {
  type: 'COMPONENT' | 'COMPONENT_SET'
  key: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ComponentPropertyOptions
 */
type ComponentPropertyOptions = {
  preferredValues?: InstanceSwapPreferredValue[]
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ComponentPropertyDefinitions
 */
type ComponentPropertyDefinitions = {
  [propertyName: string]: {
    type: ComponentPropertyType
    defaultValue: string | boolean
    preferredValues?: InstanceSwapPreferredValue[]
    variantOptions?: string[]
    readonly boundVariables?: {
      [field in VariableBindableComponentPropertyField]?: VariableAlias
    }
  }
}
interface ComponentSetNode extends BaseFrameMixin, PublishableMixin, ComponentPropertiesMixin {
  /**
   * The type of this node, represented by the string literal "COMPONENT_SET"
   */
  readonly type: 'COMPONENT_SET'
  /**
   * Duplicates the component set as a new component set. Its children will be duplicated as **new** components with no instances of them. By default, the duplicate will be parented under figma.currentPage.
   */
  clone(): ComponentSetNode
  /**
   * The default variant of this component set, which is the top-left-most variant, spatially. This corresponds to the variant that would be inserted when dragging in a component set from the team library in the Figma UI.
   */
  readonly defaultVariant: ComponentNode
  /**
   * @deprecated Use `componentPropertyDefinitions` instead.
   */
  readonly variantGroupProperties: {
    [property: string]: {
      values: string[]
    }
  }
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ComponentNode
 */
interface ComponentNode
  extends DefaultFrameMixin,
    PublishableMixin,
    VariantMixin,
    ComponentPropertiesMixin {
  /**
   * The type of this node, represented by the string literal "COMPONENT"
   */
  readonly type: 'COMPONENT'
  /**
   * Duplicates the component node as a **new** component with no instances of it. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): ComponentNode
  /**
   * Creates an instance of this component. By default, the instance will be parented under `figma.currentPage`.
   */
  createInstance(): InstanceNode
  /**
   * Returns an array of all of the instances of this component in the document.
   */
  getInstancesAsync(): Promise<InstanceNode[]>
  /**
   * Returns an array of all of the instances of this component in the document.
   *
   * @deprecated Use {@link ComponentNode.getInstancesAsync} instead. Accessing this property will throw an exception if the plugin manifest contains `"documentAccess": "dynamic-page"`.
   */
  readonly instances: InstanceNode[]
}
/**
 * @see https://developers.figma.com/docs/plugins/api/ComponentProperties
 */
type ComponentProperties = {
  [propertyName: string]: {
    type: ComponentPropertyType
    value: string | boolean
    preferredValues?: InstanceSwapPreferredValue[]
    readonly boundVariables?: {
      [field in VariableBindableComponentPropertyField]?: VariableAlias
    }
  }
}
interface InstanceNode extends DefaultFrameMixin, VariantMixin {
  /**
   * The type of this node, represented by the string literal "INSTANCE"
   */
  readonly type: 'INSTANCE'
  /**
   * Duplicates the instance node. The new instance has the same main component. By default, the duplicate's parent is `figma.currentPage`.
   */
  clone(): InstanceNode
  /**
   * The component that this instance reflects. This could be a remote, read-only component. This can be set to turn this instance into a different component. On nested instances (instances inside other instances), setting this value clears all overrides and performs nested instance swapping.
   */
  getMainComponentAsync(): Promise<ComponentNode | null>
  /**
   * The component that this instance reflects. This could be a remote, read-only component. This can be set to turn this instance into a different component. On nested instances (instances inside other instances), setting this value clears all overrides and performs nested instance swapping.
   *
   * If the plugin manifest contains `"documentAccess": "dynamic-page"`, this property is **write-only**. Use {@link InstanceNode.getMainComponentAsync} to read the value.
   */
  mainComponent: ComponentNode | null
  /**
   * Swaps this instance's current main component with `componentNode` and preserves overrides using the same heuristics as instance swap in the Figma editor UI. Note that we may update these override preservation heuristics from time to time.
   *
   * @remarks
   *
   * Learn more about instance swap and override preservation in our <a href="https://help.figma.com/hc/en-us/articles/360039150413-Swap-between-component-instances-in-a-file">help center</a>. If you do not want to preserve overrides when swapping, you should assign to {@link InstanceNode.mainComponent}, which sets the instance's main component directly and clears all overrides.
   */
  swapComponent(componentNode: ComponentNode): void
  /**
   * Sets the component properties and values for this instance. `propertyName` corresponds to the names returned by `componentPropertyDefinitions` and should be suffixed with `'#'` and a unique ID for `'TEXT'`, `'BOOLEAN'`, and `'INSTANCE_SWAP'` properties. In the case of name collision, this function prioritizes updating the `'VARIANT'` type properties. Existing properties that are non-specified in the function will maintain their current value.
   */
  setProperties(properties: { [propertyName: string]: string | boolean | VariableAlias }): void
  /**
   * Component properties and values for this instance. If conflicting property names are encountered, prioritizes showing `'VARIANT'` type properties.
   */
  readonly componentProperties: ComponentProperties
  /**
   * Detaches the given instance from its component.  Returns the frame node that results from detaching the instance. For nested instances (instances inside of other instances), also detaches all ancestors nodes that
   * are instances.
   */
  detachInstance(): FrameNode
  /**
   * The scale factor applied to the instance.
   *
   * @remarks
   *
   * Normally, this has value `1`, even if the instance is resized. However, if the instance is resized via the scale tool (shortcut `K`), then the instance is scaled and the scale factor is stored in this property.
   */
  scaleFactor: number
  /**
   * All nested instances that have been exposed to this `InstanceNode`'s level. These nested instances' component properties will be visible at the top level of this `InstanceNode`.
   */
  readonly exposedInstances: InstanceNode[]
  /**
   * Whether this instance has been marked as exposed to its containing `ComponentNode` or `ComponentSetNode`. This property is only writeable on primary `InstanceNode`s contained within a `ComponentNode` or `ComponentSetNode` but is inherited on nested `InstanceNode`s.
   */
  isExposedInstance: boolean
  /**
   * Returns an array of all of the fields directly overridden on this instance. Inherited overrides are not included.
   */
  readonly overrides: {
    id: string
    overriddenFields: NodeChangeProperty[]
  }[]
  /**
   * Resets all direct overrides on this instance.
   */
  resetOverrides(): void
}
interface BooleanOperationNode
  extends DefaultShapeMixin,
    ChildrenMixin,
    CornerMixin,
    ContainerMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "BOOLEAN_OPERATION"
   */
  readonly type: 'BOOLEAN_OPERATION'
  /**
   * Duplicates the boolean operation node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): BooleanOperationNode
  /**
   * The type of operation used to combine the children of this node.
   */
  booleanOperation: 'UNION' | 'INTERSECT' | 'SUBTRACT' | 'EXCLUDE'
}
interface StickyNode extends OpaqueNodeMixin, MinimalFillsMixin, MinimalBlendMixin {
  /**
   * The type of this node, represented by the string literal "STICKY"
   */
  readonly type: 'STICKY'
  /**
   * Text sublayer of the StickyNode
   */
  readonly text: TextSublayerNode
  /**
   * Indicates whether the author field is visible
   */
  authorVisible: boolean
  /**
   * Returns the author name.
   */
  authorName: string
  /**
   *  Indicates whether the sticky note has a [wide rectangular shape](https://help.figma.com/hc/en-us/articles/1500004414322-Sticky-notes-in-FigJam#Size), as opposed to a square shape.
   */
  isWideWidth: boolean
  /**
   * Duplicates the node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): StickyNode
}
interface StampNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    StickableMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "STAMP"
   */
  readonly type: 'STAMP'
  /**
   * Duplicates the node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): StampNode
  /**
   * Fetches the name, id, and photoUrl of the user that created the Stamp. Note that this can return null
   * if the stamp was created before July 2022 or if the user is currently not connected to the internet.
   *
   * `fileusers` must be specified in the permissions array in `manifest.json` to access this function.
   */
  getAuthorAsync(): Promise<BaseUser | null>
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TableNode
 */
interface TableNode extends OpaqueNodeMixin, MinimalFillsMixin, MinimalBlendMixin {
  /**
   * The type of this node, represented by the string literal "TABLE"
   */
  readonly type: 'TABLE'
  /**
   * Duplicates the node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): TableNode
  /**
   * The number of rows in the table.
   *
   */
  readonly numRows: number
  /**
   * The number of columns in the table.
   *
   */
  readonly numColumns: number
  /**
   * Returns the table cell node at a specific cell coordinate.
   *
   * @param rowIndex - The index of the row. Must satisfy `0 <= rowIndex < numRows`.
   * @param columnIndex - The index of the column. Must satisfy `0 <= columnInde < numColumns`.
   *
   */
  cellAt(rowIndex: number, columnIndex: number): TableCellNode
  /**
   * Inserts a row before the specified index.
   *
   * @param rowIndex - Index of the new row. Must satisfy `0 <= rowIndex <= numRows`.
   *
   */
  insertRow(rowIndex: number): void
  /**
   * Inserts a column before the specified index.
   *
   * @param columnIndex - Index of the new column. Must satisfy `0 <= columnIndex <= numColumns`.
   *
   */
  insertColumn(columnIndex: number): void
  /**
   * Removes the row at the specified index.
   *
   * @param rowIndex - Index of the row to remove. Must satisfy `0 <= rowIndex < numRows`.
   *
   */
  removeRow(rowIndex: number): void
  /**
   * Removes the column at the specified index.
   *
   * @param columnIndex - Index of the column to remove. Must satisfy `0 <= columnIndex < numColumns`.
   *
   */
  removeColumn(columnIndex: number): void
  /**
   * Moves the row from the start index to the destination index.
   *
   * @param fromIndex - Index of the row to move. Must satisfy `0 <= rowIndex < numRows`.
   * @param toIndex - Index that specifies where the row will be moved before. Must satisfy `0 <= rowIndex < numRows`.
   *
   */
  moveRow(fromIndex: number, toIndex: number): void
  /**
   * Moves the column from the start index to the destination index.
   *
   * @param fromIndex - Index of the column to move. Must satisfy `0 <= columnIndex < numColumns`.
   * @param toIndex - Index that specifies where the column will be moved before. Must satisfy `0 <= columnIndex < numColumns`.
   *
   */
  moveColumn(fromIndex: number, toIndex: number): void
  /**
   * Resizes the row. Rows cannot be resized to be smaller than their minimum size.
   *
   * @param height - New width of the row. Must be `>= 0.01`
   *
   */
  resizeRow(rowIndex: number, height: number): void
  /**
   * Resizes the column. Columns cannot be resized to be smaller than their minimum size.
   *
   * @param width - New width of the column. Must be >= 0.01
   *
   */
  resizeColumn(columnIndex: number, width: number): void
}
/**
 * @see https://developers.figma.com/docs/plugins/api/TableCellNode
 */
interface TableCellNode extends MinimalFillsMixin {
  /**
   * The type of this node, represented by the string literal "TABLE_CELL"
   */
  readonly type: 'TABLE_CELL'
  /**
   * Text sublayer of the TableCellNode
   */
  readonly text: TextSublayerNode
  /**
   * The row index of this cell relative to its parent table.
   */
  readonly rowIndex: number
  /**
   * The column index of this cell relative to its parent table.
   */
  readonly columnIndex: number
  readonly toString: string
  readonly parent: TableNode
  readonly height: number
  readonly width: number
}
interface HighlightNode
  extends DefaultShapeMixin,
    ConstraintMixin,
    CornerMixin,
    VectorLikeMixin,
    StickableMixin,
    AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "HIGHLIGHT"
   */
  readonly type: 'HIGHLIGHT'
  /**
   * Duplicates the highlight node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): HighlightNode
}
interface WashiTapeNode extends DefaultShapeMixin, StickableMixin, AspectRatioLockMixin {
  /**
   * The type of this node, represented by the string literal "WASHI_TAPE"
   */
  readonly type: 'WASHI_TAPE'
  /**
   * Duplicates the washi tape node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): WashiTapeNode
}
interface ShapeWithTextNode
  extends OpaqueNodeMixin,
    MinimalFillsMixin,
    MinimalBlendMixin,
    MinimalStrokesMixin {
  /**
   * The type of this node, represented by the string literal "SHAPE_WITH_TEXT".
   */
  readonly type: 'SHAPE_WITH_TEXT'
  /**
   * The shape of this node.
   *
   * Most shape types have the same name as their tooltip but there are a few exceptions.
   * ENG_DATABASE: Cylinder, ENG_QUEUE: Horizontal cylinder, ENG_FILE: File, ENG_FOLDER: Folder.
   */
  shapeType:
    | 'SQUARE'
    | 'ELLIPSE'
    | 'ROUNDED_RECTANGLE'
    | 'DIAMOND'
    | 'TRIANGLE_UP'
    | 'TRIANGLE_DOWN'
    | 'PARALLELOGRAM_RIGHT'
    | 'PARALLELOGRAM_LEFT'
    | 'ENG_DATABASE'
    | 'ENG_QUEUE'
    | 'ENG_FILE'
    | 'ENG_FOLDER'
    | 'TRAPEZOID'
    | 'PREDEFINED_PROCESS'
    | 'SHIELD'
    | 'DOCUMENT_SINGLE'
    | 'DOCUMENT_MULTIPLE'
    | 'MANUAL_INPUT'
    | 'HEXAGON'
    | 'CHEVRON'
    | 'PENTAGON'
    | 'OCTAGON'
    | 'STAR'
    | 'PLUS'
    | 'ARROW_LEFT'
    | 'ARROW_RIGHT'
    | 'SUMMING_JUNCTION'
    | 'OR'
    | 'SPEECH_BUBBLE'
    | 'INTERNAL_STORAGE'
  /**
   * Text sublayer of the ShapeWithTextNode.
   */
  readonly text: TextSublayerNode
  /**
   * How rounded a shape's corner is.
   */
  readonly cornerRadius?: number
  /**
   * The rotation of the node in degrees. Returns values from -180 to 180. Identical to `Math.atan2(-m10, m00)` in the {@link DimensionAndPositionMixin.relativeTransform} matrix. When setting `rotation`, it will also set `m00`, `m01`, `m10`, `m11`.
   *
   * @remarks
   *
   * The rotation is with respect to the top-left of the object. Therefore, it is independent from the position of the object. If you want to rotate with respect to the center (or any arbitrary point), you can do so via matrix transformations and {@link DimensionAndPositionMixin.relativeTransform}.
   */
  rotation: number
  /**
   * Resize the ShapeWithText.
   * @param width - New width of the node. Must be >= 0.01
   * @param height - New height of the node. Must be >= 0.01
   */
  resize(width: number, height: number): void
  /**
   * Rescale the ShapeWithText.
   * @param scale - The scale by which to resize the node from the top-left corner.
   */
  rescale(scale: number): void
  /**
   * Duplicates the node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): ShapeWithTextNode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/CodeBlockNode
 */
interface CodeBlockNode extends OpaqueNodeMixin, MinimalBlendMixin {
  /**
   * The type of this node, represented by the string literal "CODE_BLOCK"
   */
  readonly type: 'CODE_BLOCK'
  /**
   * The contents of the code block.
   */
  code: string
  /**
   * The language of the code block. New languages will be added to this enum without the major version updating, so be careful not to exhaustively match on this type without a default case.
   */
  codeLanguage:
    | 'TYPESCRIPT'
    | 'CPP'
    | 'RUBY'
    | 'CSS'
    | 'JAVASCRIPT'
    | 'HTML'
    | 'JSON'
    | 'GRAPHQL'
    | 'PYTHON'
    | 'GO'
    | 'SQL'
    | 'SWIFT'
    | 'KOTLIN'
    | 'RUST'
    | 'BASH'
    | 'PLAINTEXT'
    | 'DART'
  /**
   * Duplicates the node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): CodeBlockNode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/LabelSublayer
 */
interface LabelSublayerNode {
  fills: Paint[] | PluginAPI['mixed']
}
interface ConnectorNode extends OpaqueNodeMixin, MinimalBlendMixin, MinimalStrokesMixin {
  /**
   * The type of this node, represented by the string literal "CONNECTOR"
   */
  readonly type: 'CONNECTOR'
  /**
   * Text sublayer of the ConnectorNode
   */
  readonly text: TextSublayerNode
  /**
   * Text sublayer of the ConnectorNode
   */
  readonly textBackground: LabelSublayerNode
  /**
   * How rounded a connector's edges are
   */
  readonly cornerRadius?: number
  /**
   * Connector path type
   */
  connectorLineType: 'ELBOWED' | 'STRAIGHT' | 'CURVED'
  /**
   * Connector starting endpoint
   */
  connectorStart: ConnectorEndpoint
  /**
   * Connector ending endpoint
   */
  connectorEnd: ConnectorEndpoint
  /**
   * Connector start stroke cap
   */
  connectorStartStrokeCap: ConnectorStrokeCap
  /**
   * Connector end stroke cap
   */
  connectorEndStrokeCap: ConnectorStrokeCap
  /**
   * The rotation of the node in degrees. Returns values from -180 to 180. Identical to `Math.atan2(-m10, m00)` in the {@link DimensionAndPositionMixin.relativeTransform} matrix. When setting `rotation`, it will also set `m00`, `m01`, `m10`, `m11`.
   *
   * @remarks
   *
   * The rotation is with respect to the top-left of the object. Therefore, it is independent from the position of the object. If you want to rotate with respect to the center (or any arbitrary point), you can do so via matrix transformations and {@link DimensionAndPositionMixin.relativeTransform}.
   */
  rotation: number
  /**
   * Duplicates the node. By default, the duplicate will be parented under `figma.currentPage`.
   */
  clone(): ConnectorNode
}
/**
 * @see https://developers.figma.com/docs/plugins/api/node-types
 */
type BaseNode = SceneNode

/**
 * @see https://developers.figma.com/docs/plugins/api/node-types
 */
type SceneNode =
  | SliceNode
  | FrameNode
  | GroupNode
  | ComponentSetNode
  | ComponentNode
  | InstanceNode
  | BooleanOperationNode
  | VectorNode
  | StarNode
  | LineNode
  | EllipseNode
  | PolygonNode
  | RectangleNode
  | TextNode
  | TextPathNode
  | TransformGroupNode
  | StickyNode
  | ConnectorNode
  | ShapeWithTextNode
  | CodeBlockNode
  | StampNode
  | WidgetNode
  | EmbedNode
  | LinkUnfurlNode
  | MediaNode
  | SectionNode
  | HighlightNode
  | WashiTapeNode
  | TableNode
  | SlideNode
  | SlideRowNode
  | SlideGridNode
  | InteractiveSlideElementNode
/**
 * @see https://developers.figma.com/docs/plugins/api/node-types
 */
type NodeType = BaseNode['type']
type StyleType = 'PAINT' | 'TEXT' | 'EFFECT' | 'GRID'
/**
 * @see https://developers.figma.com/docs/plugins/api/InheritedStyleField
 */
type InheritedStyleField =
  | 'fillStyleId'
  | 'strokeStyleId'
  | 'backgroundStyleId'
  | 'textStyleId'
  | 'effectStyleId'
  | 'gridStyleId'
  | 'strokeStyleId'
/**
 * @see https://developers.figma.com/docs/plugins/api/StyleConsumers
 */
interface StyleConsumers {
  /**
   * Node consuming style. */
  node: SceneNode
  /** Field in which style is applied. */
  fields: InheritedStyleField[]
}
interface BaseStyleMixin extends PublishableMixin, PluginDataMixin {
  /**
   * The unique identifier of the style in the document the plugin is executing from. You can assign this value via `setFillStyleIdAsync`, `setStrokeStyleIdAsync`, `setTextStyleIdAsync`, etc. to make the node properties reflect that of the style node.
   */
  readonly id: string
  readonly type: StyleType
  /**
   * The consumers of this style. The `fields` in `StyleConsumers` refers to the field where the style is applied (e.g. a PaintStyle can be applied in `setFillStyleIdAsync` or `setStrokeStyleIdAsync`).
   */
  getStyleConsumersAsync(): Promise<StyleConsumers[]>
  /**
   * The consumers of this style. The `fields` in `StyleConsumers` refers to the field where the style is applied (e.g. a PaintStyle can be applied in `setFillStyleIdAsync` or `setStrokeStyleIdAsync`).
   *
   * @deprecated Use `getStyleConsumersAsync` instead. Accessing this property will throw an exception if the plugin manifest contains `"documentAccess": "dynamic-page"`.
   */
  readonly consumers: StyleConsumers[]
  /**
   * The name of the style node. Note that setting this also sets "autoRename" to false on {@link TextNode}.
   */
  name: string
  /**
   * Deletes a local style.
   */
  remove(): void
}
interface PaintStyle extends BaseStyleMixin {
  /**
   * The string literal "PAINT" representing the style type. Always check the `type` before reading other properties.
   */
  type: 'PAINT'
  /**
   * List of {@link Paint} to replace the `fills`, `strokes`, or `backgrounds` property with.
   */
  paints: ReadonlyArray<Paint>
  /**
   * The variables bound to a particular field on this paint style.
   */
  readonly boundVariables?: {
    readonly [field in VariableBindablePaintStyleField]?: VariableAlias[]
  }
}
interface TextStyle extends BaseStyleMixin {
  /**
   * The string literal "TEXT" representing the style type. Always check the `type` before reading other properties.
   */
  type: 'TEXT'
  /**
   * Value to replace the text {@link BaseNonResizableTextMixin.fontSize} with.
   */
  fontSize: number
  /**
   * Value to replace the text {@link NonResizableTextMixin.textDecoration} with.
   */
  textDecoration: TextDecoration
  /**
   * Value to replace the text {@link BaseNonResizableTextMixin.fontName} with.
   */
  fontName: FontName
  /**
   * Value to replace the text {@link BaseNonResizableTextMixin.letterSpacing} with.
   */
  letterSpacing: LetterSpacing
  /**
   * Value to replace the text {@link NonResizableTextMixin.lineHeight} with.
   */
  lineHeight: LineHeight
  /**
   * Value to replace the text {@link NonResizableTextMixin.leadingTrim} with.
   */
  leadingTrim: LeadingTrim
  /**
   * Value to replace the text {@link NonResizableTextMixin.paragraphIndent} with.
   */
  paragraphIndent: number
  /**
   * Value to replace the text {@link NonResizableTextMixin.paragraphSpacing} with.
   */
  paragraphSpacing: number
  /**
   * Value to replace the text {@link NonResizableTextMixin.listSpacing} with.
   */
  listSpacing: number
  /**
   * Value to replace the text {@link NonResizableTextMixin.hangingPunctuation} with.
   */
  hangingPunctuation: boolean
  /**
   * Value to replace the text {@link NonResizableTextMixin.hangingList} with.
   */
  hangingList: boolean
  /**
   * Value to replace the text {@link BaseNonResizableTextMixin.textCase} with.
   */
  textCase: TextCase
  /**
   * The variables bound to a particular field on this text style.
   */
  boundVariables?: {
    [field in VariableBindableTextField]?: VariableAlias
  }
  /**
   * Binds the provided `field` on this node to the given variable. Please see the [Working with Variables](https://developers.figma.com/docs/plugins/working-with-variables) guide for how to get and set variable bindings.
   *
   * If `null` is provided as the variable, the given `field` will be unbound from any variables.
   *
   * @param field - The field to bind the variable to.
   * @param variable - The variable to bind to the field. If `null` is provided, the field will be unbound from any variables. Make sure to pass a Variable object or null; passing a variable ID is not supported.
   */
  setBoundVariable(field: VariableBindableTextField, variable: Variable | null): void
}
interface EffectStyle extends BaseStyleMixin {
  /**
   * The string literal "EFFECT" representing the style type. Always check the `type` before reading other properties.
   */
  type: 'EFFECT'
  /**
   * List of {@link Effect} to replace the `effects` property with.
   */
  effects: ReadonlyArray<Effect>
  /**
   * The variables bound to a particular field on this effect style.
   */
  readonly boundVariables?: {
    readonly [field in VariableBindableEffectStyleField]?: VariableAlias[]
  }
}
interface GridStyle extends BaseStyleMixin {
  /**
   * The string literal "GRID" representing the style type. Always check the `type` before reading other properties.
   */
  type: 'GRID'
  /**
   * List of {@link LayoutGrid} to replace the `layoutGrids` property with.
   */
  layoutGrids: ReadonlyArray<LayoutGrid>
  /**
   * The variables bound to a particular field on this grid style.
   */
  readonly boundVariables?: {
    readonly [field in VariableBindableGridStyleField]?: VariableAlias[]
  }
}
type BaseStyle = PaintStyle | TextStyle | EffectStyle | GridStyle
interface Image {
  /**
   * A unique hash of the contents of the image file.
   */
  readonly hash: string
  /**
   * The contents of the corresponding image file. This returns a promise because the image may still need to be downloaded (images in Figma are loaded separately from the rest of the document).
   */
  getBytesAsync(): Promise<Uint8Array>
  /**
   * The width and height of the image in pixels. This returns a promise because the image may still need to be downloaded (images in Figma are loaded separately from the rest of the document).
   */
  getSizeAsync(): Promise<{
    width: number
    height: number
  }>
}
interface Video {
  /**
   * A unique hash of the contents of the video file.
   */
  readonly hash: string
}
/**
 * @see https://developers.figma.com/docs/plugins/api/BaseUser
 */
interface BaseUser {
  /**
   * The user's id. `id` will be automatically generated users in workshop mode.
   * `id` will also be automatically generated for the current user if they are not logged in.
   * For other non-logged in users, this value will be null.
   */
  readonly id: string | null
  /**
   * The user's name. `name` will be 'Anonymous' for non-logged in users.
   */
  readonly name: string
  /**
   * The user's photo URL. `photoUrl` will be automatically generated users in workshop mode.
   * `photoUrl` will also be automatically generated for the current user if they are not logged in.
   * For other non-logged in users, this value will be null.
   */
  readonly photoUrl: string | null
}
/**
 * @see https://developers.figma.com/docs/plugins/api/User
 */
interface User extends BaseUser {
  /**
   * The current user's multiplayer color. This will match the color of their dot stamps and cursor.
   */
  readonly color: string
  /**
   * The user's session id. This is guaranteed to be unique among active users.
   * For example, if a user with the same `id` opens a file in different tabs,
   * each `User` will have a unique `sessionId`.
   */
  readonly sessionId: number
}
