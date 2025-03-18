import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:task/resources/assets/image_asset.dart';
import 'package:task/resources/colors/app_colors.dart';
import 'package:task/resources/components/custom_button.dart';
import 'package:task/resources/components/custom_textbox.dart';
import 'package:task/view_models/controller/signup_controller.dart.dart';
import 'package:task/view_models/controller/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final controller = Get.put(LoginController());

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
                    const Text('Sign In', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
              CustomTextField(
                controller: controller.emailController,
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
                controller: controller.passwordController,
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
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Obx(() {
                      return Switch(
                          activeColor: AppColors.primaryColor,
                          inactiveTrackColor: Colors.white,
                          value: (controller.switchButton.value),
                          onChanged: (value) {
                            controller.changeSwitchButton(value);
                          });
                    }),
                    Text('Remember Me'),
                    SizedBox(
                      width: 20,
                    ),
                    Text('Forgot Password?')
                  ],
                ),
              ),
              CustomButton(
                text: 'SIGN IN',
                suffixIcon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  controller.login();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
