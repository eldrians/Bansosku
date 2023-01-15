import 'package:shared_preferences/shared_preferences.dart';

// Obtain shared preferences.
class DataUserLocaly {
  static const _keyToken = "token";
  static const _keyUserid = "userid";

  void settoken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    // Save an String value to 'action' key.
    await prefs.setString(_keyToken, token);
  }

  void setuserid(String userid) async {
    final prefs = await SharedPreferences.getInstance();
    // Save an String value to 'action' key.
    await prefs.setString(_keyUserid, userid);
  }
}
