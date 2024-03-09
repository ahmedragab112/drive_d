import 'package:flutter/material.dart';

class CustomEmergancyIcon extends StatelessWidget {
  const CustomEmergancyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 244,
      height: 244,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFF6B6B),
      ),
      child: const Icon(
        Icons.wifi_tethering_sharp,
        color: Colors.white,
        size: 200,
      ),
    );
  }
}
