import 'package:web_socket_client/web_socket_client.dart';

class SocketService {
  final WebSocket webSocket;

  SocketService() : webSocket = WebSocket(Uri.parse('ws://localhost:3000'));

  void dispose() {
    webSocket.close();
  }
}
