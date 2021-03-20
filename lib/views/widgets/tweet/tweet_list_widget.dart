import 'package:flutter/material.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/views/widgets/tweet/single_tweet_widget.dart';

import '../../routes.dart';

class TweetListWidget extends StatefulWidget {
  final List<TweetModel> tweets;
  TweetListWidget({required this.tweets});

  @override
  _TweetListWidgetState createState() => _TweetListWidgetState();
}

class _TweetListWidgetState extends State<TweetListWidget> {
  void _onRetweet() {
    print("you want to retweet");
  }

  void _onReply() {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  void _onLike() {
    print("you like it!");
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return SingleTweetWidget(
          tweet: widget.tweets[index],
          onReply: _onReply,
          onLike: _onLike,
          onRetweet: _onRetweet,
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2);
      },
      itemCount: widget.tweets.length,
    );
  }
}
