import 'package:flutter/material.dart';

class KeteranganPieChart extends StatelessWidget {
  final String label;
  final Color color;

  const KeteranganPieChart({
    super.key,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 8),
        ),
      ],
    );
  }
}
