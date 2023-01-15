import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/pages/home/components/feature_card.dart';
import 'package:bansosku/pages/home/components/news_card.dart';
import 'package:bansosku/pages/notifikasi/notifikasi_screen.dart';
import 'package:bansosku/pages/tujuan/tujuan_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                                  "Hi, Klaus Syariah",
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
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Kirim\nBansos",
                                    bgColor: const Color(0xff154E5E),
                                    image: "feature1.png",
                                    onClick: () {
                                      Navigator.pushNamed(
                                        context,
                                        TujuanScreen.routeName,
                                      );
                                    },
                                  ),
                                  const SizedBox(width: 16),
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Riwayat",
                                    bgColor: const Color(0xffF8C64F),
                                    image: "feature2.png",
                                    onClick: () {},
                                  ),
                                  const SizedBox(width: 16),
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Walil-kan",
                                    bgColor: const Color(0xffFFFFFF),
                                    image: "feature3.png",
                                    onClick: () {},
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Fitur\nLainnya",
                                    image: "feature3.png",
                                    onClick: () {},
                                  ),
                                  const SizedBox(width: 16),
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Fitur\nLainnya",
                                    image: "feature1.png",
                                    onClick: () {},
                                  ),
                                  const SizedBox(width: 16),
                                  FeatureCard(
                                    cardWidth: cardWidth,
                                    label: "Fitur\nLainnya",
                                    image: "feature2.png",
                                    onClick: () {},
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
