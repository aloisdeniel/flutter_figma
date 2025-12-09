import 'dart:async';

import 'package:binui/src/definitions.pb.dart';
import 'package:binui/src/exporters/bundle.dart';

abstract class Exporter {
  const Exporter();
  FutureOr<Bundle> export(Library library);
}
