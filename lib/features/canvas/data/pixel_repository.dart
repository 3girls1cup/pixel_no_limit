import 'package:web_socket_client/web_socket_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PixelRepository {
  final WebSocket webSocket;

  PixelRepository(this.webSocket);

  void drawPixel(int x, int y, String color) {
    webSocket.send('{"x":$x,"y":$y,"color":"$color"}');
  }

  WebSocket get pixelStream => webSocket;
}
