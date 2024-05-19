import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixel_no_limit/features/canvas/presentation/pixel_painter.dart';
import '../provider/canvas_providers.dart';

class CanvasWidget extends ConsumerWidget {
  const CanvasWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canvasState = ref.watch(canvasStateProvider);

    return GestureDetector(
      onPanUpdate: (details) {
        // Handle drawing logic here
      },
      child: CustomPaint(
        painter: PixelPainter(canvasState.pixels),
        size: Size.infinite,
      ),
    );
  }
}
