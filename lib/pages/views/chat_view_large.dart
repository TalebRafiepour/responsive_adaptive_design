import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/core/constants.dart';
import 'package:whatsapp_responsive/pages/views/people_view.dart';
import 'package:whatsapp_responsive/widgets/chat_view/chat_list.dart';
import 'package:whatsapp_responsive/widgets/send_message/send_message.dart';

class ChatViewLarge extends StatelessWidget {
  const ChatViewLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.blueGrey,
                    padding: const EdgeInsets.all(Constants.normalSpace),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: const [
                        BackButton(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  const PeopleView(
                    isInChatMode: true,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: const [
                ChatList(),
                SendMessage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
