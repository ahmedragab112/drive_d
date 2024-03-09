
import 'package:drive_d/widget/custom_button.dart';
import 'package:drive_d/widget/notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
                    const Text('Notifications'),
                    const Spacer()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const NotificationBody(),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomButton(text: 'Clear', onTap: () {}),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
