import 'package:flutter/material.dart';

class ReusableHeader extends StatelessWidget {
  const ReusableHeader({super.key, required this.leftText, required this.rightText});
  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
       Text(leftText,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
       Text(rightText,style: TextStyle(fontSize: 11,fontWeight: FontWeight.w300),)
      ],
    );
  }
}