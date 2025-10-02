import 'package:flutter/material.dart';

class SearchPannel extends StatelessWidget {
  const SearchPannel({super.key, required this.wid});
 final double wid;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              width: wid * 0.8,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xFFF7F7F7),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Row(
                  children: [
                    Image.asset('lib/assets/IC_Search.png'),
                    SizedBox(width: 12),
                    Text(
                      'Search address, or near you',
                      style: TextStyle(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 4),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(11),
              ),
              child: Image.asset('lib/assets/IC_Filter.png'),
            ),
          ],
        ),
      ],
    );
  }
}
