import 'package:bansosku/pages/informasi/components/informasi_card.dart';
import 'package:flutter/material.dart';

class InformarsiScreen extends StatelessWidget {
  const InformarsiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 12),
                      height: 40,
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 28,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff136533),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff136533),
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          hintText: "Cari daerah bantuan sosial",
                          hintStyle: TextStyle(
                            color: Color(0xff757575),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff14813F),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Column(
                children: const [
                  InformasiCard(
                    image: "info1.png",
                    title: "Donasi Sembako Untuk Masyarakat Cianjur",
                    description:
                        "Kemakom 2022 peduli terhadap korban cianjur. kami bersedia memberikan bantuan berupa sembako untuk 1000 warga Cianjur yang terdampak bencana. Penyaluran akan dilakukan pada tanggal 20 Desember 2022 ...",
                  ),
                  SizedBox(height: 32),
                  InformasiCard(
                    image: "info2.png",
                    title: "Donasi Masyarakat Miskin Desember 2022",
                    description:
                        "Kemensos RI membuat upaya bantuan sosial dengan memberikan sejumlah uang tunai untuk masyarakat yang membutuhkan, pendaftaran akan dilakukan mu...",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
