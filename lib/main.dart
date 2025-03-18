import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task/resources/routes/routes.dart';
import 'package:task/view/bottom_tab/bottom_navigation_tab.dart';
import 'package:task/view/home/home_view.dart';
import 'package:task/view/login/login_view.dart';
import 'package:task/view/signup/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
       
      ),
      getPages: AppRoutes.appRoutes(),
          //  home: MainScreen(),
  );
  }
}
