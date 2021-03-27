import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/base_tweet_action_widget.dart';

class RetweetActionWidget extends BaseTweetActionWidget {
  final int retweetCount;

  RetweetActionWidget({
    required this.retweetCount,
    required Function()? onRetweet,
    required bool didIRetweet,
  }) : super(
          icon: ProjectIcons.retweet,
          actionCount: retweetCount,
          onTap: onRetweet,
          isReacted: didIRetweet,
        );

  @override
  get reactedColor => ProjectColors.green;

  @override
  Widget get reactedIcon => ProjectIcons.retweetSolid;
}
