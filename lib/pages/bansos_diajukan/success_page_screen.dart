import 'package:bansosku/bottom_bar.dart';
import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class SuccessPageScreen extends StatelessWidget {
  static const String routeName = '/success-page';
  final String text;
  final String subtext;

  const SuccessPageScreen({
    super.key,
    required this.text,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(
              haveBack: false,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Container(
                            height: 267,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/illustration1.png'),
                              ),
                            ),
                          ),
                          Text(
                            text,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: MyColors.primaryGreen,
                              fontWeight: FontWeight.bold,
                              fontSize: 32,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            subtext,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              color: MyColors.primaryGreen,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          BottomBar.routeName,
                          (route) => false,
                        );
                      },
                      child: const Text(
                        "Kembali",
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
