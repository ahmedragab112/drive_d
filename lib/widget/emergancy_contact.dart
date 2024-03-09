import 'package:flutter/material.dart';

class EmargancyContact extends StatelessWidget {
  const EmargancyContact({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 110,
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.image,
                color: Color(0xff8F8F8F),
                size: 80,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'relative:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Email:',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Color(0xff292F36),
            thickness: 1,
          )
        ],
      ),
    );
  }
}
