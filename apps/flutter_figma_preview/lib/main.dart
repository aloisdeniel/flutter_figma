import 'package:flutter/material.dart';
import 'package:flutter_figma_preview/features/preview/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Preview', home: const PreviewScreen());
  }
}
