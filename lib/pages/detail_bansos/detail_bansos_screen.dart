import 'package:bansosku/common/custom_appbar.dart';
import 'package:bansosku/common/custom_button2.dart';
import 'package:bansosku/common/custom_textfield3.dart';
import 'package:bansosku/constants/my_colors.dart';
import 'package:bansosku/models/product.dart';
import 'package:bansosku/pages/hasil_salurkan/hasil_salurkan_screen.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:bansosku/provider/penyalur.dart';

class DetailBansosScreen extends StatefulWidget {
  static const String routeName = '/detail-bansos';
  final List<dynamic> data;

  const DetailBansosScreen({
    super.key,
    required this.data,
  });

  @override
  State<DetailBansosScreen> createState() => _DetailBansosScreenState();
}

class _DetailBansosScreenState extends State<DetailBansosScreen> {
  final TextEditingController jenisController = TextEditingController();
  final TextEditingController merkController = TextEditingController();
  final TextEditingController satuanController = TextEditingController();
  final TextEditingController kuantitasController = TextEditingController();

  List<Product> products = [];

  void setProductData() {
    setState(() {
      products.add(Product(
          jenis: jenisController.text,
          merk: merkController.text,
          satuan: satuanController.text,
          kuantitas: kuantitasController.text,
          userid: 'dummy'));

      //print(products);
    });
    jenisController.clear();
    merkController.clear();
    satuanController.clear();
    kuantitasController.clear();
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
                                      image:
                                          AssetImage("assets/list_detail.png"),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "Detail Bantuan Sosial",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: jenisController,
                              hint: "Jenis",
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: merkController,
                              hint: "Merk",
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: satuanController,
                              hint: "Satuan",
                            ),
                            const SizedBox(height: 20),
                            CustomTextfield3(
                              controller: kuantitasController,
                              hint: "Kuantitas",
                            ),
                            const SizedBox(height: 32),
                            CustomButton2(
                              onTap: () {
                                setProductData();
                              },
                              height: 32,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Tambahkan Barang",
                                    style: TextStyle(
                                      color: MyColors.primaryGreen,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Icon(
                                    Icons.add,
                                    color: MyColors.primaryGreen,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                    CustomButton2(
                      onTap: () {
                        widget.data.add(products);
                        pp.addAllProduct(products);

                        Navigator.pushNamed(
                          context,
                          HasilSalurkanScreen.routeName,
                          arguments: widget.data,
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
