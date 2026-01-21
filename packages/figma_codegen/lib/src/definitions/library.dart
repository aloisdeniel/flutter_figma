import 'package:figma_codegen/src/definitions/components.pb.dart';
import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';

class Library {
  const Library({
    required this.variables,
    required this.vectorGraphics,
    required this.components,
  });
  final List<VariableCollection> variables;
  final List<VectorGraphics> vectorGraphics;
  final List<Component> components;
}
