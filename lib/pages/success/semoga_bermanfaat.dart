import 'package:bansosku/bottom_bar_penerima.dart';
import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class SemogaBermanfaat extends StatelessWidget {
  static const String routeName = '/signin';
  const SemogaBermanfaat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 16,
            ),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height / 2 - 300,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: 368,
                      height: 267,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/terimakasih.png"),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: const [
                      SizedBox(
                        height: 56,
                        width: 20,
                      ),
                      Text(
                        'Semoga Bermanfaat',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 46,
                        width: 10,
                      ),
                      Center(
                        child: Text(
                          'Bantuan sudah diterima oleh Wahyu',
                          style: TextStyle(
                              color: MyColors.primaryGreen, fontSize: 16),
                        ),
                      ),
                      Center(
                        child: Text(
                          'semoga berkah dan bermanfaat',
                          style: TextStyle(
                              color: MyColors.primaryGreen, fontSize: 16),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),
                  CustomButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomBarPenerima(),
                        ),
                      );
                    },
                    child: const Text("Beranda"),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
