import 'package:flutter_figma/figma.dart';
import 'package:flutter_figma/widgets.dart';
import 'package:flutter/material.dart';

import 'private.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DesignHomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FigmaFrame(
        fills: [
          FigmaColorPaint(color: Colors.white),
        ],
        size: Size(50, 300),
        counterAxisSizingMode: FigmaCounterAxisSizingMode.auto,
        layoutMode: FigmaLayoutMode.vertical,
        itemSpacing: 10,
        verticalPadding: 10,
        horizontalPadding: 10,
        children: <Widget>[
          FigmaRectangle(
            layoutAlign: FigmaLayoutAlign.stretch,
            constraints: FigmaLayoutConstraints(
              horizontal: FigmaHorizontalLayoutConstraint.left_right,
            ),
            size: Size(70, 50),
            fills: [
              FigmaColorPaint(color: Colors.grey),
            ],
          ),
          FigmaRectangle(
            size: Size(200, 100),
            relativeTransform: FigmaTransform(row0: [
              0.9812881946563721,
              0.19254495203495026,
              0,
            ], row1: [
              -0.19254495203495026,
              0.9812881946563721,
              0,
            ]),
            fills: [
              FigmaColorPaint(color: Colors.red),
            ],
          ),
        ],
      ),
    );
  }
}

class DesignHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Figma(
        token: figmaApiToken,
        child: FigmaDesignFile(
          fileId: figmaFileId,
          child: SingleChildScrollView(
            child: FigmaDesignNode(
              id: figmaNodeId,
            ),
          ),
        ),
      ),
    );
  }
}
