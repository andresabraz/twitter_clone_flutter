import 'package:flutter/material.dart';
import 'package:twitter_clone/models/profile_model.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/routes.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/tweet/selected_tweet_widget.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/tweet_actions_widget.dart';

class SelectedTweetPage extends StatefulWidget {
  @override
  _SelectedTweetPageState createState() => _SelectedTweetPageState();
}

class _SelectedTweetPageState extends State<SelectedTweetPage> {
  late TweetModel tweet;
  bool _isReady = false;

  @override
  void didChangeDependencies() {
    tweet = TweetModel(
      id: 1,
      createdAt: DateTime.now().subtract(Duration(days: 2)),
      content: "First tweet!",
      replyCount: 10,
      retweetCount: 4,
      likeCount: 3,
      profile: ProfileModel(
          name: "Leandro",
          nickname: "@leandro",
          picture: "https://i.redd.it/4zr7r2y5zy431.png"),
      didILike: false,
      didIRetweet: false,
    );

    setState(() {
      _isReady = true;
    });
    super.didChangeDependencies();
  }

  void _onLike() {
    setState(() {
      tweet.didILike = !tweet.didILike;
      tweet.likeCount =
          tweet.didILike ? tweet.likeCount + 1 : tweet.likeCount - 1;
    });
  }

  void _onReply(TweetModel tweet) {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text("Tweet", style: Styles.h6),
      ),
      body: _isReady
          ? Column(
              children: [
                SelectedTweetWidget(tweet: tweet),
                Divider(color: Colors.red),
                TweetActionsWidget(
                  replyCount: tweet.replyCount,
                  retweetCount: tweet.retweetCount,
                  likeCount: tweet.likeCount,
                  didILike: tweet.didILike,
                  didIRetweet: tweet.didIRetweet,
                  onLike: _onLike,
                  onReply: () {
                    _onReply(tweet);
                  },
                ),
              ],
            )
          : Text('Loading...'),
    );
  }
}
