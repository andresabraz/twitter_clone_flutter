import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';

class ProfilePictureWidget extends StatelessWidget {
  final PictureType pictureType;
  final String pictureUrl;

  ProfilePictureWidget({required this.pictureType, required this.pictureUrl});

  @override
  Widget build(BuildContext context) {
    double width = 0;

    switch (pictureType) {
      case PictureType.small:
        width = 40;
        break;

      case PictureType.medium:
        width = 55;
        break;

      case PictureType.big:
        width = 80;
        break;
    }

    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: ProjectColors.white,
          width: 3,
        ),
        image:
            DecorationImage(image: NetworkImage(pictureUrl), fit: BoxFit.cover),
      ),
    );
  }
}

enum PictureType {
  small,
  medium,
  big,
}
