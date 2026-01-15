# Flutter Codegen plugin for Figma

This is a Flutter plugin that helps in the process of implementing Flutter apps which respects original Figma designs, by using the same logical architecture and conventions as in Figma.

## Features

* Generates a simple `InheritedWidget` to provide access to all the variables and styles from Flutter, with a similar mode-based approach as Figma.
* Also allows to generate a JSON intermediate representation, to allow pre-preprocessing before code generation with a dedicated CLI. This can be useful to adapt the names or filter variables for example.

## Future plans

This plugin might be extended in the future to support more features like generating widget trees with high fidelity, component interfaces, etc. 
