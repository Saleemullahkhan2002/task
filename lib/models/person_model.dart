import 'package:task/resources/assets/image_asset.dart';

class Person {
  final String imageUrl;
  final String name;
  final String designation;
  final String location;

  Person({
    required this.imageUrl,
    required this.name,
    required this.designation,
    required this.location,
  });

  // Local dummy data
  static List<Person> getPersons() {
    return [
      Person(
        imageUrl: '${ImageAsset.person1}',
        name: 'Abdelaziz AlKhamiri',
        designation: 'HEAD OF PLEADING DEPARTMENT',
        location: 'Dubai',
      ),
      Person(
        imageUrl: '${ImageAsset.person2}',
        name: 'Abdelaziz AlKhamiri',
        designation: 'HEAD OF PLEADING DEPARTMENT',
        location: 'Dubai',
      ),
      Person(
        imageUrl: '${ImageAsset.person1}',
       name: 'Abdelaziz AlKhamiri',
        designation: 'HEAD OF PLEADING DEPARTMENT',
        location: 'Dubai',
      ),
    ];
  }
}
