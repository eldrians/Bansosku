import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final Color bgColor;
  final double width;
  final double height;
  final VoidCallback onTap;

  const CustomButton({
    super.key,
    required this.child,
    this.bgColor = MyColors.primaryGreen,
    this.width = double.infinity,
    this.height = 48,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          backgroundColor: bgColor,
        ),
        onPressed: onTap,
        child: child,
      ),
    );
  }
}
