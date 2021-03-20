import 'package:flutter/material.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/widgets/write_tweet_widget.dart';

class ReplyingWidget extends StatelessWidget {
  final TextEditingController textController;
  final String profilePictureUrl;
  final String replyingToProfileNickname;

  ReplyingWidget({
    required this.textController,
    required this.profilePictureUrl,
    required this.replyingToProfileNickname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 40),
            child: RichText(
              text: TextSpan(
                text: "Replying to ",
                style: Styles.body2,
                children: [
                  TextSpan(
                    text: replyingToProfileNickname,
                    style: Styles.body2Blue,
                  ),
                ],
              ),
            ),
          ),
          WriteTweetWidget(
            profilePictureUrl: profilePictureUrl,
            textController: textController,
            hintText: "Tweet your reply",
          ),
        ],
      ),
    );
  }
}
