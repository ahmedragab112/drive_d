import 'package:flutter/material.dart';

class CustomUserInfoBox extends StatelessWidget {
  const CustomUserInfoBox({super.key, this.height, this.child});
  final double? height;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      height: height,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xff292F36), width: 1),
          color: const Color(0xffF7FFF7),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
      child: child,
    );
  }
}
