import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/resources/colors/app_colors.dart';
import 'package:task/view/booking_screen/booking_screen.dart';
import 'package:task/view/home/home_view.dart';
import 'package:task/view/profile/profile_screen.dart';
import 'package:task/view_models/controller/main_screen_controller.dart';

import '../search/search_screen.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final BottomNavController navController = Get.put(BottomNavController());

  final List<Widget> pages = [
    HomeScreen(),
    BookingScreen(),
    SearchScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => pages[navController.selectedIndex.value]),

      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: navController.selectedIndex.value,
          onTap: navController.changeTab,
          selectedItemColor: AppColors.primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed, // Ensures labels are always visible
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: "Booking",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
