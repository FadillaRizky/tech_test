
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tech_test/model/ProfileResponse.dart';

import '../../controller/profile_controller.dart';

class ProfilePage extends GetView<ProfileController> {


  void showConfirmationDialog() {
    Get.defaultDialog(
      title: "Konfirmasi",
      middleText: "Apakah Anda yakin?",
      textConfirm: "Ya",
      textCancel: "Tidak",

      confirmTextColor: Colors.white,
      onConfirm: () {
        controller.logout();
      },
      onCancel: () {
        Get.back();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                SizedBox(height: 35,),
                Center(
                  child: Column(
                    children: [
                      FutureBuilder(future: controller.profileResponse.value,
                          builder: (context,
                              AsyncSnapshot<ProfileResponse> snapshot) {
                            if (snapshot.hasData) {
                              return Column(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    child: Text(snapshot.data!.data!.person!.name![0],style: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ),
                                  SizedBox(height: 10),
                                  Text(
                                    snapshot.data!.data!.person!.name!,
                                    style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  ElevatedButton(
                                    onPressed: () {
                                    //
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Text(
                                      'Edit profile',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ],
                              );
                            }
                            if (snapshot.hasError) {
                              print(snapshot.error);
                              return Center(child: Text("Coba Lagi.."));
                            }
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          }),

                      SizedBox(height: 30),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Preferences',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Icon(Icons.logout),
                              title: Text('Logout'),
                              onTap: () => showConfirmationDialog(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

