import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_textfield.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class ReceiverSigninScreen extends StatelessWidget {
  static const String routeName = '/signin';
  const ReceiverSigninScreen({super.key});

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
                  Column(
                    children: const [
                      Text(
                        'Masuk',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Selamat datang kembali',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 56),
                  const SizedBox(height: 12),
                  const CustomTextfield(
                    label: "Nomor Induk Kepependudukan",
                    hint: "3279282929291029",
                  ),
                  const SizedBox(height: 44),
                  CustomButton(
                    onTap: () {},
                    child: const Text(
                      'Masuk',
                    ),
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
