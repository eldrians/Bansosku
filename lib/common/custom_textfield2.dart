import 'package:bansosku/common/custom_textfield3.dart';
import 'package:flutter/material.dart';

class CustomTextfield2 extends StatefulWidget {
  final String label;
  final String hint;

  const CustomTextfield2({
    super.key,
    required this.label,
    required this.hint,
  });

  @override
  State<CustomTextfield2> createState() => _CustomTextfield2State();
}

class _CustomTextfield2State extends State<CustomTextfield2> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        CustomTextfield3(
          controller: controller,
          hint: widget.hint,
        ),
      ],
    );
  }
}
