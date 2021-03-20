import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String text;
  final void Function() onTap;

  OutlinedButtonWidget({
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      child: Text(text, style: Styles.body2Blue),
      color: ProjectColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: ProjectColors.activeBlue),
      ),
    );
  }
}
