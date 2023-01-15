import 'dart:convert';

class User {
  final String? email;
  final String? password;
  final String? userType;
  // final String? jargon;
  User({
    required this.email,
    required this.password,
    required this.userType,
    // required this.jargon,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'userType': userType,
      // 'jargon': jargon,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      email: map['email'],
      password: map['password'],
      userType: map['userType'],
      // jargon: map['jargon'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
