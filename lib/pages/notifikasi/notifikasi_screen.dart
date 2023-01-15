import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/notifikasi/components/notifikasi_card.dart';
import 'package:flutter/material.dart';

class NotifikasiScreen extends StatelessWidget {
  static const String routeName = '/notifikasi';
  const NotifikasiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 227,
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
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  const SizedBox(height: 44),
                  Row(
                    children: const [
                      Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                        size: 48,
                      ),
                      Text(
                        "Notifikasi-mu",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: const [
                NotifikasiCard(
                  content:
                      "Kemakom 2022 menerima ajuanmu, silahkan tunggu bantuan sosialmu sesuai ketentuan pengiriman lembaga",
                ),
                SizedBox(height: 16),
                NotifikasiCard(
                  content:
                      "paket bantuan dari Kemakom 2022 sudah diterima dengan aman. Semoga meringankan musibahmu, semangat!!!",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
