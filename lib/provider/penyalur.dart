import 'package:flutter/material.dart';

import '../models/tujuan.dart';
import '../models/product.dart';
import '../models/alamat.dart';

class Penyalur with ChangeNotifier {
  late Tujuan _allTujuan;
  late List<Product> _allProduct = [];
  late Alamat _allAlamat;

  Tujuan get allTujuan {
    return _allTujuan;
  }

  void setAllTujuan(Tujuan newTujuan) {
    _allTujuan = newTujuan;
    notifyListeners();
  }

  List<Product> getAllProduct() {
    return [..._allProduct];
  }

  void addAllProduct(List<Product> newProduct) {
    _allProduct = newProduct;
    notifyListeners();
  }

  Alamat getAllAlamat() {
    return _allAlamat;
  }

  void setAllAlamat(Alamat newAlamat) {
    _allAlamat = newAlamat;
    notifyListeners();
  }
}
