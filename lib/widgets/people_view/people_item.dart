import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:whatsapp_responsive/core/constants.dart';
import 'package:whatsapp_responsive/pages/chat_page.dart';
import 'package:whatsapp_responsive/widgets/text_view/text_view.dart';

class PeopleItem extends StatelessWidget {
  final bool isInChatMode;

  PeopleItem({Key? key, this.isInChatMode = true}) : super(key: key);

  final _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (!isInChatMode) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const ChatPage()));
        }
      },
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.only(
          left: Constants.normalSpace,
          top: Constants.normalSpace,
          bottom: Constants.normalSpace,
          right: Constants.largeSpace,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: Constants.normalAvatarSize,
              backgroundColor: _randomColor.randomColor(),
            ),
            const SizedBox(
              width: Constants.normalSpace,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SmallTextView(),
                  SizedBox(
                    height: Constants.normalSpace,
                  ),
                  MediumTextView(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
