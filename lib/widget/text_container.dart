import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer(
      {super.key, required this.color, required this.icon, required this.text});

  final Color color;
  final Widget icon;
  final Widget text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            width: 6,
          ),
          text
        ],
      ),
    );
  }
}
