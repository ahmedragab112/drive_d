
import 'package:drive_d/widget/custom_button.dart';
import 'package:drive_d/widget/emergancy_contact.dart';
import 'package:flutter/material.dart';

class EmergancyContactPage extends StatelessWidget {
  const EmergancyContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                height: 62,
                padding:
                    const EdgeInsets.symmetric(horizontal: 27, vertical: 20),
                decoration: BoxDecoration(
                  color: const Color(0xff4ECDC4),
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    const Text('Emergency Contacts'),
                    const Spacer()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 21.0,
                ),
                child: Column(
                  children: [
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const EmargancyContact(),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(text: 'Add more', onTap: () {}),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
