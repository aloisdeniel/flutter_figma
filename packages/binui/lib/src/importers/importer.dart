import 'dart:async';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/utils/identifiers.dart';

class ImporterContext<TOptions> {
  ImporterContext(this.options);

  final identifiers = IdentifierGenerator();
  final TOptions options;
}

abstract class Importer<TOptions> {
  const Importer();
  FutureOr<Library> import(ImporterContext<TOptions> context);
}
