import 'package:drive_d/widget/text_container.dart';
import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 5),
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff292F36),
      ),
      child: Column(children: [
        const Row(
          children: [
            Icon(
              Icons.location_on_sharp,
              color: Colors.white,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              'Location',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: double.infinity,
          height: 100,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xffC3C3C3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.image, color: Colors.black, size: 50),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          title: const Text(
            '52, Mehwar al markazy, October city',
            style: TextStyle(
              color: Colors.white,
              fontSize: 8,
              fontWeight: FontWeight.w400,
            ),
          ),
          subtitle: const Text(
            '370m . 7mins',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Image.asset(
            'assets/images/record.png',
            width: 24,
            height: 24,
            fit: BoxFit.fill,
          ),
        ),
        const Spacer(),
        Expanded(
          child: Row(
            children: [
              const Expanded(
                  child: TextContainer(
                color: Color(0xffFFE66D),
                icon: Icon(
                  Icons.watch_later_outlined,
                  color: Color(0xff292F36),
                  size: 15,
                ),
                text: Text(
                  'History',
                  style: TextStyle(
                      color: Color(0xff292F36),
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
              )),
              Expanded(
                  child: TextContainer(
                      color: const Color(0xff4ECDC4),
                      icon: Image.asset('assets/images/saved.png',
                          width: 12, height: 12, fit: BoxFit.fill),
                      text: const Text(
                        'History',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      )))
            ],
          ),
        )
      ]),
    );
  }
}
