import 'package:flutter/material.dart';

class AddMoreButton extends StatelessWidget {
  const AddMoreButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: const Color(0xff4ECDC4),
        ),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.add, color: Colors.white),
            SizedBox(
              width: 3,
            ),
            Text(
              'Add More',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
