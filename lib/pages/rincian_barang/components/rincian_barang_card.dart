import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class RincianBarangCard extends StatelessWidget {
  final String institusi;
  final String date;
  final String headline;

  const RincianBarangCard({
    super.key,
    required this.institusi,
    required this.date,
    required this.headline,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: MyColors.primaryGreen,
        borderRadius: BorderRadius.circular(9),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            date,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 10,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            institusi,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            headline,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          const SizedBox(
            width: 64,
            height: 19,
          ),
        ],
      ),
    );
  }
}
