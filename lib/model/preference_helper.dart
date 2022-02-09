import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:priya_m1_191698r_cpmadproject/model/user_model.dart';

class PreferenceHelper {
  ///For save the user details
  static saveUser(UserModel userData) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('userData', jsonEncode(userData.toMap()));
  }

  ///For get the user details
  static Future<UserModel> getUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString('userData');
    Map<String, dynamic> map = parseAndDecode(userData);
    return UserModel.fromMap(map);
  }

  /// For clearing the storage
  static clearStorage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  static Future<Map<String, dynamic>> parseJson(String text) {
    return compute(parseAndDecode, text);
  }

  static Map<String, dynamic> parseAndDecode(String response) {
    return jsonDecode(response) as Map<String, dynamic>;
  }
}
