
import 'package:drive_d/widget/emergancey_body.dart';
import 'package:drive_d/widget/home_body.dart';
import 'package:drive_d/widget/profile_body.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = const [
 

    ProfileBody(),
    HomeBody(),
    EmerganceBody(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          selectedItemColor: const Color(0xffFFE66D),
          unselectedItemColor: const Color(0xff4ECDC4),
          backgroundColor: const Color(0xff292F36),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sos),
              label: 'Emergency Contacts',
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/home.png',
                  ),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/profile.png',
                  ),
                ),
                label: 'Profile'),
          ]),
    );
  }
}
