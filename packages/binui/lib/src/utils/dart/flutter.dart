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
               DartArgument(name: 'key', isSuper: true, isRequired: false),
               DartArgument(name: 'child', isSuper: true),
               DartArgument(name: data.name, isThis: true),
             ],
           ),
         ],
         methods: [
           ...methods,
           ...[
             DartMethod(
               name: 'updateShouldNotify',
               returnType: 'bool',
               isOverride: true,
               parameters: [
                 DartArgument(
                   name: 'oldWidget',
                   type: name,
                   isCovariant: true,
                   isNamed: false,
                 ),
               ],
               body: DartBody(
                 build: (buffer) {
                   buffer.writeln('return ');
                   final comparison = '${data.name} != oldWidget.${data.name}';
                   buffer.writeln('$comparison;');
                 },
               ),
             ),

             DartMethod(
               name: 'maybeOf',
               returnType: '${data.type}?',
               isStatic: true,
               parameters: [
                 DartArgument(
                   name: 'context',
                   type: 'fl.BuildContext',
                   isNamed: false,
                 ),
               ],
               body: DartBody(
                 build: (buffer) {
                   buffer.writeln(
                     'final instance = context.dependOnInheritedWidgetOfExactType<$name>();',
                   );
                   buffer.writeln('return instance?.${data.name};');
                 },
               ),
             ),
             DartMethod(
               name: 'of',
               returnType: data.type,
               isStatic: true,
               parameters: [
                 DartArgument(
                   name: 'context',
                   type: 'fl.BuildContext',
                   isNamed: false,
                 ),
               ],
               body: DartBody(
                 build: (buffer) {
                   buffer.writeln('final data = maybeOf(context);');
                   buffer.writeln(
                     "assert(data != null, 'No $name found in context');",
                   );
                   buffer.writeln('return data!;');
                 },
               ),
             ),
           ].where((x) => !methods.any((m) => m.name == x.name)),
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
