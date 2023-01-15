import 'dart:convert';

class Tujuan {
  final String? tujuan;
  final String? pesan;
  final String? tema;
  final String? jargon;
  Tujuan({
    required this.tujuan,
    required this.pesan,
    required this.tema,
    required this.jargon,
  });

  Map<String, dynamic> toMap() {
    return {
      'tujuan': tujuan,
      'pesan': pesan,
      'tema': tema,
      'jargon': jargon,
    };
  }

  factory Tujuan.fromMap(Map<String, dynamic> map) {
    return Tujuan(
      tujuan: map['tujuan'],
      pesan: map['pesan'],
      tema: map['tema'],
      jargon: map['jargon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Tujuan.fromJson(String source) => Tujuan.fromMap(json.decode(source));
}
