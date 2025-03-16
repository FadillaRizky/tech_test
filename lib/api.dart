import 'dart:async';
import 'dart:convert';

import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:tech_test/model/DashboardResponse.dart';
import 'package:tech_test/model/LogoutResponse.dart';
import 'package:tech_test/model/ProfileResponse.dart';

import 'model/LoginResponse.dart';

const BASE_URL = "https://demopm.pmisys.id/api";
final storage = GetStorage();

class Api {
  static Future<DashboardResponse> getDashboard() async {
    var url = "$BASE_URL/dashboard/lists";
    var token = await storage.read('token');
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      return DashboardResponse.fromJson(jsonDecode(response.body));
    }
    throw "Gagal request dashboard:\n${response.body}";
  }

  static Future<ProfileResponse> getProfile() async {
    var url = "$BASE_URL/auth/profile";
    var token = await storage.read('token');
    var response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      return ProfileResponse.fromJson(jsonDecode(response.body));
    }
    throw "Gagal request profile:\n${response.body}";
  }

  static Future<LogoutResponse> logout() async {
    var url = "$BASE_URL/auth/logout";
    var token = await storage.read('token');
    var response = await http.post(
      Uri.parse(url),
      headers: {
        'Content-type': 'application/json',
        'Authorization': 'Bearer $token',
      },
    );
    print(response.statusCode);
    if (response.statusCode == 200) {
      return LogoutResponse.fromJson(jsonDecode(response.body));
    }
    throw "Gagal request logout:\n${response.body}";
  }
}
