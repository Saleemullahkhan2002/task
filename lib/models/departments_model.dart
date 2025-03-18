import 'package:task/resources/assets/image_asset.dart';

class DepartmentModel {
  final String imageUrl;
  final String title;
  final String subtitle;
  final List<String> lawyerImages;

  DepartmentModel({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.lawyerImages,
  });
}


List<DepartmentModel> departments = [
  DepartmentModel(
    imageUrl: '${ImageAsset.sliderImage1}',
    title: 'Pleading Department',
    subtitle: '20+ Lawyers',
    lawyerImages: [
      '${ImageAsset.smallImage1}',
      '${ImageAsset.smallImage1}',
      '${ImageAsset.smallImage1}',
    ],
  ),
  DepartmentModel(
    imageUrl: '${ImageAsset.sliderImage2 }',
    title: 'Corporate Law',
    subtitle: '15+ Lawyers',
    lawyerImages: [
      '${ImageAsset.smallImage1}',
      '${ImageAsset.smallImage1}',
      '${ImageAsset.smallImage1}',
    ],
  ),
  // Add more departments if needed
];
