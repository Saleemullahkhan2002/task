import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/resources/routes/routes_names.dart';

class SignupController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final nameController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

// final emailController = TextEditingController().obs;
//   final passwordController = TextEditingController().obs;
  final formKey = GlobalKey<FormState>();

  void signup() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(RouteName.loginScreen);
    }
  }
}
