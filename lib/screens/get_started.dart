import 'package:drive_d/widget/get_started_button.dart';
import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff292F36),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/blue_logo.png',
              width: 185,
              height: 170,
              fit: BoxFit.fitHeight,
            ),
            const Spacer(),
            const GetStartedButton()
          ],
        ),
      ),
    );
  }
}
