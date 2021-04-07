import 'package:flutter/material.dart';
import 'package:twitter_clone/models/profile_model.dart';
import 'package:twitter_clone/models/reply_model.dart';
import 'package:twitter_clone/models/tweet_model.dart';
import 'package:twitter_clone/views/resources/project_colors.dart';
import 'package:twitter_clone/views/resources/styles.dart';
import 'package:twitter_clone/views/routes.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/tweet/reply_line_widget.dart';
import 'package:twitter_clone/views/widgets/tweet/selected_tweet_widget.dart';
import 'package:twitter_clone/views/widgets/tweet_actions/tweet_actions_widget.dart';

import '../../models/profile_model.dart';
import '../../models/tweet_model.dart';
import '../resources/styles.dart';
import '../routes.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/tweet_actions/tweet_actions_widget.dart';

class SelectedTweetPage extends StatefulWidget {
  @override
  _SelectedTweetPageState createState() => _SelectedTweetPageState();
}

class _SelectedTweetPageState extends State<SelectedTweetPage> {
  late TweetModel tweet;
  late List<ReplyModel> replies;

  bool _isReady = false;

  @override
  void didChangeDependencies() {
    //get the tweet from controller
    tweet = TweetModel(
      id: "1",
      createdAt: DateTime.now().subtract(Duration(days: 2)),
      content:
          "Even fortnite team put theirs microservices on downtime and theirs 200 million users on hold so they can repair some big issues.",
      replyCount: 10,
      retweetCount: 4,
      likeCount: 3,
      profile: ProfileModel(
          name: "Leandro",
          nickname: "@leandro",
          picture: "https://i.redd.it/4zr7r2y5zy431.png"),
      didILike: true,
      didIRetweet: false,
    );

    replies = [
      ReplyModel(
        content: 'Reply 1',
        createdAt: DateTime.now(),
        id: "1",
        profile: ProfileModel(
          name: 'Replier 1',
          nickname: '@replier1',
          picture: 'https://i.redd.it/4zr7r2y5zy431.png',
        ),
      ),
      ReplyModel(
        content: 'Reply 2',
        createdAt: DateTime.now(),
        id: "1",
        profile: ProfileModel(
          name: 'Replier 2',
          nickname: '@replier2',
          picture: 'https://i.redd.it/4zr7r2y5zy431.png',
        ),
      ),
      ReplyModel(
        content: 'Reply 3',
        createdAt: DateTime.now(),
        id: "1",
        profile: ProfileModel(
          name: 'Replier 3',
          nickname: '@replier3',
          picture: 'https://i.redd.it/4zr7r2y5zy431.png',
        ),
      ),
      ReplyModel(
        content: 'Reply 4',
        createdAt: DateTime.now(),
        id: "1",
        profile: ProfileModel(
          name: 'Replier 4',
          nickname: '@replier4',
          picture: 'https://i.redd.it/4zr7r2y5zy431.png',
        ),
      ),
      ReplyModel(
        content: 'Reply 5',
        createdAt: DateTime.now(),
        id: "1",
        profile: ProfileModel(
          name: 'Replier 5',
          nickname: '@replier5',
          picture: 'https://i.redd.it/4zr7r2y5zy431.png',
        ),
      ),
    ];

    setState(() {
      _isReady = true;
    });

    super.didChangeDependencies();
  }

  void _onLike() {
    //call the controller to like or unlike
    setState(() {
      tweet.didILike = !tweet.didILike;
      tweet.likeCount =
          tweet.didILike ? tweet.likeCount + 1 : tweet.likeCount - 1;
    });
    print("you like the tweet: ${tweet.id}");
  }

  void _onReply(TweetModel tweet) {
    Navigator.of(context).pushNamed(Routes.reply);
  }

  Widget _buildReplyLines() {
    return ListView.separated(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        final reply = replies[index];
        return ReplyLineWidget(reply: reply);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 2);
      },
      itemCount: replies.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Text("Tweet", style: Styles.h6),
      ),
      body: _isReady
          ? SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SelectedTweetWidget(tweet: tweet),
                  Divider(color: ProjectColors.grayDivider, height: 0),
                  TweetActionsWidget(
                    replyCount: tweet.replyCount,
                    retweetCount: tweet.retweetCount,
                    likeCount: tweet.likeCount,
                    onReply: () => _onReply(tweet),
                    onLike: _onLike,
                    didILike: tweet.didILike,
                    didIRetweet: tweet.didIRetweet,
                  ),
                  Divider(color: ProjectColors.grayDivider, height: 0),
                  _buildReplyLines(),
                ],
              ),
            )
          : Text("Loading..."),
    );
  }
}
