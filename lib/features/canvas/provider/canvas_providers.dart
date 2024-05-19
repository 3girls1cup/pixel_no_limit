import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pixel_no_limit/services/socket_service.dart';
import 'canvas_state.dart';
import '../data/pixel_repository.dart';

final socketProvider = Provider((ref) => SocketService());

final pixelRepositoryProvider = Provider((ref) {
  final socketService = ref.watch(socketProvider);
  return PixelRepository(socketService.webSocket);
});

final canvasStateProvider =
    StateNotifierProvider<CanvasStateNotifier, CanvasState>((ref) {
  final pixelRepository = ref.watch(pixelRepositoryProvider);
  return CanvasStateNotifier(pixelRepository);
});
