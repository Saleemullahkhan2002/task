import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/resources/routes/routes.dart';
import 'package:task/resources/routes/routes_names.dart';

class LoginController extends GetxController {
  RxBool switchButton = false.obs;
  final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

  final formKey = GlobalKey<FormState>();
void login() {
  if (formKey.currentState != null && formKey.currentState!.validate()) { // ✅ Safe check
    Get.toNamed(RouteName.homecreen);
  }
}



  void changeSwitchButton(value) {
    switchButton.value = value;
  }
}
