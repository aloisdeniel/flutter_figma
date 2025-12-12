# Figma to Flutter Conversion Guide

This guide describes all the conversion rules applied when converting Figma designs to Flutter code without any dependency. 

## Color

The conversion should use double values for components and not hex values.

#### Figma  

##### Plugin

```json
{
  "r": 1,
  "g": 0.8,
  "b": 0.6,
  "a": 0.5
}
```

#### Flutter

```dart
final color = Color.from(red: 1,green: 0.8,blue: 0.6,alpha: 0.5),
```

## Gradient 

## Border Radius

## Border

## Decoration

## TextStyle

## Frame

### Freeform

### Vertical AutoLayout

### Horizontal AutoLayout

### Horizontal AutoLayout

## Group

## Vector
