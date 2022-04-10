import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/pages/views/people_view.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
      ),
      body: const PeopleView(isInChatMode: false),
    );
  }
}
