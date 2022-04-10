import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/widgets/people_view/people_item.dart';

class PeopleList extends StatelessWidget {
  final bool isInChatMode;

  const PeopleList({Key? key, this.isInChatMode = true}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 30,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (_, __) {
          return PeopleItem(isInChatMode: isInChatMode);
        },
      ),
    );
  }
}
