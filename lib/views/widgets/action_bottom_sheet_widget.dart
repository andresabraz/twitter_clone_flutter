import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class ActionBottomSheetWidget extends StatelessWidget {
  final String text;
  final Function() onTap;
  final Widget icon;

  ActionBottomSheetWidget({
    required this.text,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: ProjectColors.transparent,
        child: Row(
          children: [
            Padding(
              padding:
                  EdgeInsets.only(top: 20, left: 25, right: 20, bottom: 20),
              child: icon,
            ),
            Text(text, style: Styles.h6),
          ],
        ),
      ),
    );
  }
}
