import 'package:binui/src/utils/dart/dart.dart';

class InheritedWidgetClass extends DartClass {
  InheritedWidgetClass({
    required super.name,
    required DartField data,
    List<DartMethod> methods = const [],
  }) : super(
         extend: 'fl.InheritedWidget',
         fields: [data],
         constructors: [
           DartConstructor(
             type: name,
             args: [
               DartArgument(name: 'key', isSuper: true),
               DartArgument(name: data.name, isThis: true),
             ],
           ),
         ],
         methods: [
           ...methods,
           DartMethod(
             name: 'updateShouldNotify',
             returnType: 'bool',
             parameters: [
               DartArgument(name: 'oldWidget', type: name, isCovariant: true),
             ],
             body: DartBody(
               build: (buffer) {
                 buffer.writeln('return ');
                 final comparison =
                     'this.${data.name} != oldWidget.${data.name}';
                 buffer.writeln('$comparison;');
               },
             ),
           ),
           DartMethod(
             name: 'of',
             returnType: name,
             isStatic: true,
             parameters: [
               DartArgument(name: 'context', type: 'fl.BuildContext'),
             ],
             body: DartBody(
               build: (buffer) {
                 buffer.writeln('final instance = maybeOf(context);');
                 buffer.writeln(
                   "assert(instance != null, 'No $name found in context');",
                 );
                 buffer.writeln('return instance!?.${data.name};');
               },
             ),
           ),
         ],
       );
}

class StatelessWidgetClass extends DartClass {
  StatelessWidgetClass({
    required super.name,
    required super.fields,
    required DartBody build,
    List<DartMethod> methods = const [],
  }) : super(
         extend: 'fl.StatelessWidget',
         constructors: [
           DartConstructor(
             type: name,
             args: [for (final f in fields) f.toArgument()],
           ),
         ],
         methods: [
           ...methods,
           DartMethod(
             name: 'build',
             body: build,
             returnType: 'fl.Widget',
             isOverride: true,
           ),
         ],
       );
}
