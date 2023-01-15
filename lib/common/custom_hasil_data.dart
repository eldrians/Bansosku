import 'package:flutter/material.dart';

class CustomHasilData extends StatelessWidget {
  final String title;
  final String subtitle;

  const CustomHasilData({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
