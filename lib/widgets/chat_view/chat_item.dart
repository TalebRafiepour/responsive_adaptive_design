import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';
import 'package:whatsapp_responsive/core/constants.dart';

class ChatItem extends StatelessWidget {
  ChatItem({Key? key}) : super(key: key);

  final int minMessageCount = 1;
  final int maxMessageCount = 4;

  final int minBubbleHeight = 40;
  final int maxBubbleHeight = 80;

  final _randomSide = Random();
  final _randomMessageCount = Random();
  final _randomBubbleHeight = Random();

  int get bubbleHeight =>
      minBubbleHeight +
      _randomBubbleHeight.nextInt(maxBubbleHeight - minBubbleHeight);

  int get decideSide => 0 + _randomSide.nextInt(2);

  int get messageListSize =>
      minMessageCount +
      _randomMessageCount.nextInt(maxMessageCount - minMessageCount);

  @override
  Widget build(BuildContext context) {
    return decideSide == 0
        ? _buildLeftMessage()
        : _buildRightMessage();
  }

  Container _buildRightMessage() {
    return Container(
      color: Colors.white,
          padding: const EdgeInsets.only(
            top: Constants.smallSpace,
            left: Constants.normalAvatarSize+Constants.smallSpace+Constants.normalSpace,
            bottom: Constants.smallSpace,
            right: Constants.normalSpace,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (_, __) {
                      return Container(
                        height: bubbleHeight.toDouble(),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.3),
                            borderRadius: const BorderRadius.only(
                              topLeft:
                                  Radius.circular(Constants.bubbleBorderRadius),
                              bottomRight:
                                  Radius.circular(Constants.bubbleBorderRadius),
                              bottomLeft:
                                  Radius.circular(Constants.bubbleBorderRadius),
                            )),
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(
                          height: Constants.smallSpace,
                        ),
                    itemCount: messageListSize),
              ),
              const SizedBox(
                width: Constants.normalSpace,
              ),
              const CircleAvatar(
                radius: Constants.normalAvatarSize,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        );
  }

  Container _buildLeftMessage() {
    return Container(
      color: Colors.white,
          padding: const EdgeInsets.only(
            top: Constants.smallSpace,
            left: Constants.smallSpace,
            bottom: Constants.smallSpace,
            right: Constants.normalAvatarSize+Constants.smallSpace+Constants.normalSpace,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              CircleAvatar(
                radius: Constants.normalAvatarSize,
                backgroundColor: RandomColor().randomColor(),
              ),
              const SizedBox(
                width: Constants.normalSpace,
              ),
              Expanded(
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (_, __) {
                      return Container(
                        height: bubbleHeight.toDouble(),
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: const BorderRadius.only(
                              topRight:
                                  Radius.circular(Constants.bubbleBorderRadius),
                              bottomRight:
                                  Radius.circular(Constants.bubbleBorderRadius),
                              bottomLeft:
                                  Radius.circular(Constants.bubbleBorderRadius),
                            )),
                      );
                    },
                    separatorBuilder: (_, __) => const SizedBox(
                          height: Constants.smallSpace,
                        ),
                    itemCount: messageListSize),
              ),
            ],
          ),
        );
  }
}
