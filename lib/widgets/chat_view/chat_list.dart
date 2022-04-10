import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/widgets/chat_view/chat_item.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.white,
        child: ListView.builder(itemBuilder: (_, __) {
          return ChatItem();
        },itemCount: 30,shrinkWrap: true,physics: const BouncingScrollPhysics(),),
      ),
    );
  }
}
