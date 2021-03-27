import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';

abstract class BaseTweetActionWidget extends StatelessWidget {
  final int actionCount;
  final Widget icon;
  final Function()? onTap;

  BaseTweetActionWidget({
    required this.actionCount,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: ProjectColors.transparent,
        child: Row(
          children: [
            icon,
            SizedBox(width: 5),
            Text(actionCount.toString(), style: Styles.caption)
          ],
        ),
      ),
    );
  }
}
