import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class NotifikasiCard extends StatelessWidget {
  final String content;
  const NotifikasiCard({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            content,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
          const SizedBox(height: 8),
          SizedBox(
            width: 64,
            height: 19,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                backgroundColor: const Color(0xff116231),
              ),
              onPressed: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.remove_red_eye,
                    color: Colors.white,
                    size: 10,
                  ),
                  SizedBox(width: 4),
                  Text(
                    "Lihat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 7,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
