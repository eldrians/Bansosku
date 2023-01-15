import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_hasil_data.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/bansos_diajukan/success_page_screen.dart';
import 'package:flutter/material.dart';

class HasilDataScreen extends StatelessWidget {
  static const String routeName = '/hasil-data';
  const HasilDataScreen({super.key});

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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Data 1",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: MyColors.cardBg,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    CustomHasilData(
                                      title: "Nama",
                                      subtitle: "Fajri Maulana Iskandar",
                                    ),
                                    SizedBox(height: 16),
                                    CustomHasilData(
                                      title: "No Ktp",
                                      subtitle: "2003525622138325",
                                    ),
                                    SizedBox(height: 16),
                                    CustomHasilData(
                                      title: "Alamat",
                                      subtitle:
                                          "Jln Sukasari, Kecamatan Cugenang, Jawa Barat",
                                    ),
                                    SizedBox(height: 16),
                                    CustomHasilData(
                                      title: "Deskripsi",
                                      subtitle:
                                          "Salah satu korban musibah gempa cianjur, rumah kami sebagian hancur",
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                Container(
                                  width: 148,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                        'assets/gempa_cianjur.png',
                                      ),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          SuccessPageScreen.routeName,
                          arguments: [
                            'Bantuan Sosial Diajukan',
                            'Kami akan memberikan notifikasi tambahan jika ajuan mu di terima, semoga kamu baik baik saja',
                          ],
                        );
                      },
                      child: const Text(
                        "Konfirmasi",
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
