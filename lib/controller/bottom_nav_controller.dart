


import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class BottomNavController extends GetxController{
  var selectedIndex = 0.obs;
  var isDashboardVisible = false.obs;
  var isHistoryListVisible = false.obs;
  var isNotifVisible = false.obs;
  var isProfileVisible = false.obs;



  void changeIndex(int index) {
    selectedIndex.value = index;
  }

}
