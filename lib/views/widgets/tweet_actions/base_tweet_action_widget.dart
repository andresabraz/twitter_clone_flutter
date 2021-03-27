import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';

abstract class BaseTweetActionWidget extends StatelessWidget {
  final int actionCount;
  final Widget icon;
  final Function()? onTap;
  final bool? isReacted;

  BaseTweetActionWidget({
    required this.actionCount,
    required this.icon,
    required this.onTap,
    this.isReacted,
  });

  Color get reactedColor;
  Widget get reactedIcon;

  Widget get text => Text(actionCount.toString(),
      style: isReacted != null && isReacted!
          ? Styles.caption.apply(color: reactedColor)
          : Styles.caption);

  Widget get _icon => (isReacted != null && isReacted!) ? reactedIcon : icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: ProjectColors.transparent,
        child: Row(
          children: [
            _icon,
            SizedBox(width: 5),
            text,
          ],
        ),
      ),
    );
  }
}
