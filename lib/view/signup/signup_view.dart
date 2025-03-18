import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task/resources/assets/image_asset.dart';
import 'package:task/resources/colors/app_colors.dart';
import 'package:task/resources/components/custom_button.dart';
import 'package:task/resources/components/custom_textbox.dart';
import 'package:task/view_models/controller/signup_controller.dart.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final controller = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    const Text('Sign up', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
              CustomTextField(
                  controller: controller.nameController.value,
                  hintText: 'Full Name',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                  prefixIcon: Icon(Icons.person_outlined)),
              CustomTextField(
                controller: controller.emailController.value,
                hintText: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Email';
                  }
                  return null;
                },
                prefixIcon: Icon(Icons.email_rounded),
              ),
              CustomTextField(
                controller: controller.passwordController.value,
                hintText: 'Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Password';
                  }
                  return null;
                },
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility),
              ),
              CustomTextField(
                controller: controller.confirmPasswordController.value,
                hintText: 'Confirm Password',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Confirm Password';
                  }
                  return null;
                },
                prefixIcon: Icon(Icons.lock),
                suffixIcon: Icon(Icons.visibility_off_rounded),
              ),
              CustomButton(
                text: 'SIGN UP',
                suffixIcon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.signup();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
