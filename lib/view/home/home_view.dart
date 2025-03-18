import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/models/departments_model.dart';
import 'package:task/models/person_model.dart';
import 'package:task/resources/components/custom_appbar.dart';
import 'package:task/resources/components/department_card.dart';
import 'package:task/resources/components/person.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final List<Person> persons = Person.getPersons();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(),
        body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔹 Section Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Departments',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                ),
              ],
            ),
          ),
        
          SizedBox(
            height: 180, 
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: departments.length,
              itemBuilder: (context, index) {
                return DepartmentCard(department: departments[index]);
              },
            ),
          ),
            Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Our Crew',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('See All'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: persons.length,
              itemBuilder: (context, index) {
                return PersonCard(person: persons[index]);
              },
            ),
          ),
        ],
              ),);
  }
}
