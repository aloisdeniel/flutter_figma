import 'package:binui/src/definitions.pb.dart';

abstract class Importer {
  Future<Library> import();
}
