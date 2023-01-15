import 'package:bansosku/auth/signin/signin_screen.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/profile/components/profile_option.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 227,
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
          ),
          SafeArea(
            child: Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 130,
                        height: 42,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/BansosKu.png"),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            SigninScreen.routeName,
                          );
                        },
                        child: const Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(top: 50),
                        padding: const EdgeInsets.only(
                          top: 50,
                          right: 16,
                          bottom: 16,
                          left: 16,
                        ),
                        decoration: BoxDecoration(
                          color: MyColors.primaryBg,
                          borderRadius: BorderRadius.circular(9),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(0, 4),
                            )
                          ],
                        ),
                        child: Column(
                          children: [
                            const Text(
                              "Nelly Joy",
                              style: TextStyle(
                                color: MyColors.primaryGreen,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Column(
                              children: const [
                                Text(
                                  "Email",
                                  style: TextStyle(
                                    color: MyColors.primaryGreen,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "nellyjoy@gmail.com",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Column(
                              children: const [
                                Text(
                                  "No. Handphone",
                                  style: TextStyle(
                                    color: MyColors.primaryGreen,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "081237422327",
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 12),
                            CustomButton2(
                              onTap: () {},
                              child: const Text(
                                "Edit Profile",
                                style: TextStyle(
                                  color: MyColors.primaryGreen,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/profile.png"),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  const ProfileOption(
                    image: "setting3.png",
                    label: "Riwayat Bansos",
                  ),
                  const SizedBox(height: 12),
                  const ProfileOption(
                    image: "setting2.png",
                    label: "Atur Alamat",
                  ),
                  const SizedBox(height: 12),
                  const ProfileOption(
                    image: "setting1.png",
                    label: "Atur E-Wallet, Debit, & Kredit",
                  ),
                  const SizedBox(height: 12),
                  const ProfileOption(
                    image: "setting4.png",
                    label: "Ganti Password",
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
