import 'package:flutter/material.dart';

class PixelPainter extends CustomPainter {
  final Map<String, Color> pixels;

  PixelPainter(this.pixels);

  @override
  void paint(Canvas canvas, Size size) {
    final pixelSize = 10.0;
    pixels.forEach((key, color) {
      final parts = key.split(',');
      final x = int.parse(parts[0]);
      final y = int.parse(parts[1]);
      final paint = Paint()..color = color;
      canvas.drawRect(
        Rect.fromLTWH(x * pixelSize, y * pixelSize, pixelSize, pixelSize),
        paint,
      );
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
