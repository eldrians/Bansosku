import 'package:bansosku/constants/my_env.dart';
import 'package:bansosku/constants/my_tools.dart';
import 'package:bansosku/models/alamat.dart';
import 'package:bansosku/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class HasilSalurkanService {
  void addAlamat({
    required BuildContext context,
    required String provinsi,
    required String kota,
    required String kecamatan,
    required String desa,
    required String userid,
  }) async {
    try {
      Alamat alamat = Alamat(
          provinsi: provinsi,
          kota: kota,
          kecamatan: kecamatan,
          desa: desa,
          userid: userid);

      http.Response res = await http.post(
        Uri.parse('$uri/api/add-alamat'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: alamat.toJson(),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {},
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }

  void addProduct({
    required BuildContext context,
    required String jenis,
    required String merk,
    required String satuan,
    required String kuantitas,
    required String userid,
  }) async {
    try {
      Product product = Product(
          jenis: jenis,
          merk: merk,
          satuan: satuan,
          kuantitas: kuantitas,
          userid: userid);

      http.Response res = await http.post(
        Uri.parse('$uri/api/add-product'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: product.toJson(),
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {},
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
  }
}
