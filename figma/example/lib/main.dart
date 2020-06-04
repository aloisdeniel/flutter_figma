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
      title: 'Figma Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: DesignHomePage(),
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
            child: FigmaDataProvider(
              data: {
                'title': FigmaData(
                  text: 'Awesome!',
                ),
                'description': FigmaData(
                  text: 'This is overriden from Flutter!',
                ),
                'star': FigmaData(
                  builder: (context) => Icon(
                    Icons.supervised_user_circle,
                    size: 18,
                    color: Colors.orange,
                  ),
                )
              },
              child: FigmaDesignNode.component(
                name: figmaComponentName,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
