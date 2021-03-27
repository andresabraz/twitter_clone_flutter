import 'package:flutter/material.dart';

import 'reply_action_widget.dart';
import 'like_action_widget.dart';
import 'retweet_action_widget.dart';

class TweetActionsWidget extends StatelessWidget {
  final int replyCount;
  final int retweetCount;
  final int likeCount;
  final Function()? onRetweet;
  final Function() onReply;
  final Function() onLike;
  final bool didILike;
  final bool didIRetweet;

  TweetActionsWidget({
    required this.replyCount,
    required this.retweetCount,
    required this.likeCount,
    required this.onReply,
    required this.onLike,
    this.onRetweet,
    required this.didILike,
    required this.didIRetweet,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        ReplyActionWidget(
          replyCount: replyCount,
          onReply: onReply,
        ),
        SizedBox(width: 30),
        RetweetActionWidget(
          retweetCount: retweetCount,
          onRetweet: onRetweet,
          didIRetweet: didIRetweet,
        ),
        SizedBox(width: 30),
        LikeActionWidget(
          likeCount: likeCount,
          onLike: onLike,
          didILike: didILike,
        ),
      ],
    );
  }
}
