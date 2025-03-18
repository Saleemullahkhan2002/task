import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:task/resources/colors/app_colors.dart';
import 'package:task/resources/routes/routes.dart';

class Utils {
  static void fieldFocusChange(
      BuildContext context, FocusNode current, FocusNode nextFocus) {
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message) {
    Fluttertoast.showToast(msg: message, backgroundColor: AppColors.blackColor,fontSize: 15,gravity: ToastGravity.CENTER);
  }

  static SnackBar(
    String title,
    String message,
  ) {
    Get.snackbar(title, message);
  }
}
