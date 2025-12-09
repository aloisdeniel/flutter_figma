import 'package:binui/src/definitions.dart';
import 'package:binui/src/exporters/flutter/values/value.dart';

class LabelDartExporter {
  const LabelDartExporter({required this.valueSerializer});

  final ValueDartExporter valueSerializer;

  String serialize(Library library, Label value) {
    return _serializeSegment(library, value.segment);
  }

  String _serializeSegment(Library library, LabelSegment segment) {
    return switch (segment.whichType()) {
      LabelSegment_Type.styled => _serializeStyledSegment(
        library,
        segment.styled,
      ),
      LabelSegment_Type.static => _serializeStaticSegment(segment.static),
      LabelSegment_Type.variable => _serializeVariableSegment(segment.variable),
      LabelSegment_Type.notSet => throw Exception('Label segment type not set'),
    };
  }

  String _serializeStyledSegment(Library library, StyledSegment styled) {
    // For now, just return the child content without styling
    // TODO: Implement proper TextSpan generation with styles
    return _serializeSegment(library, styled.child.segment);
  }

  String _serializeStaticSegment(StaticSegment static) {
    return "'${static.text.replaceAll("'", "\\'")}'";
  }

  String _serializeVariableSegment(VariableSegment variable) {
    // Variable segments need to be interpolated at runtime
    return '\${variable_${variable.variableId}}';
  }
}
