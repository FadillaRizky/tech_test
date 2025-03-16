import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;
import 'package:tech_test/controller/dashboard_controller.dart';
import 'package:tech_test/controller/profile_controller.dart';

import '../../model/LoginResponse.dart';
import '../../view/index.dart';
import '../../view/login.dart';

class LoginController extends GetxController {
  final DashboardController dashboardController = Get.find<DashboardController>();
  final ProfileController profileController = Get.find<ProfileController>();
  late TextEditingController controllerUsername;
  late TextEditingController controllerPassword;
  var invisible = true.obs;
  final storage = GetStorage();

  @override
  void onInit() {
    controllerUsername = TextEditingController();
    controllerPassword = TextEditingController();
    _navigateToNextScreen();
    super.onInit();
  }

  _navigateToNextScreen() async {
    final GetStorage storage = GetStorage();
    final token = await storage.read('token');
    if (token != null) {
      profileController.initProfile();
      dashboardController.initDashboard();
      Get.to(()=> MainPage());
    }
    else{
      Get.to(()=> Login());
    }
  }

  @override
  void onClose() {
    controllerUsername.dispose();
    controllerPassword.dispose();
    super.onClose();
  }

  void togglePassword() {
    invisible.value = !invisible.value;
  }

  Future<bool> login() async {
    var username = controllerUsername.text;
    var password = controllerPassword.text;

    var data = {
      "username": username,
      "password": password,
    };
    EasyLoading.show(status: "loading");

    try {
      var url = "https://demopm.pmisys.id/api/auth/login";
      var response = await http
          .post(Uri.parse(url), body: data)
          .timeout(Duration(seconds: 3));
      var result = LoginResponse.fromJson(jsonDecode(response.body));
      print(result.data!.authKey);
      if (result.success == true) {
        storage.write('token', result.data!.authKey!);
        EasyLoading.dismiss();
        dashboardController.initDashboard();
        profileController.initProfile();
        EasyLoading.showSuccess("Login Success");
        Get.offAll(() => MainPage(),
            transition: Transition.fade, duration: Duration(seconds: 1));
        return true;
      } else if (result.success != true) {
        EasyLoading.dismiss();
        EasyLoading.showError("Login Gagal");
        return false;
      }
    } on TimeoutException catch (_) {
      EasyLoading.showError("Sinyal Buruk");
      return false;
    } catch (e) {
      print(e);
    }
    return false;
  }
}
