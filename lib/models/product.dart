import 'dart:convert';

class Product {
  final String jenis;
  final String merk;
  final String satuan;
  final String kuantitas;
  final String userid;

  Product({
    required this.jenis,
    required this.merk,
    required this.satuan,
    required this.kuantitas,
    required this.userid,
  });

  Map<String, dynamic> toMap() {
    return {
      'jenis': jenis,
      'merk': merk,
      'satuan': satuan,
      'kuantitas': kuantitas,
      'userid': userid,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      jenis: map['jenis'],
      merk: map['merk'],
      satuan: map['satuan'],
      kuantitas: map['kuantitas'],
      userid: map['user_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
