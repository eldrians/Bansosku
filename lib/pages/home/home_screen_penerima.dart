import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/home/components/feature_card.dart';
import 'package:bansosku/pages/home/components/news_card.dart';
import 'package:bansosku/pages/kriteria/kriteria_screen.dart';
import 'package:bansosku/pages/notifikasi/notifikasi_screen.dart';
import 'package:bansosku/pages/rincian_barang/rincian_barang_screen.dart';

import 'package:bansosku/pages/riwayat/riwayat_screen.dart';
// import 'package:bansosku/pages/salurkan/salurkan_screen.dart';

import 'package:bansosku/pages/scan/scan_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreenPenerima extends StatefulWidget {
  const HomeScreenPenerima({super.key});

  @override
  State<HomeScreenPenerima> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenPenerima> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double cardWidth = (MediaQuery.of(context).size.width - 128) / 3;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
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
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 32,
                      right: 32,
                      bottom: 16,
                      left: 32,
                    ),
                    child: Column(
                      children: [
                        Column(
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  "Hi, Nelly Joy",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      NotifikasiScreen.routeName,
                                    );
                                  },
                                  child: const Icon(
                                    Icons.notifications_none,
                                    color: Colors.white,
                                    size: 32,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          height: cardWidth * 2 + 120,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 20,
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
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: (cardWidth * 3) + 32,
                                    height: cardWidth + 25,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 20,
                                    ),
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
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              "Terima Bantuan?",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                            ),
                                            Text(
                                              "Silahkan scan terlebih dahulu",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 24),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ScanScreen()),
                                            );
                                          },
                                          child: Container(
                                            width: 80,
                                            height: cardWidth,
                                            decoration: BoxDecoration(
                                              color: const Color(0xffD9D9D9),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius: 4,
                                                  offset: Offset(0, 4),
                                                )
                                              ],
                                              image: const DecorationImage(
                                                image: AssetImage(
                                                    "assets/qrcode.png"),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "BantuanKu\n",
                                    image: "feature1.png",
                                    onClick: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RincianBarangScreen()),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 16),
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Riwayat\n",
                                    image: "feature2.png",
                                    onClick: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HistoryScreen()),
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 16),
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Kriteria\n",
                                    image: "gerigi.png",
                                    onClick: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const CriteriaScreen()),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32),
                        child: const Text(
                          "Berita Informasi",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      CarouselSlider(
                        carouselController: carouselController,
                        options: CarouselOptions(
                          initialPage: 1,
                          viewportFraction: 0.8,
                          enlargeCenterPage: true,
                          enableInfiniteScroll: false,
                        ),
                        items: const [
                          NewsCard(),
                          NewsCard(),
                          NewsCard(),
                        ],
                      ),
                    ],
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
