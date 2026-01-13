import '../../definitions/variables.dart';
import 'values/color.dart';
import 'variables/variables.dart';

class CssExportContext {
  const CssExportContext({
    required this.collections,
    this.prettyPrint = true,
    this.colorFormat = ColorFormat.hex,
    this.includeComments = true,
  });

  final List<VariableCollection> collections;
  final bool prettyPrint;
  final ColorFormat colorFormat;
  final bool includeComments;
}

class CssExporter {
  String exportVariableCollections(CssExportContext context) {
    final buffer = StringBuffer();

    if (context.includeComments) {
      buffer.writeln('/**');
      buffer.writeln(' * CSS Variables generated from Figma');
      buffer.writeln(' * Generated at: ${DateTime.now().toIso8601String()}');
      buffer.writeln(' */');
      buffer.writeln();
    }

    final exporter = CssVariablesExporter();
    exporter.serialize(context, buffer);

    return buffer.toString();
  }
}
