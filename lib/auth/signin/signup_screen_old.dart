import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_textfield.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class SignupScreenold extends StatelessWidget {
  static const String routeName = '/signup';
  const SignupScreenold({super.key});

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
                top: MediaQuery.of(context).size.height / 2 - 340,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: const [
                      Text(
                        'Buat Akun',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Pantau bansosmu mulai hari ini',
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  const CustomTextfield(
                    label: "Email",
                    hint: "johndoe@bansosku.co.id",
                  ),
                  const SizedBox(height: 12),
                  const CustomTextfield(
                    label: "No. Handphone",
                    hint: "081237422327",
                  ),
                  const SizedBox(height: 12),
                  const CustomTextfield(
                    label: "Password",
                    hint: "********",
                  ),
                  const SizedBox(height: 12),
                  const CustomTextfield(
                    label: "Konfirmasi Password",
                    hint: "********",
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      SizedBox(
                        width: 24,
                        height: 24,
                        child: Checkbox(
                          value: true,
                          onChanged: (val) {},
                          fillColor: MaterialStateProperty.all(
                            MyColors.primaryGreen,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      RichText(
                        text: const TextSpan(
                          text: "Saya setuju dengan ",
                          style: TextStyle(
                            color: MyColors.primaryGreen,
                          ),
                          children: [
                            TextSpan(
                              text: "Syarat",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: " dan ",
                            ),
                            TextSpan(
                              text: "Ketentuan",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  CustomButton(
                    onTap: () {},
                    child: const Text(
                      'Daftar',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      const Text(
                        "Sudah punya akun?",
                        style: TextStyle(
                          color: MyColors.primaryGreen,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(width: 4),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                            color: MyColors.primaryGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
