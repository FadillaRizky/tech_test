
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../controller/bottom_nav_controller.dart';


class CustomBottomNavBar extends GetView<BottomNavController> {

  final iconList = <IconData>[
    FontAwesomeIcons.house,
    FontAwesomeIcons.clockRotateLeft,
    FontAwesomeIcons.bell,
    FontAwesomeIcons.solidUser,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, Icons.home_outlined, 'Dashboard', const Color.fromARGB(1000, 0, 111, 186)),
            _buildNavItem(1, Icons.history_outlined, 'History', const Color.fromARGB(1000, 0, 111, 186)),
            _buildNavItem(2, Icons.list_alt_outlined, 'Notification', const Color.fromARGB(1000, 0, 111, 186)),
            _buildNavItem(3, Icons.person_outlined, 'Profile', const Color.fromARGB(1000, 0, 111, 186)),
          ],
        ),
      );
  }

  Widget _buildNavItem(int index, IconData icon, String label, Color color) {
    return Obx(() {
      return TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: controller.selectedIndex.value == index ? -8 : 0),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Transform.translate(
            offset: Offset(0, value),
            child: GestureDetector(
              onTap: () async {
                controller.changeIndex(index);
              },
              behavior: HitTestBehavior.opaque,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: controller.selectedIndex.value == index ? color : Colors.transparent,
                        boxShadow: controller.selectedIndex.value == index
                            ? [
                          BoxShadow(
                            color: color.withOpacity(0.3),
                            spreadRadius: 2,
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ]
                            : [],
                      ),
                      child: Icon(
                        icon,
                        color: controller.selectedIndex.value == index
                            ? Colors.white
                            : Colors.black,
                        size: controller.selectedIndex.value == index ? 32 : 24,
                      ),
                    ),
                    controller.selectedIndex.value == index
                        ? const SizedBox()
                        : const SizedBox(height: 4),
                    controller.selectedIndex.value == index
                        ? const SizedBox()
                        : Text(
                      label,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: controller.selectedIndex.value == index
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    });
  }

}
