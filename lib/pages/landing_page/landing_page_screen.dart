import 'package:bansosku/auth/signin/signin_screen.dart';
import 'package:bansosku/bottom_bar_penerima.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

import '../../common/custom_button.dart';

class LandingPage extends StatelessWidget {
  static const String routeName = '/landing-page';
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.all(32),
            decoration: const BoxDecoration(
              color: MyColors.primaryGreen,
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                )
              ],
            ),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: (MediaQuery.of(context).size.height / 2) + 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/BansosKu 2.png"),
                      ),
                    ),
                  ),
                  const SizedBox(height: 44),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomBarPenerima(),
                        ),
                      );
                    },
                    bgColor: Colors.white,
                    child: const Text(
                      "Penerima",
                      style: TextStyle(color: MyColors.primaryGreen),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ),
                      );
                    },
                    bgColor: Colors.white,
                    child: const Text(
                      "Penyalur",
                      style: TextStyle(color: MyColors.primaryGreen),
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
