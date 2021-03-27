import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/base_tweet_action_widget.dart';

class LikeActionWidget extends BaseTweetActionWidget {
  final int likeCount;

  LikeActionWidget({
    required this.likeCount,
    required Function() onLike,
    required bool didILike,
  }) : super(
          icon: ProjectIcons.like,
          actionCount: likeCount,
          onTap: onLike,
          isReacted: didILike,
        );

  @override
  get reactedColor => ProjectColors.red;

  @override
  Widget get reactedIcon => ProjectIcons.likeSolid;
}
