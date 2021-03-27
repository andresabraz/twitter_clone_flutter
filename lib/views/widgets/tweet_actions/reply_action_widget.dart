import 'package:flutter/src/widgets/framework.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/project_icons.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/base_tweet_action_widget.dart';

class ReplyActionWidget extends BaseTweetActionWidget {
  final int replyCount;
  final Function() onReply;

  ReplyActionWidget({
    required this.replyCount,
    required this.onReply,
  }) : super(
          icon: ProjectIcons.reply,
          actionCount: replyCount,
          onTap: onReply,
        );

  @override
  get reactedColor => ProjectColors.gray;

  @override
  Widget get reactedIcon => ProjectIcons.reply;
}
