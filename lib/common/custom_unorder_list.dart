import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomUnorderList extends StatelessWidget {
  final String text;
  const CustomUnorderList({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 3,
          height: 3,
          margin: const EdgeInsets.symmetric(
            horizontal: 6,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: MyColors.primaryText,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 9,
          ),
        ),
      ],
    );
  }
}
