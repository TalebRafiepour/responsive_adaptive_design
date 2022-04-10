import 'package:flutter/material.dart';
import 'package:whatsapp_responsive/core/constants.dart';

class SmallTextView extends StatelessWidget {
  const SmallTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      widthFactor: 0.4,
      child: TextView(),
    );
  }
}

class MediumTextView extends StatelessWidget {
  const MediumTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      widthFactor: 0.8,
      child: TextView(),
    );
  }
}

class LargeTextView extends StatelessWidget {
  const LargeTextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FractionallySizedBox(
      widthFactor: 1,
      child: TextView(),
    );
  }
}

class TextView extends StatelessWidget {
  const TextView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.textViewHeight,
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    );
  }
}
