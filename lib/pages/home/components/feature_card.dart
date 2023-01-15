import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  final double cardWidth;
  final String label;
  final Color bgColor;
  final String? image;
  final VoidCallback onClick;

  const FeatureCard({
    super.key,
    required this.cardWidth,
    required this.label,
    this.bgColor = const Color(0xffD9D9D9),
    required this.image,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onClick,
          child: Container(
            width: cardWidth,
            height: cardWidth,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ],
              image: DecorationImage(
                image: AssetImage("assets/$image"),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
