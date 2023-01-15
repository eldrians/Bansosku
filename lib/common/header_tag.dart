import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class HeaderTag extends StatelessWidget {
  final String tagName;
  const HeaderTag({
    super.key,
    required this.tagName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: MyColors.primaryBg,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Text(
        tagName,
        style: const TextStyle(
          color: MyColors.primaryGreen,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
