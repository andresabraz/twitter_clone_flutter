import 'package:flutter/material.dart';
import 'package:twitter_clone/models/as_tweet_model_base.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/profile_picture_widget.dart';

abstract class BaseTweetLineWidget extends StatelessWidget {
  final AsTweetModelBase asTweet;

  BaseTweetLineWidget({
    required this.asTweet,
  });

  Widget get tweetActions => Container();

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
                pictureUrl: asTweet.profile.picture,
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: asTweet.profile.name,
                        style: Styles.subtitle1,
                        children: [
                          TextSpan(
                            text:
                                " ${asTweet.profile.nickname} · ${asTweet.creationTimeAgo}",
                            style: Styles.body2Gray,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(asTweet.content),
                    SizedBox(height: 10),
                    tweetActions,
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
