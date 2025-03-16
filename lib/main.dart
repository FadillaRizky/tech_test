import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';
import 'package:tech_test/view/index.dart';
import 'package:tech_test/view/login.dart';

import 'controller/auth/login_controller.dart';
import 'controller/bottom_nav_controller.dart';
import 'controller/dashboard_controller.dart';
import 'controller/profile_controller.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = 'id';
  await GetStorage.init();
  await initializeControllers();
  runApp(const MyApp());
}



Future<void> initializeControllers() async {
  Get.put(DashboardController());
  Get.put(ProfileController());
  Get.lazyPut(() => LoginController());
  Get.put(BottomNavController());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      builder: EasyLoading.init(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}