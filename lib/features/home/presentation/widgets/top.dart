import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  const Top({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Location',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
            Badge(
              child: Image.asset(
                'lib/assets/notification.png',
                color: Colors.black,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Jakarta',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Image.asset('lib/assets/arrow_down.png'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
