import 'package:bansosku/constants/my_colors.dart';
import 'package:flutter/material.dart';

class CriteriaScreen extends StatelessWidget {
  static const String routeName = '/criteria';
  const CriteriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = (MediaQuery.of(context).size.width - 128) / 3;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: MyColors.primaryBg,
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 4,
                    ),
                    child: Stack(
                      children: [
                        if (true)
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width: 30,
                              height: 30,
                              margin: const EdgeInsets.only(top: 8),
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/back.png"),
                                ),
                              ),
                            ),
                          ),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: const Center(
                            child: Text(
                              "Kriteria",
                              style: TextStyle(
                                color: MyColors.primaryGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 32,
                      right: 32,
                      bottom: 16,
                      left: 32,
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 12),
                        Container(
                          width: double.infinity,
                          height: cardWidth * 2 + 30,
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                height: 42,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/BansosKu_white 1.png"),
                                  ),
                                ),
                              ),
                              const Text(
                                "Hai, wahyu",
                                style: TextStyle(
                                  color: MyColors.primaryGreen,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 23,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: cardWidth,
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
                                child: const Text(
                                  "Selamat Anda berhak mendapatkan bansos",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            color: MyColors.primaryBg,
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: MyColors.primaryGreen),
                          ),
                          child: Column(
                            children: const [
                              Text(
                                "1. Calon penerima adalah masyarakat yang masuk dalam pendataan RT/RW dan berada di Desa.",
                                style: TextStyle(color: MyColors.primaryGreen),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "2.  Calon penerima adalah mereka yang kehilangan mata pencarian di tengah pandemi corona.",
                                style: TextStyle(color: MyColors.primaryGreen),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                " 3.  Calon penerima tidak terdaftar sebagai penerima bantuan sosial (bansos) lain dari pemerintah pusat. Ini berarti calon penerima BLT dari Dana Desa tidak menerima Program Keluarga Harapan (PKH), Kartu Sembako, Paket Sembako, Bantuan Pangan Non Tunai (BPNT) hingga Kartu Prakerja.",
                                style: TextStyle(color: MyColors.primaryGreen),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "4.  Jika calon penerima tidak mendapatkan bansos dari program lain, tetapi belum terdaftar oleh RT/RW, maka bisa langsung menginformasikannya ke aparat desa.",
                                style: TextStyle(color: MyColors.primaryGreen),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "5. Jika calon penerima memenuhi syarat, tetapi tidak memiliki Nomor Induk Kependudukan (NIK) dan Kartu Penduduk (KTP), tetap bisa mendapat bantuan tanpa harus membuat KTP lebih dulu. Tapi, penerima harus berdomisili di desa tersebut dan menulis alamat lengkapnya.",
                                style: TextStyle(color: MyColors.primaryGreen),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "6.  Jika penerima sudah terdaftar dan valid maka BLT akan diberikan melalui tunai dan non tunai. Non tunai diberikan melalui transfer ke rekening bank penerima dan tunai boleh menghubungi aparat desa, bank milik negara atau diambil langsung di kantor pos terdekat.",
                                style: TextStyle(color: MyColors.primaryGreen),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
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
