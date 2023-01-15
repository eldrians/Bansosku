import 'dart:convert';

class Alamat {
  final String provinsi;
  final String kota;
  final String kecamatan;
  final String desa;
  final String userid;
  Alamat({
    required this.provinsi,
    required this.kota,
    required this.kecamatan,
    required this.desa,
    required this.userid,
  });

  Map<String, dynamic> toMap() {
    return {
      'provinsi': provinsi,
      'kota': kota,
      'kecamatan': kecamatan,
      'desa': desa,
      'userid': userid,
    };
  }

  factory Alamat.fromMap(Map<String, dynamic> map) {
    return Alamat(
      provinsi: map['provinsi'],
      kota: map['kota'],
      kecamatan: map['kecamatan'],
      desa: map['desa'],
      userid: map['userid'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Alamat.fromJson(String source) => Alamat.fromMap(json.decode(source));
}
