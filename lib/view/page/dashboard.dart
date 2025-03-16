import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tech_test/controller/dashboard_controller.dart';
import 'package:tech_test/model/DashboardResponse.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.blue,
            child: Column(
              children: [
                // Text(DateFormat('dd MMMM yyyy').format(DateTime.now())),
                Obx(() {
                  return FutureBuilder(
                    future: controller.responseDashboard.value,
                    builder: (context,
                        AsyncSnapshot<DashboardResponse> snapshot) {
                      if (snapshot.hasData) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gaji Bulan Ini",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  "Rp ${snapshot.data!.data!.perbulan!}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Total Bulan Ini",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  "Rp ${snapshot.data!.data!.totalPembayaran!}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                )
                              ],
                            )
                          ],
                        );
                      }
                      if (snapshot.hasError) {
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Gaji Bulan Ini",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "-",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "Total",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "-",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        );
                      }
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  );
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
