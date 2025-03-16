
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tech_test/model/DashboardResponse.dart';

import '../api.dart';

class DashboardController extends GetxController{
  var responseDashboard = Rx<Future<DashboardResponse>?>(null);

  initDashboard() {
    responseDashboard.value = Api.getDashboard();
  }



  // @override
  // void onInit() {
  //   initDashboard();
  //   super.onInit();
  // }
}
