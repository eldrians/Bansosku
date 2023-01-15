import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final String image;
  final String label;

  const ProfileOption({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: MyColors.primaryBg,
        borderRadius: BorderRadius.circular(9),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 24,
                height: 28,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/$image"),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Text(
                label,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: MyColors.primaryGreen,
          ),
        ],
      ),
    );
  }
}
