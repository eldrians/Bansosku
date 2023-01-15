import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_unorder_list.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/ajukan_bansos_form/ajukan_bansos_form_screen.dart';
import 'package:flutter/material.dart';

class InformasiDetailScreen extends StatelessWidget {
  static const String routeName = '/informasi-detail';
  const InformasiDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(),
            Stack(
              children: [
                Container(
                  width: 393,
                  height: 250,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/info3.png"),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height -
                      MediaQuery.of(context).padding.top -
                      50,
                  child: Column(
                    children: [
                      const SizedBox(height: 200),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          child: Column(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Container(
                                      height: 50,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      decoration: BoxDecoration(
                                        color: MyColors.primaryGreen,
                                        borderRadius: BorderRadius.circular(9),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 4,
                                            offset: Offset(0, 4),
                                          )
                                        ],
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        "assets/kemakom.png"),
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 4),
                                              const Text(
                                                "Kemakom UPI",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            width: 30,
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: MyColors.primaryBg,
                                              borderRadius:
                                                  BorderRadius.circular(9),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "i",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontStyle: FontStyle.italic,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        children: [
                                          const Text(
                                            "Donasi Sembako Untuk Masyarakat Cianjur",
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                            ),
                                          ),
                                          const SizedBox(height: 16),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Kemakom 2022 peduli terhadap korban cianjur. kami bersedia memberikan bantuan berupa sembako untuk 1000 warga Cianjur yang terdampak bencana. Penyaluran akan dilakukan pada tanggal 20 Desember 2022. Dengan rincian bantuan paket sembako seperti berikut :",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Column(
                                                children: const [
                                                  CustomUnorderList(
                                                    text: "5kg beras",
                                                  ),
                                                  CustomUnorderList(
                                                    text:
                                                        "10 bungkus mie instan",
                                                  ),
                                                  CustomUnorderList(
                                                    text: "1/2 kg telur ayam",
                                                  ),
                                                  CustomUnorderList(
                                                    text: "1 liter minyak",
                                                  ),
                                                  CustomUnorderList(
                                                    text:
                                                        "bantuan dana senilai Rp 100.000",
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 8),
                                              const Text(
                                                "Persyaratan penerima :",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                ),
                                              ),
                                              const SizedBox(height: 8),
                                              Column(
                                                children: const [
                                                  CustomUnorderList(
                                                    text:
                                                        "Masyarakat Kecamatan Cugenang",
                                                  ),
                                                  CustomUnorderList(
                                                    text:
                                                        "Maksimal mendapatkan 5 paket sembako untuk setiap ajuan",
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 16),
                                          Container(
                                            width: double.infinity,
                                            padding:
                                                const EdgeInsets.only(top: 8),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                top: BorderSide(
                                                  color: Color(0xb31e1e1e),
                                                  width: 0.5,
                                                ),
                                              ),
                                            ),
                                            child: const Text(
                                              "568 / 1000 ajuran di setujui",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 9,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 48,
                                margin: const EdgeInsets.only(bottom: 16),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                        color: MyColors.primaryGreen,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    backgroundColor: MyColors.primaryBg,
                                  ),
                                  onPressed: () {
                                    Navigator.pushNamed(
                                      context,
                                      AjukanBansosFormScreen.routeName,
                                    );
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/pull-request.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      const Text(
                                        "Ajukan Bantuan Sosial",
                                        style: TextStyle(
                                          color: MyColors.primaryGreen,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
