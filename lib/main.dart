import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixel_no_limit/features/canvas/presentation/canvas_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pixel War',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CanvasPage(),
    );
  }
}
