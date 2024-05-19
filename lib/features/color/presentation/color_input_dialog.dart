import 'package:flutter/material.dart';

class ColorInputDialog extends StatelessWidget {
  final TextEditingController controller;

  ColorInputDialog(this.controller);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Enter RGB color'),
      content: TextField(
        controller: controller,
        decoration: InputDecoration(hintText: 'e.g., #ff0000'),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text('OK'),
        ),
      ],
    );
  }
}
