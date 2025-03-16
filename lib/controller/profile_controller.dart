


import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:tech_test/model/ProfileResponse.dart';
import 'package:tech_test/view/login.dart';

import '../api.dart';

class ProfileController extends GetxController{
  var profileResponse = Rx<Future<ProfileResponse>?>(null);


  final storage = GetStorage();

  initProfile() {
    profileResponse.value = Api.getProfile();

  }


  void logout() async{
    EasyLoading.show(status: "Loading...");
    var result = await Api.logout();
    if (result.success == true) {
      storage.remove('token');
      Get.offAll( () => Login());
      EasyLoading.dismiss();
      EasyLoading.showSuccess("Logout Success");
    }
    else{
      EasyLoading.dismiss();
      EasyLoading.showSuccess("Logout Gagal");
    }

  }

}
