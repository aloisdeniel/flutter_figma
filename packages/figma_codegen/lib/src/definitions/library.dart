import 'package:figma_codegen/src/definitions/variables.dart';
import 'package:figma_codegen/src/definitions/vector_graphics.pb.dart';

class Library {
  const Library({required this.variables, required this.vectorNetworks});
  final List<VariableCollection> variables;
  final List<VectorNetwork> vectorNetworks;
}
