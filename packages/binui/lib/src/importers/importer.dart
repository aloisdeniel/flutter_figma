import 'dart:async';

import 'package:binui/src/definitions.pb.dart';

abstract class Importer {
  const Importer();
  FutureOr<Library> import();
}
