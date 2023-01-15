import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class ListHasilSalurkan extends StatelessWidget {
  final String leftTitle;
  final String rightTitle;

  const ListHasilSalurkan({
    super.key,
    required this.leftTitle,
    required this.rightTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftTitle,
          style: TextStyle(
            color: MyColors.primaryText.withOpacity(0.6),
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          rightTitle,
          style: const TextStyle(
            color: MyColors.primaryText,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
