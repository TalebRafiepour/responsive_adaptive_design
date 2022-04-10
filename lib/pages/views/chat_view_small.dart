import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/widgets/chat_view/chat_list.dart';
import 'package:whatsapp_responsive/widgets/send_message/send_message.dart';

class ChatViewSmall extends StatelessWidget {
  const ChatViewSmall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: const [
          ChatList(),
          SendMessage(),
        ],
      ),
    );
  }
}
