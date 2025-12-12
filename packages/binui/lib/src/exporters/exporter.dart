import 'dart:async';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/bundle.dart';

class ExportContext {
  const ExportContext(this.library);
  final Library library;
}

abstract class Exporter<T extends ExportContext> {
  const Exporter();
  FutureOr<Bundle> export(T context);
}
