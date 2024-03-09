import 'package:drive_d/screens/home.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const Home()),
            (route) => false);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.center,
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color(0xff4ECDC4),
        ),
        child: Row(
          children: [
            const Spacer(
              flex: 2,
            ),
            const Text(
              'Get Started',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
                width: 38,
                height: 38,
                decoration: const BoxDecoration(
                    color: Color(0xff292F36), shape: BoxShape.circle),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Color(0xffFFE66D),
                ))
          ],
        ),
      ),
    );
  }
}
