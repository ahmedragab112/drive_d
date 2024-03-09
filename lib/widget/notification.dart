import 'package:flutter/material.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Notification title ',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ],
          ),
          SizedBox(
            height: 6,
          ),
          Text(
              'Lorem ipsum dolor sit amet consectetur. Et adipiscing elit nullam varius in ut sit fames. Vulputate sed porta natoque sit non massa faucibus. Commodo dictum gravida nisl lorem. Quis tincidunt leo sem feugiat est tortor donec.'),
          Divider(
            color: Color(0xff292F36),
            thickness: 1,
          )
        ],
      ),
    );
  }
}
