import 'package:flutter/material.dart';

class ColorPickerWidget extends StatefulWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;

  ColorPickerWidget({required this.pickerColor, required this.onColorChanged});

  @override
  _ColorPickerWidgetState createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  Color currentColor = Colors.black;

  @override
  void initState() {
    super.initState();
    currentColor = widget.pickerColor;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorPickerSlider(
          currentColor: currentColor,
          onColorChanged: (color) {
            setState(() {
              currentColor = color;
              widget.onColorChanged(color);
            });
          },
        ),
        SizedBox(height: 20),
        Text('Selected Color: ${currentColor.toString()}'),
      ],
    );
  }
}

class ColorPickerSlider extends StatelessWidget {
  final Color currentColor;
  final ValueChanged<Color> onColorChanged;

  ColorPickerSlider({required this.currentColor, required this.onColorChanged});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slider(
          value: currentColor.red.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            onColorChanged(currentColor.withRed(value.toInt()));
          },
          activeColor: Colors.red,
        ),
        Slider(
          value: currentColor.green.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            onColorChanged(currentColor.withGreen(value.toInt()));
          },
          activeColor: Colors.green,
        ),
        Slider(
          value: currentColor.blue.toDouble(),
          min: 0,
          max: 255,
          onChanged: (value) {
            onColorChanged(currentColor.withBlue(value.toInt()));
          },
          activeColor: Colors.blue,
        ),
      ],
    );
  }
}
