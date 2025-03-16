import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_test/view/page/dashboard.dart';
import 'package:tech_test/view/page/history.dart';
import 'package:tech_test/view/page/notification.dart';
import 'package:tech_test/view/page/profile.dart';

import '../controller/bottom_nav_controller.dart';
import 'bottom_nav.dart';


class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final BottomNavController controller = Get.find<BottomNavController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(() {
          switch (controller.selectedIndex.value) {
            case 0:
              return DashboardPage();
            case 1:
              return HistoryPage();
            case 2:
              return NotificationPage();
            case 3:
              return ProfilePage();
            default:
              return DashboardPage();
          }
        }),
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }

}
