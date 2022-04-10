import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/pages/views/chat_view_large.dart';
import 'package:whatsapp_responsive/pages/views/chat_view_small.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (_, constraints) {
        final orientation = MediaQuery.of(context).orientation;
        final breakPointWidth = orientation == Orientation.portrait ? 600 : 800;

        if (constraints.maxWidth < breakPointWidth) {
          return const ChatViewSmall();
        } else {
          return const ChatViewLarge();
        }
      }),
    );
  }
}
