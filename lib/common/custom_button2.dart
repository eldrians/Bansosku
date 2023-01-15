import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomButton2 extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  final double height;

  const CustomButton2({
    super.key,
    required this.child,
    required this.onTap,
    this.height = 48,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: MyColors.primaryGreen,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: MyColors.primaryBg,
        ),
        onPressed: onTap,
        child: child,
      ),
    );
  }
}
