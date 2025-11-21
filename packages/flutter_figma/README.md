# flutter_figma

This project's goal is to make the transition from Figma to Flutter easier by adopting a closer semantic for Flutter widgets.

Implementing a prototype is a tedious part because some logic can be quite different:

* Layout engines  (freeform constraints, mixed absolute/auto, grid)
* Decorations  (multiple fills and borders on single widget)
* Text properties (line height, ...) 

This leads to complex translations and we often end up with complex Flutter widget trees to mimics the original layout in Figma.

This package provides a set of widgets to mimic the original Figma node tree (frame, rectangle, vector) and all their properties (auto-layout, fills, strokes)

This might help maintaining a consistent implementation and:

* Updating implementations is easier since the tree is more similar to what's in Figma
* Make it easier to generate code from Figma
* Design could eventually try to read the code and identify potential issues in PRs

Also, the Figma principle can be mixed with regular Flutter widgets, so if you want to insert a complex widget in the middle of Figma widgets you can. It is also possible to only use some parts (layout or decorations for example).  

## Features

### Layout

### Decorations

### Text

### Interactions

## Figma code generation

A Figma plugin is available to generate the code of a widget tree directly from a selected node.

