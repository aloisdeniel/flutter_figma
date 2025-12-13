import 'dart:async';

import 'package:binui/src/definitions.pb.dart';

abstract class Importer<TOptions> {
  const Importer();
  FutureOr<Library> import(TOptions options);
}
