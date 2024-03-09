import 'package:drive_d/widget/emergancey_icon.dart';
import 'package:flutter/material.dart';

class EmerganceBody extends StatelessWidget {
  const EmerganceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 47),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 73,
          ),
          const Text(
            'Emergency help needed?',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(children: [
                TextSpan(
                    text: 'Please',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
                TextSpan(
                    text: ' Press',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: ' the button to get help',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ])),
          const SizedBox(
            height: 100,
          ),
          const CustomEmergancyIcon(),
          const SizedBox(
            height: 100,
          ),
          Row(
            children: [
              const Spacer(),
              const Text(
                'Cancel',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color(0xff4ECDC4),
                ),
                child: const Icon(
                  Icons.chat,
                  color: Color(0xffF7FFF7),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
