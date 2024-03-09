import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText(
      {super.key,
      required this.text1,
      required this.text2,
      required this.onTap});
  final String text1;
  final String text2;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: text1,
            style: const TextStyle(color: Colors.grey, fontSize: 15)),
        TextSpan(
            text: text2,
            style: const TextStyle(
                color: Color(0xff292F36),
                fontSize: 15,
                decoration: TextDecoration.underline),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                onTap();
              }),
      ]),
    );
  }
}
