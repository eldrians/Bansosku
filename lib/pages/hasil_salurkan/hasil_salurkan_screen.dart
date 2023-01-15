import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/my_pie_chart.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/models/alamat.dart';
import 'package:bansosku/models/product.dart';
import 'package:bansosku/pages/bansos_diajukan/success_page_screen.dart';
import 'package:bansosku/pages/hasil_salurkan/components/keterangan_pie_chart.dart';
import 'package:bansosku/pages/hasil_salurkan/components/list_hasil_salurkan.dart';
import 'package:bansosku/pages/hasil_salurkan/hasli_salurkan_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:provider/provider.dart';

import 'package:bansosku/provider/penyalur.dart';

class HasilSalurkanScreen extends StatefulWidget {
  static const String routeName = '/hasil-salurkan';
  final List<dynamic> data;

  const HasilSalurkanScreen({
    super.key,
    required this.data,
  });

  @override
  State<HasilSalurkanScreen> createState() => _HasilSalurkanScreenState();
}

class _HasilSalurkanScreenState extends State<HasilSalurkanScreen> {
  final HasilSalurkanService services = HasilSalurkanService();

  @override
  void initState() {
    super.initState();
    setTotalPacs();
  }

  int total = 0;
  String? userid;

  void setTotalPacs() {
    for (int i = 0; i < widget.data[2].length; i++) {
      total += int.parse(widget.data[2][i].kuantitas);
    }
  }

  void getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString("userid");
    userid = action;
  }

  void addAlamat(Alamat alamat) {
    services.addAlamat(
      context: context,
      provinsi: alamat.provinsi,
      kota: alamat.kota,
      kecamatan: alamat.kecamatan,
      desa: alamat.desa,
      userid: userid!,
    );
    // print("ini di hasil salurkan screen");
    // print(alamat.provinsi);
  }

  void addProduct(List<Product> product) {
    for (int i = 0; i < product.length; i++) {
      services.addProduct(
        context: context,
        jenis: product[i].jenis,
        merk: product[i].merk,
        satuan: product[i].satuan,
        kuantitas: product[i].kuantitas,
        userid: userid!,
      );
      // print(product[i].jenis);
    }
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
                            Container(
                              height: 180,
                              padding: const EdgeInsets.all(4),
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
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              width: 18,
                                              height: 18,
                                              decoration: const BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/list_detail.png'),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            const Text(
                                              "Detail Bantuan Sosial",
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 12),
                                        Expanded(
                                          child: ListView.builder(
                                            itemCount: widget.data[2].length,
                                            itemBuilder: (context, i) {
                                              return Column(
                                                children: [
                                                  ListHasilSalurkan(
                                                    leftTitle:
                                                        "${widget.data[2][i].jenis} ${widget.data[2][i].merk} ${widget.data[2][i].satuan}",
                                                    rightTitle:
                                                        "${widget.data[2][i].kuantitas} pcs",
                                                  ),
                                                  const SizedBox(height: 2),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 4,
                                          vertical: 8,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              "TOTAL",
                                              style: TextStyle(
                                                color: MyColors.primaryText,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              "$total pcs",
                                              style: const TextStyle(
                                                color: MyColors.primaryText,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                            Container(
                              height: 340,
                              padding: const EdgeInsets.all(4),
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
                                children: [
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 18,
                                            height: 18,
                                            decoration: const BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/aim.png'),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          const Text(
                                            "Alamat Bansos",
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 12),
                                      ListHasilSalurkan(
                                        leftTitle: "Provinsi",
                                        rightTitle: widget.data[1].provinsi,
                                      ),
                                      const SizedBox(height: 2),
                                      ListHasilSalurkan(
                                        leftTitle: "Kota/Kab",
                                        rightTitle: widget.data[1].kota,
                                      ),
                                      const SizedBox(height: 2),
                                      ListHasilSalurkan(
                                        leftTitle: "Kecamatan",
                                        rightTitle: widget.data[1].kecamatan,
                                      ),
                                      const SizedBox(height: 2),
                                      ListHasilSalurkan(
                                        leftTitle: "Desa/Kelurahan",
                                        rightTitle: widget.data[1].desa,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Column(
                                    children: [
                                      Container(
                                        height: 1,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    "Provinsi Jawa Barat",
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  SizedBox(
                                    width: 140,
                                    height: 140,
                                    child: CustomPaint(
                                      painter: MyPieChart(
                                        [30, 10, 30, 30],
                                        const [
                                          Color(0xffF4BE37),
                                          Color(0xffFF9F40),
                                          Color(0xff0D2535),
                                          Color(0xff5388D8)
                                        ],
                                        context,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      children: const [
                                        KeteranganPieChart(
                                          label: "Total Masyarakat",
                                          color: Color(0xff0D2535),
                                        ),
                                        SizedBox(height: 4),
                                        KeteranganPieChart(
                                          label: "Total Masyarakat Layak",
                                          color: Color(0xff5388D8),
                                        ),
                                        SizedBox(height: 4),
                                        KeteranganPieChart(
                                          label: "Estimasi Kuantitas",
                                          color: Color(0xffF4BE37),
                                        ),
                                        SizedBox(height: 4),
                                        KeteranganPieChart(
                                          label: "Total Estimasi Layak",
                                          color: Color(0xffFF9F40),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        getUserId();
                        addAlamat(pp.getAllAlamat());
                        addProduct(pp.getAllProduct());
                        Navigator.pushNamed(
                          context,
                          SuccessPageScreen.routeName,
                          arguments: [
                            'Ajuan Penyaluran Dikirim',
                            'Kami akan memberikan notifikasi tambahan jika ajuan mu di terima, terimakasih orang baik :)',
                          ],
                        );
                      },
                      child: const Text(
                        "Ajukan",
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
