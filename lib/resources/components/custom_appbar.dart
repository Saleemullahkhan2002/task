import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task/resources/colors/app_colors.dart';
import 'package:task/utils/utils.dart';
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  final List<String> buttonNames = [
    'Corporate', 'Legal Training', 'Finance ', 'Corporate', 'Legal Training'
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.menu, color: Colors.white),
                        onPressed: () => Utils.toastMessage('Menu clicked'),
                      ),
                      VerticalDivider(
  color: Colors.white10,
  thickness: 2,
),
                      IconButton(
                        icon: const Icon(Icons.notifications, color: Colors.white),
                        onPressed: () => Utils.toastMessage('Notification clicked'),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10), 
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: const TextStyle(color: Colors.white70),
                        prefixIcon: const Icon(Icons.search, color: Colors.white),
                        filled: true,
                        fillColor: AppColors.secondaryColor,
                        border: InputBorder.none, 
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),

                  const SizedBox(height: 10), 
                ],
              ),
            ),
          ),
        ),

        Positioned(
          bottom: -20, 
          left: 0,
          right: 0,
          child: Center(
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.99,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                children: List.generate(5, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appBarSliderColor, 
                        foregroundColor: Colors.white,
                        elevation: 2, 
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child:Text(buttonNames[index]), 
                    ),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(170); // Increased height to fit new structure
}
