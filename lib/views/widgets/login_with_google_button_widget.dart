import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/project_logos.dart';
import 'package:twitter_clone/views/resources/styles.dart';

class LoginWithGoogleButtonWidget extends StatelessWidget {
  final Function() onTap;

  LoginWithGoogleButtonWidget({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(primary: ProjectColors.white),
      child: Container(
        height: 80,
        child: Row(
          children: [
            ProjectLogos.googleLogo,
            SizedBox(width: 20),
            Text("Log in with Google", style: Styles.body2Gray),
          ],
        ),
      ),
    );
  }
}
