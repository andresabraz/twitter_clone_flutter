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
  void _onRetweet(TweetModel tweet) {
    setState(() {
      tweet.didIRetweet = !tweet.didIRetweet;
      tweet.retweetCount =
          tweet.didIRetweet ? tweet.retweetCount + 1 : tweet.retweetCount - 1;
    });
    print("you want to retweet: ${tweet.id}");
  }

  void _onReply(TweetModel tweet) {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  void _onLike(TweetModel tweet) {
    setState(() {
      tweet.didILike = !tweet.didILike;
      tweet.likeCount =
          tweet.didILike ? tweet.likeCount + 1 : tweet.likeCount - 1;
    });
    print("you like the tweet: ${tweet.id}");
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final tweet = widget.tweets[index];
        return SingleTweetWidget(
          tweet: tweet,
          onReply: () => _onReply(tweet),
          onLike: () => _onLike(tweet),
          onRetweet: () => _onRetweet(tweet),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2);
      },
      itemCount: widget.tweets.length,
    );
  }
}
