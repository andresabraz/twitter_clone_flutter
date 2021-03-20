import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  ButtonWidget({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Text(text, style: Styles.subtitle2White),
      color: ProjectColors.activeBlue,
      disabledColor: ProjectColors.inactiveBlue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 0,
    );
  }
}
