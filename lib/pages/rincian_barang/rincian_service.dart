import 'dart:convert';

import 'package:bansosku/constants/my_env.dart';
import 'package:bansosku/constants/my_tools.dart';
import 'package:bansosku/models/product.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RincianService {
  Future<List<Product>> fetchAllProduct({
    required BuildContext context,
  }) async {
    List<Product> products = [];
    try {
      http.Response res = await http.get(
        Uri.parse('$uri/api/products/'),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );

      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          for (int i = 0; i < jsonDecode(res.body).length; i++) {
            products.add(
              Product.fromJson(
                jsonEncode(
                  jsonDecode(res.body)[i],
                ),
              ),
            );
          }
        },
      );
    } catch (e) {
      showSnackBar(context, e.toString());
    }
    return products;
  }
}
