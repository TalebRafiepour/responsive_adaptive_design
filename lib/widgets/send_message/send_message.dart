import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/core/constants.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      padding: const EdgeInsets.all(Constants.smallSpace),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.emoji_emotions,
              color: Colors.green,
            ),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(Constants.textFieldBorderRadius))),
                fillColor: Colors.grey,
                hintText: 'Enter your messsage',
                filled: true,
              ),
            ),
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.send,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
