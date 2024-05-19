import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../data/pixel_repository.dart';

class CanvasState {
  final Map<String, Color> pixels;

  CanvasState(this.pixels);
}

class CanvasStateNotifier extends StateNotifier<CanvasState> {
  final PixelRepository pixelRepository;

  CanvasStateNotifier(this.pixelRepository) : super(CanvasState({})) {
    // pixelRepository.pixelStream.listen((data) {
    //   final pixelData = parsePixelData(data);
    //   state = CanvasState({...state.pixels, ...pixelData});
    // });
  }

  void drawPixel(int x, int y, Color color) {
    final key = '$x,$y';
    state = CanvasState({...state.pixels, key: color});
    pixelRepository.drawPixel(x, y, color.value.toRadixString(16));
  }

  Map<String, Color> parsePixelData(data) {
    // Implement parsing logic here
    return {};
  }
}
