import 'package:flutter/material.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;
import 'dart:convert';
import 'package:http/http.dart' as http;

class BotRunningScreen extends StatefulWidget {
  @override
  _BotRunningScreenState createState() => _BotRunningScreenState();
}

class _BotRunningScreenState extends State<BotRunningScreen> {
  final String serverUrl = 'http://192.168.0.107:5000';
  late io.Socket socket;
  String botLog = '';

  void connectToServer() {
    socket = io.io(
      serverUrl,
      io.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .setExtraHeaders({'foo': 'bar'})
          .build(),
    );
    socket.connect();
    socket.onConnect((_) {
      print('Connected to Flask server...');
      sendBotInitEvent();
    });
    socket.on('bot_log', (data) {
      print('Bot Log: ${data['data']}');
      updateBotLog(data['data']);
    });
  }

  void updateBotLog(String log) {
    setState(() {
      botLog += log + '\n';
    });
  }

  void sendBotInitEvent() {
    socket.emit('bot_init', {'target_search': 'Abhay -Bhan'});
  }

  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  @override
  void dispose() {
    socket.disconnect();
    super.dispose();
  }

  void checkConnection() async {
    try {
      var uri = Uri.parse('http://192.168.0.107:5000/hello');
      var response = await http.get(uri);

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        print(data);
      } else {
        print('Failed with status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bot Running Details",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Bot Log:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(6),
                ),
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Text(
                    "Connected To Server...\n$botLog",
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'STOP',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
