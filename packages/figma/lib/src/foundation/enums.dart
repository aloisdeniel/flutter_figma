enum BlendMode {
  passThrough,
  normal,
  darken,
  multiply,
  linearBurn,
  colorBurn,
  lighten,
  screen,
  linearDodge,
  colorDodge,
  overlay,
  softLight,
  hardLight,
  difference,
  exclusion,
  hue,
  saturation,
  color,
  luminosity,
}

enum MaskType {
  alpha,
  vector,
  luminance,
}

enum ConstraintType {
  min,
  center,
  max,
  stretch,
  scale,
}

enum StrokeCap {
  none,
  round,
  square,
  arrowLines,
  arrowEquilateral,
  diamondFilled,
  triangleFilled,
  circleFilled,
}

enum StrokeJoin {
  miter,
  bevel,
  round,
}

enum HandleMirroring {
  none,
  angle,
  angleAndLength,
}

enum WindingRule {
  nonzero,
  evenodd,
}

enum Navigation {
  navigate,
  swap,
  overlay,
  scrollTo,
  changeTo,
}

enum PublishStatus {
  unpublished,
  current,
  changed,
}

enum ConnectorMagnet {
  none,
  auto,
  top,
  left,
  bottom,
  right,
  center,
}

enum ConnectorStrokeCap {
  none,
  arrowEquilateral,
  arrowLines,
  triangleFilled,
  diamondFilled,
  circleFilled,
}

enum NodeType {
  document,
  page,
  frame,
  group,
  vector,
  boolean,
  star,
  line,
  ellipse,
  regularPolygon,
  rectangle,
  text,
  slice,
  component,
  componentSet,
  instance,
  connector,
  shapewithtext,
  sticky,
  widget,
  table,
  tableCell,
  media,
  highlight,
  stamp,
  section,
  embed,
  linkUnfurl,
  washi,
  codeBlock,
}
