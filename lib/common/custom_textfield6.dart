import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextfield6 extends StatelessWidget {
  final TextEditingController textEditingController;
  final String label;
  final String hint;
  final int maxLine;

  const CustomTextfield6({
    super.key,
    required this.textEditingController,
    required this.label,
    required this.hint,
    this.maxLine = 1,
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
        TextFormField(
          controller: textEditingController,
          obscureText: true,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 14,
              vertical: 8,
            ),
            filled: true,
            fillColor: MyColors.primaryBg,
            hintText: hint,
            hintStyle: const TextStyle(
              color: Color(0xffC4C4C4),
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
          maxLines: maxLine,
        ),
      ],
    );
  }
}
