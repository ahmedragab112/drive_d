
import 'package:drive_d/widget/custom_card.dart';
import 'package:drive_d/widget/custom_container.dart';
import 'package:drive_d/widget/locaction_widget.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Hello, Andrew',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text(
                'Let’s control your car',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              ),
              trailing: Image.asset(
                'assets/images/person.png',
                width: 43,
                height: 43,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomCard(),
            const SizedBox(
              height: 14,
            ),
            Row(
              children: [
                const Text(
                  'Commands',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xff4ECDC4),
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Color(0xffF7FFF7),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const CustomContainer(
                width: double.infinity,
                height: 75,
                color: Color(0xffFF6B6B),
                text: 'UNLOCK',
                imagePath: 'assets/images/lock.png'),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Expanded(
                  child: CustomContainer(
                      width: double.infinity,
                      height: 75,
                      color: Color(0XFF4ECDC4),
                      text: 'ALERT',
                      imagePath: 'assets/images/aler.png'),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: CustomContainer(
                      width: double.infinity,
                      height: 75,
                      color: Color(0XFF4ECDC4),
                      text: 'TRACK',
                      imagePath: 'assets/images/track.png'),
                )
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            const LocationWidget(),
            const SizedBox(
              height: 17,
            ),
            const CustomContainer(
                width: double.infinity,
                height: 75,
                color: Color(0xffFF6B6B),
                text: 'S.O.S',
                imagePath: 'assets/images/what.png')
          ],
        ),
      ),
    );
  }
}
