import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_button_location.dart';
import 'package:bansosku/common/custom_textfield4.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/hasil_data/hasil_data_screen.dart';
import 'package:flutter/material.dart';

class AjukanBansosFormScreen extends StatefulWidget {
  static const String routeName = '/ajukan-bansos-form';
  const AjukanBansosFormScreen({super.key});

  @override
  State<AjukanBansosFormScreen> createState() => _AjukanBansosFormScreenState();
}

class _AjukanBansosFormScreenState extends State<AjukanBansosFormScreen> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(32),
                child: Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Isi Data Diri",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Column(
                              children: [
                                CustomTextfield4(
                                  textEditingController: textEditingController,
                                  label: "Nama",
                                  hint: "Masukkan Nama",
                                ),
                                const SizedBox(height: 8),
                                CustomTextfield4(
                                  textEditingController: textEditingController,
                                  label: "No KTP",
                                  hint: "Masukkan no KTP",
                                ),
                                const SizedBox(height: 16),
                                const CustomButtonLocation(),
                                const SizedBox(height: 16),
                                CustomTextfield4(
                                  textEditingController: textEditingController,
                                  label: "Deskripsi",
                                  hint:
                                      "Deskripsikan musibah yang kamu alami ...",
                                  maxLine: 4,
                                ),
                                const SizedBox(height: 16),
                                CustomButton(
                                  onTap: () {},
                                  height: 40,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        "Tambah Data Lain",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomButton2(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HasilDataScreen.routeName,
                        );
                      },
                      child: const Text(
                        "Selanjutnya",
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
