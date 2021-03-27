import 'package:flutter/material.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/profile_picture_widget.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/tweet_actions_widget.dart';

class SingleTweetWidget extends StatelessWidget {
  final TweetModel tweet;
  final Function() onReply;
  final Function() onLike;
  final Function() onRetweet;

  SingleTweetWidget({
    required this.tweet,
    required this.onReply,
    required this.onLike,
    required this.onRetweet,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfilePictureWidget(
                pictureType: PictureType.medium,
                pictureUrl: "https://i.redd.it/4zr7r2y5zy431.png",
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: tweet.profile.name,
                        style: Styles.subtitle1,
                        children: [
                          TextSpan(
                            text:
                                " ${tweet.profile.nickname} · ${tweet.creationTimeAgo}",
                            style: Styles.body2Gray,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(tweet.content),
                    SizedBox(height: 10),
                    TweetActionsWidget(
                      replyCount: tweet.replyCount,
                      retweetCount: tweet.retweetCount,
                      likeCount: tweet.likeCount,
                      onReply: onReply,
                      onLike: onLike,
                      onRetweet: onRetweet,
                      didILike: tweet.didILike,
                      didIRetweet: tweet.didIRetweet,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
