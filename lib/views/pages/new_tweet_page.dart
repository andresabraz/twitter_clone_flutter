import 'package:flutter/material.dart';
import 'package:twitter_clone/views/widgets/appbar_button_widget.dart';
import 'package:twitter_clone/views/widgets/appbar_widget.dart';
import 'package:twitter_clone/views/widgets/write_tweet_widget.dart';

class NewTweetPage extends StatelessWidget {
  final _textController = TextEditingController();

  void _onTapCreateTweet() {
    print("on tap create tweet !");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        action: AppBarButtonWidget(
          onTap: _onTapCreateTweet,
          text: 'Tweet',
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 20, right: 20),
        child: WriteTweetWidget(
          hintText: 'What’s happening?',
          profilePictureUrl: 'https://i.redd.it/4zr7r2y5zy431.png',
          textController: _textController,
        ),
      ),
    );
  }
}
