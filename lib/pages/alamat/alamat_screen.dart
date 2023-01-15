import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_textfield3.dart';
import 'package:bansosku/common/custom_textfield5.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/models/alamat.dart';
import 'package:bansosku/models/tujuan.dart';
import 'package:bansosku/pages/detail_bansos/detail_bansos_screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bansosku/provider/penyalur.dart';

class AlamatScreen extends StatefulWidget {
  static const String routeName = '/alamat-bansos';

  final Tujuan tujuan;

  const AlamatScreen({
    super.key,
    required this.tujuan,
  });

  @override
  State<AlamatScreen> createState() => _AlamatScreenState();
}

class _AlamatScreenState extends State<AlamatScreen> {
  final TextEditingController provinsiController = TextEditingController();
  final TextEditingController kotaController = TextEditingController();
  final TextEditingController kecamatanController = TextEditingController();
  final TextEditingController desaController = TextEditingController();

  late Alamat alamat;

  void setAlamatData() {
    setState(() {
      alamat = Alamat(
          provinsi: provinsiController.text,
          kota: kotaController.text,
          kecamatan: kecamatanController.text,
          desa: desaController.text,
          userid: "dummy");
    });
  }

  @override
  Widget build(BuildContext context) {
    final pp = Provider.of<Penyalur>(context);
    //print(pp.allTujuan.pesan);
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
                                      image: AssetImage("assets/aim.png"),
                                    ),
                                  ),
                                ),
                                const Text(
                                  "Alamat Bansos",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: provinsiController,
                              hint: "Provinsi",
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: kotaController,
                              hint: "Kota/Kab",
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: kecamatanController,
                              hint: "Kecamatan",
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: desaController,
                              hint: "Desa/Kelurahan",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield5(
                              label: "Kuantitas jumlah Bansos",
                              hint: "Masukan jumlah bantuan yang diberikan",
                            ),
                            const SizedBox(height: 20),
                            const CustomTextfield5(
                              label: "Tingkat Wilayah",
                              hint:
                                  "Provinsi / Kota/Kab / Kecamatan / Desa/Kelurahan",
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        setAlamatData();
                        pp.setAllAlamat(alamat);
                        Navigator.pushNamed(
                          context,
                          DetailBansosScreen.routeName,
                          arguments: [widget.tujuan, alamat],
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
