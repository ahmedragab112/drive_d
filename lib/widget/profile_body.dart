
import 'package:drive_d/screens/account_info.dart';
import 'package:drive_d/screens/emargancy_contactpage.dart';
import 'package:drive_d/screens/notificationpage.dart';
import 'package:drive_d/widget/build_box_card.dart';
import 'package:drive_d/widget/button_card.dart';
import 'package:flutter/material.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 47),
      child: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: const Color(0xff4ECDC4),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.white, width: 1),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5, color: Colors.grey, offset: Offset(0, 1))
                ]),
            child: const Row(
              children: [
                Text(
                  'Profile name',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Spacer(),
                Icon(
                  Icons.keyboard_arrow_down_sharp,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name: ',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff292F36),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Car Number:',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff292F36),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Phone:',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff292F36),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Email:',
                    style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff292F36),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Icon(
                    Icons.person,
                    color: Color(0xff8F8F8F),
                    size: 100,
                  ),
                  Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(4),
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
                width: 10,
              ),
              const Text(
                'Edit your profile',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xff4ECDC4),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 23,
          ),
          const Divider(
            thickness: 2,
            color: Color(0xff292F36),
          ),
          const SizedBox(
            height: 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                  child: BuildBoxCard(
                      text: 'Account Info',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AccountInfo(),
                            ));
                      })),
              const Expanded(
                  child: BuildBoxCard(
                text: 'Car Info',
              )),
              const Expanded(
                  child: BuildBoxCard(
                text: 'History',
              )),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          ButtonCard(
            text: 'Emergency Contacts',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EmergancyContactPage(),
                  ));
            },
          ),
          const SizedBox(
            height: 12,
          ),
          const ButtonCard(
            text: 'Emergency Info',
          ),
          const SizedBox(
            height: 12,
          ),
          ButtonCard(
            text: 'Notifications',
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ));
            },
          ),
          const SizedBox(
            height: 12,
          ),
          const ButtonCard(
            text: 'Settings',
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 17),
                  height: 55,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFE66D),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0, 2))
                      ]),
                  child: const Text(
                    'FAQ',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 17),
                  height: 55,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFE66D),
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey,
                            offset: Offset(0, 2))
                      ]),
                  child: const Text(
                    'Contact Us',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
