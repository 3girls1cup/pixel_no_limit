import 'package:flutter/material.dart';
import 'package:pixel_no_limit/core/widgets/color_picker_widget.dart';

class ColorPickerDialog extends StatelessWidget {
  final Function(Color) onColorSelected;

  ColorPickerDialog({required this.onColorSelected});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Pick a color'),
      content: SingleChildScrollView(
        child: ColorPickerWidget(
          pickerColor: Colors.blue,
          onColorChanged: onColorSelected,
        ),
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
