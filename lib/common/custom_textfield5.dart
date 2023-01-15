import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield5 extends StatelessWidget {
  final String label;
  final String hint;

  const CustomTextfield5({
    super.key,
    required this.label,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 26,
          child: TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              filled: true,
              fillColor: MyColors.primaryBg,
              hintText: hint,
              hintStyle: const TextStyle(
                color: Color(0xb3292929),
                fontWeight: FontWeight.w300,
                fontSize: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: MyColors.primaryText,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: MyColors.primaryText,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: MyColors.primaryText,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
