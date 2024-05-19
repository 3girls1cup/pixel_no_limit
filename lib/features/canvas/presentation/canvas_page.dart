import 'package:flutter/material.dart';
import 'canvas_widget.dart';

class CanvasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pixel War')),
      body: CanvasWidget(),
    );
  }
}
