import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      height: 82,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xff4ECDC4),
          border: Border.all(color: Colors.white, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You Controlling ',
                style: TextStyle(
                  color: Color(0xff292F36),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Chip #001',
                style: TextStyle(
                    color: Color(0xff292F36),
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Toyota Crown',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          const SizedBox(
            width: 40,
          ),
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/car.png',
                  width: 123,
                  height: 65,
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff292F36),
                    borderRadius: BorderRadius.circular(120),
                  ),
                  child: const Icon(
                    Icons.keyboard_arrow_down,
                    weight: 12,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
