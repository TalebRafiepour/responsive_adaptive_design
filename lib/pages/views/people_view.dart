import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/widgets/people_view/people_list.dart';

class PeopleView extends StatelessWidget {
  const PeopleView({Key? key, this.isInChatMode = true}) : super(key: key);
  final bool isInChatMode;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: PeopleList(
        isInChatMode: isInChatMode,
      ),
    );
  }
}
