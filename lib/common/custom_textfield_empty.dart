import 'package:flutter/material.dart';

class CustomTextfieldEmpty extends StatelessWidget {
  const CustomTextfieldEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 4,
                // offset: Offset(0, 8),
              )
            ],
          ),
          margin: const EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: TextFormField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              filled: true,
              fillColor: Colors.white,
              hintStyle: const TextStyle(
                color: Color(0xffC4C4C4),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
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
