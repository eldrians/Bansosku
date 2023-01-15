import 'package:dio/dio.dart';
import 'package:bansosku/constants/my_env.dart';
import 'package:bansosku/models/user.dart';
import 'package:flutter/material.dart';

class AuthService {
  Dio dio = Dio();

  login(User user) async {
    try {
      return await dio.post('$uri/api/auth',
          data: {
            "name": user.email,
            "password": user.password,
            "userType": user.userType
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      debugPrint(e.message);
    }
  }

  addUser(User user) async {
    try {
      return await dio.post('$uri/api/adduser',
          data: {
            "name": user.email,
            "password": user.password,
            "userType": user.userType
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      debugPrint(e.message);
    }
  }
}
