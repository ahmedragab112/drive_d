import 'package:flutter/material.dart';

class AnOtherLoginWay extends StatelessWidget {
  const AnOtherLoginWay(
      {super.key,
      required this.color,
      required this.text,
      required this.imagePath, this.textColor=Colors.white});
  final Color color;
  final String text;
  final String imagePath;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 17,
            height: 17,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            width: 12,
          ),
          Text(
            text,
            style:  TextStyle(
                fontSize: 15, color: textColor, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
