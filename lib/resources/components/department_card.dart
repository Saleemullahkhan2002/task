import 'package:flutter/material.dart';
import 'package:task/models/departments_model.dart';
class DepartmentCard extends StatelessWidget {
  final DepartmentModel department;

  const DepartmentCard({Key? key, required this.department}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: 220,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
    ),
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)

            ),
            child: Image.asset(
              department.imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  department.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 20,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: List.generate(
                            department.lawyerImages.length,
                            (index) => Positioned(
                              left: index * 15.0,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(department.lawyerImages[index]),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      department.subtitle,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
}

