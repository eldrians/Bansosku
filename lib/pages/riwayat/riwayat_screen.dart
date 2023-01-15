import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/riwayat/components/riwayat_card.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  static const String routeName = '/riwayat';
  const HistoryScreen({super.key});

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
                    children: [
                      Container(
                        width: 50,
                        height: 42,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/feature2.png"),
                          ),
                        ),
                      ),
                      const Text(
                        "Riwayat",
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
                HistoryCard(
                  date: "6 Desember 2022",
                  institusi: "Kemakom",
                  headline: "1 Paket Sembako untuk pa Wahyu",
                ),
                SizedBox(height: 16),
                HistoryCard(
                  date: "6 Desember 2022",
                  institusi: "Kemakom",
                  headline: "1 Paket Sembako untuk pa Wahyu",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
