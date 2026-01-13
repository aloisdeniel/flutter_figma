import '../exporter.dart';
import 'collection.dart';

class CssVariablesExporter {
  const CssVariablesExporter();

  void serialize(CssExportContext context, StringBuffer buffer) {
    final collectionExporter = CssVariableCollectionExporter();

    for (final collection in context.collections) {
      collectionExporter.serialize(context, buffer, collection);
    }
  }
}
