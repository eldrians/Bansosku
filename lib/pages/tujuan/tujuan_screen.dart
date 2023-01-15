import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_textfield4.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/models/tujuan.dart';
import 'package:bansosku/pages/alamat/alamat_screen.dart';
import 'package:bansosku/provider/penyalur.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class TujuanScreen extends StatefulWidget {
  static const String routeName = '/tujuan-bansos';
  const TujuanScreen({super.key});

  @override
  State<TujuanScreen> createState() => _TujuanScreenState();
}

class _TujuanScreenState extends State<TujuanScreen> {
  final TextEditingController tujuanController = TextEditingController();
  final TextEditingController pesanController = TextEditingController();
  final TextEditingController temaController = TextEditingController();
  final TextEditingController jargonController = TextEditingController();

  late Tujuan? tujuan;

  void setTujuanData(BuildContext context) {
    setState(() {
      tujuan = Tujuan(
        tujuan: tujuanController.text,
        pesan: pesanController.text,
        tema: temaController.text,
        jargon: jargonController.text,
      );
      // Provider.of<Penyalur>(context).setAllTujuan(tujuan!);
      // final pp = Provider.of<Penyalur>(context);
      // print(pp.alltujuan.pesan);
      // //print(tujuan!.pesan);
    });
  }

  @override
  Widget build(BuildContext context) {
    final pp = Provider.of<Penyalur>(context);
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
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/fluent.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Tujuan Bansos",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 8),
                            CustomTextfield4(
                              textEditingController: tujuanController,
                              label: "Tujuan",
                              hint: "Masukkan tujuan pengiriman bantuan sosial",
                            ),
                            const SizedBox(height: 8),
                            CustomTextfield4(
                              textEditingController: pesanController,
                              label: "Pesan",
                              hint:
                                  "Masukan pesan untuk penerima bantuan sosial",
                              maxLine: 5,
                            ),
                            const SizedBox(height: 8),
                            CustomTextfield4(
                              textEditingController: temaController,
                              label: "Tema",
                              hint: "Masukan tema penyaluran bantuan sosial",
                            ),
                            const SizedBox(height: 8),
                            CustomTextfield4(
                              textEditingController: jargonController,
                              label: "Jargon",
                              hint: "Masukan jargon bantuan sosial",
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    CustomButton2(
                      onTap: () {
                        setTujuanData(context);
                        pp.setAllTujuan(tujuan!);
                        //print(pp.allTujuan.pesan);
                        Navigator.pushNamed(
                          context,
                          AlamatScreen.routeName,
                          arguments: tujuan,
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
