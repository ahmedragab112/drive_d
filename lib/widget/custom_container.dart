import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer(
      {super.key,
      required this.width,
      required this.height,
      required this.color,
      required this.text,
      required this.imagePath});

  final double width;
  final double height;
  final Color color;
  final String text;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white, width: 1),
          color: color,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            )
          ]),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 35,
            height: 35,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: const TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
          )
        ],
      ),
    );
  }
}
