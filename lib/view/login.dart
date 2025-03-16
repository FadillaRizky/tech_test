import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/auth/login_controller.dart';


class Login extends StatelessWidget {
  final LoginController loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Obx(() {
          return SafeArea(
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  // image: DecorationImage(
                  //   image: AssetImage("assets/background.jpeg"),
                  //   fit: BoxFit.fill,
                  // ),
                  color: Colors.black12
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 250,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: loginController.controllerUsername,
                          validator: (value) {
                            if (value == null || value.isEmpty || value == "") {
                              return "Username harus di isi!";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(20, 3, 1, 3),
                              hintText: "Username",
                              hintStyle: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Colors.black87
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 0,
                                    style: BorderStyle.none,
                                    color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                              filled: true,
                              fillColor: Colors.white
                            // themeController.isDarkMode.value ? AppColors.darkSurface : AppColors.lightSurface,
                          ),
                          style: TextStyle(
                            // color: themeController.isDarkMode.value ? AppColors.white : Colors.black87,
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        child: TextFormField(
                          obscureText: loginController.invisible.value,
                          keyboardType: TextInputType.text,
                          controller: loginController.controllerPassword,
                          validator: (value) {
                            if (value == null || value.isEmpty || value == "") {
                              return "Password harus di isi!";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.fromLTRB(20, 3, 1, 3),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Colors.black87
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                  color: Colors.red),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            suffixIcon: IconButton(
                                icon: Icon((loginController.invisible.value)
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off),
                                onPressed: () {
                                  loginController.togglePassword();
                                }),
                          ),
                          style: TextStyle(
                            // color: themeController.isDarkMode.value ? AppColors.white : Colors.black87,
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromARGB(225, 0, 111, 186),
                            Color.fromARGB(225, 58, 171, 249)
                          ]),
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            loginController.login();
                          },
                          child: Text(
                            "Masuk",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          );
        }));
  }
}
